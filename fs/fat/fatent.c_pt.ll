; ModuleID = '/llk/IR_all_yes/fs/fat/fatent.c_pt.bc'
source_filename = "../fs/fat/fatent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fat_free_clusters\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_free_clusters\09\09\09\09"
module asm "\09.long\09__crc_fat_free_clusters\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_free_clusters:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_free_clusters\22\09\09\09\09\09"
module asm "__kstrtabns_fat_free_clusters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fatent_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.fat_entry = type { i32, %union.anon.78, i32, [2 x ptr], ptr }
%union.anon.78 = type { [2 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fatent_ra = type { i64, i64, i32, i64, i64, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.35 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.35 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@fat_ent_access_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sbi->fat_lock\00", [17 x i8] zeroinitializer }, align 32
@fat32_ops = internal constant { %struct.fatent_operations, [40 x i8] } { %struct.fatent_operations { ptr @fat_ent_blocknr, ptr @fat32_ent_set_ptr, ptr @fat_ent_bread, ptr @fat32_ent_get, ptr @fat32_ent_put, ptr @fat32_ent_next }, [40 x i8] zeroinitializer }, align 32
@fat16_ops = internal constant { %struct.fatent_operations, [40 x i8] } { %struct.fatent_operations { ptr @fat_ent_blocknr, ptr @fat16_ent_set_ptr, ptr @fat_ent_bread, ptr @fat16_ent_get, ptr @fat16_ent_put, ptr @fat16_ent_next }, [40 x i8] zeroinitializer }, align 32
@fat12_ops = internal constant { %struct.fatent_operations, [40 x i8] } { %struct.fatent_operations { ptr @fat12_ent_blocknr, ptr @fat12_ent_set_ptr, ptr @fat12_ent_bread, ptr @fat12_ent_get, ptr @fat12_ent_put, ptr @fat12_ent_next }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid FAT variant, %u bits\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid access to FAT (entry 0x%08x)\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: deleting FAT entry beyond EOF\00", [62 x i8] zeroinitializer }, align 32
@__func__.fat_free_clusters = private unnamed_addr constant [18 x i8] c"fat_free_clusters\00", align 1
@__kstrtab_fat_free_clusters = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_free_clusters = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_free_clusters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_free_clusters to i32), ptr @__kstrtab_fat_free_clusters, ptr @__kstrtabns_fat_free_clusters }, section "___ksymtab_gpl+fat_free_clusters", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/fat/fatent.c\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FAT read failed (blocknr %llu)\00", [33 x i8] zeroinitializer }, align 32
@fat12_entry_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fat12_entry_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 16, i64 32]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 292, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"fat32_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 269, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"fat16_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 260, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"fat12_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 251, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 304, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 358, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 572, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 743, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 110, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 110, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"fat12_entry_lock\00", align 1
@___asan_gen_.47 = private constant [19 x i8] c"../fs/fat/fatent.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 21, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 366, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_fat_free_clusters, ptr @fat_ent_access_init.__key, ptr @.str, ptr @fat32_ops, ptr @fat16_ops, ptr @fat12_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fat12_entry_lock, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_ent_access_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat32_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat16_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat12_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat12_entry_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_ent_access_init(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fat_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %fat_lock, ptr noundef nonnull @.str, ptr noundef nonnull @fat_ent_access_init.__key) #8
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fat_bits.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else11 [
    i8 32, label %if.then
    i8 16, label %if.then3
    i8 12, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fatent_shift = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %fatent_shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %fatent_shift, align 4
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fat32_ops, ptr %fatent_ops, align 4
  br label %if.end13

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fatent_shift4 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %fatent_shift4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %fatent_shift4, align 4
  %fatent_ops5 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %fatent_ops5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fat16_ops, ptr %fatent_ops5, align 4
  br label %if.end13

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fatent_shift9 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %fatent_shift9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fatent_shift9, align 4
  %fatent_ops10 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %fatent_ops10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fat12_ops, ptr %fatent_ops10, align 4
  br label %if.end13

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then8, %if.then3, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_ent_read(ptr nocapture noundef readonly %inode, ptr noundef %fatent, i32 noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %blocknr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %offset, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %7 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %blocknr, align 8, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entry1)
  %cmp.i = icmp sgt i32 %entry1, 1
  br i1 %cmp.i, label %fat_valid_entry.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

fat_valid_entry.exit:                             ; preds = %entry
  %max_cluster.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %max_cluster.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_cluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %entry1)
  %cmp2.i = icmp ugt i32 %9, %entry1
  br i1 %cmp2.i, label %if.end, label %fat_valid_entry.exit.if.then_crit_edge

fat_valid_entry.exit.if.then_crit_edge:           ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %fat_valid_entry.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %u.i = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %u.i, align 4
  %nr_bhs.i = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %11 = ptrtoint ptr %nr_bhs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_bhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.i = icmp sgt i32 %12, 0
  br i1 %cmp14.i, label %if.then.for.body.i_crit_edge, label %if.then.fatent_brelse.exit_crit_edge

if.then.fatent_brelse.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %14) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %15 = ptrtoint ptr %nr_bhs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_bhs.i, align 4
  %cmp.i33 = icmp slt i32 %inc.i, %16
  br i1 %cmp.i33, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.fatent_brelse.exit_crit_edge

brelse.exit.i.fatent_brelse.exit_crit_edge:       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fatent_brelse.exit:                               ; preds = %brelse.exit.i.fatent_brelse.exit_crit_edge, %if.then.fatent_brelse.exit_crit_edge
  %17 = call ptr @memset(ptr %nr_bhs.i, i32 0, i32 16)
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %entry1) #11
  br label %cleanup

if.end:                                           ; preds = %fat_valid_entry.exit
  %18 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %entry1, ptr %fatent, align 4
  %u.i34 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %19 = ptrtoint ptr %u.i34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %u.i34, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  call void %21(ptr noundef %1, i32 noundef %entry1, ptr noundef nonnull %offset, ptr noundef nonnull %blocknr) #8
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %24 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %blocknr, align 8
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i = getelementptr inbounds %struct.msdos_sb_info, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %fatent_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fatent_ops.i, align 4
  %nr_bhs.i35 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %30 = ptrtoint ptr %nr_bhs.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_bhs.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then5.thread, label %lor.lhs.false.i

if.then5.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %u.i34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %u.i34, align 4
  br label %fatent_brelse.exit50

lor.lhs.false.i:                                  ; preds = %if.end
  %bhs1.i = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %33 = ptrtoint ptr %bhs1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bhs1.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %25)
  %cmp.not.i = icmp eq i64 %36, %25
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.if.then5_crit_edge

lor.lhs.false.i.if.then5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %27, i32 0, i32 4
  %37 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %38)
  %cmp.i.i = icmp eq i8 %38, 12
  br i1 %cmp.i.i, label %if.then3.i, label %if.end.i.fat_ent_update_ptr.exit_crit_edge

if.end.i.fat_ent_update_ptr.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_update_ptr.exit

if.then3.i:                                       ; preds = %if.end.i
  %add.i = add i32 %23, 1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %40)
  %cmp4.i = icmp ult i32 %add.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp7.i = icmp eq i32 %31, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  br i1 %cmp7.i, label %if.then8.i, label %if.then5.i.fat_ent_update_ptr.exit_crit_edge

if.then5.i.fat_ent_update_ptr.exit_crit_edge:     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_update_ptr.exit

if.then8.i:                                       ; preds = %if.then5.i
  %arrayidx9.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx9.i, align 4
  %tobool.not.i.i36 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i36, label %if.then8.i.brelse.exit.i38_crit_edge, label %if.then.i.i37

if.then8.i.brelse.exit.i38_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i38

if.then.i.i37:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %42) #8
  br label %brelse.exit.i38

brelse.exit.i38:                                  ; preds = %if.then.i.i37, %if.then8.i.brelse.exit.i38_crit_edge
  %43 = ptrtoint ptr %nr_bhs.i35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %nr_bhs.i35, align 4
  br label %fat_ent_update_ptr.exit

if.else.i:                                        ; preds = %if.then3.i
  br i1 %cmp7.i, label %if.end15.i, label %if.else.i.if.then5_crit_edge

if.else.i.if.then5_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end15.i:                                       ; preds = %if.else.i
  %arrayidx16.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx16.i, align 4
  %b_blocknr17.i = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %b_blocknr17.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %b_blocknr17.i, align 8
  %add18.i = add i64 %25, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %add18.i)
  %cmp19.not.i = icmp eq i64 %47, %add18.i
  br i1 %cmp19.not.i, label %if.end15.i.fat_ent_update_ptr.exit_crit_edge, label %if.end15.i.if.then5_crit_edge

if.end15.i.if.then5_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end15.i.fat_ent_update_ptr.exit_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_update_ptr.exit

fat_ent_update_ptr.exit:                          ; preds = %if.end15.i.fat_ent_update_ptr.exit_crit_edge, %brelse.exit.i38, %if.then5.i.fat_ent_update_ptr.exit_crit_edge, %if.end.i.fat_ent_update_ptr.exit_crit_edge
  %ent_set_ptr.i = getelementptr inbounds %struct.fatent_operations, ptr %29, i32 0, i32 1
  %48 = ptrtoint ptr %ent_set_ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ent_set_ptr.i, align 4
  call void %49(ptr noundef %fatent, i32 noundef %23) #8
  br label %if.end10

if.then5:                                         ; preds = %if.end15.i.if.then5_crit_edge, %if.else.i.if.then5_crit_edge, %lor.lhs.false.i.if.then5_crit_edge
  %50 = ptrtoint ptr %nr_bhs.i35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %nr_bhs.i35, align 4
  %51 = ptrtoint ptr %u.i34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %u.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp14.i41 = icmp sgt i32 %.pr, 0
  br i1 %cmp14.i41, label %if.then5.for.body.i45_crit_edge, label %if.then5.fatent_brelse.exit50_crit_edge

if.then5.fatent_brelse.exit50_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit50

if.then5.for.body.i45_crit_edge:                  ; preds = %if.then5
  br label %for.body.i45

for.body.i45:                                     ; preds = %brelse.exit.i49.for.body.i45_crit_edge, %if.then5.for.body.i45_crit_edge
  %i.015.i42 = phi i32 [ %inc.i47, %brelse.exit.i49.for.body.i45_crit_edge ], [ 0, %if.then5.for.body.i45_crit_edge ]
  %arrayidx.i43 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i42
  %52 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not.i.i44 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i44, label %for.body.i45.brelse.exit.i49_crit_edge, label %if.then.i.i46

for.body.i45.brelse.exit.i49_crit_edge:           ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i49

if.then.i.i46:                                    ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %53) #8
  br label %brelse.exit.i49

brelse.exit.i49:                                  ; preds = %if.then.i.i46, %for.body.i45.brelse.exit.i49_crit_edge
  %inc.i47 = add nuw nsw i32 %i.015.i42, 1
  %54 = ptrtoint ptr %nr_bhs.i35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_bhs.i35, align 4
  %cmp.i48 = icmp slt i32 %inc.i47, %55
  br i1 %cmp.i48, label %brelse.exit.i49.for.body.i45_crit_edge, label %brelse.exit.i49.fatent_brelse.exit50_crit_edge

brelse.exit.i49.fatent_brelse.exit50_crit_edge:   ; preds = %brelse.exit.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit50

brelse.exit.i49.for.body.i45_crit_edge:           ; preds = %brelse.exit.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i45

