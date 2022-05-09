; ModuleID = '/llk/IR_all_yes/fs/ubifs/master.c_pt.bc'
source_filename = "../fs/ubifs/master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad leb_cnt on master node\00", [37 x i8] zeroinitializer }, align 32
@ubifs_read_master.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_read_master\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ubifs/master.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG mnt (pid %d): Auto resizing (master) from %d LEBs to %d LEBs\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to verify master node hash\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to verify master node HMAC\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected node type %d master LEB %d:%d\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad master node at offset %d error %d\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 394, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 399, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 438, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 139, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 145, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 158, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [21 x i8] c"../fs/ubifs/master.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 316, i32 15 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_compare_master_node(ptr nocapture readnone %c, ptr nocapture noundef readonly %m1, ptr nocapture noundef readonly %m2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %m1, i32 24
  %add.ptr1 = getelementptr i8, ptr %m2, i32 24
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(272) %add.ptr, ptr noundef dereferenceable(272) %add.ptr1, i32 noundef 272) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %m1, i32 360
  %add.ptr4 = getelementptr i8, ptr %m2, i32 360
  %call6 = tail call i32 @memcmp(ptr noundef dereferenceable(152) %add.ptr3, ptr noundef dereferenceable(152) %add.ptr4, i32 noundef 152) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_master(ptr noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %0 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mst_node_alsz, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #13
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %2 = ptrtoint ptr %mst_node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %mst_node, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup139_crit_edge, label %if.end

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.end:                                           ; preds = %entry
  %sbuf.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %3 = ptrtoint ptr %sbuf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sbuf.i, align 8
  %call.i = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef 1, i32 noundef 0, ptr noundef %4, i32 noundef 1) #9
  %cmp.i.i245 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i245, label %if.end.scan_for_master.exit_crit_edge, label %if.end.i

if.end.scan_for_master.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit

if.end.i:                                         ; preds = %if.end
  %nodes_cnt3.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %nodes_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodes_cnt3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  %prev.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %type.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp5.not.i = icmp eq i32 %10, 7
  br i1 %cmp5.not.i, label %if.end7.i, label %if.then4.i.out_dump.i_crit_edge

if.then4.i.out_dump.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump.i

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mst_node, align 4
  %node.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node.i, align 4
  %len.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %8, i32 0, i32 5
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 8
  %17 = call ptr @memcpy(ptr %12, ptr %14, i32 %16)
  %offs8.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %offs8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offs8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i, %if.end.i.if.end9.i_crit_edge
  %offs.0.i = phi i32 [ %19, %if.end7.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  tail call void @ubifs_scan_destroy(ptr noundef %call.i) #9
  %20 = ptrtoint ptr %sbuf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sbuf.i, align 8
  %call11.i = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef 2, i32 noundef 0, ptr noundef %21, i32 noundef 1) #9
  %cmp.i116.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.i, label %if.end9.i.scan_for_master.exit_crit_edge, label %if.end15.i

if.end9.i.scan_for_master.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit

if.end15.i:                                       ; preds = %if.end9.i
  %nodes_cnt16.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call11.i, i32 0, i32 1
  %22 = ptrtoint ptr %nodes_cnt16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodes_cnt16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %6)
  %cmp17.not.i = icmp ne i32 %23, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %or.cond.i = or i1 %cmp17.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end15.i.scan_for_master.exit.thread274_crit_edge, label %if.end22.i

if.end15.i.scan_for_master.exit.thread274_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit.thread274

if.end22.i:                                       ; preds = %if.end15.i
  %prev25.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call11.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev25.i, align 4
  %type28.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %type28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp29.not.i = icmp eq i32 %27, 7
  br i1 %cmp29.not.i, label %if.end31.i, label %if.end22.i.out_dump.i_crit_edge

if.end22.i.out_dump.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dump.i

if.end31.i:                                       ; preds = %if.end22.i
  %offs32.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %offs32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offs32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %offs.0.i)
  %cmp33.not.i = icmp eq i32 %29, %offs.0.i
  br i1 %cmp33.not.i, label %if.end35.i, label %if.end31.i.scan_for_master.exit.thread274_crit_edge

if.end31.i.scan_for_master.exit.thread274_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit.thread274

if.end35.i:                                       ; preds = %if.end31.i
  %30 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mst_node, align 4
  %node37.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %25, i32 0, i32 6
  %32 = ptrtoint ptr %node37.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node37.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 24
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 24
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(272) %add.ptr.i.i, ptr noundef dereferenceable(272) %add.ptr1.i.i, i32 272) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.i, label %ubifs_compare_master_node.exit.i, label %if.end35.i.scan_for_master.exit.thread274_crit_edge

if.end35.i.scan_for_master.exit.thread274_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit.thread274

ubifs_compare_master_node.exit.i:                 ; preds = %if.end35.i
  %add.ptr3.i.i = getelementptr i8, ptr %31, i32 360
  %add.ptr4.i.i = getelementptr i8, ptr %33, i32 360
  %bcmp124.i = tail call i32 @bcmp(ptr noundef dereferenceable(152) %add.ptr3.i.i, ptr noundef dereferenceable(152) %add.ptr4.i.i, i32 152) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp124.i)
  %tobool39.not.i = icmp eq i32 %bcmp124.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %ubifs_compare_master_node.exit.i.scan_for_master.exit.thread274_crit_edge

ubifs_compare_master_node.exit.i.scan_for_master.exit.thread274_crit_edge: ; preds = %ubifs_compare_master_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_for_master.exit.thread274

if.end41.i:                                       ; preds = %ubifs_compare_master_node.exit.i
  %mst_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 47
  %34 = ptrtoint ptr %mst_offs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %offs.0.i, ptr %mst_offs.i, align 8
  tail call void @ubifs_scan_destroy(ptr noundef %call11.i) #9
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %35 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %36 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool43.not.i = icmp eq i16 %36, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end11_crit_edge, label %if.end45.i

if.end41.i.if.end11_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end45.i:                                       ; preds = %if.end41.i
  %37 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mst_node, align 4
  %hmac.i = getelementptr inbounds %struct.ubifs_mst_node, ptr %38, i32 0, i32 31
  %call47.i = tail call zeroext i1 @ubifs_hmac_zero(ptr noundef %c, ptr noundef %hmac.i) #9
  br i1 %call47.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.end45.i
  %39 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mst_node, align 4
  %sup_node.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %41 = ptrtoint ptr %sup_node.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sup_node.i, align 4
  %hash_mst.i = getelementptr inbounds %struct.ubifs_sb_node, ptr %42, i32 0, i32 28
  %call51.i = tail call fastcc i32 @mst_node_check_hash(ptr noundef %c, ptr noundef %40, ptr noundef %hash_mst.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then48.i.if.end11_crit_edge, label %if.then53.i

if.then48.i.if.end11_crit_edge:                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then53.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6) #9
  br label %cleanup139

