; ModuleID = '/llk/IR_all_yes/fs/fscache/volume.c_pt.bc'
source_filename = "../fs/fscache/volume.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fscache_end_volume_access\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_end_volume_access\09\09\09\09"
module asm "\09.long\09__crc_fscache_end_volume_access\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_end_volume_access:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_end_volume_access\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_end_volume_access:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__fscache_acquire_volume\22, \22a\22\09"
module asm "\09.weak\09__crc___fscache_acquire_volume\09\09\09\09"
module asm "\09.long\09__crc___fscache_acquire_volume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fscache_acquire_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22__fscache_acquire_volume\22\09\09\09\09\09"
module asm "__kstrtabns___fscache_acquire_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__fscache_relinquish_volume\22, \22a\22\09"
module asm "\09.weak\09__crc___fscache_relinquish_volume\09\09\09\09"
module asm "\09.long\09__crc___fscache_relinquish_volume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fscache_relinquish_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22__fscache_relinquish_volume\22\09\09\09\09\09"
module asm "__kstrtabns___fscache_relinquish_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_withdraw_volume\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_withdraw_volume\09\09\09\09"
module asm "\09.long\09__crc_fscache_withdraw_volume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_withdraw_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_withdraw_volume\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_withdraw_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.59 }
%struct.atomic_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.fscache_volume = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.hlist_bl_node, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fscache_cache = type { ptr, %struct.list_head, ptr, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.2, %union.anon.3 }
%union.anon.2 = type { ptr, [12 x i8] }
%union.anon.3 = type { ptr, [4 x i8] }
%struct.fscache_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_fscache_end_volume_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_end_volume_access = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_end_volume_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_end_volume_access to i32), ptr @__kstrtab_fscache_end_volume_access, ptr @__kstrtabns_fscache_end_volume_access }, section "___ksymtab+fscache_end_volume_access", align 4
@__kstrtab___fscache_acquire_volume = external dso_local constant [0 x i8], align 1
@__kstrtabns___fscache_acquire_volume = external dso_local constant [0 x i8], align 1
@__ksymtab___fscache_acquire_volume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fscache_acquire_volume to i32), ptr @__kstrtab___fscache_acquire_volume, ptr @__kstrtabns___fscache_acquire_volume }, section "___ksymtab+__fscache_acquire_volume", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/fscache/volume.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab___fscache_relinquish_volume = external dso_local constant [0 x i8], align 1
@__kstrtabns___fscache_relinquish_volume = external dso_local constant [0 x i8], align 1
@__ksymtab___fscache_relinquish_volume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fscache_relinquish_volume to i32), ptr @__kstrtab___fscache_relinquish_volume, ptr @__kstrtabns___fscache_relinquish_volume }, section "___ksymtab+__fscache_relinquish_volume", align 4
@fscache_debug = external dso_local local_unnamed_addr global i32, align 4
@fscache_withdraw_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] withdraw V=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fscache_withdraw_volume\00", [40 x i8] zeroinitializer }, align 32
@fscache_withdraw_volume._entry_ptr = internal global ptr @fscache_withdraw_volume._entry, section ".printk_index", align 4
@__kstrtab_fscache_withdraw_volume = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_withdraw_volume = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_withdraw_volume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_withdraw_volume to i32), ptr @__kstrtab_fscache_withdraw_volume, ptr @__kstrtabns_fscache_withdraw_volume }, section "___ksymtab+fscache_withdraw_volume", align 4
@fscache_volumes_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fscache_volumes_seq_start, ptr @fscache_volumes_seq_stop, ptr @fscache_volumes_seq_next, ptr @fscache_volumes_seq_show }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_fscache_volume = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/fscache.h\00", [33 x i8] zeroinitializer }, align 32
@trace_fscache_volume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_fscache_access_volume = external dso_local global %struct.tracepoint, align 4
@trace_fscache_access_volume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@fscache_alloc_volume.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&volume->work)\00", [63 x i8] zeroinitializer }, align 32
@fscache_alloc_volume.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&volume->lock\00", [18 x i8] zeroinitializer }, align 32
@fscache_volume_debug_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_addremove_sem = external dso_local global %struct.rw_semaphore, align 4
@fscache_volumes = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fscache_volumes, ptr @fscache_volumes }, [24 x i8] zeroinitializer }, align 32
@fscache_n_volumes = external dso_local global %struct.atomic_t, align 4
@fscache_alloc_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() = v=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fscache_alloc_volume\00", [43 x i8] zeroinitializer }, align 32
@fscache_alloc_volume._entry_ptr = internal global ptr @fscache_alloc_volume._entry, section ".printk_index", align 4
@fscache_n_volumes_nomem = external dso_local global %struct.atomic_t, align 4
@fscache_volume_hash = internal global { [1024 x %struct.hlist_bl_head], [1024 x i8] } zeroinitializer, align 32
@fscache_wait_on_volume_collision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015FS-Cache: Potential volume collision new=%08x old=%08x\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fscache_wait_on_volume_collision\00", [63 x i8] zeroinitializer }, align 32
@fscache_wait_on_volume_collision._entry_ptr = internal global ptr @fscache_wait_on_volume_collision._entry, section ".printk_index", align 4
@fscache_n_volumes_collision = external dso_local global %struct.atomic_t, align 4
@.str.14 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"VOLUME   REF   nCOOK ACC FL CACHE           KEY\0A======== ===== ===== === == =============== ================\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%08x %5d %5d %3d %02lx %-15.15s %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 428, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 452, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"fscache_volumes_seq_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 511, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [34 x i8] c"../include/trace/events/fscache.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 228, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 108, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 73, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 225, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 227, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"fscache_volume_debug_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 15, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"fscache_volumes\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 16, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 250, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"fscache_volume_hash\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 14, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 147, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 475, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 482, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [23 x i8] c"../fs/fscache/volume.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 488, i32 29 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab___fscache_acquire_volume, ptr @__ksymtab___fscache_relinquish_volume, ptr @__ksymtab_fscache_end_volume_access, ptr @__ksymtab_fscache_withdraw_volume, ptr @fscache_alloc_volume._entry, ptr @fscache_alloc_volume._entry_ptr, ptr @fscache_wait_on_volume_collision._entry, ptr @fscache_wait_on_volume_collision._entry_ptr, ptr @fscache_withdraw_volume._entry, ptr @fscache_withdraw_volume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fscache_volumes_seq_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fscache_alloc_volume.__key, ptr @.str.7, ptr @fscache_alloc_volume.__key.8, ptr @.str.9, ptr @fscache_volume_debug_id, ptr @fscache_volumes, ptr @.str.10, ptr @.str.11, ptr @fscache_volume_hash, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_withdraw_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_volumes_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_alloc_volume.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_alloc_volume.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_volume_debug_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_volumes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_alloc_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_volume_hash to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_wait_on_volume_collision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fscache_get_volume(ptr noundef returned %volume, i32 noundef %where) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %volume, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %volume, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %volume, ptr %volume, i32 1, ptr elementtype(i32) %volume) #11, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !69

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !70

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.pre.pre-phi = phi i32 [ %add.i.i, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ], [ 1, %entry.if.end15.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ], [ 2, %entry.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %volume, i32 noundef %.sink.i.i) #11
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  %add.pre-phi = phi i32 [ %add.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge ], [ %.pre.pre-phi, %if.end15.sink.split.i.i ]
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %3, i32 noundef %add.pre-phi, i32 noundef %where)
  ret ptr %volume
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fscache_volume(i32 noundef %volume_debug_id, i32 noundef %usage, i32 noundef %where) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_volume, i32 0, i32 1), ptr blockaddress(@trace_fscache_volume, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %call42 = tail call i32 @__traceiter_fscache_volume(ptr noundef null, i32 noundef %volume_debug_id, i32 noundef %usage, i32 noundef %where) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_volume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_volume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fscache_volume.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_fscache_volume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 251, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fscache_begin_volume_access(ptr noundef %volume, ptr noundef readonly %cookie, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %state.i.i = getelementptr inbounds %struct.fscache_cache, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %n_accesses1.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses1.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %n_accesses1.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses1.i, ptr %n_accesses1.i, i32 1, ptr elementtype(i32) %n_accesses1.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  %debug_id.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %5 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id.i, align 4
  %tobool.not.i = icmp eq ptr %cookie, null
  br i1 %tobool.not.i, label %if.end.__fscache_begin_volume_access.exit_crit_edge, label %cond.true.i

if.end.__fscache_begin_volume_access.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fscache_begin_volume_access.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %debug_id5.i = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 3
  %7 = ptrtoint ptr %debug_id5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id5.i, align 4
  br label %__fscache_begin_volume_access.exit

__fscache_begin_volume_access.exit:               ; preds = %cond.true.i, %if.end.__fscache_begin_volume_access.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.true.i ], [ 0, %if.end.__fscache_begin_volume_access.exit_crit_edge ]
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %volume, i32 noundef 4) #11
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %6, i32 noundef %cond.i, i32 noundef %10, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %why) #11
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %state.i.i9 = getelementptr inbounds %struct.fscache_cache, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i10 = icmp eq i32 %14, 2
  br i1 %cmp.i10, label %__fscache_begin_volume_access.exit.return_crit_edge, label %if.then3