fatent_brelse.exit50:                             ; preds = %brelse.exit.i49.fatent_brelse.exit50_crit_edge, %if.then5.fatent_brelse.exit50_crit_edge, %if.then5.thread
  %56 = call ptr @memset(ptr %nr_bhs.i35, i32 0, i32 16)
  %ent_bread = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 2
  %57 = ptrtoint ptr %ent_bread to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ent_bread, align 4
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %61 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %blocknr, align 8
  %call6 = call i32 %58(ptr noundef %1, ptr noundef %fatent, i32 noundef %60, i64 noundef %62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %fatent_brelse.exit50.if.end10_crit_edge, label %fatent_brelse.exit50.cleanup_crit_edge

fatent_brelse.exit50.cleanup_crit_edge:           ; preds = %fatent_brelse.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fatent_brelse.exit50.if.end10_crit_edge:          ; preds = %fatent_brelse.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %fatent_brelse.exit50.if.end10_crit_edge, %fat_ent_update_ptr.exit
  %ent_get = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 3
  %63 = ptrtoint ptr %ent_get to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ent_get, align 4
  %call11 = call i32 %64(ptr noundef %fatent) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %fatent_brelse.exit50.cleanup_crit_edge, %fatent_brelse.exit
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -5, %fatent_brelse.exit ], [ %call6, %fatent_brelse.exit50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_ent_write(ptr nocapture noundef readonly %inode, ptr noundef %fatent, i32 noundef %new, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fatent_ops, align 4
  %ent_put = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ent_put to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ent_put, align 4
  tail call void %7(ptr noundef %fatent, i32 noundef %new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %8 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_bhs, align 4
  %call1 = tail call i32 @fat_sync_bhs(ptr noundef %bhs, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %bhs5 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %nr_bhs7 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %10 = ptrtoint ptr %nr_bhs7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_bhs7, align 4
  %call8 = tail call fastcc i32 @fat_mirror_bhs(ptr noundef %1, ptr noundef %bhs5, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_bhs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_mirror_bhs(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bhs, i32 noundef %nr_bhs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fats = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fats to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fats, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp55 = icmp ugt i8 %3, 1
  br i1 %cmp55, label %for.body.lr.ph, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %entry
  %fat_length = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs)
  %cmp452 = icmp sgt i32 %nr_bhs, 0
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %fat_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 28
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %for.body.lr.ph
  %copy.056 = phi i32 [ 1, %for.body.lr.ph ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %4 = ptrtoint ptr %fat_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fat_length, align 4
  %mul = mul i32 %5, %copy.056
  %conv2 = zext i32 %mul to i64
  br i1 %cmp452, label %for.body.for.body6_crit_edge, label %for.body.for.inc17_crit_edge

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.cond3:                                        ; preds = %brelse.exit.for.cond3_crit_edge, %brelse.exit.thread
  %inc = add nuw nsw i32 %n.053, 1
  %exitcond.not = icmp eq i32 %inc, %nr_bhs
  br i1 %exitcond.not, label %for.cond3.for.inc17_crit_edge, label %for.cond3.for.body6_crit_edge

for.cond3.for.body6_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.cond3.for.inc17_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

for.body6:                                        ; preds = %for.cond3.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %n.053 = phi i32 [ %inc, %for.cond3.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %n.053
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b_blocknr, align 8
  %add = add i64 %9, %conv2
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %11, i64 noundef %add, i32 noundef %13, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body6.cleanup20_crit_edge, label %if.end

for.body6.cleanup20_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end:                                           ; preds = %for.body6
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i45_crit_edge

if.end.if.then.i45_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i45

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %17 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i45_crit_edge

trylock_buffer.exit.i.if.then.i45_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i45

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i45:                                      ; preds = %trylock_buffer.exit.i.if.then.i45_crit_edge, %if.end.if.then.i45_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i45, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %b_data9 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data9, align 4
  %24 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize.i, align 16
  %26 = call ptr @memcpy(ptr %19, ptr %23, i32 %25)
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #8
  %29 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fat_inode, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i, ptr noundef %30) #8
  %31 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_flags, align 4
  %and = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %brelse.exit.thread, label %brelse.exit

brelse.exit.thread:                               ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %for.cond3

brelse.exit:                                      ; preds = %set_buffer_uptodate.exit
  %call12 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %brelse.exit.for.cond3_crit_edge, label %brelse.exit.cleanup20_crit_edge

brelse.exit.cleanup20_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

brelse.exit.for.cond3_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3

for.inc17:                                        ; preds = %for.cond3.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %copy.056, 1
  %33 = ptrtoint ptr %fats to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fats, align 4
  %conv = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc18, %conv
  br i1 %cmp, label %for.inc17.for.body_crit_edge, label %for.inc17.cleanup20_crit_edge

for.inc17.cleanup20_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup20:                                        ; preds = %for.inc17.cleanup20_crit_edge, %brelse.exit.cleanup20_crit_edge, %for.body6.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %err.4 = phi i32 [ 0, %entry.cleanup20_crit_edge ], [ -12, %for.body6.cleanup20_crit_edge ], [ %call12, %brelse.exit.cleanup20_crit_edge ], [ 0, %for.inc17.cleanup20_crit_edge ]
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_alloc_clusters(ptr noundef %inode, ptr nocapture noundef %cluster, i32 noundef %nr_cluster) local_unnamed_addr #0 align 64 {
entry:
  %blocknr.i = alloca i64, align 8
  %offset.i = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 4
  %prev_ent = alloca %struct.fat_entry, align 4
  %bhs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #8
  %6 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %fatent, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %prev_ent) #8
  %10 = getelementptr inbounds %struct.fat_entry, ptr %prev_ent, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fat_entry, ptr %prev_ent, i32 0, i32 2
  %12 = getelementptr inbounds i8, ptr %prev_ent, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nr_cluster)
  %cmp = icmp ugt i32 %nr_cluster, 4
  %14 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  br i1 %cmp, label %do.body2, label %do.end7, !prof !42

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/fatent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

do.end7:                                          ; preds = %entry
  %fat_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %fat_lock.i, i32 noundef 0) #8
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp8.not = icmp eq i32 %16, -1
  br i1 %cmp8.not, label %do.end7.if.end14_crit_edge, label %land.lhs.true

do.end7.if.end14_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end7
  %free_clus_valid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %free_clus_valid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_clus_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %nr_cluster)
  %cmp12 = icmp ult i32 %16, %nr_cluster
  %or.cond = select i1 %tobool9.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  br label %cleanup83

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %do.end7.if.end14_crit_edge
  %19 = ptrtoint ptr %prev_ent to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prev_ent, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %10, align 4
  %21 = call ptr @memset(ptr %11, i32 0, i32 16)
  %22 = call ptr @memset(ptr %7, i32 0, i32 16)
  %prev_free = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 16
  %23 = ptrtoint ptr %prev_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_free, align 4
  %add = add i32 %24, 1
  %25 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %fatent, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %6, align 4
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp15171 = icmp ugt i32 %28, 2
  br i1 %cmp15171, label %while.body.lr.ph, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end14
  %ent_get = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 3
  %ent_put = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %do.end56.while.body_crit_edge, %while.body.lr.ph
  %29 = phi i32 [ %28, %while.body.lr.ph ], [ %98, %do.end56.while.body_crit_edge ]
  %idx_clus.0174 = phi i32 [ 0, %while.body.lr.ph ], [ %idx_clus.2, %do.end56.while.body_crit_edge ]
  %count.0173 = phi i32 [ 2, %while.body.lr.ph ], [ %inc48, %do.end56.while.body_crit_edge ]
  %nr_bhs.0172 = phi i32 [ 0, %while.body.lr.ph ], [ %nr_bhs.5, %do.end56.while.body_crit_edge ]
  %30 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fatent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp18.not = icmp ult i32 %31, %29
  br i1 %cmp18.not, label %while.body.if.end21_crit_edge, label %if.then19

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %fatent, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %while.body.if.end21_crit_edge
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i = getelementptr inbounds %struct.msdos_sb_info, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %fatent_ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fatent_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i) #8
  %37 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %blocknr.i, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #8
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %offset.i, align 4, !annotation !39
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %6, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.i.i = icmp sgt i32 %41, 0
  br i1 %cmp14.i.i, label %if.end21.for.body.i.i_crit_edge, label %if.end21.fat_ent_read_block.exit_crit_edge

if.end21.fat_ent_read_block.exit_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

if.end21.for.body.i.i_crit_edge:                  ; preds = %if.end21
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %if.end21.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end21.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %43) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %7, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %45
  br i1 %cmp.i.i, label %brelse.exit.i.i.for.body.i.i_crit_edge, label %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge

brelse.exit.i.i.fat_ent_read_block.exit_crit_edge: ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

fat_ent_read_block.exit:                          ; preds = %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge, %if.end21.fat_ent_read_block.exit_crit_edge
  %46 = call ptr @memset(ptr %7, i32 0, i32 16)
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %36, align 4
  %49 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fatent, align 4
  call void %48(ptr noundef %1, i32 noundef %50, ptr noundef nonnull %offset.i, ptr noundef nonnull %blocknr.i) #8
  %ent_bread.i = getelementptr inbounds %struct.fatent_operations, ptr %36, i32 0, i32 2
  %51 = ptrtoint ptr %ent_bread.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ent_bread.i, align 4
  %53 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset.i, align 4
  %55 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %blocknr.i, align 8
  %call2.i = call i32 %52(ptr noundef %1, ptr noundef nonnull %fatent, i32 noundef %54, i64 noundef %56) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool24.not = icmp eq i32 %call2.i, 0
  br i1 %tobool24.not, label %fat_ent_read_block.exit.do.body27_crit_edge, label %fat_ent_read_block.exit.out_crit_edge

fat_ent_read_block.exit.out_crit_edge:            ; preds = %fat_ent_read_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

fat_ent_read_block.exit.do.body27_crit_edge:      ; preds = %fat_ent_read_block.exit
  br label %do.body27

do.body27:                                        ; preds = %if.then.i.do.body27_crit_edge, %fat_ent_read_block.exit.do.body27_crit_edge
  %nr_bhs.1 = phi i32 [ %nr_bhs.5, %if.then.i.do.body27_crit_edge ], [ %nr_bhs.0172, %fat_ent_read_block.exit.do.body27_crit_edge ]
  %count.1 = phi i32 [ %inc48, %if.then.i.do.body27_crit_edge ], [ %count.0173, %fat_ent_read_block.exit.do.body27_crit_edge ]
  %idx_clus.1 = phi i32 [ %idx_clus.2, %if.then.i.do.body27_crit_edge ], [ %idx_clus.0174, %fat_ent_read_block.exit.do.body27_crit_edge ]
  %57 = ptrtoint ptr %ent_get to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ent_get, align 4
  %call28 = call i32 %58(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %do.body27.if.end47_crit_edge

do.body27.if.end47_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then30:                                        ; preds = %do.body27
  %59 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fatent, align 4
  %61 = ptrtoint ptr %ent_put to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ent_put, align 4
  call void %62(ptr noundef nonnull %fatent, i32 noundef 268435455) #8
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool34.not = icmp eq i32 %64, 0
  br i1 %tobool34.not, label %if.then30.if.end37_crit_edge, label %if.then35

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %ent_put to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ent_put, align 4
  call void %66(ptr noundef nonnull %prev_ent, i32 noundef %60) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then30.if.end37_crit_edge
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp39.i = icmp sgt i32 %68, 0
  br i1 %cmp39.i, label %if.end37.for.cond2.preheader.i_crit_edge, label %if.end37.fat_collect_bhs.exit_crit_edge

if.end37.fat_collect_bhs.exit_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_collect_bhs.exit

if.end37.for.cond2.preheader.i_crit_edge:         ; preds = %if.end37
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc17.i.for.cond2.preheader.i_crit_edge, %if.end37.for.cond2.preheader.i_crit_edge
  %nr_bhs.2 = phi i32 [ %nr_bhs.3, %for.inc17.i.for.cond2.preheader.i_crit_edge ], [ %nr_bhs.1, %if.end37.for.cond2.preheader.i_crit_edge ]
  %n.040.i = phi i32 [ %inc18.i, %for.inc17.i.for.cond2.preheader.i_crit_edge ], [ 0, %if.end37.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %cmp334.i = icmp sgt i32 %nr_bhs.2, 0
  br i1 %cmp334.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %n.040.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr ptr, ptr %bhs, i32 %i.035.i
  %71 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx6.i, align 4
  %cmp7.i = icmp eq ptr %70, %72
  br i1 %cmp7.i, label %for.body4.i.for.end.i_crit_edge, label %for.inc.i

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body4.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_bhs.2
  br i1 %exitcond.not.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

for.end.i:                                        ; preds = %for.body4.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %i.035.i, %for.body4.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %nr_bhs.2)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i, %nr_bhs.2
  br i1 %cmp8.i, label %for.end.i.if.then9.i_crit_edge, label %for.end.i.for.inc17.i_crit_edge

for.end.i.for.inc17.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %arrayidx11.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %n.040.i
  %73 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx11.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %75 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !44
  %76 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx11.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %bhs, i32 %nr_bhs.2
  %78 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %arrayidx14.i, align 4
  %inc15.i = add i32 %nr_bhs.2, 1
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.then9.i, %for.end.i.for.inc17.i_crit_edge
  %nr_bhs.3 = phi i32 [ %inc15.i, %if.then9.i ], [ %nr_bhs.2, %for.end.i.for.inc17.i_crit_edge ]
  %inc18.i = add nuw nsw i32 %n.040.i, 1
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %7, align 4
  %cmp.i = icmp slt i32 %inc18.i, %80
  br i1 %cmp.i, label %for.inc17.i.for.cond2.preheader.i_crit_edge, label %for.inc17.i.fat_collect_bhs.exit_crit_edge

for.inc17.i.fat_collect_bhs.exit_crit_edge:       ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_collect_bhs.exit

for.inc17.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i

fat_collect_bhs.exit:                             ; preds = %for.inc17.i.fat_collect_bhs.exit_crit_edge, %if.end37.fat_collect_bhs.exit_crit_edge
  %nr_bhs.4 = phi i32 [ %nr_bhs.1, %if.end37.fat_collect_bhs.exit_crit_edge ], [ %nr_bhs.3, %for.inc17.i.fat_collect_bhs.exit_crit_edge ]
  %81 = ptrtoint ptr %prev_free to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %60, ptr %prev_free, align 4
  %82 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp40.not = icmp eq i32 %83, -1
  br i1 %cmp40.not, label %fat_collect_bhs.exit.if.end43_crit_edge, label %if.then41

fat_collect_bhs.exit.if.end43_crit_edge:          ; preds = %fat_collect_bhs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %fat_collect_bhs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %83, -1
  %84 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %dec, ptr %free_clusters, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %fat_collect_bhs.exit.if.end43_crit_edge
  %arrayidx = getelementptr i32, ptr %cluster, i32 %idx_clus.1
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %60, ptr %arrayidx, align 4
  %inc = add i32 %idx_clus.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_cluster)
  %cmp44 = icmp eq i32 %inc, %nr_cluster
  br i1 %cmp44, label %if.end43.out_crit_edge, label %cleanup.thread

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.thread:                                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %86 = call ptr @memcpy(ptr %prev_ent, ptr %fatent, i32 28)
  br label %if.end47