if.else.i:                                        ; preds = %if.end45.i
  %43 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i.i = load i16, ptr %authenticated.i.i, align 8
  %44 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i117.i = icmp eq i16 %44, 0
  br i1 %tobool.not.i117.i, label %if.else.i.if.end11_crit_edge, label %ubifs_node_verify_hmac.exit.i

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

ubifs_node_verify_hmac.exit.i:                    ; preds = %if.else.i
  %45 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mst_node, align 4
  %call1.i.i = tail call i32 @__ubifs_node_verify_hmac(ptr noundef %c, ptr noundef %46, i32 noundef 512, i32 noundef 296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool57.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool57.not.i, label %ubifs_node_verify_hmac.exit.i.if.end11_crit_edge, label %if.then58.i

ubifs_node_verify_hmac.exit.i.if.end11_crit_edge: ; preds = %ubifs_node_verify_hmac.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then58.i:                                      ; preds = %ubifs_node_verify_hmac.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7) #9
  br label %cleanup139

scan_for_master.exit.thread274:                   ; preds = %ubifs_compare_master_node.exit.i.scan_for_master.exit.thread274_crit_edge, %if.end35.i.scan_for_master.exit.thread274_crit_edge, %if.end31.i.scan_for_master.exit.thread274_crit_edge, %if.end15.i.scan_for_master.exit.thread274_crit_edge
  tail call void @ubifs_scan_destroy(ptr noundef %call11.i) #9
  br label %if.then5

out_dump.i:                                       ; preds = %if.end22.i.out_dump.i_crit_edge, %if.then4.i.out_dump.i_crit_edge
  %lnum.0.i = phi i32 [ 1, %if.then4.i.out_dump.i_crit_edge ], [ 2, %if.end22.i.out_dump.i_crit_edge ]
  %snod.0.i = phi ptr [ %8, %if.then4.i.out_dump.i_crit_edge ], [ %25, %if.end22.i.out_dump.i_crit_edge ]
  %sleb.0.i = phi ptr [ %call.i, %if.then4.i.out_dump.i_crit_edge ], [ %call11.i, %if.end22.i.out_dump.i_crit_edge ]
  %type64.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0.i, i32 0, i32 3
  %47 = ptrtoint ptr %type64.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type64.i, align 8
  %offs65.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %snod.0.i, i32 0, i32 4
  %49 = ptrtoint ptr %offs65.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offs65.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.8, i32 noundef %48, i32 noundef %lnum.0.i, i32 noundef %50) #9
  tail call void @ubifs_scan_destroy(ptr noundef %sleb.0.i) #9
  br label %cleanup139

scan_for_master.exit:                             ; preds = %if.end9.i.scan_for_master.exit_crit_edge, %if.end.scan_for_master.exit_crit_edge
  %retval.0.i246.in = phi ptr [ %call.i, %if.end.scan_for_master.exit_crit_edge ], [ %call11.i, %if.end9.i.scan_for_master.exit_crit_edge ]
  %retval.0.i246 = ptrtoint ptr %retval.0.i246.in to i32
  %51 = zext i32 %retval.0.i246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i246, label %scan_for_master.exit.if.end7_crit_edge [
    i32 0, label %scan_for_master.exit.if.end11_crit_edge
    i32 -117, label %scan_for_master.exit.if.then5_crit_edge
  ]

scan_for_master.exit.if.then5_crit_edge:          ; preds = %scan_for_master.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

scan_for_master.exit.if.end11_crit_edge:          ; preds = %scan_for_master.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

scan_for_master.exit.if.end7_crit_edge:           ; preds = %scan_for_master.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %scan_for_master.exit.if.then5_crit_edge, %scan_for_master.exit.thread274
  %call6 = tail call i32 @ubifs_recover_master_node(ptr noundef %c) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %scan_for_master.exit.if.end7_crit_edge
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %retval.0.i246, %scan_for_master.exit.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool8.not = icmp eq i32 %err.0, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.end7.cleanup139_crit_edge