__fscache_begin_volume_access.exit.return_crit_edge: ; preds = %__fscache_begin_volume_access.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then3:                                         ; preds = %__fscache_begin_volume_access.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses1.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %n_accesses1.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses1.i, ptr %n_accesses1.i, i32 1, ptr elementtype(i32) %n_accesses1.i) #11, !srcloc !83
  %asmresult.i.i.i.i.i12 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %16 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id.i, align 4
  br i1 %tobool.not.i, label %if.then3.cond.end.i_crit_edge, label %cond.true.i16

if.then3.cond.end.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i16:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %debug_id5.i15 = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 3
  %18 = ptrtoint ptr %debug_id5.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_id5.i15, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i16, %if.then3.cond.end.i_crit_edge
  %cond.i17 = phi i32 [ %19, %cond.true.i16 ], [ 0, %if.then3.cond.end.i_crit_edge ]
  %call.i.i.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %volume, i32 noundef 4) #11
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %17, i32 noundef %cond.i17, i32 noundef %21, i32 noundef %asmresult.i.i.i.i.i12, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i12)
  %cmp.i19 = icmp eq i32 %asmresult.i.i.i.i.i12, 0
  br i1 %cmp.i19, label %if.then.i, label %cond.end.i.return_crit_edge

cond.end.i.return_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_var(ptr noundef %n_accesses1.i) #11
  br label %return

return:                                           ; preds = %if.then.i, %cond.end.i.return_crit_edge, %__fscache_begin_volume_access.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %__fscache_begin_volume_access.exit.return_crit_edge ], [ false, %cond.end.i.return_crit_edge ], [ false, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscache_end_volume_access(ptr noundef %volume, ptr noundef readonly %cookie, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %n_accesses4 = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses4, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %n_accesses4, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses4, ptr %n_accesses4, i32 1, ptr elementtype(i32) %n_accesses4) #11, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %1 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_id, align 4
  %tobool.not = icmp eq ptr %cookie, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %debug_id5 = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 3
  %3 = ptrtoint ptr %debug_id5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %volume, i32 noundef 4) #11
  %5 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %2, i32 noundef %cond, i32 noundef %6, i32 noundef %asmresult.i.i.i.i, i32 noundef %why)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_var(ptr noundef %n_accesses4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fscache_access_volume(i32 noundef %volume_debug_id, i32 noundef %cookie_debug_id, i32 noundef %ref, i32 noundef %n_accesses, i32 noundef %why) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_access_volume, i32 0, i32 1), ptr blockaddress(@trace_fscache_access_volume, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %call42 = tail call i32 @__traceiter_fscache_access_volume(ptr noundef null, i32 noundef %volume_debug_id, i32 noundef %cookie_debug_id, i32 noundef %ref, i32 noundef %n_accesses, i32 noundef %why) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_access_volume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fscache_access_volume, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fscache_access_volume.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_fscache_access_volume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 371, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscache_create_volume(ptr noundef %volume, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 12
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.maybe_wait_crit_edge

entry.maybe_wait_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maybe_wait

if.end:                                           ; preds = %entry
  %cache_priv = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 10
  %0 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.end.no_wait_crit_edge

if.end.no_wait_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_wait

if.end3:                                          ; preds = %if.end
  %cache = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 9
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %call4 = tail call zeroext i1 @fscache_begin_cache_access(ptr noundef %3, i32 noundef 0) #11
  br i1 %call4, label %if.end6, label %if.end3.no_wait_crit_edge

if.end3.no_wait_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_wait

if.end6:                                          ; preds = %if.end3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %volume, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %volume, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %volume, ptr %volume, i32 1, ptr elementtype(i32) %volume) #11, !srcloc !68
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !69

if.end6.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.fscache_get_volume.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !70

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.fscache_get_volume.exit_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_get_volume.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i_crit_edge
  %.pre.pre-phi.i = phi i32 [ %add.i.i.i, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.end6.if.end15.sink.split.i.i.i_crit_edge ]
  %.sink.i.i.i = phi i32 [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ], [ 2, %if.end6.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %volume, i32 noundef %.sink.i.i.i) #11
  br label %fscache_get_volume.exit

fscache_get_volume.exit:                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.fscache_get_volume.exit_crit_edge
  %add.pre-phi.i = phi i32 [ %add.i.i.i, %if.else.i.i.i.fscache_get_volume.exit_crit_edge ], [ %.pre.pre-phi.i, %if.end15.sink.split.i.i.i ]
  %debug_id.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %6 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %7, i32 noundef %add.pre-phi.i, i32 noundef 2) #11
  %work = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #11
  br i1 %call.i.i, label %fscache_get_volume.exit.maybe_wait_crit_edge, label %if.then9

fscache_get_volume.exit.maybe_wait_crit_edge:     ; preds = %fscache_get_volume.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %maybe_wait

if.then9:                                         ; preds = %fscache_get_volume.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fscache_put_volume(ptr noundef %volume, i32 noundef 7)
  br label %maybe_wait