if.end47:                                         ; preds = %cleanup.thread, %do.body27.if.end47_crit_edge
  %nr_bhs.5 = phi i32 [ %nr_bhs.1, %do.body27.if.end47_crit_edge ], [ %nr_bhs.4, %cleanup.thread ]
  %idx_clus.2 = phi i32 [ %idx_clus.1, %do.body27.if.end47_crit_edge ], [ %inc, %cleanup.thread ]
  %inc48 = add i32 %count.1, 1
  %87 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_cluster, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc48, i32 %88)
  %cmp50 = icmp eq i32 %inc48, %88
  br i1 %cmp50, label %if.end47.do.end56_crit_edge, label %do.cond53

if.end47.do.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.cond53:                                        ; preds = %if.end47
  %89 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fatent_ops, align 4
  %ent_next.i = getelementptr inbounds %struct.fatent_operations, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %ent_next.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ent_next.i, align 4
  %call.i = call i32 %92(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.cond53.do.end56_crit_edge, label %if.then.i

do.cond53.do.end56_crit_edge:                     ; preds = %do.cond53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then.i:                                        ; preds = %do.cond53
  %93 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fatent, align 4
  %95 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_cluster, align 4
  %cmp.i142 = icmp ult i32 %94, %96
  br i1 %cmp.i142, label %if.then.i.do.body27_crit_edge, label %if.then.i.do.end56_crit_edge

if.then.i.do.end56_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then.i.do.body27_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

do.end56:                                         ; preds = %if.then.i.do.end56_crit_edge, %do.cond53.do.end56_crit_edge, %if.end47.do.end56_crit_edge
  %97 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_cluster, align 4
  %cmp15 = icmp ult i32 %inc48, %98
  br i1 %cmp15, label %do.end56.while.body_crit_edge, label %do.end56.while.end_crit_edge

do.end56.while.end_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end56.while.body_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %do.end56.while.end_crit_edge, %if.end14.while.end_crit_edge
  %nr_bhs.0.lcssa = phi i32 [ 0, %if.end14.while.end_crit_edge ], [ %nr_bhs.5, %do.end56.while.end_crit_edge ]
  %idx_clus.0.lcssa = phi i32 [ 0, %if.end14.while.end_crit_edge ], [ %idx_clus.2, %do.end56.while.end_crit_edge ]
  %99 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %free_clusters, align 4
  %free_clus_valid58 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 18
  %100 = ptrtoint ptr %free_clus_valid58 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %free_clus_valid58, align 4
  br label %out

out:                                              ; preds = %while.end, %if.end43.out_crit_edge, %fat_ent_read_block.exit.out_crit_edge
  %nr_bhs.6 = phi i32 [ %nr_bhs.0.lcssa, %while.end ], [ %nr_bhs.4, %if.end43.out_crit_edge ], [ %nr_bhs.0172, %fat_ent_read_block.exit.out_crit_edge ]
  %err.0 = phi i32 [ -28, %while.end ], [ 0, %if.end43.out_crit_edge ], [ %call2.i, %fat_ent_read_block.exit.out_crit_edge ]
  %idx_clus.3 = phi i32 [ %idx_clus.0.lcssa, %while.end ], [ %nr_cluster, %if.end43.out_crit_edge ], [ %idx_clus.0174, %fat_ent_read_block.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  %101 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %103 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %out.mark_fsinfo_dirty.exit_crit_edge

out.mark_fsinfo_dirty.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_fsinfo_dirty.exit

lor.lhs.false.i:                                  ; preds = %out
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %102, i32 0, i32 4
  %105 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %106)
  %cmp.i.i145 = icmp eq i8 %106, 32
  br i1 %cmp.i.i145, label %if.end.i, label %lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge

lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_fsinfo_dirty.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsinfo_inode.i = getelementptr inbounds %struct.msdos_sb_info, ptr %102, i32 0, i32 29
  %107 = ptrtoint ptr %fsinfo_inode.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fsinfo_inode.i, align 4
  call void @__mark_inode_dirty(ptr noundef %108, i32 noundef 1) #8
  br label %mark_fsinfo_dirty.exit

mark_fsinfo_dirty.exit:                           ; preds = %if.end.i, %lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge, %out.mark_fsinfo_dirty.exit_crit_edge
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %6, align 4
  %110 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp14.i = icmp sgt i32 %111, 0
  br i1 %cmp14.i, label %mark_fsinfo_dirty.exit.for.body.i_crit_edge, label %mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge

mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge: ; preds = %mark_fsinfo_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

mark_fsinfo_dirty.exit.for.body.i_crit_edge:      ; preds = %mark_fsinfo_dirty.exit
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %mark_fsinfo_dirty.exit.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i149, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %mark_fsinfo_dirty.exit.for.body.i_crit_edge ]
  %arrayidx.i148 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %112 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i148, align 4
  %tobool.not.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %113) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i149 = add nuw nsw i32 %i.015.i, 1
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %7, align 4
  %cmp.i150 = icmp slt i32 %inc.i149, %115
  br i1 %cmp.i150, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.fatent_brelse.exit_crit_edge

brelse.exit.i.fatent_brelse.exit_crit_edge:       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fatent_brelse.exit:                               ; preds = %brelse.exit.i.fatent_brelse.exit_crit_edge, %mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge
  %116 = call ptr @memset(ptr %7, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool59.not = icmp eq i32 %err.0, 0
  br i1 %tobool59.not, label %if.then60, label %fatent_brelse.exit.if.end72_crit_edge

fatent_brelse.exit.if.end72_crit_edge:            ; preds = %fatent_brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then60:                                        ; preds = %fatent_brelse.exit
  %call61 = call i32 @inode_needs_sync(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.if.then68_crit_edge, label %if.end66

if.then60.if.then68_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.end66:                                         ; preds = %if.then60
  %call65 = call i32 @fat_sync_bhs(ptr noundef nonnull %bhs, i32 noundef %nr_bhs.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool67.not = icmp eq i32 %call65, 0
  br i1 %tobool67.not, label %if.end66.if.then68_crit_edge, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end66.if.then68_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.then68:                                        ; preds = %if.end66.if.then68_crit_edge, %if.then60.if.then68_crit_edge
  %call70 = call fastcc i32 @fat_mirror_bhs(ptr noundef %1, ptr noundef nonnull %bhs, i32 noundef %nr_bhs.6)
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end66.if.end72_crit_edge, %fatent_brelse.exit.if.end72_crit_edge
  %err.2 = phi i32 [ %err.0, %fatent_brelse.exit.if.end72_crit_edge ], [ %call65, %if.end66.if.end72_crit_edge ], [ %call70, %if.then68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.6)
  %cmp73176 = icmp sgt i32 %nr_bhs.6, 0
  br i1 %cmp73176, label %if.end72.for.body_crit_edge, label %if.end72.for.end_crit_edge

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %if.end72.for.body_crit_edge
  %i.0177 = phi i32 [ %inc75, %brelse.exit.for.body_crit_edge ], [ 0, %if.end72.for.body_crit_edge ]
  %arrayidx74 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.0177
  %117 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx74, align 4
  %tobool.not.i152 = icmp eq ptr %118, null
  br i1 %tobool.not.i152, label %for.body.brelse.exit_crit_edge, label %if.then.i153

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i153:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %118) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i153, %for.body.brelse.exit_crit_edge
  %inc75 = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc75, %nr_bhs.6
  br i1 %exitcond.not, label %brelse.exit.for.end_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %if.end72.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool76.not = icmp eq i32 %err.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx_clus.3)
  %tobool78.not = icmp eq i32 %idx_clus.3, 0
  %or.cond135 = select i1 %tobool76.not, i1 true, i1 %tobool78.not
  br i1 %or.cond135, label %for.end.cleanup83_crit_edge, label %if.then79

for.end.cleanup83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cluster, align 4
  %call81 = call i32 @fat_free_clusters(ptr noundef %inode, i32 noundef %120)
  br label %cleanup83

cleanup83:                                        ; preds = %if.then79, %for.end.cleanup83_crit_edge, %if.then13
  %retval.0 = phi i32 [ -28, %if.then13 ], [ %err.2, %if.then79 ], [ %err.2, %for.end.cleanup83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %prev_ent) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_free_clusters(ptr nocapture noundef readonly %inode, i32 noundef %cluster) #0 align 64 {
entry:
  %fatent = alloca %struct.fat_entry, align 4
  %bhs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #8
  %6 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %fatent, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #8
  %10 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  %11 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fatent, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  %13 = call ptr @memset(ptr %7, i32 0, i32 16)
  %fat_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %fat_lock.i, i32 noundef 0) #8
  %discard = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %data_start.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %ent_put = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 4
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 17
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %fat_collect_bhs.exit.do.body_crit_edge, %entry
  %nr_bhs.0 = phi i32 [ 0, %entry ], [ %nr_bhs.4, %fat_collect_bhs.exit.do.body_crit_edge ]
  %first_cl.0 = phi i32 [ %cluster, %entry ], [ %first_cl.1, %fat_collect_bhs.exit.do.body_crit_edge ]
  %dirty_fsinfo.0 = phi i32 [ 0, %entry ], [ %dirty_fsinfo.1, %fat_collect_bhs.exit.do.body_crit_edge ]
  %cluster.addr.0 = phi i32 [ %cluster, %entry ], [ %call1, %fat_collect_bhs.exit.do.body_crit_edge ]
  %call1 = call i32 @fat_ent_read(ptr noundef %inode, ptr noundef nonnull %fatent, i32 noundef %cluster.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body.error_crit_edge, label %if.else

do.body.error_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.fat_free_clusters) #11
  br label %error

