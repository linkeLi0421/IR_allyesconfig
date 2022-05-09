; ModuleID = '/llk/IR_all_yes/fs/exfat/balloc.c_pt.bc'
source_filename = "../fs/exfat/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exfat_chain = type { i32, i32, i8 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.exfat_dentry = type { i8, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fstrim_range = type { i64, i64, i64 }
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
%struct.rb_node = type { i32, ptr, ptr }
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

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/exfat/balloc.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"discard not supported by device, disabling\00", [53 x i8] zeroinitializer }, align 32
@free_bit = internal constant { [255 x i8], [33 x i8] } { [255 x i8] c"\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\06\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\07\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\06\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00", [33 x i8] zeroinitializer }, align 32
@__const.exfat_count_used_clusters.last_bit_mask = private unnamed_addr constant [8 x i8] c"\00\01\03\07\0F\1F?\7F", align 1
@used_bit = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", [64 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bogus allocation bitmap size(need : %u, cur : %lld)\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 257]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 151, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 185, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"free_bit\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 13, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"used_bit\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 29, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [21 x i8] c"../fs/exfat/balloc.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 61, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @free_bit, ptr @used_bit, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_bit to i32), i32 255, i32 288, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @used_bit to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_load_bitmap(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %clu = alloca %struct.exfat_chain, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #8
  %0 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %root_dir = getelementptr inbounds %struct.exfat_sb_info, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %root_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %root_dir, align 4
  call void @exfat_chain_set(ptr noundef nonnull %clu, i32 noundef %4, i32 noundef 0, i8 noundef zeroext 1) #8
  %dentries_per_clu = getelementptr inbounds %struct.exfat_sb_info, ptr %2, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %5 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  br i1 %cmp.not, label %while.cond.cleanup22_crit_edge, label %for.cond.preheader

while.cond.cleanup22_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

for.cond.preheader:                               ; preds = %while.cond
  %7 = ptrtoint ptr %dentries_per_clu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dentries_per_clu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp151.not = icmp eq i32 %8, 0
  br i1 %cmp151.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !21
  %call2 = call ptr @exfat_get_dentry(ptr noundef %sb, ptr noundef nonnull %clu, i32 noundef %i.052, ptr noundef nonnull %bh) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.cleanup.thread_crit_edge, label %if.end

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %call3 = call i32 @exfat_get_entry_type(ptr noundef nonnull %call2) #8
  %10 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.end.for.inc_crit_edge [
    i32 0, label %cleanup
    i32 257, label %if.end9
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10 = icmp eq i8 %12, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %start_clu.i = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 10
  %15 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %start_clu.i, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %map_clu.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 15
  %18 = ptrtoint ptr %map_clu.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %map_clu.i, align 8
  %size.i = getelementptr inbounds %struct.exfat_dentry, ptr %call2, i32 0, i32 1, i32 0, i32 14
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %size.i, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %num_clusters.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clusters.i, align 8
  %sub2.i = add i32 %23, -3
  %div70.i = lshr i32 %sub2.i, 3
  %add.i = add nuw nsw i32 %div70.i, 1
  %conv.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %21, %conv.i
  br i1 %cmp.not.i, label %if.then12.if.end8.i_crit_edge, label %if.then.i

if.then12.if.end8.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then12
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %add.i, i64 noundef %21) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv.i)
  %cmp5.i = icmp slt i64 %21, %conv.i
  br i1 %cmp5.i, label %if.then.i.exfat_allocate_bitmap.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i.exfat_allocate_bitmap.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_allocate_bitmap.exit

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then12.if.end8.i_crit_edge
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %24 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv10.i = zext i8 %25 to i32
  %shr.i = lshr i32 %div70.i, %conv10.i
  %add11.i = add nuw nsw i32 %shr.i, 1
  %map_sectors.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 16
  %26 = ptrtoint ptr %map_sectors.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add11.i, ptr %map_sectors.i, align 4
  %27 = shl nuw i32 %add11.i, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #12
  %vol_amap.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 17
  %28 = ptrtoint ptr %vol_amap.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %vol_amap.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.exfat_allocate_bitmap.exit_crit_edge, label %if.end16.i