maybe_wait:                                       ; preds = %if.then9, %fscache_get_volume.exit.maybe_wait_crit_edge, %entry.maybe_wait_crit_edge
  br i1 %wait, label %if.then12, label %maybe_wait.return_crit_edge

maybe_wait.return_crit_edge:                      ; preds = %maybe_wait
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then12:                                        ; preds = %maybe_wait
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %volume, i32 noundef 4) #11
  %9 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %volume, align 4
  %debug_id.i27 = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %11 = ptrtoint ptr %debug_id.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id.i27, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %12, i32 noundef %10, i32 noundef 12) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 73) #11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then12.return_crit_edge, label %if.end.i

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags, i32 noundef 4, ptr noundef nonnull @bit_wait, i32 noundef 2) #11
  br label %return

no_wait:                                          ; preds = %if.end3.no_wait_crit_edge, %if.end.no_wait_crit_edge
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 16, ptr elementtype(i32) %flags) #11, !srcloc !88
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 4) #11
  br label %return

return:                                           ; preds = %no_wait, %if.end.i, %if.then12.return_crit_edge, %maybe_wait.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscache_begin_cache_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscache_put_volume(ptr noundef %volume, i32 noundef %where) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %volume, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %debug_id1 = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %0 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id1, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %volume, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr nonnull %volume, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %volume, ptr nonnull %volume, i32 1, ptr nonnull elementtype(i32) %volume) #11, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %if.then4, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %.not.i.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %.not.i.i, label %if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge, label %if.then10.i.i, !prof !70

if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__refcount_dec_and_test.exit.thread

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %volume, i32 noundef 3) #11
  br label %__refcount_dec_and_test.exit.thread

__refcount_dec_and_test.exit.thread:              ; preds = %if.then10.i.i, %if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge
  %sub11 = add i32 %asmresult.i.i.i.i.i, -1
  tail call fastcc void @trace_fscache_volume(i32 noundef %1, i32 noundef %sub11, i32 noundef %where)
  br label %if.end5

if.then4:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call fastcc void @trace_fscache_volume(i32 noundef %1, i32 noundef 0, i32 noundef %where)
  %cache1.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 9
  %3 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache1.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 10
  %5 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache_priv.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then4.if.end5.i_crit_edge, label %if.then.i

if.then4.if.end5.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then4
  %n_accesses1.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 2
  %call.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses1.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %n_accesses1.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses1.i.i, ptr %n_accesses1.i.i, i32 1, ptr elementtype(i32) %n_accesses1.i.i) #11, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  %8 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id1, align 4
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %volume, i32 noundef 4) #11
  %10 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef %asmresult.i.i.i.i.i.i, i32 noundef 15) #11
  %12 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache_priv.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %free_volume.i = getelementptr inbounds %struct.fscache_cache_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %free_volume.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_volume.i, align 4
  tail call void %17(ptr noundef nonnull %volume) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %call.i.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses1.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %n_accesses1.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses1.i.i, ptr %n_accesses1.i.i, i32 1, ptr elementtype(i32) %n_accesses1.i.i) #11, !srcloc !83
  %asmresult.i.i.i.i.i23.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %19 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_id1, align 4
  %call.i.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %volume, i32 noundef 4) #11
  %21 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %20, i32 noundef 0, i32 noundef %22, i32 noundef %asmresult.i.i.i.i.i23.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i23.i)
  %cmp.i.i10 = icmp eq i32 %asmresult.i.i.i.i.i23.i, 0
  br i1 %cmp.i.i10, label %if.then.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_var(ptr noundef %n_accesses1.i.i) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.i, %if.end.i.if.end5.i_crit_edge, %if.then4.if.end5.i_crit_edge
  tail call void @down_write(ptr noundef nonnull @fscache_addremove_sem) #11
  %proc_link.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 6
  %call.i.i26.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %proc_link.i) #11
  br i1 %call.i.i26.i, label %if.end.i.i.i, label %if.end5.i.list_del_init.exit.i_crit_edge

if.end5.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end5.i.list_del_init.exit.i_crit_edge
  %29 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %proc_link.i, ptr %proc_link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %proc_link.i, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cache1.i, align 4
  %n_volumes.i = getelementptr inbounds %struct.fscache_cache, ptr %32, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_volumes.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %n_volumes.i, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_volumes.i, ptr %n_volumes.i, i32 1, ptr elementtype(i32) %n_volumes.i) #11, !srcloc !92
  tail call void @up_write(ptr noundef nonnull @fscache_addremove_sem) #11
  %hash_link.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 7
  %pprev.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.fscache_free_volume.exit_crit_edge, label %if.then7.i

list_del_init.exit.i.fscache_free_volume.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscache_free_volume.exit

if.then7.i:                                       ; preds = %list_del_init.exit.i
  %key_hash.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 4
  %36 = ptrtoint ptr %key_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_hash.i.i, align 4
  %and.i.i = and i32 %37, 1023
  %arrayidx.i.i = getelementptr [1024 x %struct.hlist_bl_head], ptr @fscache_volume_hash, i32 0, i32 %and.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %do.body14.i.i.i.i, %if.then7.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i.i, label %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !94

while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge:    ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i.i.i.i

test_and_set_bit_lock.exit.i.i.i.i:               ; preds = %while.cond.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #11, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %and1.i.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i.i, label %hlist_bl_lock.exit.i.i, label %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !70

test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i.i.i.i

do.body2.i.i.i.i:                                 ; preds = %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %45 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i1.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %preempt_count.i.i2.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i2.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i2.i.i.i.i, align 4
  br label %do.body4.i.i.i.i

do.body4.i.i.i.i:                                 ; preds = %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge, %do.body2.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !99
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  %tobool12.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %do.body14.i.i.i.i, label %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge

do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge:      ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i.i.i

do.body14.i.i.i.i:                                ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i3.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i3.i.i.i.i to ptr
  %preempt_count.i.i4.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i4.i.i.i.i, align 4
  %add.i5.i.i.i.i = add i32 %54, 1
  store volatile i32 %add.i5.i.i.i.i, ptr %preempt_count.i.i4.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  br label %while.cond.i.i.i.i

hlist_bl_lock.exit.i.i:                           ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  %55 = ptrtoint ptr %hash_link.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hash_link.i, align 4
  %57 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pprev.i.i, align 4
  %59 = ptrtoint ptr %hash_link.i to i32
  %and.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body15.i.i.i.i, label %do.body5.i.i.i.i, !prof !70

do.body5.i.i.i.i:                                 ; preds = %hlist_bl_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #11, !srcloc !101
  unreachable

do.body15.i.i.i.i:                                ; preds = %hlist_bl_lock.exit.i.i
  %60 = ptrtoint ptr %56 to i32
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %63 = ptrtoint ptr %62 to i32
  %and16.i.i.i.i = and i32 %63, 1
  %or.i.i.i.i = or i32 %and16.i.i.i.i, %60
  %64 = inttoptr i32 %or.i.i.i.i to ptr
  store volatile ptr %64, ptr %58, align 4
  %tobool21.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool21.not.i.i.i.i, label %do.body15.i.i.i.i.hlist_bl_del.exit.i.i_crit_edge, label %if.then22.i.i.i.i