if.end4:                                          ; preds = %if.else
  %14 = ptrtoint ptr %discard to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %discard, align 4
  %15 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.end4.if.end15_crit_edge, label %if.then5

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end4
  %16 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fatent, align 4
  %add = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %add)
  %cmp7.not = icmp eq i32 %call1, %add
  br i1 %cmp7.not, label %if.then5.if.end15_crit_edge, label %if.then8

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 1, %first_cl.0
  %add10 = add i32 %sub, %17
  %conv.i = sext i32 %first_cl.0 to i64
  %sub.i = add nsw i64 %conv.i, -2
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 4
  %conv1.i = zext i16 %19 to i64
  %mul.i = mul nsw i64 %sub.i, %conv1.i
  %20 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_start.i, align 4
  %conv2.i = zext i32 %21 to i64
  %add.i = add nsw i64 %mul.i, %conv2.i
  %conv = zext i16 %19 to i32
  %mul = mul i32 %add10, %conv
  %conv12 = sext i32 %mul to i64
  %22 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev.i, align 4
  %24 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i99 = zext i8 %25 to i32
  %sub.i100 = add nsw i32 %conv.i99, -9
  %sh_prom.i = zext i32 %sub.i100 to i64
  %shl.i = shl i64 %add.i, %sh_prom.i
  %shl5.i = shl i64 %conv12, %sh_prom.i
  %call.i = call i32 @blkdev_issue_discard(ptr noundef %23, i64 noundef %shl.i, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.then5.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %first_cl.1 = phi i32 [ %call1, %if.then8 ], [ %first_cl.0, %if.then5.if.end15_crit_edge ], [ %first_cl.0, %if.end4.if.end15_crit_edge ]
  %26 = ptrtoint ptr %ent_put to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ent_put, align 4
  call void %27(ptr noundef nonnull %fatent, i32 noundef 0) #8
  %28 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp16.not = icmp eq i32 %29, -1
  br i1 %cmp16.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw i32 %29, 1
  %30 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc, ptr %free_clusters, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %dirty_fsinfo.1 = phi i32 [ 1, %if.then18 ], [ %dirty_fsinfo.0, %if.end15.if.end20_crit_edge ]
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  %add22 = add i32 %32, %nr_bhs.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add22)
  %cmp23 = icmp ugt i32 %add22, 8
  br i1 %cmp23, label %if.then25, label %if.end20.if.end41_crit_edge

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then25:                                        ; preds = %if.end20
  %33 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags, align 4
  %and = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then25.if.end32_crit_edge, label %if.then27

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  %call28 = call i32 @fat_sync_bhs(ptr noundef nonnull %bhs, i32 noundef %nr_bhs.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then27.error_crit_edge

if.then27.error_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.then25.if.end32_crit_edge
  %call34 = call fastcc i32 @fat_mirror_bhs(ptr noundef %1, ptr noundef nonnull %bhs, i32 noundef %nr_bhs.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond.preheader, label %if.end32.error_crit_edge

if.end32.error_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond.preheader:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0)
  %cmp38123 = icmp sgt i32 %nr_bhs.0, 0
  br i1 %cmp38123, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end41thread-pre-split_crit_edge

for.cond.preheader.if.end41thread-pre-split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41thread-pre-split

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0124 = phi i32 [ %inc40, %brelse.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.0124
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %36) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc40 = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc40, %nr_bhs.0
  br i1 %exitcond.not, label %brelse.exit.if.end41thread-pre-split_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

brelse.exit.if.end41thread-pre-split_crit_edge:   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41thread-pre-split

if.end41thread-pre-split:                         ; preds = %brelse.exit.if.end41thread-pre-split_crit_edge, %for.cond.preheader.if.end41thread-pre-split_crit_edge
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %7, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41thread-pre-split, %if.end20.if.end41_crit_edge
  %38 = phi i32 [ %.pr, %if.end41thread-pre-split ], [ %32, %if.end20.if.end41_crit_edge ]
  %nr_bhs.1 = phi i32 [ 0, %if.end41thread-pre-split ], [ %nr_bhs.0, %if.end20.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp39.i = icmp sgt i32 %38, 0
  br i1 %cmp39.i, label %if.end41.for.cond2.preheader.i_crit_edge, label %if.end41.fat_collect_bhs.exit_crit_edge

if.end41.fat_collect_bhs.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_collect_bhs.exit

if.end41.for.cond2.preheader.i_crit_edge:         ; preds = %if.end41
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc17.i.for.cond2.preheader.i_crit_edge, %if.end41.for.cond2.preheader.i_crit_edge
  %nr_bhs.2 = phi i32 [ %nr_bhs.3, %for.inc17.i.for.cond2.preheader.i_crit_edge ], [ %nr_bhs.1, %if.end41.for.cond2.preheader.i_crit_edge ]
  %n.040.i = phi i32 [ %inc18.i, %for.inc17.i.for.cond2.preheader.i_crit_edge ], [ 0, %if.end41.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %cmp334.i = icmp sgt i32 %nr_bhs.2, 0
  br i1 %cmp334.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %n.040.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr ptr, ptr %bhs, i32 %i.035.i
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx6.i, align 4
  %cmp7.i = icmp eq ptr %40, %42
  br i1 %cmp7.i, label %for.body4.i.for.end.i_crit_edge, label %for.inc.i

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body4.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_bhs.2
  br i1 %exitcond.not.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

for.end.i:                                        ; preds = %for.body4.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %i.035.i, %for.body4.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %nr_bhs.2)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i, %nr_bhs.2
  br i1 %cmp8.i, label %for.end.i.if.then9.i_crit_edge, label %for.end.i.for.inc17.i_crit_edge

for.end.i.for.inc17.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %arrayidx11.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %n.040.i
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx11.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !44
  %46 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx11.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %bhs, i32 %nr_bhs.2
  %48 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx14.i, align 4
  %inc15.i = add i32 %nr_bhs.2, 1
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.then9.i, %for.end.i.for.inc17.i_crit_edge
  %nr_bhs.3 = phi i32 [ %inc15.i, %if.then9.i ], [ %nr_bhs.2, %for.end.i.for.inc17.i_crit_edge ]
  %inc18.i = add nuw nsw i32 %n.040.i, 1
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %cmp.i = icmp slt i32 %inc18.i, %50
  br i1 %cmp.i, label %for.inc17.i.for.cond2.preheader.i_crit_edge, label %for.inc17.i.fat_collect_bhs.exit_crit_edge

for.inc17.i.fat_collect_bhs.exit_crit_edge:       ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_collect_bhs.exit

for.inc17.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i

fat_collect_bhs.exit:                             ; preds = %for.inc17.i.fat_collect_bhs.exit_crit_edge, %if.end41.fat_collect_bhs.exit_crit_edge
  %nr_bhs.4 = phi i32 [ %nr_bhs.1, %if.end41.fat_collect_bhs.exit_crit_edge ], [ %nr_bhs.3, %for.inc17.i.fat_collect_bhs.exit_crit_edge ]
  %cmp43.not = icmp eq i32 %call1, 268435455
  br i1 %cmp43.not, label %do.end, label %fat_collect_bhs.exit.do.body_crit_edge

fat_collect_bhs.exit.do.body_crit_edge:           ; preds = %fat_collect_bhs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %fat_collect_bhs.exit
  %51 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags, align 4
  %and46 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.end.if.end54_crit_edge, label %if.then48

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then48:                                        ; preds = %do.end
  %call50 = call i32 @fat_sync_bhs(ptr noundef nonnull %bhs, i32 noundef %nr_bhs.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then48.if.end54_crit_edge, label %if.then48.error_crit_edge

if.then48.error_crit_edge:                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.then48.if.end54_crit_edge, %do.end.if.end54_crit_edge
  %call56 = call fastcc i32 @fat_mirror_bhs(ptr noundef %1, ptr noundef nonnull %bhs, i32 noundef %nr_bhs.4)
  br label %error

error:                                            ; preds = %if.end54, %if.then48.error_crit_edge, %if.end32.error_crit_edge, %if.then27.error_crit_edge, %if.then3, %do.body.error_crit_edge
  %nr_bhs.5 = phi i32 [ %nr_bhs.0, %if.then3 ], [ %nr_bhs.4, %if.end54 ], [ %nr_bhs.4, %if.then48.error_crit_edge ], [ %nr_bhs.0, %if.then27.error_crit_edge ], [ %nr_bhs.0, %if.end32.error_crit_edge ], [ %nr_bhs.0, %do.body.error_crit_edge ]
  %err.0 = phi i32 [ -5, %if.then3 ], [ %call56, %if.end54 ], [ %call50, %if.then48.error_crit_edge ], [ %call1, %do.body.error_crit_edge ], [ %call34, %if.end32.error_crit_edge ], [ %call28, %if.then27.error_crit_edge ]
  %dirty_fsinfo.2 = phi i32 [ %dirty_fsinfo.0, %if.then3 ], [ %dirty_fsinfo.1, %if.end54 ], [ %dirty_fsinfo.1, %if.then48.error_crit_edge ], [ %dirty_fsinfo.0, %do.body.error_crit_edge ], [ %dirty_fsinfo.1, %if.end32.error_crit_edge ], [ %dirty_fsinfo.1, %if.then27.error_crit_edge ]
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %6, align 4
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp14.i = icmp sgt i32 %55, 0
  br i1 %cmp14.i, label %error.for.body.i_crit_edge, label %error.fatent_brelse.exit_crit_edge

error.fatent_brelse.exit_crit_edge:               ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

error.for.body.i_crit_edge:                       ; preds = %error
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %error.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i104, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %error.for.body.i_crit_edge ]
  %arrayidx.i103 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %56 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i103, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %57) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i104 = add nuw nsw i32 %i.015.i, 1
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %7, align 4
  %cmp.i105 = icmp slt i32 %inc.i104, %59
  br i1 %cmp.i105, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.fatent_brelse.exit_crit_edge

brelse.exit.i.fatent_brelse.exit_crit_edge:       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fatent_brelse.exit:                               ; preds = %brelse.exit.i.fatent_brelse.exit_crit_edge, %error.fatent_brelse.exit_crit_edge
  %60 = call ptr @memset(ptr %7, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.5)
  %cmp58125 = icmp sgt i32 %nr_bhs.5, 0
  br i1 %cmp58125, label %fatent_brelse.exit.for.body60_crit_edge, label %fatent_brelse.exit.for.end64_crit_edge

fatent_brelse.exit.for.end64_crit_edge:           ; preds = %fatent_brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

fatent_brelse.exit.for.body60_crit_edge:          ; preds = %fatent_brelse.exit
  br label %for.body60

for.body60:                                       ; preds = %brelse.exit109.for.body60_crit_edge, %fatent_brelse.exit.for.body60_crit_edge
  %i.1126 = phi i32 [ %inc63, %brelse.exit109.for.body60_crit_edge ], [ 0, %fatent_brelse.exit.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.1126
  %61 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx61, align 4
  %tobool.not.i107 = icmp eq ptr %62, null
  br i1 %tobool.not.i107, label %for.body60.brelse.exit109_crit_edge, label %if.then.i108

for.body60.brelse.exit109_crit_edge:              ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit109

if.then.i108:                                     ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %62) #8
  br label %brelse.exit109

brelse.exit109:                                   ; preds = %if.then.i108, %for.body60.brelse.exit109_crit_edge
  %inc63 = add nuw nsw i32 %i.1126, 1
  %exitcond132.not = icmp eq i32 %inc63, %nr_bhs.5
  br i1 %exitcond132.not, label %brelse.exit109.for.end64_crit_edge, label %brelse.exit109.for.body60_crit_edge

brelse.exit109.for.body60_crit_edge:              ; preds = %brelse.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body60

brelse.exit109.for.end64_crit_edge:               ; preds = %brelse.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

for.end64:                                        ; preds = %brelse.exit109.for.end64_crit_edge, %fatent_brelse.exit.for.end64_crit_edge
  call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty_fsinfo.2)
  %tobool65.not = icmp eq i32 %dirty_fsinfo.2, 0
  br i1 %tobool65.not, label %for.end64.if.end67_crit_edge, label %if.then66

for.end64.if.end67_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %for.end64
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %65 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_flags, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.then66.if.end67_crit_edge

if.then66.if.end67_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

lor.lhs.false.i:                                  ; preds = %if.then66
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %68)
  %cmp.i.i = icmp eq i8 %68, 32
  br i1 %cmp.i.i, label %if.end.i, label %lor.lhs.false.i.if.end67_crit_edge

lor.lhs.false.i.if.end67_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsinfo_inode.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 29
  %69 = ptrtoint ptr %fsinfo_inode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fsinfo_inode.i, align 4
  call void @__mark_inode_dirty(ptr noundef %70, i32 noundef 1) #8
  br label %if.end67

if.end67:                                         ; preds = %if.end.i, %lor.lhs.false.i.if.end67_crit_edge, %if.then66.if.end67_crit_edge, %for.end64.if.end67_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_count_free_clusters(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %blocknr.i33 = alloca i64, align 8
  %offset.i34 = alloca i32, align 4
  %blocknr.i = alloca i64, align 8
  %block_end.i = alloca i64, align 8
  %offset.i = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 4
  %fatent_ra = alloca %struct.fatent_ra, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #8
  %4 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %6 = call ptr @memset(ptr %fatent, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fatent_ra) #8
  %7 = call ptr @memset(ptr %fatent_ra, i32 255, i32 48)
  %fat_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %fat_lock.i, i32 noundef 0) #8
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %free_clus_valid = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %free_clus_valid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_clus_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %5, i32 0, i32 16)
  %13 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %fatent, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %4, align 4
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_cluster, align 4
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %fatent_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fatent_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i) #8
  %21 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %blocknr.i, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block_end.i) #8
  %22 = ptrtoint ptr %block_end.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %block_end.i, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #8
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %offset.i, align 4, !annotation !39
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %24 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages1.i = getelementptr inbounds %struct.backing_dev_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ra_pages1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ra_pages1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp sgt i32 %16, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.fat_ra_init.exit_crit_edge

if.end.fat_ra_init.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ra_init.exit

if.end.i:                                         ; preds = %if.end
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp4.i = icmp ugt i32 %27, %29
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %27, %29
  %sub.i = sub i32 %27, %rem.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %ra_pages.0.i = phi i32 [ %sub.i, %if.then5.i ], [ %27, %if.end.i.if.end8.i_crit_edge ]
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %30 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %31 to i32
  %add.i = sub nsw i32 13, %conv.i
  %shl.i = shl i32 %ra_pages.0.i, %add.i
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  call void %33(ptr noundef %sb, i32 noundef 2, ptr noundef nonnull %offset.i, ptr noundef nonnull %blocknr.i) #8
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %20, align 4
  %sub12.i = add nsw i32 %16, -1
  call void %35(ptr noundef %sb, i32 noundef %sub12.i, ptr noundef nonnull %offset.i, ptr noundef nonnull %block_end.i) #8
  %36 = ptrtoint ptr %fatent_ra to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %fatent_ra, align 8
  %37 = ptrtoint ptr %block_end.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %block_end.i, align 8
  %add13.i = add i64 %38, 1
  %39 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %blocknr.i, align 8
  %sub14.i = sub i64 %add13.i, %40
  %limit.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 1
  %41 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub14.i, ptr %limit.i, align 8
  %shr.i = lshr i32 %shl.i, 1
  %ra_blocks.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 2
  %42 = ptrtoint ptr %ra_blocks.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i, ptr %ra_blocks.i, align 8
  %ra_advance.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 3
  %conv18.i = zext i32 %shl.i to i64
  %43 = call i64 @llvm.umin.i64(i64 %sub14.i, i64 %conv18.i) #8
  %ra_limit.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 5
  %44 = call ptr @memset(ptr %ra_advance.i, i32 0, i32 16)
  %45 = ptrtoint ptr %ra_limit.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %43, ptr %ra_limit.i, align 8
  br label %fat_ra_init.exit