if.end7.cleanup139_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %scan_for_master.exit.if.end11_crit_edge, %ubifs_node_verify_hmac.exit.i.if.end11_crit_edge, %if.else.i.if.end11_crit_edge, %if.then48.i.if.end11_crit_edge, %if.end41.i.if.end11_crit_edge
  %52 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mst_node, align 4
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %flags, align 1
  %and = and i32 %55, -67108865
  store i32 %and, ptr %flags, align 1
  %56 = load ptr, ptr %mst_node, align 4
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %sqnum, align 1
  %59 = tail call i64 @llvm.bswap.i64(i64 %58)
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %60 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %max_sqnum, align 8
  %highest_inum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %highest_inum to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %highest_inum, align 1
  %63 = tail call i64 @llvm.bswap.i64(i64 %62)
  %conv = trunc i64 %63 to i32
  %highest_inum15 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %64 = ptrtoint ptr %highest_inum15 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %highest_inum15, align 8
  %cmt_no = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 2
  %65 = ptrtoint ptr %cmt_no to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %cmt_no, align 1
  %67 = tail call i64 @llvm.bswap.i64(i64 %66)
  %cmt_no17 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %68 = ptrtoint ptr %cmt_no17 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %cmt_no17, align 8
  %root_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 5
  %69 = ptrtoint ptr %root_lnum to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %root_lnum, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %72 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %lnum, align 4
  %root_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 6
  %73 = ptrtoint ptr %root_offs to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %root_offs, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %76 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %offs, align 8
  %root_len = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 7
  %77 = ptrtoint ptr %root_len to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %root_len, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %80 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %len, align 4
  %log_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 4
  %81 = ptrtoint ptr %log_lnum to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %log_lnum, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %84 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %lhead_lnum, align 4
  %gc_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 8
  %85 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %gc_lnum, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %gc_lnum25 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %88 = ptrtoint ptr %gc_lnum25 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %gc_lnum25, align 4
  %ihead_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 9
  %89 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %ihead_lnum, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %ihead_lnum27 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %92 = ptrtoint ptr %ihead_lnum27 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ihead_lnum27, align 8
  %ihead_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 10
  %93 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %ihead_offs, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %ihead_offs29 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %96 = ptrtoint ptr %ihead_offs29 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ihead_offs29, align 4
  %index_size = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 11
  %97 = ptrtoint ptr %index_size to i32
  call void @__asan_loadN_noabort(i32 %97, i32 8)
  %98 = load i64, ptr %index_size, align 1
  %99 = tail call i64 @llvm.bswap.i64(i64 %98)
  %old_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %100 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %old_idx_sz, align 8
  %lpt_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 17
  %101 = ptrtoint ptr %lpt_lnum to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %lpt_lnum, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %lpt_lnum32 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 145
  %104 = ptrtoint ptr %lpt_lnum32 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %lpt_lnum32, align 4
  %lpt_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 18
  %105 = ptrtoint ptr %lpt_offs to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %lpt_offs, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %lpt_offs34 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 146
  %108 = ptrtoint ptr %lpt_offs34 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %lpt_offs34, align 8
  %nhead_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 19
  %109 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %nhead_lnum, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %nhead_lnum36 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %112 = ptrtoint ptr %nhead_lnum36 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %nhead_lnum36, align 4
  %nhead_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 20
  %113 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %nhead_offs, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %nhead_offs38 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %116 = ptrtoint ptr %nhead_offs38 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %nhead_offs38, align 8
  %ltab_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 21
  %117 = ptrtoint ptr %ltab_lnum to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %ltab_lnum, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %ltab_lnum40 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 166
  %120 = ptrtoint ptr %ltab_lnum40 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %ltab_lnum40, align 8
  %ltab_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 22
  %121 = ptrtoint ptr %ltab_offs to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %ltab_offs, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  %ltab_offs42 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 167
  %124 = ptrtoint ptr %ltab_offs42 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %ltab_offs42, align 4
  %lsave_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 23
  %125 = ptrtoint ptr %lsave_lnum to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %lsave_lnum, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %lsave_lnum44 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 171
  %128 = ptrtoint ptr %lsave_lnum44 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %lsave_lnum44, align 4
  %lsave_offs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 24
  %129 = ptrtoint ptr %lsave_offs to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %lsave_offs, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %lsave_offs46 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 172
  %132 = ptrtoint ptr %lsave_offs46 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %lsave_offs46, align 8
  %lscan_lnum = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 25
  %133 = ptrtoint ptr %lscan_lnum to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %lscan_lnum, align 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  %lscan_lnum48 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 174
  %136 = ptrtoint ptr %lscan_lnum48 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %lscan_lnum48, align 8
  %empty_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 26
  %137 = ptrtoint ptr %empty_lebs to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %empty_lebs, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %lst = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86
  %140 = ptrtoint ptr %lst to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %lst, align 8
  %idx_lebs = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 27
  %141 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %idx_lebs, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %idx_lebs53 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %144 = ptrtoint ptr %idx_lebs53 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %idx_lebs53, align 8
  %leb_cnt = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 28
  %145 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %leb_cnt, align 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  %total_free = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 12
  %148 = ptrtoint ptr %total_free to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %total_free, align 1
  %150 = tail call i64 @llvm.bswap.i64(i64 %149)
  %total_free57 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %151 = ptrtoint ptr %total_free57 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %total_free57, align 8
  %total_dirty = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 13
  %152 = ptrtoint ptr %total_dirty to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %total_dirty, align 1
  %154 = tail call i64 @llvm.bswap.i64(i64 %153)
  %total_dirty60 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %155 = ptrtoint ptr %total_dirty60 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %total_dirty60, align 8
  %total_used = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 14
  %156 = ptrtoint ptr %total_used to i32
  call void @__asan_loadN_noabort(i32 %156, i32 8)
  %157 = load i64, ptr %total_used, align 1
  %158 = tail call i64 @llvm.bswap.i64(i64 %157)
  %total_used63 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 5
  %159 = ptrtoint ptr %total_used63 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %total_used63, align 8
  %total_dead = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 15
  %160 = ptrtoint ptr %total_dead to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %total_dead, align 1
  %162 = tail call i64 @llvm.bswap.i64(i64 %161)
  %total_dead66 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 6
  %163 = ptrtoint ptr %total_dead66 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %total_dead66, align 8
  %total_dark = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 16
  %164 = ptrtoint ptr %total_dark to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %165 = load i64, ptr %total_dark, align 1
  %166 = tail call i64 @llvm.bswap.i64(i64 %165)
  %total_dark69 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 7
  %167 = ptrtoint ptr %total_dark69 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %total_dark69, align 8
  %authenticated.i.i247 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %168 = ptrtoint ptr %authenticated.i.i247 to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load.i.i248 = load i16, ptr %authenticated.i.i247, align 8
  %169 = and i16 %bf.load.i.i248, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool.not.i249 = icmp eq i16 %169, 0
  br i1 %tobool.not.i249, label %if.end11.ubifs_copy_hash.exit_crit_edge, label %if.then.i250

if.end11.ubifs_copy_hash.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit

if.then.i250:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 5
  %hash_root_idx = getelementptr inbounds %struct.ubifs_mst_node, ptr %56, i32 0, i32 29
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %170 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %hash_len.i, align 8
  %172 = call ptr @memcpy(ptr %hash, ptr %hash_root_idx, i32 %171)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i250, %if.end11.ubifs_copy_hash.exit_crit_edge
  %173 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %old_idx_sz, align 8
  %calc_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %175 = ptrtoint ptr %calc_idx_sz to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %calc_idx_sz, align 8
  %176 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mst_node, align 4
  %flags76 = getelementptr inbounds %struct.ubifs_mst_node, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %flags76 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %flags76, align 1
  %and77 = and i32 %179, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %ubifs_copy_hash.exit.if.end80_crit_edge, label %if.then79

ubifs_copy_hash.exit.if.end80_crit_edge:          ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %no_orphs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 116
  %180 = ptrtoint ptr %no_orphs to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %no_orphs, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %ubifs_copy_hash.exit.if.end80_crit_edge
  %leb_cnt81 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %181 = ptrtoint ptr %leb_cnt81 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %leb_cnt81, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %147)
  %cmp82.not = icmp eq i32 %182, %147
  br i1 %cmp82.not, label %if.end80.if.end132_crit_edge, label %if.then84

if.end80.if.end132_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then84:                                        ; preds = %if.end80
  %sub = sub i32 %182, %147
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %147)
  %cmp87 = icmp slt i32 %182, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %182)
  %cmp90 = icmp slt i32 %182, 17
  %or.cond = or i1 %cmp87, %cmp90
  br i1 %or.cond, label %if.then92, label %do.body

if.then92:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str) #9
  %183 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mst_node, align 4
  %185 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mst_node_alsz, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %184, i32 noundef %186) #9
  br label %cleanup139

do.body:                                          ; preds = %if.then84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_read_master.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_read_master, %if.then100)) #9
          to label %do.end [label %if.then100], !srcloc !28