if.end8.i.exfat_allocate_bitmap.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_allocate_bitmap.exit

if.end16.i:                                       ; preds = %if.end8.i
  %29 = ptrtoint ptr %map_clu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map_clu.i, align 8
  %sub.i.i = add i32 %30, -2
  %conv.i.i = zext i32 %sub.i.i to i64
  %sect_per_clus_bits.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 5
  %31 = ptrtoint ptr %sect_per_clus_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sect_per_clus_bits.i.i, align 8
  %sh_prom.i.i = zext i32 %32 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %data_start_sector.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 8
  %33 = ptrtoint ptr %data_start_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data_start_sector.i.i, align 8
  %add.i.i = add i64 %shl.i.i, %34
  %35 = ptrtoint ptr %map_sectors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %map_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2076.not.i = icmp eq i32 %36, 0
  br i1 %cmp2076.not.i, label %if.end16.i.exfat_allocate_bitmap.exit_crit_edge, label %for.body.lr.ph.i

if.end16.i.exfat_allocate_bitmap.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_allocate_bitmap.exit

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.077.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc37.i, %for.inc.i.for.body.i_crit_edge ]
  %conv22.i = zext i32 %i.077.i to i64
  %add23.i = add i64 %add.i.i, %conv22.i
  %37 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_bdev.i.i, align 4
  %39 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %38, i64 noundef %add23.i, i32 noundef %40, i32 noundef 8) #8
  %41 = ptrtoint ptr %vol_amap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vol_amap.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %i.077.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %44 = load ptr, ptr %vol_amap.i, align 8
  %arrayidx27.i = getelementptr ptr, ptr %44, i32 %i.077.i
  %45 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx27.i, align 4
  %tobool28.not.i = icmp eq ptr %46, null
  br i1 %tobool28.not.i, label %while.cond.preheader.i, label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077.i)
  %cmp3078.not.i = icmp eq i32 %i.077.i, 0
  br i1 %cmp3078.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %j.079.i = phi i32 [ %inc.i, %brelse.exit.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %47 = ptrtoint ptr %vol_amap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vol_amap.i, align 8
  %inc.i = add nuw i32 %j.079.i, 1
  %arrayidx33.i = getelementptr ptr, ptr %48, i32 %j.079.i
  %49 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx33.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %50) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %exitcond.not.i = icmp eq i32 %inc.i, %i.077.i
  br i1 %exitcond.not.i, label %brelse.exit.i.while.end.i_crit_edge, label %brelse.exit.i.while.body.i_crit_edge

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

brelse.exit.i.while.end.i_crit_edge:              ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %brelse.exit.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %51 = ptrtoint ptr %vol_amap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vol_amap.i, align 8
  call void @kfree(ptr noundef %52) #8
  %53 = ptrtoint ptr %vol_amap.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %vol_amap.i, align 8
  br label %exfat_allocate_bitmap.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc37.i = add nuw i32 %i.077.i, 1
  %54 = ptrtoint ptr %map_sectors.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %map_sectors.i, align 4
  %cmp20.i = icmp ult i32 %inc37.i, %55
  br i1 %cmp20.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.exfat_allocate_bitmap.exit_crit_edge

for.inc.i.exfat_allocate_bitmap.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_allocate_bitmap.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

exfat_allocate_bitmap.exit:                       ; preds = %for.inc.i.exfat_allocate_bitmap.exit_crit_edge, %while.end.i, %if.end16.i.exfat_allocate_bitmap.exit_crit_edge, %if.end8.i.exfat_allocate_bitmap.exit_crit_edge, %if.then.i.exfat_allocate_bitmap.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %while.end.i ], [ -5, %if.then.i.exfat_allocate_bitmap.exit_crit_edge ], [ -12, %if.end8.i.exfat_allocate_bitmap.exit_crit_edge ], [ 0, %if.end16.i.exfat_allocate_bitmap.exit_crit_edge ], [ 0, %for.inc.i.exfat_allocate_bitmap.exit_crit_edge ]
  %56 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh, align 4
  %tobool.not.i36 = icmp eq ptr %57, null
  br i1 %tobool.not.i36, label %exfat_allocate_bitmap.exit.cleanup.thread_crit_edge, label %if.then.i37