do.body15.i.i.i.i.hlist_bl_del.exit.i.i_crit_edge: ; preds = %do.body15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_bl_del.exit.i.i

if.then22.i.i.i.i:                                ; preds = %do.body15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev23.i.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %56, i32 0, i32 1
  %65 = ptrtoint ptr %pprev23.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %58, ptr %pprev23.i.i.i.i, align 4
  br label %hlist_bl_del.exit.i.i

hlist_bl_del.exit.i.i:                            ; preds = %if.then22.i.i.i.i, %do.body15.i.i.i.i.hlist_bl_del.exit.i.i_crit_edge
  %66 = ptrtoint ptr %hash_link.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %hash_link.i, align 4
  %67 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 12
  %68 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i.i, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i27.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i27.i, label %hlist_bl_del.exit.i.i.if.end.i.i_crit_edge, label %if.then.i28.i

hlist_bl_del.exit.i.i.if.end.i.i_crit_edge:       ; preds = %hlist_bl_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i28.i:                                    ; preds = %hlist_bl_del.exit.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %and.i.i6.i.i = and i32 %73, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6.i.i)
  %tobool.not13.i.i.i = icmp eq i32 %and.i.i6.i.i, 0
  br i1 %tobool.not13.i.i.i, label %if.then.i28.i.if.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

if.then.i28.i.if.end.i.i_crit_edge:               ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.then.i28.i
  %74 = inttoptr i32 %and.i.i6.i.i to ptr
  %75 = ptrtoint ptr %key_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key_hash.i.i, align 4
  %key5.i.i.i.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 5
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %p.014.i.i.i = phi ptr [ %74, %land.rhs.lr.ph.i.i.i ], [ %97, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ]
  %key_hash.i.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 -16
  %77 = ptrtoint ptr %key_hash.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %key_hash.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.not.i.i.i.i = icmp eq i32 %78, %76
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %land.rhs.i.i.i.for.inc.i.i.i_crit_edge

land.rhs.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %land.rhs.i.i.i
  %cache.i.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 52
  %79 = ptrtoint ptr %cache.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cache.i.i.i.i, align 4
  %81 = ptrtoint ptr %cache1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cache1.i, align 4
  %cmp3.not.i.i.i.i = icmp eq ptr %80, %82
  br i1 %cmp3.not.i.i.i.i, label %lor.lhs.false4.i.i.i.i, label %lor.lhs.false.i.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

lor.lhs.false4.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %key.i.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 -12
  %83 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %key.i.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %87 = ptrtoint ptr %key5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %key5.i.i.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %90)
  %cmp8.not.i.i.i.i = icmp eq i8 %86, %90
  br i1 %cmp8.not.i.i.i.i, label %fscache_volume_same.exit.i.i.i, label %lor.lhs.false4.i.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false4.i.i.i.i.for.inc.i.i.i_crit_edge:   ; preds = %lor.lhs.false4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

fscache_volume_same.exit.i.i.i:                   ; preds = %lor.lhs.false4.i.i.i.i
  %91 = or i8 %86, 3
  %or.i.i7.i.i = zext i8 %91 to i32
  %add13.i.i.i.i = add nuw nsw i32 %or.i.i7.i.i, 1
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef %84, ptr noundef %88, i32 %add13.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %cmp16.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp16.i.i.i.i, label %if.then.i.i.i, label %fscache_volume_same.exit.i.i.i.for.inc.i.i.i_crit_edge

fscache_volume_same.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %fscache_volume_same.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %fscache_volume_same.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.le.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 -32
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.le.i.i.i, i32 noundef 4) #11
  %92 = ptrtoint ptr %add.ptr.le.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %add.ptr.le.i.i.i, align 4
  %debug_id.i.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 -20
  %94 = ptrtoint ptr %debug_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug_id.i.i.i.i, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %95, i32 noundef %93, i32 noundef 11) #11
  %flags.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 104
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i.i) #11
  tail call void @wake_up_bit(ptr noundef %flags.i.i.i, i32 noundef 3) #11
  br label %if.end.i.i

for.inc.i.i.i:                                    ; preds = %fscache_volume_same.exit.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false4.i.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.for.inc.i.i.i_crit_edge, %land.rhs.i.i.i.for.inc.i.i.i_crit_edge
  %96 = ptrtoint ptr %p.014.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p.014.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.land.rhs.i.i.i_crit_edge

for.inc.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i.if.end.i.i_crit_edge, %if.then.i.i.i, %if.then.i28.i.if.end.i.i_crit_edge, %hlist_bl_del.exit.i.i.if.end.i.i_crit_edge
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and1.i.i.i8.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i8.i.i)
  %tobool.not.i.i9.i.i = icmp eq i32 %and1.i.i.i8.i.i, 0
  br i1 %tobool.not.i.i9.i.i, label %do.body4.i.i10.i.i, label %fscache_unhash_volume.exit.i, !prof !69

do.body4.i.i10.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

fscache_unhash_volume.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i11.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i.i.i12.i.i = and i32 %101, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %and.i.i.i.i12.i.i, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %103 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i13.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i13.i.i to ptr
  %preempt_count.i.i.i.i14.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i.i14.i.i, align 4
  %sub.i.i.i15.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i.i15.i.i, ptr %preempt_count.i.i.i.i14.i.i, align 4
  br label %fscache_free_volume.exit

fscache_free_volume.exit:                         ; preds = %fscache_unhash_volume.exit.i, %list_del_init.exit.i.fscache_free_volume.exit_crit_edge
  %107 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %debug_id1, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %108, i32 noundef 0, i32 noundef 4) #11
  %key.i = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 5
  %109 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %key.i, align 4
  tail call void @kfree(ptr noundef %110) #11
  tail call void @kfree(ptr noundef %volume) #11
  %call.i.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_volumes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_volumes, i32 1, i32 3, i32 1) #11
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_volumes, ptr nonnull @fscache_n_volumes, i32 1, ptr nonnull elementtype(i32) @fscache_n_volumes) #11, !srcloc !92
  tail call void @fscache_put_cache(ptr noundef %4, i32 noundef 7) #11
  br label %if.end5

if.end5:                                          ; preds = %fscache_free_volume.exit, %__refcount_dec_and_test.exit.thread, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__fscache_acquire_volume(ptr nocapture noundef readonly %volume_key, ptr noundef %cache_name, ptr noundef readonly %coherency_data, i32 noundef %coherency_len) #0 align 64 {
entry:
  %__wbq_entry.i.i = alloca %struct.wait_bit_queue_entry, align 4
  %__wbq_entry58.i.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %coherency_data, null
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %coherency_len
  %call.i = tail call ptr @fscache_lookup_cache(ptr noundef %cache_name, i1 noundef zeroext false) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %spec.select.i, i32 144) #11
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3520) #15
  %tobool6.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.i.err_cache.i_crit_edge, label %if.end8.i

if.end8.i.i.i.err_cache.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cache.i