fat_ra_init.exit:                                 ; preds = %if.end8.i, %if.end.fat_ra_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block_end.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i) #8
  %46 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fatent, align 4
  %48 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_cluster, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp350 = icmp ult i32 %47, %49
  br i1 %cmp350, label %while.body.lr.ph, label %fat_ra_init.exit.while.end_crit_edge

fat_ra_init.exit.while.end_crit_edge:             ; preds = %fat_ra_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %fat_ra_init.exit
  %ent_get = getelementptr inbounds %struct.fatent_operations, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %free.051 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %do.end.while.body_crit_edge ]
  call fastcc void @fat_ent_reada(ptr noundef %sb, ptr noundef nonnull %fatent_ra, ptr noundef nonnull %fatent)
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i36 = getelementptr inbounds %struct.msdos_sb_info, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %fatent_ops.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fatent_ops.i36, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i33) #8
  %54 = ptrtoint ptr %blocknr.i33 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %blocknr.i33, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i34) #8
  %55 = ptrtoint ptr %offset.i34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %offset.i34, align 4, !annotation !39
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %4, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp14.i.i = icmp sgt i32 %58, 0
  br i1 %cmp14.i.i, label %while.body.for.body.i.i_crit_edge, label %while.body.fat_ent_read_block.exit_crit_edge

while.body.fat_ent_read_block.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

while.body.for.body.i.i_crit_edge:                ; preds = %while.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %while.body.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %60) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %5, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %62
  br i1 %cmp.i.i, label %brelse.exit.i.i.for.body.i.i_crit_edge, label %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge

brelse.exit.i.i.fat_ent_read_block.exit_crit_edge: ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

fat_ent_read_block.exit:                          ; preds = %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge, %while.body.fat_ent_read_block.exit_crit_edge
  %63 = call ptr @memset(ptr %5, i32 0, i32 16)
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %53, align 4
  %66 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fatent, align 4
  call void %65(ptr noundef %sb, i32 noundef %67, ptr noundef nonnull %offset.i34, ptr noundef nonnull %blocknr.i33) #8
  %ent_bread.i = getelementptr inbounds %struct.fatent_operations, ptr %53, i32 0, i32 2
  %68 = ptrtoint ptr %ent_bread.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ent_bread.i, align 4
  %70 = ptrtoint ptr %offset.i34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset.i34, align 4
  %72 = ptrtoint ptr %blocknr.i33 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %blocknr.i33, align 8
  %call2.i = call i32 %69(ptr noundef %sb, ptr noundef nonnull %fatent, i32 noundef %71, i64 noundef %73) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i34) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %fat_ent_read_block.exit.do.body_crit_edge, label %fat_ent_read_block.exit.out_crit_edge

fat_ent_read_block.exit.out_crit_edge:            ; preds = %fat_ent_read_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

fat_ent_read_block.exit.do.body_crit_edge:        ; preds = %fat_ent_read_block.exit
  br label %do.body

do.body:                                          ; preds = %if.then.i.do.body_crit_edge, %fat_ent_read_block.exit.do.body_crit_edge
  %free.1 = phi i32 [ %spec.select, %if.then.i.do.body_crit_edge ], [ %free.051, %fat_ent_read_block.exit.do.body_crit_edge ]
  %74 = ptrtoint ptr %ent_get to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ent_get, align 4
  %call8 = call i32 %75(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  %inc = zext i1 %cmp9 to i32
  %spec.select = add i32 %free.1, %inc
  %76 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fatent_ops, align 4
  %ent_next.i = getelementptr inbounds %struct.fatent_operations, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %ent_next.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ent_next.i, align 4
  %call.i = call i32 %79(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %if.then.i

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then.i:                                        ; preds = %do.body
  %80 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fatent, align 4
  %82 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_cluster, align 4
  %cmp.i = icmp ult i32 %81, %83
  br i1 %cmp.i, label %if.then.i.do.body_crit_edge, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.then.i.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 743, i32 noundef 0) #8
  %call.i38 = call i32 @__cond_resched() #8
  %84 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fatent, align 4
  %86 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_cluster, align 4
  %cmp3 = icmp ult i32 %85, %87
  br i1 %cmp3, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %fat_ra_init.exit.while.end_crit_edge
  %free.0.lcssa = phi i32 [ 0, %fat_ra_init.exit.while.end_crit_edge ], [ %spec.select, %do.end.while.end_crit_edge ]
  %88 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %free.0.lcssa, ptr %free_clusters, align 4
  %free_clus_valid16 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 18
  %89 = ptrtoint ptr %free_clus_valid16 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %free_clus_valid16, align 4
  %90 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %92 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %while.end.mark_fsinfo_dirty.exit_crit_edge

while.end.mark_fsinfo_dirty.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_fsinfo_dirty.exit

lor.lhs.false.i:                                  ; preds = %while.end
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %91, i32 0, i32 4
  %94 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %95)
  %cmp.i.i40 = icmp eq i8 %95, 32
  br i1 %cmp.i.i40, label %if.end.i41, label %lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge

lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_fsinfo_dirty.exit

if.end.i41:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %fsinfo_inode.i = getelementptr inbounds %struct.msdos_sb_info, ptr %91, i32 0, i32 29
  %96 = ptrtoint ptr %fsinfo_inode.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fsinfo_inode.i, align 4
  call void @__mark_inode_dirty(ptr noundef %97, i32 noundef 1) #8
  br label %mark_fsinfo_dirty.exit

mark_fsinfo_dirty.exit:                           ; preds = %if.end.i41, %lor.lhs.false.i.mark_fsinfo_dirty.exit_crit_edge, %while.end.mark_fsinfo_dirty.exit_crit_edge
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %4, align 4
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp14.i = icmp sgt i32 %100, 0
  br i1 %cmp14.i, label %mark_fsinfo_dirty.exit.for.body.i_crit_edge, label %mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge

mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge: ; preds = %mark_fsinfo_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

mark_fsinfo_dirty.exit.for.body.i_crit_edge:      ; preds = %mark_fsinfo_dirty.exit
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %mark_fsinfo_dirty.exit.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %mark_fsinfo_dirty.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %102) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %5, align 4
  %cmp.i44 = icmp slt i32 %inc.i, %104
  br i1 %cmp.i44, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.fatent_brelse.exit_crit_edge

brelse.exit.i.fatent_brelse.exit_crit_edge:       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fatent_brelse.exit:                               ; preds = %brelse.exit.i.fatent_brelse.exit_crit_edge, %mark_fsinfo_dirty.exit.fatent_brelse.exit_crit_edge
  %105 = call ptr @memset(ptr %5, i32 0, i32 16)
  br label %out

out:                                              ; preds = %fatent_brelse.exit, %fat_ent_read_block.exit.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.1 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ 0, %fatent_brelse.exit ], [ %call2.i, %fat_ent_read_block.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fatent_ra) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #8
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fat_ent_reada(ptr noundef %sb, ptr nocapture noundef %ra, ptr nocapture noundef readonly %fatent) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  %blocknr = alloca i64, align 8
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ra_next = getelementptr inbounds %struct.fatent_ra, ptr %ra, i32 0, i32 4
  %0 = ptrtoint ptr %ra_next to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ra_next, align 8
  %ra_limit = getelementptr inbounds %struct.fatent_ra, ptr %ra, i32 0, i32 5
  %2 = ptrtoint ptr %ra_limit to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ra_limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp ult i64 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ra to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ra, align 8
  %ra_advance = getelementptr inbounds %struct.fatent_ra, ptr %ra, i32 0, i32 3
  %6 = ptrtoint ptr %ra_advance to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ra_advance, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1.not = icmp ult i64 %5, %7
  br i1 %cmp1.not, label %if.end.if.end20_crit_edge, label %if.then2

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %12 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %13 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %blocknr, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %offset, align 4, !annotation !39
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %17 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fatent, align 4
  call void %16(ptr noundef %sb, i32 noundef %18, ptr noundef nonnull %offset, ptr noundef nonnull %blocknr) #8
  %19 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %blocknr, align 8
  %21 = ptrtoint ptr %ra to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ra, align 8
  %sub = sub i64 %20, %22
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  %23 = ptrtoint ptr %ra_next to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ra_next, align 8
  %25 = ptrtoint ptr %ra_limit to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ra_limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp742 = icmp ult i64 %24, %26
  br i1 %cmp742, label %for.body.lr.ph, label %if.then2.for.end_crit_edge

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %27 = phi i64 [ %24, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i64 %sub, %27
  %28 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bdev.i, align 4
  %30 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i, align 16
  call void @__breadahead(ptr noundef %29, i64 noundef %add, i32 noundef %31) #8
  %32 = ptrtoint ptr %ra_next to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ra_next, align 8
  %inc = add i64 %33, 1
  store i64 %inc, ptr %ra_next, align 8
  %34 = ptrtoint ptr %ra_limit to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ra_limit, align 8
  %cmp7 = icmp ult i64 %inc, %35
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then2.for.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  %ra_blocks = getelementptr inbounds %struct.fatent_ra, ptr %ra, i32 0, i32 2
  %36 = ptrtoint ptr %ra_blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ra_blocks, align 8
  %conv = zext i32 %37 to i64
  %38 = ptrtoint ptr %ra_advance to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ra_advance, align 8
  %add11 = add i64 %39, %conv
  store i64 %add11, ptr %ra_advance, align 8
  %limit = getelementptr inbounds %struct.fatent_ra, ptr %ra, i32 0, i32 1
  %40 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %limit, align 8
  %42 = ptrtoint ptr %ra_limit to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ra_limit, align 8
  %sub15 = sub i64 %41, %43
  %44 = call i64 @llvm.umin.i64(i64 %sub15, i64 %conv)
  %add19 = add i64 %44, %43
  %45 = ptrtoint ptr %ra_limit to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add19, ptr %ra_limit, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.end.if.end20_crit_edge
  %46 = ptrtoint ptr %ra to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ra, align 8
  %inc22 = add i64 %47, 1
  store i64 %inc22, ptr %ra, align 8
  br label %return

return:                                           ; preds = %if.end20, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_trim_fs(ptr nocapture noundef readonly %inode, ptr nocapture noundef %range) local_unnamed_addr #0 align 64 {
entry:
  %blocknr.i172 = alloca i64, align 8
  %offset.i173 = alloca i32, align 4
  %blocknr.i = alloca i64, align 8
  %block_end.i = alloca i64, align 8
  %offset.i = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 4
  %fatent_ra = alloca %struct.fatent_ra, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fatent_ops, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #8
  %6 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %8 = call ptr @memset(ptr %fatent, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fatent_ra) #8
  %9 = call ptr @memset(ptr %fatent_ra, i32 255, i32 48)
  %10 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %range, align 8
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cluster_bits, align 2
  %sh_prom = zext i16 %13 to i64
  %shr = lshr i64 %11, %sh_prom
  %14 = tail call i64 @llvm.umax.i64(i64 %shr, i64 2)
  %len = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len, align 8
  %shr5 = lshr i64 %16, %sh_prom
  %add = add i64 %shr5, -1
  %sub = add i64 %add, %14
  %minlen6 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %17 = ptrtoint ptr %minlen6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %minlen6, align 8
  %shr10 = lshr i64 %18, %sh_prom
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_cluster, align 4
  %conv11 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv11)
  %cmp12.not = icmp ult i64 %14, %conv11
  br i1 %cmp12.not, label %lor.lhs.false, label %entry.cleanup108_crit_edge

entry.cleanup108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup108

lor.lhs.false:                                    ; preds = %entry
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size, align 4
  %conv15 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv15)
  %cmp16 = icmp ult i64 %16, %conv15
  br i1 %cmp16, label %lor.lhs.false.cleanup108_crit_edge, label %if.end