exfat_allocate_bitmap.exit.cleanup.thread_crit_edge: ; preds = %exfat_allocate_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then.i37:                                      ; preds = %exfat_allocate_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %57) #8
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end9
  %58 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bh, align 4
  %tobool.not.i38 = icmp eq ptr %59, null
  br i1 %tobool.not.i38, label %if.end14.for.inc_crit_edge, label %if.then.i39

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i39:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %59) #8
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then.i37, %exfat_allocate_bitmap.exit.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %retval.2.ph = phi i32 [ %retval.0.i, %if.then.i37 ], [ %retval.0.i, %exfat_allocate_bitmap.exit.cleanup.thread_crit_edge ], [ -5, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %cleanup22

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %for.end

for.inc:                                          ; preds = %if.then.i39, %if.end14.for.inc_crit_edge, %if.end.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  %inc = add nuw i32 %i.052, 1
  %60 = ptrtoint ptr %dentries_per_clu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dentries_per_clu, align 8
  %cmp1 = icmp ult i32 %inc, %61
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %for.cond.preheader.for.end_crit_edge
  %62 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clu, align 4
  %call18 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %63, ptr noundef nonnull %clu) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.end.while.cond_crit_edge, label %for.end.cleanup22_crit_edge

for.end.cleanup22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

cleanup22:                                        ; preds = %for.end.cleanup22_crit_edge, %cleanup.thread, %while.cond.cleanup22_crit_edge
  %retval.4 = phi i32 [ %retval.2.ph, %cleanup.thread ], [ -22, %while.cond.cleanup22_crit_edge ], [ -5, %for.end.cleanup22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #8
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_get_entry_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_free_bitmap(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map_sectors = getelementptr inbounds %struct.exfat_sb_info, ptr %sbi, i32 0, i32 16
  %0 = ptrtoint ptr %map_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vol_amap = getelementptr inbounds %struct.exfat_sb_info, ptr %sbi, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol_amap, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @__brelse(ptr noundef %5) #8
  %inc = add nuw i32 %i.07, 1
  %6 = ptrtoint ptr %map_sectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_sectors, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %vol_amap1 = getelementptr inbounds %struct.exfat_sb_info, ptr %sbi, i32 0, i32 17
  %8 = ptrtoint ptr %vol_amap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vol_amap1, align 8
  tail call void @kfree(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_set_bitmap(ptr nocapture noundef readonly %inode, i32 noundef %clu, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clu)
  %cmp = icmp ult i32 %clu, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub = add i32 %clu, -2
  %div31 = lshr i32 %sub, 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %div31, %conv
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %sub19 = add i32 %mul, -1
  %and = and i32 %sub19, %sub
  %vol_amap = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vol_amap, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %xor.i = xor i32 %and, 24
  tail call void @_set_bit(i32 noundef %xor.i, ptr noundef %13) #8
  %14 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vol_amap, align 8
  %arrayidx21 = getelementptr ptr, ptr %15, i32 %shr
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21, align 4
  %conv23 = zext i1 %sync to i32
  tail call void @exfat_update_bh(ptr noundef %17, i32 noundef %conv23) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_bh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_clear_bitmap(ptr nocapture noundef readonly %inode, i32 noundef %clu, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clu)
  %cmp = icmp ult i32 %clu, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub = add i32 %clu, -2
  %div51 = lshr i32 %sub, 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %div51, %conv
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %sub19 = add i32 %mul, -1
  %and = and i32 %sub19, %sub
  %vol_amap = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vol_amap, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %xor.i = xor i32 %and, 24
  tail call void @_clear_bit(i32 noundef %xor.i, ptr noundef %13) #8
  %14 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vol_amap, align 8
  %arrayidx21 = getelementptr ptr, ptr %15, i32 %shr
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21, align 4
  %conv23 = zext i1 %sync to i32
  tail call void @exfat_update_bh(ptr noundef %17, i32 noundef %conv23) #8
  %discard = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 7
  %18 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %discard, align 4
  %19 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.end.if.end36_crit_edge, label %if.then25

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then25:                                        ; preds = %if.end
  %conv.i = zext i32 %sub to i64
  %sect_per_clus_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i = zext i32 %21 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %data_start_sector.i, align 8
  %add.i = add i64 %shl.i, %23
  %shl = shl nuw i32 1, %21
  %conv27 = sext i32 %shl to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i, align 4
  %26 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_blocksize_bits, align 4
  %conv.i52 = zext i8 %27 to i32
  %sub.i53 = add nsw i32 %conv.i52, -9
  %sh_prom.i54 = zext i32 %sub.i53 to i64
  %shl.i55 = shl i64 %add.i, %sh_prom.i54
  %shl5.i = shl i64 %conv27, %sh_prom.i54
  %call.i = tail call i32 @blkdev_issue_discard(ptr noundef %25, i64 noundef %shl.i55, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i)
  %cmp29 = icmp eq i32 %call.i, -95
  br i1 %cmp29, label %if.then31, label %if.then25.if.end36_crit_edge

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  %28 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load33 = load i8, ptr %discard, align 4
  %bf.clear34 = and i8 %bf.load33, -65
  store i8 %bf.clear34, ptr %discard, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then25.if.end36_crit_edge, %if.end.if.end36_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exfat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_find_free_bitmap(ptr nocapture noundef readonly %sb, i32 noundef %clu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clu)
  %cmp = icmp ult i32 %clu, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clusters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2598 = icmp ugt i32 %5, 2
  br i1 %cmp2598, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sub23 = add i32 %3, 536870911
  %sub = add i32 %clu, -2
  %div93 = lshr i32 %sub, 3
  %and24 = and i32 %sub23, %div93
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  %conv21 = zext i8 %7 to i32
  %shr = lshr i32 %div93, %conv21
  %and = and i32 %sub, -8
  %add = or i32 %and, 2
  %sub19 = sub i32 %clu, %add
  %notmask = shl nsw i32 -1, %sub19
  %8 = trunc i32 %notmask to i8
  %conv = xor i8 %8, -1
  %vol_amap = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vol_amap, align 8
  %map_sectors = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %clu_mask.0103 = phi i8 [ %conv, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %clu_base.0102 = phi i32 [ %add, %for.body.lr.ph ], [ %clu_base.2, %for.inc.for.body_crit_edge ]
  %map_b.0101 = phi i32 [ %and24, %for.body.lr.ph ], [ %map_b.1, %for.inc.for.body_crit_edge ]
  %map_i.0100 = phi i32 [ %shr, %for.body.lr.ph ], [ %map_i.2, %for.inc.for.body_crit_edge ]
  %i.099 = phi i32 [ 2, %for.body.lr.ph ], [ %add62, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %10, i32 %map_i.0100
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %map_b.0101
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 1
  %or94 = or i8 %16, %clu_mask.0103
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or94)
  %cmp36.not = icmp eq i8 %or94, -1
  br i1 %cmp36.not, label %for.body.if.end47_crit_edge, label %if.then38

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then38:                                        ; preds = %for.body
  %conv35 = zext i8 %or94 to i32
  %arrayidx39 = getelementptr [255 x i8], ptr @free_bit, i32 0, i32 %conv35
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %18 to i32
  %add41 = add i32 %clu_base.0102, %conv40
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %5)
  %cmp43 = icmp ult i32 %add41, %5
  br i1 %cmp43, label %if.then38.cleanup_crit_edge, label %if.then38.if.end47_crit_edge

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.then38.if.end47_crit_edge, %for.body.if.end47_crit_edge
  %add48 = add i32 %clu_base.0102, 8
  %inc = add i32 %map_b.0101, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp50.not = icmp ult i32 %inc, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %5)
  %cmp53.not = icmp ult i32 %add48, %5
  %or.cond = select i1 %cmp50.not, i1 %cmp53.not, i1 false
  br i1 %or.cond, label %if.end47.for.inc_crit_edge, label %if.then55

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %inc56 = add i32 %map_i.0100, 1
  %19 = ptrtoint ptr %map_sectors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56, i32 %20)
  %cmp57.not = icmp ult i32 %inc56, %20
  %spec.select96 = select i1 %cmp57.not, i32 %inc56, i32 0
  %spec.select97 = select i1 %cmp57.not, i32 %add48, i32 2
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end47.for.inc_crit_edge
  %map_i.2 = phi i32 [ %spec.select96, %if.then55 ], [ %map_i.0100, %if.end47.for.inc_crit_edge ]
  %map_b.1 = phi i32 [ 0, %if.then55 ], [ %inc, %if.end47.for.inc_crit_edge ]
  %clu_base.2 = phi i32 [ %spec.select97, %if.then55 ], [ %add48, %if.end47.for.inc_crit_edge ]
  %add62 = add i32 %i.099, 8
  %cmp25 = icmp ult i32 %add62, %5
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ %add41, %if.then38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_count_used_clusters(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %ret_count) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clusters, align 8
  %sub = add i32 %3, -2
  %and = and i32 %sub, 7
  %and1 = and i32 %sub, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp40.not = icmp eq i32 %and1, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vol_amap = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %vol_amap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol_amap, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %map_b.044 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select39, %for.body.for.body_crit_edge ]
  %map_i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %add6, %for.body.for.body_crit_edge ]
  %count.041 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %map_i.043
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %map_b.044
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx2 = getelementptr [256 x i8], ptr @used_bit, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %15 to i32
  %add = add i32 %count.041, %conv
  %inc = add i32 %map_b.044, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %7)
  %cmp3.not = icmp ult i32 %inc, %7
  %not.cmp3.not = xor i1 %cmp3.not, true
  %inc5 = zext i1 %not.cmp3.not to i32
  %spec.select = add i32 %map_i.043, %inc5
  %spec.select39 = select i1 %cmp3.not, i32 %inc, i32 0
  %add6 = add nuw i32 %i.042, 8
  %cmp = icmp ult i32 %add6, %and1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %map_i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %map_b.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select39, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end21_crit_edge, label %if.then7

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %vol_amap8 = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %vol_amap8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vol_amap8, align 8
  %arrayidx9 = getelementptr ptr, ptr %17, i32 %map_i.0.lcssa
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9, align 4
  %b_data10 = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data10, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 %map_b.0.lcssa
  %22 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr11, align 1
  %arrayidx12 = getelementptr [8 x i8], ptr @__const.exfat_count_used_clusters.last_bit_mask, i32 0, i32 %and
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 1
  %and1538 = and i8 %25, %23
  %idxprom17 = zext i8 %and1538 to i32
  %arrayidx18 = getelementptr [256 x i8], ptr @used_bit, i32 0, i32 %idxprom17
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %27 to i32
  %add20 = add i32 %count.0.lcssa, %conv19
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %for.end.if.end21_crit_edge
  %count.1 = phi i32 [ %add20, %if.then7 ], [ %count.0.lcssa, %for.end.if.end21_crit_edge ]
  %28 = ptrtoint ptr %ret_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %count.1, ptr %ret_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_trim_fs(ptr nocapture noundef readonly %inode, ptr nocapture noundef %range) local_unnamed_addr #0 align 64 {
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
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %range, align 8
  %cluster_size_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cluster_size_bits, align 8
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %5, %sh_prom
  %8 = tail call i64 @llvm.umax.i64(i64 %shr, i64 2)
  %len = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %shr3 = lshr i64 %10, %sh_prom
  %add = add i64 %shr3, -1
  %sub = add i64 %add, %8
  %minlen = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %11 = ptrtoint ptr %minlen to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %minlen, align 8
  %shr6 = lshr i64 %12, %sh_prom
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clusters, align 8
  %conv = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp7.not = icmp ult i64 %8, %conv
  br i1 %cmp7.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_size, align 4
  %conv10 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv10)
  %cmp11 = icmp ult i64 %10, %conv10
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp15.not = icmp ult i64 %sub, %conv
  %sub19 = add i32 %14, -1
  %conv20 = zext i32 %sub19 to i64
  %clu_end.0 = select i1 %cmp15.not, i64 %sub, i64 %conv20
  %bitmap_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #8
  %conv22 = trunc i64 %8 to i32
  %call23 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %conv22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.end.unlock_crit_edge, label %if.end27

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end27:                                         ; preds = %if.end
  %add28 = add nuw i32 %call23, 1
  %call29 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %add28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.end27.unlock_crit_edge, label %do.body.preheader

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body.preheader:                                ; preds = %if.end27
  %sect_per_clus_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 5
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 8
  %sect_per_clus = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end62.do.body_crit_edge, %do.body.preheader
  %trim_begin.0 = phi i32 [ %trim_begin.1, %if.end62.do.body_crit_edge ], [ %call23, %do.body.preheader ]
  %trim_end.0 = phi i32 [ %next_free_clu.0, %if.end62.do.body_crit_edge ], [ %call23, %do.body.preheader ]
  %next_free_clu.0 = phi i32 [ %call64, %if.end62.do.body_crit_edge ], [ %call29, %do.body.preheader ]
  %trimmed_total.0 = phi i64 [ %trimmed_total.2, %if.end62.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %add34 = add nuw i32 %trim_end.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %next_free_clu.0, i32 %add34)
  %cmp35 = icmp eq i32 %next_free_clu.0, %add34
  br i1 %cmp35, label %do.body.if.end52_crit_edge, label %if.else