if.end8.i:                                        ; preds = %if.end8.i.i.i
  %cache9.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 9
  %0 = ptrtoint ptr %cache9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %cache9.i, align 4
  %conv.i = trunc i32 %spec.select.i to i8
  %coherency_len10.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %coherency_len10.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv.i, ptr %coherency_len10.i, align 4
  br i1 %tobool.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then12.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %coherency.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 14
  %2 = call ptr @memcpy(ptr %coherency.i, ptr %coherency_data, i32 %spec.select.i)
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge
  %proc_link.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %proc_link.i, ptr %proc_link.i, align 8
  %prev.i.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %proc_link.i, ptr %prev.i.i, align 4
  %work.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #11
  %5 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @fscache_alloc_volume.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry17.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %entry17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry17.i, ptr %entry17.i, align 4
  %prev.i89.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 8, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i89.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry17.i, ptr %prev.i89.i, align 16
  %func.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fscache_create_volume_work, ptr %func.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call9.i.i.i, align 128
  %lock.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @fscache_alloc_volume.__key.8, i16 noundef signext 3) #11
  %call23.i = tail call i32 @strlen(ptr noundef %volume_key) #14
  %add.i = add i32 %call23.i, 1
  %or.i = or i32 %add.i, 3
  %add25.i = add i32 %or.i, 1
  %call9.i.i110.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add25.i, i32 noundef 3520) #15
  %tobool27.not.i = icmp eq ptr %call9.i.i110.i, null
  br i1 %tobool27.not.i, label %err_vol.i, label %if.end29.i

if.end29.i:                                       ; preds = %if.end13.i
  %conv30.i = trunc i32 %call23.i to i8
  %10 = ptrtoint ptr %call9.i.i110.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv30.i, ptr %call9.i.i110.i, align 128
  %add.ptr.i = getelementptr i8, ptr %call9.i.i110.i, i32 1
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %volume_key, i32 %call23.i)
  %key31.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %key31.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i110.i, ptr %key31.i, align 4
  %call32.i = tail call i32 @fscache_hash(i32 noundef 0, ptr noundef nonnull %call9.i.i110.i, i32 noundef %add25.i) #11
  %key_hash.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call32.i, ptr %key_hash.i, align 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_volume_debug_id, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_volume_debug_id, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_volume_debug_id, ptr nonnull @fscache_volume_debug_id, i32 1, ptr nonnull elementtype(i32) @fscache_volume_debug_id) #11, !srcloc !78
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  %debug_id.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %asmresult.i.i.i.i.i, ptr %debug_id.i, align 4
  tail call void @down_write(ptr noundef nonnull @fscache_addremove_sem) #11
  %n_volumes.i = getelementptr inbounds %struct.fscache_cache, ptr %call.i, i32 0, i32 4
  %call.i.i88.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_volumes.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %n_volumes.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_volumes.i, ptr %n_volumes.i, i32 1, ptr elementtype(i32) %n_volumes.i) #11, !srcloc !105
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fscache_volumes, i32 0, i32 1), align 4
  %call.i.i114.i = tail call zeroext i1 @__list_add_valid(ptr noundef %proc_link.i, ptr noundef %17, ptr noundef nonnull @fscache_volumes) #11
  br i1 %call.i.i114.i, label %if.end.i.i115.i, label %if.end29.i.list_add_tail.exit.i_crit_edge

if.end29.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i115.i:                                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %proc_link.i, ptr getelementptr inbounds (%struct.list_head, ptr @fscache_volumes, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %proc_link.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fscache_volumes, ptr %proc_link.i, align 8
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %proc_link.i, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i115.i, %if.end29.i.list_add_tail.exit.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %call9.i.i.i, align 128
  %23 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %24, i32 noundef %22, i32 noundef 5) #11
  %call.i.i.i116.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_volumes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_volumes, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_volumes, ptr nonnull @fscache_n_volumes, i32 1, ptr nonnull elementtype(i32) @fscache_n_volumes) #11, !srcloc !105
  tail call void @up_write(ptr noundef nonnull @fscache_addremove_sem) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fscache_debug to i32))
  %26 = load i32, ptr @fscache_debug, align 4
  %and.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool36.not.i, label %list_add_tail.exit.i.if.end_crit_edge, label %do.end42.i, !prof !70

list_add_tail.exit.i.if.end_crit_edge:            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end42.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %31 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_id.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm.i, ptr noundef nonnull @.str.11, i32 noundef %32) #16
  br label %if.end

err_vol.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %err_cache.i

err_cache.i:                                      ; preds = %err_vol.i, %if.end8.i.i.i.err_cache.i_crit_edge
  tail call void @fscache_put_cache(ptr noundef %call.i, i32 noundef 3) #11
  %call.i.i.i117.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_volumes_nomem, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_volumes_nomem, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_volumes_nomem, ptr nonnull @fscache_n_volumes_nomem, i32 1, ptr nonnull elementtype(i32) @fscache_n_volumes_nomem) #11, !srcloc !105
  br label %cleanup

if.end:                                           ; preds = %do.end42.i, %list_add_tail.exit.i.if.end_crit_edge
  %34 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key_hash.i, align 16
  %and.i11 = and i32 %35, 1023
  %arrayidx.i = getelementptr [1024 x %struct.hlist_bl_head], ptr @fscache_volume_hash, i32 0, i32 %and.i11
  %36 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %if.end
  %call.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !94

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #11, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i, label %hlist_bl_lock.exit.i, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !70

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %43 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i1.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !99
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i = and i32 %48, 1
  %tobool12.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i3.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %52, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  br label %while.cond.i.i.i

hlist_bl_lock.exit.i:                             ; preds = %test_and_set_bit_lock.exit.i.i.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %and.i.i13 = and i32 %55, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not61.i = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not61.i, label %hlist_bl_lock.exit.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

hlist_bl_lock.exit.i.for.end.i_crit_edge:         ; preds = %hlist_bl_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %hlist_bl_lock.exit.i
  %56 = inttoptr i32 %and.i.i13 to ptr
  %57 = ptrtoint ptr %key_hash.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_hash.i, align 16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %p.062.i = phi ptr [ %56, %land.rhs.lr.ph.i ], [ %83, %for.inc.i.land.rhs.i_crit_edge ]
  %key_hash1.i.i = getelementptr i8, ptr %p.062.i, i32 -16
  %59 = ptrtoint ptr %key_hash1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %key_hash1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.not.i.i = icmp eq i32 %58, %60
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %land.rhs.i
  %61 = ptrtoint ptr %cache9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cache9.i, align 4
  %cache2.i.i = getelementptr i8, ptr %p.062.i, i32 52
  %63 = ptrtoint ptr %cache2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cache2.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %62, %64
  br i1 %cmp3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %65 = ptrtoint ptr %key31.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %key31.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %key5.i.i = getelementptr i8, ptr %p.062.i, i32 -12
  %69 = ptrtoint ptr %key5.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %key5.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %72)
  %cmp8.not.i.i = icmp eq i8 %68, %72
  br i1 %cmp8.not.i.i, label %fscache_volume_same.exit.i, label %lor.lhs.false4.i.i.for.inc.i_crit_edge

lor.lhs.false4.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fscache_volume_same.exit.i:                       ; preds = %lor.lhs.false4.i.i
  %73 = or i8 %68, 3
  %or.i.i = zext i8 %73 to i32
  %add13.i.i = add nuw nsw i32 %or.i.i, 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef %66, ptr noundef %70, i32 %add13.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp16.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp16.i.i, label %if.then.i, label %fscache_volume_same.exit.i.for.inc.i_crit_edge