if.then100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %187 = tail call i32 @llvm.read_register.i32(metadata !18) #9
  %and.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 68
  %191 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pid, align 8
  %193 = ptrtoint ptr %leb_cnt81 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %leb_cnt81, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_read_master.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, i32 noundef %192, i32 noundef %147, i32 noundef %194) #9
  br label %do.end

do.end:                                           ; preds = %if.then100, %do.body
  %195 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %lst, align 8
  %add = add i32 %196, %sub
  store i32 %add, ptr %lst, align 8
  %conv106 = sext i32 %sub to i64
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %197 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %leb_size, align 8
  %conv107 = sext i32 %198 to i64
  %mul = mul nsw i64 %conv107, %conv106
  %199 = ptrtoint ptr %total_free57 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %total_free57, align 8
  %add110 = add i64 %mul, %200
  store i64 %add110, ptr %total_free57, align 8
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %201 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dark_wm, align 4
  %conv112 = sext i32 %202 to i64
  %mul113 = mul nsw i64 %conv112, %conv106
  %203 = ptrtoint ptr %total_dark69 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %total_dark69, align 8
  %add116 = add i64 %mul113, %204
  store i64 %add116, ptr %total_dark69, align 8
  %205 = ptrtoint ptr %leb_cnt81 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %leb_cnt81, align 8
  %207 = tail call i32 @llvm.bswap.i32(i32 %206)
  %208 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mst_node, align 4
  %leb_cnt119 = getelementptr inbounds %struct.ubifs_mst_node, ptr %209, i32 0, i32 28
  %210 = ptrtoint ptr %leb_cnt119 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %207, ptr %leb_cnt119, align 1
  %211 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %lst, align 8
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  %214 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mst_node, align 4
  %empty_lebs123 = getelementptr inbounds %struct.ubifs_mst_node, ptr %215, i32 0, i32 26
  %216 = ptrtoint ptr %empty_lebs123 to i32
  call void @__asan_storeN_noabort(i32 %216, i32 4)
  store i32 %213, ptr %empty_lebs123, align 1
  %217 = ptrtoint ptr %total_free57 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %total_free57, align 8
  %219 = tail call i64 @llvm.bswap.i64(i64 %218)
  %220 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mst_node, align 4
  %total_free127 = getelementptr inbounds %struct.ubifs_mst_node, ptr %221, i32 0, i32 12
  %222 = ptrtoint ptr %total_free127 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %219, ptr %total_free127, align 1
  %223 = ptrtoint ptr %total_dark69 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %total_dark69, align 8
  %225 = tail call i64 @llvm.bswap.i64(i64 %224)
  %226 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mst_node, align 4
  %total_dark131 = getelementptr inbounds %struct.ubifs_mst_node, ptr %227, i32 0, i32 16
  %228 = ptrtoint ptr %total_dark131 to i32
  call void @__asan_storeN_noabort(i32 %228, i32 8)
  store i64 %225, ptr %total_dark131, align 1
  br label %if.end132

if.end132:                                        ; preds = %do.end, %if.end80.if.end132_crit_edge
  %229 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777217, i64 %230)
  %cmp.i252 = icmp ugt i64 %230, -16777217
  br i1 %cmp.i252, label %if.end132.validate_master.exit_crit_edge, label %if.end.i253

if.end132.validate_master.exit_crit_edge:         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end.i253:                                      ; preds = %if.end132
  %231 = ptrtoint ptr %cmt_no17 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %cmt_no17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %232, i64 %230)
  %cmp2.not.i = icmp ult i64 %232, %230
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i253.validate_master.exit_crit_edge

if.end.i253.validate_master.exit_crit_edge:       ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end4.i:                                        ; preds = %if.end.i253
  %233 = ptrtoint ptr %highest_inum15 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %highest_inum15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %234)
  %cmp5.i = icmp ugt i32 %234, -257
  br i1 %cmp5.i, label %if.end4.i.validate_master.exit_crit_edge, label %if.end7.i254

if.end4.i.validate_master.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end7.i254:                                     ; preds = %if.end4.i
  %235 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %lhead_lnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %236)
  %cmp8.i = icmp slt i32 %236, 3
  br i1 %cmp8.i, label %if.end7.i254.validate_master.exit_crit_edge, label %lor.lhs.false.i

if.end7.i254.validate_master.exit_crit_edge:      ; preds = %if.end7.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false.i:                                  ; preds = %if.end7.i254
  %log_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %237 = ptrtoint ptr %log_lebs.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %log_lebs.i, align 8
  %add.i = add i32 %238, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %add.i)
  %cmp10.not.i = icmp slt i32 %236, %add.i
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.validate_master.exit_crit_edge

lor.lhs.false.i.validate_master.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %lhead_offs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 10
  %239 = ptrtoint ptr %lhead_offs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %lhead_offs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp12.i = icmp slt i32 %240, 0
  br i1 %cmp12.i, label %lor.lhs.false11.i.validate_master.exit_crit_edge, label %lor.lhs.false13.i

lor.lhs.false11.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false13.i:                                ; preds = %lor.lhs.false11.i
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %241 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %leb_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %242)
  %cmp15.not.i = icmp slt i32 %240, %242
  br i1 %cmp15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.validate_master.exit_crit_edge

lor.lhs.false13.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %243 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %min_io_size.i, align 8
  %sub.i = add i32 %244, -1
  %and.i255 = and i32 %sub.i, %240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i255)
  %tobool.not.i256 = icmp eq i32 %and.i255, 0
  br i1 %tobool.not.i256, label %if.end19.i, label %lor.lhs.false16.i.validate_master.exit_crit_edge

lor.lhs.false16.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end19.i:                                       ; preds = %lor.lhs.false16.i
  %245 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %lnum, align 4
  %247 = ptrtoint ptr %leb_cnt81 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %leb_cnt81, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %248)
  %cmp20.not.i = icmp slt i32 %246, %248
  br i1 %cmp20.not.i, label %lor.lhs.false21.i, label %if.end19.i.validate_master.exit_crit_edge

if.end19.i.validate_master.exit_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false21.i:                                ; preds = %if.end19.i
  %main_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %249 = ptrtoint ptr %main_first.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %main_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %250)
  %cmp24.i = icmp slt i32 %246, %250
  br i1 %cmp24.i, label %lor.lhs.false21.i.validate_master.exit_crit_edge, label %lor.lhs.false25.i

lor.lhs.false21.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i
  %251 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %offs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %242)
  %cmp28.not.i = icmp slt i32 %252, %242
  %and32.i = and i32 %252, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %or.cond.i257 = and i1 %cmp28.not.i, %tobool33.not.i
  br i1 %or.cond.i257, label %if.end35.i259, label %lor.lhs.false25.i.validate_master.exit_crit_edge