do.body.if.end52_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.else:                                          ; preds = %do.body
  %sub38 = sub i32 %trim_end.0, %trim_begin.0
  %add39 = add i32 %sub38, 1
  %conv40 = zext i32 %add39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr6, i64 %conv40)
  %cmp41.not = icmp ugt i64 %shr6, %conv40
  br i1 %cmp41.not, label %if.else.if.end52_crit_edge, label %if.then43

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then43:                                        ; preds = %if.else
  %sub.i = add i32 %trim_begin.0, -2
  %conv.i = zext i32 %sub.i to i64
  %17 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i = zext i32 %18 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %19 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data_start_sector.i, align 8
  %add.i = add i64 %shl.i, %20
  %21 = ptrtoint ptr %sect_per_clus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sect_per_clus, align 4
  %mul = mul i32 %22, %add39
  %conv45 = zext i32 %mul to i64
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %25 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i153 = zext i8 %26 to i32
  %sub.i154 = add nsw i32 %conv.i153, -9
  %sh_prom.i155 = zext i32 %sub.i154 to i64
  %shl.i156 = shl i64 %add.i, %sh_prom.i155
  %shl5.i = shl i64 %conv45, %sh_prom.i155
  %call.i = tail call i32 @blkdev_issue_discard(ptr noundef %24, i64 noundef %shl.i156, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end48, label %if.then43.unlock_crit_edge

if.then43.unlock_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %add50 = add i64 %trimmed_total.0, %conv40
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.else.if.end52_crit_edge, %do.body.if.end52_crit_edge
  %trim_begin.1 = phi i32 [ %trim_begin.0, %do.body.if.end52_crit_edge ], [ %next_free_clu.0, %if.end48 ], [ %next_free_clu.0, %if.else.if.end52_crit_edge ]
  %trimmed_total.2 = phi i64 [ %trimmed_total.0, %do.body.if.end52_crit_edge ], [ %add50, %if.end48 ], [ %trimmed_total.0, %if.else.if.end52_crit_edge ]
  %conv53 = zext i32 %next_free_clu.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %clu_end.0, i64 %conv53)
  %cmp54.not = icmp ugt i64 %clu_end.0, %conv53
  br i1 %cmp54.not, label %if.end57, label %if.end52.do.end_crit_edge