fscache_volume_same.exit.i.for.inc.i_crit_edge:   ; preds = %fscache_volume_same.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %fscache_volume_same.exit.i
  %add.ptr.le.i = getelementptr i8, ptr %p.062.i, i32 -32
  %flags.i = getelementptr i8, ptr %p.062.i, i32 104
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  %call.i.i.i.i48.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.le.i, i32 noundef 4) #11
  %76 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %add.ptr.le.i, align 4
  %debug_id.i49.i = getelementptr i8, ptr %p.062.i, i32 -20
  %78 = ptrtoint ptr %debug_id.i49.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug_id.i49.i, align 4
  br i1 %tobool5.not.i, label %collision.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_fscache_volume(i32 noundef %79, i32 noundef %77, i32 noundef 3) #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #11
  %flags8.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags8.i) #11
  %80 = ptrtoint ptr %debug_id.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %debug_id.i49.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %fscache_volume_same.exit.i.for.inc.i_crit_edge, %lor.lhs.false4.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %82 = ptrtoint ptr %p.062.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p.062.i, align 4
  %tobool.not.i14 = icmp eq ptr %83, null
  br i1 %tobool.not.i14, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i, %hlist_bl_lock.exit.i.for.end.i_crit_edge
  %collidee_debug_id.0.i = phi i32 [ %81, %if.end.i ], [ 0, %hlist_bl_lock.exit.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %hash_link.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %86 = ptrtoint ptr %85 to i32
  %and.i.i.i = and i32 %86, -2
  %87 = inttoptr i32 %and.i.i.i to ptr
  %88 = ptrtoint ptr %hash_link.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %hash_link.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.if.end.i37.i_crit_edge, label %if.then.i.i

for.end.i.if.end.i37.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i37.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %hash_link.i, ptr %pprev.i.i, align 4
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.then.i.i, %for.end.i.if.end.i37.i_crit_edge
  %pprev3.i.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 7, i32 1
  %90 = ptrtoint ptr %pprev3.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx.i, ptr %pprev3.i.i, align 4
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 4
  %93 = ptrtoint ptr %92 to i32
  %and8.i.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %cmp.not.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %cmp.not.not.i.i.i, label %do.body16.i.i.i, label %hlist_bl_add_head.exit.i, !prof !69

do.body16.i.i.i:                                  ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

hlist_bl_add_head.exit.i:                         ; preds = %if.end.i37.i
  %94 = ptrtoint ptr %hash_link.i to i32
  %or.i.i.i = or i32 %94, 1
  %95 = inttoptr i32 %or.i.i.i to ptr
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %arrayidx.i, align 4
  %97 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i38.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and1.i.i.i38.i, 0
  br i1 %tobool.not.i.i39.i, label %do.body4.i.i40.i, label %hlist_bl_unlock.exit.i, !prof !69

do.body4.i.i40.i:                                 ; preds = %hlist_bl_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

hlist_bl_unlock.exit.i:                           ; preds = %hlist_bl_add_head.exit.i
  %call.i.i.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i42.i = and i32 %99, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %and.i.i.i.i42.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %101 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i43.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i45.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i45.i, ptr %preempt_count.i.i.i.i44.i, align 4
  %flags10.i = getelementptr inbounds %struct.fscache_volume, ptr %call9.i.i.i, i32 0, i32 12
  %105 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags10.i, align 8
  %107 = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool12.not.i = icmp eq i32 %107, 0
  br i1 %tobool12.not.i, label %hlist_bl_unlock.exit.i.if.end5_crit_edge, label %if.then13.i

hlist_bl_unlock.exit.i.if.end5_crit_edge:         ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then13.i:                                      ; preds = %hlist_bl_unlock.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 145) #11
  %108 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags10.i, align 8
  %110 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool.i.not.i.i, label %if.then13.i.if.end36.i.i_crit_edge, label %if.then9.i.i

if.then13.i.if.end36.i.i_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.then9.i.i:                                     ; preds = %if.then13.i
  %call10.i.i = tail call ptr @__var_waitqueue(ptr noundef %flags10.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry.i.i) #11
  %111 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry.i.i, i32 0, i32 1
  %112 = call ptr @memset(ptr %__wbq_entry.i.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry.i.i, ptr noundef %flags10.i, i32 noundef 0) #11
  %call13112.i.i = call i32 @prepare_to_wait_event(ptr noundef %call10.i.i, ptr noundef %111, i32 noundef 2) #11
  %113 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flags10.i, align 8
  %115 = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.i100.not113.i.i = icmp eq i32 %115, 0
  br i1 %tobool.i100.not113.i.i, label %if.then9.i.i.for.end.i.i_crit_edge, label %if.then9.i.i.cleanup.i.i_crit_edge

if.then9.i.i.cleanup.i.i_crit_edge:               ; preds = %if.then9.i.i
  br label %cleanup.i.i

if.then9.i.i.for.end.i.i_crit_edge:               ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then9.i.i.cleanup.i.i_crit_edge
  %__ret11.1114.i.i = phi i32 [ %__ret11.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 2000, %if.then9.i.i.cleanup.i.i_crit_edge ]
  %call33.i.i = call i32 @schedule_timeout(i32 noundef %__ret11.1114.i.i) #11
  %call13.i.i = call i32 @prepare_to_wait_event(ptr noundef %call10.i.i, ptr noundef %111, i32 noundef 2) #11
  %116 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %flags10.i, align 8
  %118 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.i100.not.i.i = icmp eq i32 %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool20.not.i.i = icmp eq i32 %call33.i.i, 0
  %119 = select i1 %tobool.i100.not.i.i, i1 %tobool20.not.i.i, i1 false
  %__ret11.1.i.i = select i1 %119, i32 1, i32 %call33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1.i.i)
  %tobool26.not.i.i = icmp eq i32 %__ret11.1.i.i, 0
  %120 = select i1 %tobool.i100.not.i.i, i1 true, i1 %tobool26.not.i.i
  br i1 %120, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then9.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %call10.i.i, ptr noundef %111) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry.i.i) #11
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %for.end.i.i, %if.then13.i.if.end36.i.i_crit_edge
  %121 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %flags10.i, align 8
  %123 = and i32 %122, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.i102.not.i.i = icmp eq i32 %123, 0
  br i1 %tobool.i102.not.i.i, label %do.end42.i.i, label %if.end36.i.i.if.end5_crit_edge

if.end36.i.i.if.end5_crit_edge:                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end42.i.i:                                     ; preds = %if.end36.i.i
  %124 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %debug_id.i, align 4
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %125, i32 noundef %collidee_debug_id.0.i) #16
  %call.i.i.i.i47.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_volumes_collision, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @fscache_n_volumes_collision, i32 1, i32 3, i32 1) #11
  %126 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_volumes_collision, ptr nonnull @fscache_n_volumes_collision, i32 1, ptr nonnull elementtype(i32) @fscache_n_volumes_collision) #11, !srcloc !105
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 150) #11
  %127 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %flags10.i, align 8
  %129 = and i32 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.i104.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool.i104.not.i.i, label %do.end42.i.i.if.end5_crit_edge, label %if.end54.i.i