lor.lhs.false.cleanup108_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup108

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv11)
  %cmp20.not = icmp ult i64 %sub, %conv11
  %sub24 = add i32 %20, -1
  %conv25 = zext i32 %sub24 to i64
  %ent_end.0 = select i1 %cmp20.not, i64 %sub, i64 %conv25
  %23 = call ptr @memset(ptr %7, i32 0, i32 16)
  %fat_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %fat_lock.i, i32 noundef 0) #8
  %conv27 = trunc i64 %14 to i32
  %24 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv27, ptr %fatent, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %6, align 4
  %26 = trunc i64 %ent_end.0 to i32
  %conv29 = add i32 %26, 1
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i = getelementptr inbounds %struct.msdos_sb_info, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %fatent_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fatent_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i) #8
  %31 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %blocknr.i, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block_end.i) #8
  %32 = ptrtoint ptr %block_end.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %block_end.i, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #8
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %offset.i, align 4, !annotation !39
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages1.i = getelementptr inbounds %struct.backing_dev_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ra_pages1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ra_pages1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %conv27)
  %cmp.not.i = icmp sgt i32 %conv29, %conv27
  br i1 %cmp.not.i, label %if.end.i, label %if.end.fat_ra_init.exit_crit_edge

if.end.fat_ra_init.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ra_init.exit

if.end.i:                                         ; preds = %if.end
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %35, i32 0, i32 4
  %38 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp4.i = icmp ugt i32 %37, %39
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %37, %39
  %sub.i = sub i32 %37, %rem.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %ra_pages.0.i = phi i32 [ %sub.i, %if.then5.i ], [ %37, %if.end.i.if.end8.i_crit_edge ]
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %41 to i32
  %add.i = sub nsw i32 13, %conv.i
  %shl.i = shl i32 %ra_pages.0.i, %add.i
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %30, align 4
  call void %43(ptr noundef %1, i32 noundef %conv27, ptr noundef nonnull %offset.i, ptr noundef nonnull %blocknr.i) #8
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %30, align 4
  call void %45(ptr noundef %1, i32 noundef %26, ptr noundef nonnull %offset.i, ptr noundef nonnull %block_end.i) #8
  %46 = ptrtoint ptr %fatent_ra to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %fatent_ra, align 8
  %47 = ptrtoint ptr %block_end.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %block_end.i, align 8
  %add13.i = add i64 %48, 1
  %49 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %blocknr.i, align 8
  %sub14.i = sub i64 %add13.i, %50
  %limit.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 1
  %51 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sub14.i, ptr %limit.i, align 8
  %shr.i = lshr i32 %shl.i, 1
  %ra_blocks.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 2
  %52 = ptrtoint ptr %ra_blocks.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr.i, ptr %ra_blocks.i, align 8
  %ra_advance.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 3
  %conv18.i = zext i32 %shl.i to i64
  %53 = call i64 @llvm.umin.i64(i64 %sub14.i, i64 %conv18.i) #8
  %ra_limit.i = getelementptr inbounds %struct.fatent_ra, ptr %fatent_ra, i32 0, i32 5
  %54 = call ptr @memset(ptr %ra_advance.i, i32 0, i32 16)
  %55 = ptrtoint ptr %ra_limit.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %53, ptr %ra_limit.i, align 8
  br label %fat_ra_init.exit

fat_ra_init.exit:                                 ; preds = %if.end8.i, %if.end.fat_ra_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block_end.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i) #8
  %56 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fatent, align 4
  %conv31230 = sext i32 %57 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %ent_end.0, i64 %conv31230)
  %cmp32.not231 = icmp ult i64 %ent_end.0, %conv31230
  br i1 %cmp32.not231, label %fat_ra_init.exit.error_crit_edge, label %while.body.lr.ph

fat_ra_init.exit.error_crit_edge:                 ; preds = %fat_ra_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

while.body.lr.ph:                                 ; preds = %fat_ra_init.exit
  %ent_get = getelementptr inbounds %struct.fatent_operations, ptr %5, i32 0, i32 3
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end78.while.body_crit_edge, %while.body.lr.ph
  %free.0233 = phi i32 [ 0, %while.body.lr.ph ], [ %free.2, %if.end78.while.body_crit_edge ]
  %trimmed.0232 = phi i64 [ 0, %while.body.lr.ph ], [ %trimmed.5, %if.end78.while.body_crit_edge ]
  call fastcc void @fat_ent_reada(ptr noundef %1, ptr noundef nonnull %fatent_ra, ptr noundef nonnull %fatent)
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops.i175 = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %fatent_ops.i175 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fatent_ops.i175, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr.i172) #8
  %62 = ptrtoint ptr %blocknr.i172 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %blocknr.i172, align 8, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i173) #8
  %63 = ptrtoint ptr %offset.i173 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %offset.i173, align 4, !annotation !39
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %6, align 4
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp14.i.i = icmp sgt i32 %66, 0
  br i1 %cmp14.i.i, label %while.body.for.body.i.i_crit_edge, label %while.body.fat_ent_read_block.exit_crit_edge

while.body.fat_ent_read_block.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

while.body.for.body.i.i_crit_edge:                ; preds = %while.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %while.body.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %68) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %7, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %70
  br i1 %cmp.i.i, label %brelse.exit.i.i.for.body.i.i_crit_edge, label %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge

brelse.exit.i.i.fat_ent_read_block.exit_crit_edge: ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fat_ent_read_block.exit

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

fat_ent_read_block.exit:                          ; preds = %brelse.exit.i.i.fat_ent_read_block.exit_crit_edge, %while.body.fat_ent_read_block.exit_crit_edge
  %71 = call ptr @memset(ptr %7, i32 0, i32 16)
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %61, align 4
  %74 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fatent, align 4
  call void %73(ptr noundef %1, i32 noundef %75, ptr noundef nonnull %offset.i173, ptr noundef nonnull %blocknr.i172) #8
  %ent_bread.i = getelementptr inbounds %struct.fatent_operations, ptr %61, i32 0, i32 2
  %76 = ptrtoint ptr %ent_bread.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ent_bread.i, align 4
  %78 = ptrtoint ptr %offset.i173 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i173, align 4
  %80 = ptrtoint ptr %blocknr.i172 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %blocknr.i172, align 8
  %call2.i = call i32 %77(ptr noundef %1, ptr noundef nonnull %fatent, i32 noundef %79, i64 noundef %81) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i173) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr.i172) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %fat_ent_read_block.exit.do.body_crit_edge, label %fat_ent_read_block.exit.error_crit_edge

fat_ent_read_block.exit.error_crit_edge:          ; preds = %fat_ent_read_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

fat_ent_read_block.exit.do.body_crit_edge:        ; preds = %fat_ent_read_block.exit
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %fat_ent_read_block.exit.do.body_crit_edge
  %trimmed.1 = phi i64 [ %trimmed.5, %land.rhs.do.body_crit_edge ], [ %trimmed.0232, %fat_ent_read_block.exit.do.body_crit_edge ]
  %free.1 = phi i32 [ %free.2, %land.rhs.do.body_crit_edge ], [ %free.0233, %fat_ent_read_block.exit.do.body_crit_edge ]
  %err.1 = phi i32 [ %err.4, %land.rhs.do.body_crit_edge ], [ 0, %fat_ent_read_block.exit.do.body_crit_edge ]
  %82 = ptrtoint ptr %ent_get to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ent_get, align 4
  %call37 = call i32 %83(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %free.1, 1
  br label %do.cond

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1)
  %tobool41.not = icmp eq i32 %free.1, 0
  br i1 %tobool41.not, label %if.else.do.cond_crit_edge, label %if.then42

if.else.do.cond_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then42:                                        ; preds = %if.else
  %conv43 = zext i32 %free.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr10, i64 %conv43)
  %cmp44.not = icmp ugt i64 %shr10, %conv43
  br i1 %cmp44.not, label %if.then42.do.cond_crit_edge, label %if.then46

if.then42.do.cond_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then46:                                        ; preds = %if.then42
  %84 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fatent, align 4
  %sub48 = sub i32 %85, %free.1
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i.i = sext i32 %sub48 to i64
  %sub.i.i = add nsw i64 %conv.i.i, -2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 4
  %conv1.i.i = zext i16 %89 to i64
  %mul.i.i = mul nsw i64 %sub.i.i, %conv1.i.i
  %data_start.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %87, i32 0, i32 9
  %90 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_start.i.i, align 4
  %conv2.i.i = zext i32 %91 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv2.i.i
  %conv.i177 = zext i16 %89 to i32
  %mul.i = mul i32 %free.1, %conv.i177
  %conv2.i = zext i32 %mul.i to i64
  %92 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_bdev.i.i, align 4
  %94 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i6.i = zext i8 %95 to i32
  %sub.i7.i = add nsw i32 %conv.i6.i, -9
  %sh_prom.i.i = zext i32 %sub.i7.i to i64
  %shl.i.i = shl i64 %add.i.i, %sh_prom.i.i
  %shl5.i.i = shl i64 %conv2.i, %sh_prom.i.i
  %call.i.i = call i32 @blkdev_issue_discard(ptr noundef %93, i64 noundef %shl.i.i, i64 noundef %shl5.i.i, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool50.not = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i)
  %cmp51.not = icmp eq i32 %call.i.i, -95
  %or.cond = or i1 %tobool50.not, %cmp51.not
  %spec.select = select i1 %tobool50.not, i64 %conv43, i64 0
  %trimmed.3 = add i64 %spec.select, %trimmed.1
  %err.2 = select i1 %or.cond, i32 0, i32 %call.i.i
  %96 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call.i.i, label %if.then46.error_crit_edge [
    i32 -95, label %if.then46.do.cond_crit_edge
    i32 0, label %if.then46.do.cond_crit_edge247
  ]

if.then46.do.cond_crit_edge247:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then46.do.cond_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then46.error_crit_edge:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.cond:                                          ; preds = %if.then46.do.cond_crit_edge, %if.then46.do.cond_crit_edge247, %if.then42.do.cond_crit_edge, %if.else.do.cond_crit_edge, %if.then40
  %trimmed.5 = phi i64 [ %trimmed.1, %if.then40 ], [ %trimmed.1, %if.else.do.cond_crit_edge ], [ %trimmed.3, %if.then46.do.cond_crit_edge ], [ %trimmed.1, %if.then42.do.cond_crit_edge ], [ %trimmed.3, %if.then46.do.cond_crit_edge247 ]
  %free.2 = phi i32 [ %inc, %if.then40 ], [ 0, %if.else.do.cond_crit_edge ], [ 0, %if.then46.do.cond_crit_edge ], [ 0, %if.then42.do.cond_crit_edge ], [ 0, %if.then46.do.cond_crit_edge247 ]
  %err.4 = phi i32 [ %err.1, %if.then40 ], [ %err.1, %if.else.do.cond_crit_edge ], [ %err.2, %if.then46.do.cond_crit_edge ], [ %err.1, %if.then42.do.cond_crit_edge ], [ %err.2, %if.then46.do.cond_crit_edge247 ]
  %97 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fatent_ops, align 4
  %ent_next.i = getelementptr inbounds %struct.fatent_operations, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %ent_next.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ent_next.i, align 4
  %call.i = call i32 %100(ptr noundef nonnull %fatent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.cond.do.end_crit_edge, label %if.then.i

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then.i:                                        ; preds = %do.cond
  %101 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fatent, align 4
  %103 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_cluster, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.i = icmp ult i32 %102, %104
  br i1 %cmp.i, label %land.rhs, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %if.then.i
  %105 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fatent, align 4
  %conv66 = sext i32 %106 to i64
  %cmp67.not = icmp ult i64 %ent_end.0, %conv66
  br i1 %cmp67.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %if.then.i.do.end_crit_edge, %do.cond.do.end_crit_edge
  %107 = call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %stack.i.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  %and1.i.i.i.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i179 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i179, label %do.end.if.end73_crit_edge, label %fatal_signal_pending.exit

do.end.if.end73_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

fatal_signal_pending.exit:                        ; preds = %do.end
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 116, i32 1
  %115 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %signal.i.i, align 4
  %117 = and i32 %116, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool71.not = icmp eq i32 %117, 0
  br i1 %tobool71.not, label %fatal_signal_pending.exit.if.end73_crit_edge, label %fatal_signal_pending.exit.error_crit_edge

fatal_signal_pending.exit.error_crit_edge:        ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

fatal_signal_pending.exit.if.end73_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end73:                                         ; preds = %fatal_signal_pending.exit.if.end73_crit_edge, %do.end.if.end73_crit_edge
  %118 = call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i to ptr
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 16384
  %122 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i.not = icmp eq i32 %122, 0
  br i1 %tobool.i.not, label %if.end73.if.end78_crit_edge, label %if.then75

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then75:                                        ; preds = %if.end73
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %6, align 4
  %124 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp14.i = icmp sgt i32 %125, 0
  br i1 %cmp14.i, label %if.then75.for.body.i_crit_edge, label %if.then75.fatent_brelse.exit_crit_edge

if.then75.fatent_brelse.exit_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

if.then75.for.body.i_crit_edge:                   ; preds = %if.then75
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %if.then75.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %if.then75.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %127) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %128 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %7, align 4
  %cmp.i182 = icmp slt i32 %inc.i, %129
  br i1 %cmp.i182, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.fatent_brelse.exit_crit_edge