lor.lhs.false25.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end35.i259:                                    ; preds = %lor.lhs.false25.i
  %253 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %len, align 4
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %256)
  %cmp37.i = icmp slt i32 %254, %256
  br i1 %cmp37.i, label %if.end35.i259.validate_master.exit_crit_edge, label %lor.lhs.false38.i

if.end35.i259.validate_master.exit_crit_edge:     ; preds = %if.end35.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false38.i:                                ; preds = %if.end35.i259
  %max_len.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9, i32 1
  %257 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %max_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %258)
  %cmp43.i = icmp sgt i32 %254, %258
  br i1 %cmp43.i, label %lor.lhs.false38.i.validate_master.exit_crit_edge, label %if.end45.i260

lor.lhs.false38.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end45.i260:                                    ; preds = %lor.lhs.false38.i
  %259 = ptrtoint ptr %gc_lnum25 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %gc_lnum25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %248)
  %cmp47.not.i = icmp sge i32 %260, %248
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %250)
  %cmp51.i = icmp slt i32 %260, %250
  %or.cond447.i = select i1 %cmp47.not.i, i1 true, i1 %cmp51.i
  br i1 %or.cond447.i, label %if.end45.i260.validate_master.exit_crit_edge, label %if.end53.i

if.end45.i260.validate_master.exit_crit_edge:     ; preds = %if.end45.i260
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end53.i:                                       ; preds = %if.end45.i260
  %261 = ptrtoint ptr %ihead_lnum27 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ihead_lnum27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %248)
  %cmp55.not.i = icmp sge i32 %262, %248
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %250)
  %cmp59.i = icmp slt i32 %262, %250
  %or.cond448.i = select i1 %cmp55.not.i, i1 true, i1 %cmp59.i
  br i1 %or.cond448.i, label %if.end53.i.validate_master.exit_crit_edge, label %lor.lhs.false60.i

if.end53.i.validate_master.exit_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false60.i:                                ; preds = %if.end53.i
  %263 = ptrtoint ptr %ihead_offs29 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ihead_offs29, align 4
  %rem.i = srem i32 %264, %244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool62.not.i = icmp eq i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %264)
  %cmp65.i = icmp sgt i32 %264, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %242)
  %cmp69.i = icmp sle i32 %264, %242
  %not.or.cond449.i = and i1 %cmp65.i, %tobool62.not.i
  %or.cond450.i = select i1 %not.or.cond449.i, i1 %cmp69.i, i1 false
  %and72.i = and i32 %264, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  %or.cond451.i = select i1 %or.cond450.i, i1 %tobool73.not.i, i1 false
  br i1 %or.cond451.i, label %if.end75.i, label %lor.lhs.false60.i.validate_master.exit_crit_edge

lor.lhs.false60.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end75.i:                                       ; preds = %lor.lhs.false60.i
  %main_lebs.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %265 = ptrtoint ptr %main_lebs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %main_lebs.i, align 4
  %conv.i = sext i32 %266 to i64
  %conv77.i = sext i32 %242 to i64
  %mul.i = mul nsw i64 %conv.i, %conv77.i
  %267 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %old_idx_sz, align 8
  %and78.i = and i64 %268, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and78.i)
  %tobool79.not.i = icmp eq i64 %and78.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %268, i64 %mul.i)
  %cmp83.not.i = icmp ult i64 %268, %mul.i
  %or.cond452.i = select i1 %tobool79.not.i, i1 %cmp83.not.i, i1 false
  br i1 %or.cond452.i, label %if.end86.i, label %if.end75.i.validate_master.exit_crit_edge

if.end75.i.validate_master.exit_crit_edge:        ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end86.i:                                       ; preds = %if.end75.i
  %269 = ptrtoint ptr %lpt_lnum32 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %lpt_lnum32, align 4
  %lpt_first.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %271 = ptrtoint ptr %lpt_first.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %lpt_first.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp87.i = icmp slt i32 %270, %272
  br i1 %cmp87.i, label %if.end86.i.validate_master.exit_crit_edge, label %lor.lhs.false89.i

if.end86.i.validate_master.exit_crit_edge:        ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false89.i:                                ; preds = %if.end86.i
  %lpt_last.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %273 = ptrtoint ptr %lpt_last.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %lpt_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %274)
  %cmp91.i = icmp sgt i32 %270, %274
  br i1 %cmp91.i, label %lor.lhs.false89.i.validate_master.exit_crit_edge, label %lor.lhs.false93.i

lor.lhs.false89.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false93.i:                                ; preds = %lor.lhs.false89.i
  %275 = ptrtoint ptr %lpt_offs34 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %lpt_offs34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp94.i = icmp slt i32 %276, 0
  br i1 %cmp94.i, label %lor.lhs.false93.i.validate_master.exit_crit_edge, label %lor.lhs.false96.i

lor.lhs.false93.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false96.i:                                ; preds = %lor.lhs.false93.i
  %nnode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 136
  %277 = ptrtoint ptr %nnode_sz.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %nnode_sz.i, align 8
  %add98.i = add i32 %278, %276
  call void @__sanitizer_cov_trace_cmp4(i32 %add98.i, i32 %242)
  %cmp100.i = icmp sgt i32 %add98.i, %242
  br i1 %cmp100.i, label %lor.lhs.false96.i.validate_master.exit_crit_edge, label %if.end103.i

lor.lhs.false96.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end103.i:                                      ; preds = %lor.lhs.false96.i
  %279 = ptrtoint ptr %nhead_lnum36 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %nhead_lnum36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %272)
  %cmp105.i = icmp slt i32 %280, %272
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %274)
  %cmp110.i = icmp sgt i32 %280, %274
  %or.cond453.i = select i1 %cmp105.i, i1 true, i1 %cmp110.i
  br i1 %or.cond453.i, label %if.end103.i.validate_master.exit_crit_edge, label %lor.lhs.false112.i

if.end103.i.validate_master.exit_crit_edge:       ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false112.i:                               ; preds = %if.end103.i
  %281 = ptrtoint ptr %nhead_offs38 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %nhead_offs38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp113.i = icmp slt i32 %282, 0
  br i1 %cmp113.i, label %lor.lhs.false112.i.validate_master.exit_crit_edge, label %lor.lhs.false115.i

lor.lhs.false112.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false115.i:                               ; preds = %lor.lhs.false112.i
  %rem118.i = srem i32 %282, %244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem118.i)
  %tobool119.not.i = icmp ne i32 %rem118.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %242)
  %cmp123.i = icmp sgt i32 %282, %242
  %or.cond454.i = select i1 %tobool119.not.i, i1 true, i1 %cmp123.i
  br i1 %or.cond454.i, label %lor.lhs.false115.i.validate_master.exit_crit_edge, label %if.end126.i