do.end42.i.i.if.end5_crit_edge:                   ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end54.i.i:                                     ; preds = %do.end42.i.i
  %call57.i.i = call ptr @__var_waitqueue(ptr noundef %flags10.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry58.i.i) #11
  %130 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry58.i.i, i32 0, i32 1
  %131 = call ptr @memset(ptr %__wbq_entry58.i.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry58.i.i, ptr noundef %flags10.i, i32 noundef 0) #11
  %call64115.i.i = call i32 @prepare_to_wait_event(ptr noundef %call57.i.i, ptr noundef %130, i32 noundef 2) #11
  %132 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %flags10.i, align 8
  %134 = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.i106.not116.i.i = icmp eq i32 %134, 0
  br i1 %tobool.i106.not116.i.i, label %if.end54.i.i.for.end71.i.i_crit_edge, label %if.end54.i.i.cleanup68.i.i_crit_edge

if.end54.i.i.cleanup68.i.i_crit_edge:             ; preds = %if.end54.i.i
  br label %cleanup68.i.i

if.end54.i.i.for.end71.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71.i.i

cleanup68.i.i:                                    ; preds = %cleanup68.i.i.cleanup68.i.i_crit_edge, %if.end54.i.i.cleanup68.i.i_crit_edge
  call void @schedule() #11
  %call64.i.i = call i32 @prepare_to_wait_event(ptr noundef %call57.i.i, ptr noundef %130, i32 noundef 2) #11
  %135 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags10.i, align 8
  %137 = and i32 %136, 8
  %tobool.i106.not.i.i = icmp eq i32 %137, 0
  br i1 %tobool.i106.not.i.i, label %cleanup68.i.i.for.end71.i.i_crit_edge, label %cleanup68.i.i.cleanup68.i.i_crit_edge

cleanup68.i.i.cleanup68.i.i_crit_edge:            ; preds = %cleanup68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68.i.i

cleanup68.i.i.for.end71.i.i_crit_edge:            ; preds = %cleanup68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71.i.i

for.end71.i.i:                                    ; preds = %cleanup68.i.i.for.end71.i.i_crit_edge, %if.end54.i.i.for.end71.i.i_crit_edge
  call void @finish_wait(ptr noundef %call57.i.i, ptr noundef %130) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry58.i.i) #11
  br label %if.end5

collision.i:                                      ; preds = %if.then.i
  tail call fastcc void @trace_fscache_volume(i32 noundef %79, i32 noundef %77, i32 noundef 0) #11
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i50.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i50.i)
  %tobool.not.i.i51.i = icmp eq i32 %and1.i.i.i50.i, 0
  br i1 %tobool.not.i.i51.i, label %do.body4.i.i52.i, label %if.then3, !prof !69

do.body4.i.i52.i:                                 ; preds = %collision.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

if.then3:                                         ; preds = %collision.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i53.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i54.i = and i32 %141, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %and.i.i.i.i54.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %143 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i.i.i.i55.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i57.i = add i32 %146, -1
  store volatile i32 %sub.i.i.i57.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @fscache_put_volume(ptr noundef nonnull %call9.i.i.i, i32 noundef 8)
  br label %cleanup

if.end5:                                          ; preds = %for.end71.i.i, %do.end42.i.i.if.end5_crit_edge, %if.end36.i.i.if.end5_crit_edge, %hlist_bl_unlock.exit.i.if.end5_crit_edge
  call void @fscache_create_volume(ptr noundef nonnull %call9.i.i.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %err_cache.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i.i, %if.end5 ], [ inttoptr (i32 -16 to ptr), %if.then3 ], [ inttoptr (i32 -12 to ptr), %err_cache.i ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fscache_relinquish_volume(ptr noundef %volume, ptr noundef readonly %coherency_data, i1 noundef zeroext %invalidate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 12
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22.critedge, label %do.end, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end22.critedge:                                ; preds = %entry
  br i1 %invalidate, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  br label %if.end29

if.else:                                          ; preds = %if.end22.critedge
  %tobool26.not = icmp eq ptr %coherency_data, null
  br i1 %tobool26.not, label %if.else.if.end29_crit_edge, label %if.then27

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %coherency = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 14
  %coherency_len = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 13
  %0 = ptrtoint ptr %coherency_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %coherency_len, align 4
  %conv = zext i8 %1 to i32
  %2 = call ptr @memcpy(ptr %coherency, ptr %coherency_data, i32 %conv)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.else.if.end29_crit_edge, %if.then24
  tail call void @fscache_put_volume(ptr noundef %volume, i32 noundef 9)
  br label %return

return:                                           ; preds = %if.end29, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscache_withdraw_volume(ptr noundef %volume) #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fscache_debug to i32))
  %0 = load i32, ptr @fscache_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !70

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, i32 noundef %6) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %n_accesses7 = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_accesses7, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %n_accesses7, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_accesses7, ptr %n_accesses7, i32 1, ptr elementtype(i32) %n_accesses7) #11, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %debug_id9 = getelementptr inbounds %struct.fscache_volume, ptr %volume, i32 0, i32 3
  %8 = ptrtoint ptr %debug_id9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id9, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %volume, i32 noundef 4) #11
  %10 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %volume, align 4
  tail call fastcc void @trace_fscache_access_volume(i32 noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef %asmresult.i.i.i.i, i32 noundef 3)
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 461) #11
  %call.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_accesses7, i32 noundef 4) #11
  %12 = ptrtoint ptr %n_accesses7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %n_accesses7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %do.end6.do.end34_crit_edge, label %if.end21