brelse.exit.i.fatent_brelse.exit_crit_edge:       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fatent_brelse.exit:                               ; preds = %brelse.exit.i.fatent_brelse.exit_crit_edge, %if.then75.fatent_brelse.exit_crit_edge
  %130 = call ptr @memset(ptr %7, i32 0, i32 16)
  call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 824, i32 noundef 0) #8
  %call.i184 = call i32 @__cond_resched() #8
  call void @mutex_lock_nested(ptr noundef %fat_lock.i, i32 noundef 0) #8
  br label %if.end78

if.end78:                                         ; preds = %fatent_brelse.exit, %if.end73.if.end78_crit_edge
  %131 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fatent, align 4
  %conv31 = sext i32 %132 to i64
  %cmp32.not = icmp ult i64 %ent_end.0, %conv31
  br i1 %cmp32.not, label %while.end, label %if.end78.while.body_crit_edge

if.end78.while.body_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.2)
  %tobool79.not = icmp eq i32 %free.2, 0
  br i1 %tobool79.not, label %while.end.error_crit_edge, label %land.lhs.true80

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true80:                                  ; preds = %while.end
  %conv81 = zext i32 %free.2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr10, i64 %conv81)
  %cmp82.not = icmp ugt i64 %shr10, %conv81
  br i1 %cmp82.not, label %land.lhs.true80.error_crit_edge, label %if.then84

land.lhs.true80.error_crit_edge:                  ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then84:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  %sub87 = sub i32 %132, %free.2
  %133 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i.i187 = sext i32 %sub87 to i64
  %sub.i.i188 = add nsw i64 %conv.i.i187, -2
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %134, align 4
  %conv1.i.i189 = zext i16 %136 to i64
  %mul.i.i190 = mul nsw i64 %sub.i.i188, %conv1.i.i189
  %data_start.i.i191 = getelementptr inbounds %struct.msdos_sb_info, ptr %134, i32 0, i32 9
  %137 = ptrtoint ptr %data_start.i.i191 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %data_start.i.i191, align 4
  %conv2.i.i192 = zext i32 %138 to i64
  %add.i.i193 = add nsw i64 %mul.i.i190, %conv2.i.i192
  %conv.i194 = zext i16 %136 to i32
  %mul.i195 = mul i32 %free.2, %conv.i194
  %conv2.i196 = zext i32 %mul.i195 to i64
  %s_bdev.i.i197 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %139 = ptrtoint ptr %s_bdev.i.i197 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_bdev.i.i197, align 4
  %s_blocksize_bits.i.i198 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %141 = ptrtoint ptr %s_blocksize_bits.i.i198 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %s_blocksize_bits.i.i198, align 4
  %conv.i6.i199 = zext i8 %142 to i32
  %sub.i7.i200 = add nsw i32 %conv.i6.i199, -9
  %sh_prom.i.i201 = zext i32 %sub.i7.i200 to i64
  %shl.i.i202 = shl i64 %add.i.i193, %sh_prom.i.i201
  %shl5.i.i203 = shl i64 %conv2.i196, %sh_prom.i.i201
  %call.i.i204 = call i32 @blkdev_issue_discard(ptr noundef %140, i64 noundef %shl.i.i202, i64 noundef %shl5.i.i203, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i204)
  %tobool89.not = icmp eq i32 %call.i.i204, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i204)
  %cmp91.not = icmp eq i32 %call.i.i204, -95
  %or.cond169 = or i1 %tobool89.not, %cmp91.not
  %spec.select170 = select i1 %tobool89.not, i64 %conv81, i64 0
  %trimmed.7 = add i64 %spec.select170, %trimmed.5
  %err.5 = select i1 %or.cond169, i32 0, i32 %call.i.i204
  br label %error

error:                                            ; preds = %if.then84, %land.lhs.true80.error_crit_edge, %while.end.error_crit_edge, %fatal_signal_pending.exit.error_crit_edge, %if.then46.error_crit_edge, %fat_ent_read_block.exit.error_crit_edge, %fat_ra_init.exit.error_crit_edge
  %trimmed.8 = phi i64 [ %trimmed.7, %if.then84 ], [ %trimmed.5, %land.lhs.true80.error_crit_edge ], [ %trimmed.5, %while.end.error_crit_edge ], [ 0, %fat_ra_init.exit.error_crit_edge ], [ %trimmed.3, %if.then46.error_crit_edge ], [ %trimmed.5, %fatal_signal_pending.exit.error_crit_edge ], [ %trimmed.0232, %fat_ent_read_block.exit.error_crit_edge ]
  %err.6 = phi i32 [ %err.5, %if.then84 ], [ %err.4, %land.lhs.true80.error_crit_edge ], [ %err.4, %while.end.error_crit_edge ], [ 0, %fat_ra_init.exit.error_crit_edge ], [ %err.2, %if.then46.error_crit_edge ], [ -512, %fatal_signal_pending.exit.error_crit_edge ], [ %call2.i, %fat_ent_read_block.exit.error_crit_edge ]
  %143 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %6, align 4
  %144 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp14.i207 = icmp sgt i32 %145, 0
  br i1 %cmp14.i207, label %error.for.body.i211_crit_edge, label %error.fatent_brelse.exit216_crit_edge

error.fatent_brelse.exit216_crit_edge:            ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit216

error.for.body.i211_crit_edge:                    ; preds = %error
  br label %for.body.i211

for.body.i211:                                    ; preds = %brelse.exit.i215.for.body.i211_crit_edge, %error.for.body.i211_crit_edge
  %i.015.i208 = phi i32 [ %inc.i213, %brelse.exit.i215.for.body.i211_crit_edge ], [ 0, %error.for.body.i211_crit_edge ]
  %arrayidx.i209 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i208
  %146 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i209, align 4
  %tobool.not.i.i210 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i210, label %for.body.i211.brelse.exit.i215_crit_edge, label %if.then.i.i212

for.body.i211.brelse.exit.i215_crit_edge:         ; preds = %for.body.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i215

if.then.i.i212:                                   ; preds = %for.body.i211
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %147) #8
  br label %brelse.exit.i215

brelse.exit.i215:                                 ; preds = %if.then.i.i212, %for.body.i211.brelse.exit.i215_crit_edge
  %inc.i213 = add nuw nsw i32 %i.015.i208, 1
  %148 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %7, align 4
  %cmp.i214 = icmp slt i32 %inc.i213, %149
  br i1 %cmp.i214, label %brelse.exit.i215.for.body.i211_crit_edge, label %brelse.exit.i215.fatent_brelse.exit216_crit_edge

brelse.exit.i215.fatent_brelse.exit216_crit_edge: ; preds = %brelse.exit.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %fatent_brelse.exit216

brelse.exit.i215.for.body.i211_crit_edge:         ; preds = %brelse.exit.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i211

fatent_brelse.exit216:                            ; preds = %brelse.exit.i215.fatent_brelse.exit216_crit_edge, %error.fatent_brelse.exit216_crit_edge
  %150 = call ptr @memset(ptr %7, i32 0, i32 16)
  call void @mutex_unlock(ptr noundef %fat_lock.i) #8
  %151 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cluster_bits, align 2
  %sh_prom106 = zext i16 %152 to i64
  %shl = shl i64 %trimmed.8, %sh_prom106
  %153 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %shl, ptr %len, align 8
  br label %cleanup108

cleanup108:                                       ; preds = %fatent_brelse.exit216, %lor.lhs.false.cleanup108_crit_edge, %entry.cleanup108_crit_edge
  %retval.0 = phi i32 [ %err.6, %fatent_brelse.exit216 ], [ -22, %lor.lhs.false.cleanup108_crit_edge ], [ -22, %entry.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fatent_ra) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_ent_blocknr(ptr nocapture noundef readonly %sb, i32 noundef %entry1, ptr nocapture noundef writeonly %offset, ptr nocapture noundef writeonly %blocknr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_shift = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %fatent_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatent_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entry1)
  %cmp.i = icmp sgt i32 %entry1, 1
  br i1 %cmp.i, label %fat_valid_entry.exit, label %entry.do.end_crit_edge, !prof !45

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

fat_valid_entry.exit:                             ; preds = %entry
  %max_cluster.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %max_cluster.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %entry1)
  %cmp2.i = icmp ugt i32 %5, %entry1
  br i1 %cmp2.i, label %fat_valid_entry.exit.if.end_crit_edge, label %fat_valid_entry.exit.do.end_crit_edge, !prof !46

fat_valid_entry.exit.do.end_crit_edge:            ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

fat_valid_entry.exit.if.end_crit_edge:            ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %fat_valid_entry.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 38, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %fat_valid_entry.exit.if.end_crit_edge
  %shl = shl i32 %entry1, %3
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %7, -1
  %and = and i32 %sub, %shl
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset, align 4
  %fat_start = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %fat_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fat_start, align 2
  %conv = zext i16 %10 to i32
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %11 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_blocksize_bits, align 4
  %conv22 = zext i8 %12 to i32
  %shr = ashr i32 %shl, %conv22
  %add = add i32 %shr, %conv
  %conv23 = sext i32 %add to i64
  %13 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv23, ptr %blocknr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat32_ent_set_ptr(ptr nocapture noundef %fatent, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 65, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %0 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhs, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %u, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_ent_bread(ptr noundef %sb, ptr noundef %fatent, i32 noundef %offset, i64 noundef %blocknr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fatent_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fatent_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fatent_ops, align 4
  %fat_start = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fat_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fat_start, align 2
  %conv = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %blocknr)
  %cmp = icmp ugt i64 %conv, %blocknr
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %fat_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fat_inode, align 4
  %fat_inode22 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 4
  %10 = ptrtoint ptr %fat_inode22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fat_inode22, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %blocknr, i32 noundef %14, i32 noundef 8) #8
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %15 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %bhs, align 4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %blocknr) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %16 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nr_bhs, align 4
  %ent_set_ptr = getelementptr inbounds %struct.fatent_operations, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %ent_set_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ent_set_ptr, align 4
  tail call void %18(ptr noundef %fatent, i32 noundef %offset) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -5, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat32_ent_get(ptr nocapture noundef readonly %fatent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %1 to i32
  %and2 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = and i32 %3, -241
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435446, i32 %6)
  %cmp = icmp ugt i32 %6, 268435446
  %spec.store.select = select i1 %cmp, i32 268435455, i32 %6
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat32_ent_put(ptr nocapture noundef readonly %fatent, i32 noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %new)
  %tobool.not = icmp ult i32 %new, 268435456
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 188, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = shl i32 %3, 24
  %and20 = and i32 %4, -268435456
  %or = or i32 %and20, %new
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %7 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bhs, align 4
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 4
  %9 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fat_inode, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %8, ptr noundef %10) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fat32_ent_next(ptr nocapture noundef %fatent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %0 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhs, align 4
  %2 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatent, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %fatent, align 4
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %sub = add i32 %9, -4
  %add.ptr = getelementptr i8, ptr %7, i32 %sub
  %cmp = icmp ult ptr %5, %add.ptr
  %incdec.ptr = getelementptr i32, ptr %5, i32 1
  %storemerge = select i1 %cmp, ptr %incdec.ptr, ptr null
  %retval.0 = zext i1 %cmp to i32
  store ptr %storemerge, ptr %u, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat16_ent_set_ptr(ptr nocapture noundef %fatent, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %0 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhs, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %u, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat16_ent_get(ptr nocapture noundef readonly %fatent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = ptrtoint ptr %1 to i32
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 140, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10, i16 %5)
  %cmp = icmp ugt i16 %5, -10
  %spec.store.select = select i1 %cmp, i32 268435455, i32 %conv
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat16_ent_put(ptr nocapture noundef readonly %fatent, i32 noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %new to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %1, ptr %3, align 2
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %5 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bhs, align 4
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 4
  %7 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fat_inode, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %6, ptr noundef %8) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fat16_ent_next(ptr nocapture noundef %fatent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %0 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhs, align 4
  %2 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatent, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %fatent, align 4
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %sub = add i32 %9, -2
  %add.ptr = getelementptr i8, ptr %7, i32 %sub
  %cmp = icmp ult ptr %5, %add.ptr
  %incdec.ptr = getelementptr i16, ptr %5, i32 1
  %storemerge = select i1 %cmp, ptr %incdec.ptr, ptr null
  %retval.0 = zext i1 %cmp to i32
  store ptr %storemerge, ptr %u, align 4
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat12_ent_blocknr(ptr nocapture noundef readonly %sb, i32 noundef %entry1, ptr nocapture noundef writeonly %offset, ptr nocapture noundef writeonly %blocknr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entry1)
  %cmp.i = icmp sgt i32 %entry1, 1
  br i1 %cmp.i, label %fat_valid_entry.exit, label %entry.do.end_crit_edge, !prof !45

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

fat_valid_entry.exit:                             ; preds = %entry
  %max_cluster.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %max_cluster.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %entry1)
  %cmp2.i = icmp ugt i32 %3, %entry1
  br i1 %cmp2.i, label %fat_valid_entry.exit.if.end_crit_edge, label %fat_valid_entry.exit.do.end_crit_edge, !prof !46

fat_valid_entry.exit.do.end_crit_edge:            ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

fat_valid_entry.exit.if.end_crit_edge:            ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %fat_valid_entry.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %fat_valid_entry.exit.if.end_crit_edge
  %shr = ashr i32 %entry1, 1
  %add = add i32 %shr, %entry1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %5, -1
  %and = and i32 %sub, %add
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %offset, align 4
  %fat_start = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %fat_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fat_start, align 2
  %conv = zext i16 %8 to i32
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %conv22 = zext i8 %10 to i32
  %shr23 = ashr i32 %add, %conv22
  %add24 = add i32 %shr23, %conv
  %conv25 = sext i32 %add24 to i64
  %11 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv25, ptr %blocknr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat12_ent_set_ptr(ptr nocapture noundef %fatent, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bhs1 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %0 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %2 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bhs1, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_size, align 8
  %sub = add i32 %5, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %offset)
  %cmp2.not = icmp ugt i32 %sub, %offset
  br i1 %cmp2.not, label %if.then.if.end_crit_edge, label %do.end, !prof !46

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 47, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bhs1, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %offset
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %u, align 4
  %11 = load ptr, ptr %b_data, align 4
  %add = add i32 %offset, 1
  %add.ptr26 = getelementptr i8, ptr %11, i32 %add
  br label %if.end72

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %offset)
  %cmp33.not = icmp eq i32 %sub, %offset
  br i1 %cmp33.not, label %if.else.if.end55_crit_edge, label %do.end49, !prof !46

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.else.if.end55_crit_edge
  %12 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bhs1, align 4
  %b_data64 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data64, align 4
  %add.ptr65 = getelementptr i8, ptr %15, i32 %offset
  %u66 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %16 = ptrtoint ptr %u66 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr65, ptr %u66, align 4
  %arrayidx68 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx68, align 4
  %b_data69 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data69, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end55, %if.end
  %.sink = phi ptr [ %20, %if.end55 ], [ %add.ptr26, %if.end ]
  %arrayidx71 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.sink, ptr %arrayidx71, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat12_ent_bread(ptr noundef %sb, ptr nocapture noundef %fatent, i32 noundef %offset, i64 noundef %blocknr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bhs1 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fat_start = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fat_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fat_start, align 2
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %blocknr)
  %cmp = icmp ugt i64 %conv, %blocknr
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 74, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %fat_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fat_inode, align 4
  %fat_inode22 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 4
  %8 = ptrtoint ptr %fat_inode22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %fat_inode22, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %10, i64 noundef %blocknr, i32 noundef %12, i32 noundef 8) #8
  %13 = ptrtoint ptr %bhs1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %bhs1, align 4
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end.err_crit_edge, label %if.end27

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end27:                                         ; preds = %if.end
  %add = add i32 %offset, 1
  %14 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp28 = icmp ult i32 %add, %15
  br i1 %cmp28, label %if.end27.if.end38_crit_edge, label %if.else

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else:                                          ; preds = %if.end27
  %inc = add i64 %blocknr, 1
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %call.i62 = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %inc, i32 noundef %15, i32 noundef 8) #8
  %arrayidx32 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i62, ptr %arrayidx32, align 4
  %tobool34.not = icmp eq ptr %call.i62, null
  br i1 %tobool34.not, label %err_brelse, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %.sink = phi i32 [ 1, %if.end27.if.end38_crit_edge ], [ 2, %if.else.if.end38_crit_edge ]
  %nr_bhs37 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %19 = ptrtoint ptr %nr_bhs37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %nr_bhs37, align 4
  %20 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bhs1, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size.i, align 8
  %sub.i = add i32 %23, -1
  br i1 %cmp28, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %sub.i, %offset
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !46

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 47, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bhs1, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %offset
  %u.i = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %28 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %u.i, align 4
  %29 = load ptr, ptr %b_data.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %29, i32 %add
  br label %fat12_ent_set_ptr.exit