if.end52.do.end_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end57:                                         ; preds = %if.end52
  %27 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stack.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end57.if.end62_crit_edge, label %fatal_signal_pending.exit

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

fatal_signal_pending.exit:                        ; preds = %if.end57
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 116, i32 1
  %35 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %signal.i.i, align 4
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool60.not = icmp eq i32 %37, 0
  br i1 %tobool60.not, label %fatal_signal_pending.exit.if.end62_crit_edge, label %fatal_signal_pending.exit.unlock_crit_edge

fatal_signal_pending.exit.unlock_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

fatal_signal_pending.exit.if.end62_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.end62:                                         ; preds = %fatal_signal_pending.exit.if.end62_crit_edge, %if.end57.if.end62_crit_edge
  %add63 = add nuw i32 %next_free_clu.0, 1
  %call64 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %add63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call64)
  %cmp65.not = icmp ne i32 %call64, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call64, i32 %next_free_clu.0)
  %cmp67 = icmp ugt i32 %call64, %next_free_clu.0
  %or.cond = select i1 %cmp65.not, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.end62.do.body_crit_edge, label %if.end62.do.end_crit_edge

if.end62.do.end_crit_edge:                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end62.do.end_crit_edge, %if.end52.do.end_crit_edge
  %sub69 = sub i32 %next_free_clu.0, %trim_begin.1
  %add70 = add i32 %sub69, 1
  %conv71 = zext i32 %add70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr6, i64 %conv71)
  %cmp72.not = icmp ugt i64 %shr6, %conv71
  br i1 %cmp72.not, label %do.end.unlock_crit_edge, label %if.then74

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then74:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i157 = add i32 %trim_begin.1, -2
  %conv.i158 = zext i32 %sub.i157 to i64
  %38 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i160 = zext i32 %39 to i64
  %shl.i161 = shl i64 %conv.i158, %sh_prom.i160
  %40 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %data_start_sector.i, align 8
  %add.i163 = add i64 %shl.i161, %41
  %42 = ptrtoint ptr %sect_per_clus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sect_per_clus, align 4
  %mul77 = mul i32 %43, %add70
  %conv78 = zext i32 %mul77 to i64
  %44 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i, align 4
  %46 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i166 = zext i8 %47 to i32
  %sub.i167 = add nsw i32 %conv.i166, -9
  %sh_prom.i168 = zext i32 %sub.i167 to i64
  %shl.i169 = shl i64 %add.i163, %sh_prom.i168
  %shl5.i170 = shl i64 %conv78, %sh_prom.i168
  %call.i171 = tail call i32 @blkdev_issue_discard(ptr noundef %45, i64 noundef %shl.i169, i64 noundef %shl5.i170, i32 noundef 3136, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool80.not = icmp eq i32 %call.i171, 0
  %add84 = select i1 %tobool80.not, i64 %conv71, i64 0
  %spec.select = add i64 %add84, %trimmed_total.2
  br label %unlock

unlock:                                           ; preds = %if.then74, %do.end.unlock_crit_edge, %fatal_signal_pending.exit.unlock_crit_edge, %if.then43.unlock_crit_edge, %if.end27.unlock_crit_edge, %if.end.unlock_crit_edge
  %trimmed_total.3 = phi i64 [ 0, %if.end.unlock_crit_edge ], [ 0, %if.end27.unlock_crit_edge ], [ %trimmed_total.2, %do.end.unlock_crit_edge ], [ %spec.select, %if.then74 ], [ %trimmed_total.2, %fatal_signal_pending.exit.unlock_crit_edge ], [ %trimmed_total.0, %if.then43.unlock_crit_edge ]
  %err.3 = phi i32 [ 0, %if.end.unlock_crit_edge ], [ 0, %if.end27.unlock_crit_edge ], [ 0, %do.end.unlock_crit_edge ], [ %call.i171, %if.then74 ], [ -512, %fatal_signal_pending.exit.unlock_crit_edge ], [ %call.i, %if.then43.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #8
  %48 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cluster_size_bits, align 8
  %sh_prom88 = zext i32 %49 to i64
  %shl = shl i64 %trimmed_total.3, %sh_prom88
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl, ptr %len, align 8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/balloc.c", i32 151, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/balloc.c", i32 185, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/exfat/balloc.c", i32 61, i32 3}
!7 = !{ptr @free_bit, !8, !"free_bit", i1 false, i1 false}
!8 = !{!"../fs/exfat/balloc.c", i32 13, i32 28}
!9 = !{ptr @used_bit, !10, !"used_bit", i1 false, i1 false}
!10 = !{!"../fs/exfat/balloc.c", i32 29, i32 28}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 1, i32 2000}