lor.lhs.false115.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end126.i:                                      ; preds = %lor.lhs.false115.i
  %283 = ptrtoint ptr %ltab_lnum40 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %ltab_lnum40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %272)
  %cmp128.i = icmp slt i32 %284, %272
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %274)
  %cmp133.i = icmp sgt i32 %284, %274
  %or.cond455.i = select i1 %cmp128.i, i1 true, i1 %cmp133.i
  br i1 %or.cond455.i, label %if.end126.i.validate_master.exit_crit_edge, label %lor.lhs.false135.i

if.end126.i.validate_master.exit_crit_edge:       ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false135.i:                               ; preds = %if.end126.i
  %285 = ptrtoint ptr %ltab_offs42 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ltab_offs42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp136.i = icmp slt i32 %286, 0
  br i1 %cmp136.i, label %lor.lhs.false135.i.validate_master.exit_crit_edge, label %lor.lhs.false138.i

lor.lhs.false135.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false138.i:                               ; preds = %lor.lhs.false135.i
  %ltab_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 138
  %287 = ptrtoint ptr %ltab_sz.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %ltab_sz.i, align 8
  %add140.i = add i32 %288, %286
  call void @__sanitizer_cov_trace_cmp4(i32 %add140.i, i32 %242)
  %cmp142.i = icmp sgt i32 %add140.i, %242
  br i1 %cmp142.i, label %lor.lhs.false138.i.validate_master.exit_crit_edge, label %if.end145.i

lor.lhs.false138.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end145.i:                                      ; preds = %lor.lhs.false138.i
  %289 = ptrtoint ptr %authenticated.i.i247 to i32
  call void @__asan_load2_noabort(i32 %289)
  %bf.load.i = load i16, ptr %authenticated.i.i247, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool146.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool146.not.i, label %if.end145.i.if.end165.i_crit_edge, label %land.lhs.true.i

if.end145.i.if.end165.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165.i

land.lhs.true.i:                                  ; preds = %if.end145.i
  %290 = ptrtoint ptr %lsave_lnum44 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %lsave_lnum44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %291, i32 %272)
  %cmp148.i = icmp slt i32 %291, %272
  call void @__sanitizer_cov_trace_cmp4(i32 %291, i32 %274)
  %cmp153.i = icmp sgt i32 %291, %274
  %or.cond456.i = select i1 %cmp148.i, i1 true, i1 %cmp153.i
  br i1 %or.cond456.i, label %land.lhs.true.i.validate_master.exit_crit_edge, label %lor.lhs.false155.i

land.lhs.true.i.validate_master.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false155.i:                               ; preds = %land.lhs.true.i
  %292 = ptrtoint ptr %lsave_offs46 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %lsave_offs46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp156.i = icmp slt i32 %293, 0
  br i1 %cmp156.i, label %lor.lhs.false155.i.validate_master.exit_crit_edge, label %lor.lhs.false158.i

lor.lhs.false155.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

lor.lhs.false158.i:                               ; preds = %lor.lhs.false155.i
  %lsave_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 139
  %294 = ptrtoint ptr %lsave_sz.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %lsave_sz.i, align 4
  %add160.i = add i32 %295, %293
  call void @__sanitizer_cov_trace_cmp4(i32 %add160.i, i32 %242)
  %cmp162.i = icmp sgt i32 %add160.i, %242
  br i1 %cmp162.i, label %lor.lhs.false158.i.validate_master.exit_crit_edge, label %lor.lhs.false158.i.if.end165.i_crit_edge

lor.lhs.false158.i.if.end165.i_crit_edge:         ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165.i

lor.lhs.false158.i.validate_master.exit_crit_edge: ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end165.i:                                      ; preds = %lor.lhs.false158.i.if.end165.i_crit_edge, %if.end145.i.if.end165.i_crit_edge
  %296 = ptrtoint ptr %lscan_lnum48 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %lscan_lnum48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %297, i32 %250)
  %cmp167.i = icmp sge i32 %297, %250
  call void @__sanitizer_cov_trace_cmp4(i32 %297, i32 %248)
  %cmp172.not.i = icmp slt i32 %297, %248
  %or.cond466.i = select i1 %cmp167.i, i1 %cmp172.not.i, i1 false
  br i1 %or.cond466.i, label %if.end175.i, label %if.end165.i.validate_master.exit_crit_edge

if.end165.i.validate_master.exit_crit_edge:       ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end175.i:                                      ; preds = %if.end165.i
  %298 = ptrtoint ptr %lst to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %lst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp176.i = icmp slt i32 %299, 0
  %sub182.i = add i32 %266, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %sub182.i)
  %cmp183.i = icmp sgt i32 %299, %sub182.i
  %or.cond467.i = select i1 %cmp176.i, i1 true, i1 %cmp183.i
  br i1 %or.cond467.i, label %if.end175.i.validate_master.exit_crit_edge, label %if.end186.i

if.end175.i.validate_master.exit_crit_edge:       ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end186.i:                                      ; preds = %if.end175.i
  %300 = ptrtoint ptr %idx_lebs53 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %idx_lebs53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp188.i = icmp slt i32 %301, 0
  %sub194.i = add i32 %266, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %301, i32 %sub194.i)
  %cmp195.i = icmp sgt i32 %301, %sub194.i
  %or.cond457.i = select i1 %cmp188.i, i1 true, i1 %cmp195.i
  br i1 %or.cond457.i, label %if.end186.i.validate_master.exit_crit_edge, label %if.end198.i

if.end186.i.validate_master.exit_crit_edge:       ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end198.i:                                      ; preds = %if.end186.i
  %302 = ptrtoint ptr %total_free57 to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %total_free57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %303)
  %cmp200.i = icmp sgt i64 %303, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %303, i64 %mul.i)
  %cmp205.i = icmp sle i64 %303, %mul.i
  %or.cond458.i = select i1 %cmp200.i, i1 %cmp205.i, i1 false
  %and210.i = and i64 %303, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and210.i)
  %tobool211.not.i = icmp eq i64 %and210.i, 0
  %or.cond459.i = and i1 %or.cond458.i, %tobool211.not.i
  br i1 %or.cond459.i, label %if.end213.i, label %if.end198.i.validate_master.exit_crit_edge

if.end198.i.validate_master.exit_crit_edge:       ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end213.i:                                      ; preds = %if.end198.i
  %304 = ptrtoint ptr %total_dirty60 to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %total_dirty60, align 8
  %306 = and i64 %305, -9223372036854775801
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %306)
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %if.end223.i, label %if.end213.i.validate_master.exit_crit_edge