if.else.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %offset)
  %cmp33.not.i = icmp eq i32 %sub.i, %offset
  br i1 %cmp33.not.i, label %if.else.i.if.end55.i_crit_edge, label %do.end49.i, !prof !46

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end49.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 9, ptr noundef null) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %if.else.i.if.end55.i_crit_edge
  %30 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bhs1, align 4
  %b_data64.i = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %b_data64.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data64.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %33, i32 %offset
  %u66.i = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %34 = ptrtoint ptr %u66.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr65.i, ptr %u66.i, align 4
  %arrayidx68.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68.i, align 4
  %b_data69.i = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %b_data69.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data69.i, align 4
  br label %fat12_ent_set_ptr.exit

fat12_ent_set_ptr.exit:                           ; preds = %if.end55.i, %if.end.i
  %.sink.i = phi ptr [ %38, %if.end55.i ], [ %add.ptr26.i, %if.end.i ]
  %arrayidx71.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.sink.i, ptr %arrayidx71.i, align 4
  br label %cleanup

err_brelse:                                       ; preds = %if.else
  %40 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bhs1, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %err_brelse.err_crit_edge, label %if.then.i63

err_brelse.err_crit_edge:                         ; preds = %err_brelse
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then.i63:                                      ; preds = %err_brelse
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %41) #8
  br label %err

err:                                              ; preds = %if.then.i63, %err_brelse.err_crit_edge, %if.end.err_crit_edge
  %blocknr.addr.0 = phi i64 [ %blocknr, %if.end.err_crit_edge ], [ %inc, %err_brelse.err_crit_edge ], [ %inc, %if.then.i63 ]
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %blocknr.addr.0) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %fat12_ent_set_ptr.exit
  %retval.0 = phi i32 [ 0, %fat12_ent_set_ptr.exit ], [ -5, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat12_ent_get(ptr nocapture noundef readonly %fatent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @fat12_entry_lock) #8
  %0 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fatent, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = lshr i8 %5, 4
  %7 = zext i8 %6 to i32
  %arrayidx2 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv3 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv3, 4
  %or = or i32 %shl, %7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv5 = zext i8 %15 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %u, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv8 = zext i8 %19 to i32
  %or9 = or i32 %shl6, %conv8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next.0 = phi i32 [ %or, %if.then ], [ %or9, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fat12_entry_lock) #8
  %and10 = and i32 %next.0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %and10)
  %cmp = icmp ugt i32 %and10, 4086
  %spec.store.select = select i1 %cmp, i32 268435455, i32 %and10
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat12_ent_put(ptr nocapture noundef readonly %fatent, i32 noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %new)
  %cmp = icmp eq i32 %new, 268435455
  %spec.store.select = select i1 %cmp, i32 4095, i32 %new
  tail call void @_raw_spin_lock(ptr noundef nonnull @fat12_entry_lock) #8
  %0 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fatent, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 15
  %spec.store.select.tr = trunc i32 %spec.store.select to i8
  %7 = shl i8 %spec.store.select.tr, 4
  %conv4 = or i8 %6, %7
  store i8 %conv4, ptr %3, align 1
  %8 = lshr i32 %spec.store.select, 4
  %conv6 = trunc i32 %8 to i8
  %arrayidx7 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %10, align 1
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = trunc i32 %spec.store.select to i8
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %u, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9, ptr %13, align 1
  %arrayidx11 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = and i8 %18, -16
  %20 = lshr i32 %spec.store.select, 8
  %21 = trunc i32 %20 to i8
  %conv16 = or i8 %19, %21
  store i8 %conv16, ptr %16, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fat12_entry_lock) #8
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %22 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bhs, align 4
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 4
  %24 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fat_inode, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %23, ptr noundef %25) #8
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %26 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_bhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp20 = icmp eq i32 %27, 2
  br i1 %cmp20, label %if.then22, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24, align 4
  %30 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fat_inode, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %29, ptr noundef %31) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat12_ent_next(ptr nocapture noundef %fatent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %bhs1 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 3
  %arrayidx = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %fatent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatent, align 4
  %and = and i32 %3, 1
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %and
  %inc = add i32 %3, 1
  store i32 %inc, ptr %fatent, align 4
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %4 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_bhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  %8 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bhs1, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_size, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add i32 %13, -2
  %add.ptr9 = getelementptr i8, ptr %11, i32 %sub
  %cmp10 = icmp ugt ptr %7, %add.ptr9
  br i1 %cmp10, label %do.end, label %if.then.if.end_crit_edge, !prof !42

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 203, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bhs1, align 4
  %b_data33 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data33, align 4
  %b_size35 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %b_size35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_size35, align 8
  %sub36 = add i32 %21, -1
  %add.ptr37 = getelementptr i8, ptr %19, i32 %sub36
  %cmp38 = icmp ugt ptr %15, %add.ptr37
  br i1 %cmp38, label %do.end54, label %if.end.if.end60_crit_edge, !prof !42

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 205, i32 noundef 9, ptr noundef null) #8
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end.if.end60_crit_edge
  %22 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bhs1, align 4
  %b_data69 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data69, align 4
  %b_size71 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %b_size71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_size71, align 8
  %sub72 = add i32 %27, -1
  %add.ptr73 = getelementptr i8, ptr %25, i32 %sub72
  %cmp74 = icmp ult ptr %add.ptr4, %add.ptr73
  br i1 %cmp74, label %if.then75, label %if.end159

if.then75:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr76 = getelementptr i8, ptr %add.ptr4, i32 -1
  %28 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr76, ptr %u, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr4, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %sub86 = add i32 %13, -1
  %add.ptr87 = getelementptr i8, ptr %11, i32 %sub86
  %cmp88.not = icmp eq ptr %7, %add.ptr87
  br i1 %cmp88.not, label %if.else.if.end110_crit_edge, label %do.end104, !prof !46

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.end104:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.else.if.end110_crit_edge
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %arrayidx120 = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx120, align 4
  %b_data121 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data121, align 4
  %cmp122.not = icmp eq ptr %31, %35
  br i1 %cmp122.not, label %if.end110.if.end144_crit_edge, label %do.end138, !prof !46

if.end110.if.end144_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

do.end138:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 214, i32 noundef 9, ptr noundef null) #8
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %if.end110.if.end144_crit_edge
  %add.ptr152 = getelementptr i8, ptr %add.ptr4, i32 -1
  %36 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr152, ptr %u, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr4, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %bhs1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bhs1, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end144.brelse.exit_crit_edge, label %if.then.i

if.end144.brelse.exit_crit_edge:                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %39) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end144.brelse.exit_crit_edge
  %40 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx120, align 4
  %42 = ptrtoint ptr %bhs1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %bhs1, align 4
  %43 = ptrtoint ptr %nr_bhs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %nr_bhs, align 4
  br label %cleanup

if.end159:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %u, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %brelse.exit, %if.then75
  %retval.0 = phi i32 [ 1, %if.then75 ], [ 0, %if.end159 ], [ 1, %brelse.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @fat_ent_access_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/fat/fatent.c", i32 292, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/fat/fatent.c", i32 304, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/fat/fatent.c", i32 358, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/fat/fatent.c", i32 572, i32 4}
!9 = !{ptr @__func__.fat_free_clusters, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_fat_free_clusters, !11, !"__ksymtab_fat_free_clusters", i1 false, i1 false}
!11 = !{!"../fs/fat/fatent.c", i32 634, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/fat/fatent.c", i32 743, i32 3}
!14 = !{ptr @fat32_ops, !15, !"fat32_ops", i1 false, i1 false}
!15 = !{!"../fs/fat/fatent.c", i32 269, i32 39}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fat/fatent.c", i32 110, i32 15}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/fat/fatent.c", i32 110, i32 25}
!20 = !{ptr @fat16_ops, !21, !"fat16_ops", i1 false, i1 false}
!21 = !{!"../fs/fat/fatent.c", i32 260, i32 39}
!22 = !{ptr @fat12_ops, !23, !"fat12_ops", i1 false, i1 false}
!23 = !{!"../fs/fat/fatent.c", i32 251, i32 39}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/fat/fatent.c", i32 21, i32 8}
!26 = !{ptr @fat12_entry_lock, !25, !"fat12_entry_lock", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2148487040, i64 2148487072, i64 2148487101, i64 2148487135, i64 2148487166, i64 2148487189}
!41 = !{i64 2148576121}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2154454827, i64 2154455307, i64 2154454864, i64 2154454920, i64 2154454954, i64 2154454978, i64 2154455019, i64 2154455040, i64 2154455068, i64 2154455102}
!44 = !{i64 2148478182, i64 2148478208, i64 2148478237, i64 2148478271, i64 2148478302, i64 2148478325}
!45 = !{!"branch_weights", i32 2146410443, i32 1073205}
!46 = !{!"branch_weights", i32 2000, i32 1}