do.end6.do.end34_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.end21:                                         ; preds = %do.end6
  %call23 = tail call ptr @__var_waitqueue(ptr noundef %n_accesses7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #11
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %15 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %n_accesses7, i32 noundef 0) #11
  %call2547 = call i32 @prepare_to_wait_event(ptr noundef %call23, ptr noundef %14, i32 noundef 2) #11
  %call.i.i4448 = call zeroext i1 @__kasan_check_read(ptr noundef %n_accesses7, i32 noundef 4) #11
  %16 = ptrtoint ptr %n_accesses7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %n_accesses7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2849 = icmp eq i32 %17, 0
  br i1 %cmp2849, label %if.end21.for.end_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  br label %cleanup

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  call void @schedule() #11
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %call23, ptr noundef %14, i32 noundef 2) #11
  %call.i.i44 = call zeroext i1 @__kasan_check_read(ptr noundef %n_accesses7, i32 noundef 4) #11
  %18 = ptrtoint ptr %n_accesses7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %n_accesses7, align 4
  %cmp28 = icmp eq i32 %19, 0
  br i1 %cmp28, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end21.for.end_crit_edge
  call void @finish_wait(ptr noundef %call23, ptr noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #11
  br label %do.end34

do.end34:                                         ; preds = %for.end, %do.end6.do.end34_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fscache_volumes_seq_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fscache_addremove_sem) #11
  %0 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_pos, align 8
  %call = tail call ptr @seq_list_start_head(ptr noundef nonnull @fscache_volumes, i64 noundef %1) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscache_volumes_seq_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_read(ptr noundef nonnull @fscache_addremove_sem) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fscache_volumes_seq_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @fscache_volumes, ptr noundef %_pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fscache_volumes_seq_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, @fscache_volumes
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %v, i32 -24
  %debug_id = getelementptr i8, ptr %v, i32 -12
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  %n_cookies = getelementptr i8, ptr %v, i32 -20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_cookies, i32 noundef 4) #11
  %4 = ptrtoint ptr %n_cookies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %n_cookies, align 4
  %n_accesses = getelementptr i8, ptr %v, i32 -16
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_accesses, i32 noundef 4) #11
  %6 = ptrtoint ptr %n_accesses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %n_accesses, align 4
  %flags = getelementptr i8, ptr %v, i32 112
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %cache = getelementptr i8, ptr %v, i32 60
  %10 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache, align 4
  %name = getelementptr inbounds %struct.fscache_cache, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %13, null
  %..str.16 = select i1 %tobool.not, ptr @.str.16, ptr %13
  %key = getelementptr i8, ptr %v, i32 -4
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key, align 4
  %add.ptr3 = getelementptr i8, ptr %15, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %..str.16, ptr noundef %add.ptr3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_fscache_volume(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_fscache_access_volume(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscache_lookup_cache(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscache_create_volume_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  %debug_id.i = getelementptr i8, ptr %work, i32 -28
  %2 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_fscache_volume(i32 noundef %3, i32 noundef %1, i32 noundef 10) #11
  %cache = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %acquire_volume = getelementptr inbounds %struct.fscache_cache_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %acquire_volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire_volume, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %9(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache, align 4
  tail call void @fscache_end_cache_access(ptr noundef %11, i32 noundef 1) #11
  %flags = getelementptr i8, ptr %work, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 16, ptr elementtype(i32) %flags) #11, !srcloc !88
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 4) #11
  tail call void @fscache_put_volume(ptr noundef %add.ptr, i32 noundef 7)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_hash(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_put_cache(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_end_cache_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__ksymtab_fscache_end_volume_access, !1, !"__ksymtab_fscache_end_volume_access", i1 false, i1 false}
!1 = !{!"../fs/fscache/volume.c", i32 120, i32 1}
!2 = !{ptr @__ksymtab___fscache_acquire_volume, !3, !"__ksymtab___fscache_acquire_volume", i1 false, i1 false}
!3 = !{!"../fs/fscache/volume.c", i32 336, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fscache/volume.c", i32 428, i32 6}
!6 = !{ptr @__ksymtab___fscache_relinquish_volume, !7, !"__ksymtab___fscache_relinquish_volume", i1 false, i1 false}
!7 = !{!"../fs/fscache/volume.c", i32 439, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fscache/volume.c", i32 452, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fscache_withdraw_volume._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @fscache_withdraw_volume._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_fscache_withdraw_volume, !14, !"__ksymtab_fscache_withdraw_volume", i1 false, i1 false}
!14 = !{!"../fs/fscache/volume.c", i32 463, i32 1}
!15 = !{ptr @fscache_volumes_seq_ops, !16, !"fscache_volumes_seq_ops", i1 false, i1 false}
!16 = !{!"../fs/fscache/volume.c", i32 511, i32 29}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/trace/events/fscache.h", i32 228, i32 1}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/trace/events/fscache.h", i32 340, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!30 = !{ptr @fscache_alloc_volume.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/fscache/volume.c", i32 225, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fscache_alloc_volume.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/fscache/volume.c", i32 227, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/fscache/volume.c", i32 250, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fscache_alloc_volume._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @fscache_alloc_volume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @fscache_volume_debug_id, !42, !"fscache_volume_debug_id", i1 false, i1 false}
!42 = !{!"../fs/fscache/volume.c", i32 15, i32 17}
!43 = !{ptr @fscache_volumes, !44, !"fscache_volumes", i1 false, i1 false}
!44 = !{!"../fs/fscache/volume.c", i32 16, i32 8}
!45 = !{ptr @fscache_volume_hash, !46, !"fscache_volume_hash", i1 false, i1 false}
!46 = !{!"../fs/fscache/volume.c", i32 14, i32 29}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/fscache/volume.c", i32 147, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fscache_wait_on_volume_collision._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @fscache_wait_on_volume_collision._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/fscache/volume.c", i32 475, i32 5}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/fscache/volume.c", i32 482, i32 6}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/fscache/volume.c", i32 488, i32 29}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148595120, i64 2148595152, i64 2148595181, i64 2148595215, i64 2148595246, i64 2148595269}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148214316, i64 2148214321, i64 2148214334, i64 2148214378, i64 2148214412, i64 2148214433}
!72 = !{i64 2154787192}
!73 = !{i64 2154787441}
!74 = !{i64 2149939020}
!75 = !{i64 2149940056}
!76 = !{i64 2154973302}
!77 = !{i64 2148679025}
!78 = !{i64 2148594310, i64 2148594342, i64 2148594371, i64 2148594405, i64 2148594436, i64 2148594459}
!79 = !{i64 2148679254}
!80 = !{i64 2154980562}
!81 = !{i64 2154980740}
!82 = !{i64 2148682066}
!83 = !{i64 2148596775, i64 2148596807, i64 2148596836, i64 2148596870, i64 2148596901, i64 2148596924}
!84 = !{i64 2148682295}
!85 = !{i64 2154864027}
!86 = !{i64 2154864340}
!87 = !{i64 2148690440}
!88 = !{i64 2148600835, i64 2148600867, i64 2148600896, i64 2148600930, i64 2148600961, i64 2148600984}
!89 = !{i64 2148683145}
!90 = !{i64 2148597585, i64 2148597617, i64 2148597646, i64 2148597680, i64 2148597711, i64 2148597734}
!91 = !{i64 2149880918}
!92 = !{i64 2148596055, i64 2148596081, i64 2148596110, i64 2148596144, i64 2148596175, i64 2148596198}
!93 = !{i64 2152256594}
!94 = !{!"branch_weights", i32 2146410443, i32 1073205}
!95 = !{i64 2148602448, i64 2148602480, i64 2148602509, i64 2148602543, i64 2148602574, i64 2148602597}
!96 = !{i64 2148691553}
!97 = !{i64 2152256754}
!98 = !{i64 2152257031}
!99 = !{i64 2152256873}
!100 = !{i64 2152257236}
!101 = !{i64 2152276025, i64 2152276513, i64 2152276062, i64 2152276118, i64 2152276152, i64 2152276176, i64 2152276217, i64 2152276238, i64 2152276266, i64 2152276300}
!102 = !{i64 2152260275, i64 2152260767, i64 2152260312, i64 2152260368, i64 2152260402, i64 2152260426, i64 2152260467, i64 2152260488, i64 2152260516, i64 2152260550}
!103 = !{i64 2148675575}
!104 = !{i64 2152261670}
!105 = !{i64 2148593590, i64 2148593616, i64 2148593645, i64 2148593679, i64 2148593710, i64 2148593733}
!106 = !{i64 2152264667, i64 2152265154, i64 2152264704, i64 2152264760, i64 2152264794, i64 2152264818, i64 2152264859, i64 2152264880, i64 2152264908, i64 2152264942}