if.end213.i.validate_master.exit_crit_edge:       ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end223.i:                                      ; preds = %if.end213.i
  %308 = ptrtoint ptr %total_used63 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %total_used63, align 8
  %310 = and i64 %309, -9223372036854775801
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %310)
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %if.end233.i, label %if.end223.i.validate_master.exit_crit_edge

if.end223.i.validate_master.exit_crit_edge:       ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end233.i:                                      ; preds = %if.end223.i
  %add238.i = add nuw i64 %305, %303
  %add241.i = add i64 %309, %add238.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add241.i, i64 %mul.i)
  %cmp242.i = icmp sgt i64 %add241.i, %mul.i
  br i1 %cmp242.i, label %if.end233.i.validate_master.exit_crit_edge, label %if.end245.i

if.end233.i.validate_master.exit_crit_edge:       ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end245.i:                                      ; preds = %if.end233.i
  %312 = ptrtoint ptr %total_dead66 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %total_dead66, align 8
  %314 = ptrtoint ptr %total_dark69 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %total_dark69, align 8
  %add248.i = add i64 %309, %268
  %add251.i = add i64 %add248.i, %313
  %add254.i = add i64 %add251.i, %315
  call void @__sanitizer_cov_trace_cmp8(i64 %add254.i, i64 %mul.i)
  %cmp255.i = icmp ugt i64 %add254.i, %mul.i
  br i1 %cmp255.i, label %if.end245.i.validate_master.exit_crit_edge, label %if.end258.i

if.end245.i.validate_master.exit_crit_edge:       ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end258.i:                                      ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %313)
  %cmp261.i = icmp sgt i64 %313, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %313, i64 %add238.i)
  %cmp271.i = icmp sle i64 %313, %add238.i
  %or.cond462.i = select i1 %cmp261.i, i1 %cmp271.i, i1 false
  %and276.i = and i64 %313, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and276.i)
  %tobool277.not.i = icmp eq i64 %and276.i, 0
  %or.cond463.i = and i1 %or.cond462.i, %tobool277.not.i
  br i1 %or.cond463.i, label %if.end279.i, label %if.end258.i.validate_master.exit_crit_edge

if.end258.i.validate_master.exit_crit_edge:       ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

if.end279.i:                                      ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %315)
  %cmp282.i = icmp sgt i64 %315, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %315, i64 %add238.i)
  %cmp292.i = icmp sle i64 %315, %add238.i
  %or.cond464.i = select i1 %cmp282.i, i1 %cmp292.i, i1 false
  %and297.i = and i64 %315, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and297.i)
  %tobool298.not.i = icmp eq i64 %and297.i, 0
  %or.cond465.i = and i1 %or.cond464.i, %tobool298.not.i
  br i1 %or.cond465.i, label %if.end136, label %if.end279.i.validate_master.exit_crit_edge

if.end279.i.validate_master.exit_crit_edge:       ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_master.exit

validate_master.exit:                             ; preds = %if.end279.i.validate_master.exit_crit_edge, %if.end258.i.validate_master.exit_crit_edge, %if.end245.i.validate_master.exit_crit_edge, %if.end233.i.validate_master.exit_crit_edge, %if.end223.i.validate_master.exit_crit_edge, %if.end213.i.validate_master.exit_crit_edge, %if.end198.i.validate_master.exit_crit_edge, %if.end186.i.validate_master.exit_crit_edge, %if.end175.i.validate_master.exit_crit_edge, %if.end165.i.validate_master.exit_crit_edge, %lor.lhs.false158.i.validate_master.exit_crit_edge, %lor.lhs.false155.i.validate_master.exit_crit_edge, %land.lhs.true.i.validate_master.exit_crit_edge, %lor.lhs.false138.i.validate_master.exit_crit_edge, %lor.lhs.false135.i.validate_master.exit_crit_edge, %if.end126.i.validate_master.exit_crit_edge, %lor.lhs.false115.i.validate_master.exit_crit_edge, %lor.lhs.false112.i.validate_master.exit_crit_edge, %if.end103.i.validate_master.exit_crit_edge, %lor.lhs.false96.i.validate_master.exit_crit_edge, %lor.lhs.false93.i.validate_master.exit_crit_edge, %lor.lhs.false89.i.validate_master.exit_crit_edge, %if.end86.i.validate_master.exit_crit_edge, %if.end75.i.validate_master.exit_crit_edge, %lor.lhs.false60.i.validate_master.exit_crit_edge, %if.end53.i.validate_master.exit_crit_edge, %if.end45.i260.validate_master.exit_crit_edge, %lor.lhs.false38.i.validate_master.exit_crit_edge, %if.end35.i259.validate_master.exit_crit_edge, %lor.lhs.false25.i.validate_master.exit_crit_edge, %lor.lhs.false21.i.validate_master.exit_crit_edge, %if.end19.i.validate_master.exit_crit_edge, %lor.lhs.false16.i.validate_master.exit_crit_edge, %lor.lhs.false13.i.validate_master.exit_crit_edge, %lor.lhs.false11.i.validate_master.exit_crit_edge, %lor.lhs.false.i.validate_master.exit_crit_edge, %if.end7.i254.validate_master.exit_crit_edge, %if.end4.i.validate_master.exit_crit_edge, %if.end.i253.validate_master.exit_crit_edge, %if.end132.validate_master.exit_crit_edge
  %err.0.i = phi i32 [ 1, %if.end132.validate_master.exit_crit_edge ], [ 2, %if.end.i253.validate_master.exit_crit_edge ], [ 3, %if.end4.i.validate_master.exit_crit_edge ], [ 4, %lor.lhs.false16.i.validate_master.exit_crit_edge ], [ 4, %lor.lhs.false13.i.validate_master.exit_crit_edge ], [ 4, %lor.lhs.false11.i.validate_master.exit_crit_edge ], [ 4, %lor.lhs.false.i.validate_master.exit_crit_edge ], [ 4, %if.end7.i254.validate_master.exit_crit_edge ], [ 5, %lor.lhs.false25.i.validate_master.exit_crit_edge ], [ 5, %lor.lhs.false21.i.validate_master.exit_crit_edge ], [ 5, %if.end19.i.validate_master.exit_crit_edge ], [ 6, %lor.lhs.false38.i.validate_master.exit_crit_edge ], [ 6, %if.end35.i259.validate_master.exit_crit_edge ], [ 7, %if.end45.i260.validate_master.exit_crit_edge ], [ 8, %lor.lhs.false60.i.validate_master.exit_crit_edge ], [ 8, %if.end53.i.validate_master.exit_crit_edge ], [ 9, %if.end75.i.validate_master.exit_crit_edge ], [ 10, %lor.lhs.false96.i.validate_master.exit_crit_edge ], [ 10, %lor.lhs.false93.i.validate_master.exit_crit_edge ], [ 10, %lor.lhs.false89.i.validate_master.exit_crit_edge ], [ 10, %if.end86.i.validate_master.exit_crit_edge ], [ 11, %lor.lhs.false115.i.validate_master.exit_crit_edge ], [ 11, %lor.lhs.false112.i.validate_master.exit_crit_edge ], [ 11, %if.end103.i.validate_master.exit_crit_edge ], [ 12, %lor.lhs.false138.i.validate_master.exit_crit_edge ], [ 12, %lor.lhs.false135.i.validate_master.exit_crit_edge ], [ 12, %if.end126.i.validate_master.exit_crit_edge ], [ 13, %lor.lhs.false158.i.validate_master.exit_crit_edge ], [ 13, %lor.lhs.false155.i.validate_master.exit_crit_edge ], [ 13, %land.lhs.true.i.validate_master.exit_crit_edge ], [ 14, %if.end165.i.validate_master.exit_crit_edge ], [ 15, %if.end175.i.validate_master.exit_crit_edge ], [ 16, %if.end186.i.validate_master.exit_crit_edge ], [ 17, %if.end198.i.validate_master.exit_crit_edge ], [ 18, %if.end213.i.validate_master.exit_crit_edge ], [ 19, %if.end223.i.validate_master.exit_crit_edge ], [ 20, %if.end233.i.validate_master.exit_crit_edge ], [ 21, %if.end245.i.validate_master.exit_crit_edge ], [ 22, %if.end258.i.validate_master.exit_crit_edge ], [ 23, %if.end279.i.validate_master.exit_crit_edge ]
  %mst_offs.i261 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 47
  %316 = ptrtoint ptr %mst_offs.i261 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %mst_offs.i261, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.9, i32 noundef %317, i32 noundef %err.0.i) #9
  %318 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %mst_node, align 4
  %320 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %mst_node_alsz, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %319, i32 noundef %321) #9
  br label %cleanup139

if.end136:                                        ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #11
  %call138 = tail call i32 @dbg_old_index_check_init(ptr noundef %c, ptr noundef %zroot) #9
  br label %cleanup139

cleanup139:                                       ; preds = %if.end136, %validate_master.exit, %if.then92, %if.end7.cleanup139_crit_edge, %out_dump.i, %if.then58.i, %if.then53.i, %entry.cleanup139_crit_edge
  %retval.1 = phi i32 [ %call138, %if.end136 ], [ -22, %if.then92 ], [ -12, %entry.cleanup139_crit_edge ], [ %err.0, %if.end7.cleanup139_crit_edge ], [ -22, %validate_master.exit ], [ -1, %if.then53.i ], [ -1, %if.then58.i ], [ -22, %out_dump.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_master_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_old_index_check_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_master(ptr noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !29

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 438) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %mst_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 47
  %3 = ptrtoint ptr %mst_offs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mst_offs, align 8
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %5 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mst_node_alsz, align 4
  %add = add i32 %6, %4
  %add16 = add i32 %add, 512
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %7 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %8)
  %cmp = icmp ugt i32 %add16, %8
  br i1 %cmp, label %if.then17, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  %call = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.then17.if.end21_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %if.then17.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %offs.0 = phi i32 [ %add, %if.end15.if.end21_crit_edge ], [ 0, %if.then17.if.end21_crit_edge ]
  %9 = ptrtoint ptr %mst_offs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offs.0, ptr %mst_offs, align 8
  %highest_inum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 2
  %10 = ptrtoint ptr %highest_inum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_inum, align 8
  %conv = zext i32 %11 to i64
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %13 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mst_node, align 4
  %highest_inum23 = getelementptr inbounds %struct.ubifs_mst_node, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %highest_inum23 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %12, ptr %highest_inum23, align 1
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %16 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %17 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.end21.ubifs_copy_hash.exit_crit_edge, label %if.then.i

if.end21.ubifs_copy_hash.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubifs_copy_hash.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mst_node, align 4
  %hash_root_idx = getelementptr inbounds %struct.ubifs_mst_node, ptr %19, i32 0, i32 29
  %hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 5
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %20 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_len.i, align 8
  %22 = call ptr @memcpy(ptr %hash_root_idx, ptr %hash, i32 %21)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i, %if.end21.ubifs_copy_hash.exit_crit_edge
  %23 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mst_node, align 4
  %call27 = tail call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef %24, i32 noundef 512, i32 noundef 1, i32 noundef %offs.0, i32 noundef 296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %ubifs_copy_hash.exit.cleanup_crit_edge

ubifs_copy_hash.exit.cleanup_crit_edge:           ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %ubifs_copy_hash.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs.0)
  %cmp32 = icmp eq i32 %offs.0, 0
  br i1 %cmp32, label %if.then34, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  %call35 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %25 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mst_node, align 4
  %call41 = tail call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef %26, i32 noundef 512, i32 noundef 2, i32 noundef %offs.0, i32 noundef 296) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then34.cleanup_crit_edge, %ubifs_copy_hash.exit.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -30, %do.end.cleanup_crit_edge ], [ %call, %if.then17.cleanup_crit_edge ], [ %call27, %ubifs_copy_hash.exit.cleanup_crit_edge ], [ %call35, %if.then34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ubifs_hmac_zero(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mst_node_check_hash(ptr nocapture noundef readonly %c, ptr noundef %mst, ptr noundef %expected) unnamed_addr #3 align 64 {
entry:
  %calc = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %calc) #9
  %0 = call ptr @memset(ptr %calc, i32 255, i32 64)
  %hash_tfm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 179
  %1 = ptrtoint ptr %hash_tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hash_tfm, align 8
  %add.ptr = getelementptr i8, ptr %mst, i32 24
  %call = call i32 @crypto_shash_tfm_digest(ptr noundef %2, ptr noundef %add.ptr, i32 noundef 488, ptr noundef nonnull %calc) #9
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %3 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_len.i, align 8
  %call.i.i = call i32 @__crypto_memneq(ptr noundef %expected, ptr noundef nonnull %calc, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i.not = icmp ne i32 %call.i.i, 0
  %. = sext i1 %cmp.not.i.i.not to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %calc) #9
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_verify_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/master.c", i32 394, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/master.c", i32 399, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ubifs_read_master.__UNIQUE_ID_ddebug276, !3, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/master.c", i32 438, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/master.c", i32 139, i32 17}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/master.c", i32 145, i32 17}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/master.c", i32 158, i32 15}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/master.c", i32 316, i32 15}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2149071257, i64 2149071262, i64 2149071275, i64 2149071319, i64 2149071353, i64 2149071374}
!29 = !{!"branch_weights", i32 2000, i32 1}
