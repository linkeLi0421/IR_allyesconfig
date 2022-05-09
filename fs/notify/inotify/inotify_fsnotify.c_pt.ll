; ModuleID = '/llk/IR_all_yes/fs/notify/inotify/inotify_fsnotify.c_pt.bc'
source_filename = "../fs/notify/inotify/inotify_fsnotify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.70 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inotify_event_info = type { %struct.fsnotify_event, i32, i32, i32, i32, [0 x i8] }
%struct.fsnotify_event = type { %struct.list_head }
%struct.inotify_inode_mark = type { %struct.fsnotify_mark, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }

@inotify_handle_inode_event.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inotify_fsnotify\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"inotify_handle_inode_event\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fs/notify/inotify/inotify_fsnotify.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: group=%p mark=%p mask=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@inotify_fsnotify_ops = dso_local constant { %struct.fsnotify_ops, [40 x i8] } { %struct.fsnotify_ops { ptr null, ptr @inotify_handle_inode_event, ptr @inotify_free_group_priv, ptr @inotify_freeing_mark, ptr @inotify_free_event, ptr @inotify_free_mark }, [40 x i8] zeroinitializer }, align 32
@int_active_memcg = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@idr_callback.warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"inotify closing but id=%d for fsn_mark=%p in group=%p still in idr.  Probably leaking memory\0A\00", [34 x i8] zeroinitializer }, align 32
@idr_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014fsn_mark->group=%p wd=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idr_callback\00", [19 x i8] zeroinitializer }, align 32
@idr_callback._entry_ptr = internal global ptr @idr_callback._entry, section ".printk_index", align 4
@inotify_inode_mark_cachep = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 77, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"inotify_fsnotify_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 196, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"idr_callback.warned\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 156, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [40 x i8] c"../fs/notify/inotify/inotify_fsnotify.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 166, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @idr_callback._entry, ptr @idr_callback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @inotify_fsnotify_ops, ptr @idr_callback.warned, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inotify_fsnotify_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idr_callback.warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idr_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inotify_handle_inode_event(ptr noundef %inode_mark, i32 noundef %mask, ptr nocapture readnone %inode, ptr nocapture readnone %dir, ptr noundef readonly %name, i32 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.fsnotify_mark, ptr %inode_mark, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 8
  %add3 = add i32 %3, 25
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %len.0 = phi i32 [ %3, %if.then ], [ 0, %entry.do.body_crit_edge ]
  %alloc_len.0 = phi i32 [ %add3, %if.then ], [ 24, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inotify_handle_inode_event.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inotify_handle_inode_event, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !27

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inotify_handle_inode_event.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %inode_mark, i32 noundef %mask) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %memcg = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %memcg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memcg, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %9, 15728640
  %10 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i78.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i78.i to ptr
  %preempt_count.i79.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i79.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i79.i, align 4
  %and2.i = and i32 %13, 983040
  %or.i = or i32 %and2.i, %and.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i80.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i80.i to ptr
  %preempt_count.i81.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i81.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i81.i, align 4
  %and5.i = and i32 %17, 256
  %or6.i = or i32 %or.i, %and5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i)
  %tobool.not.i = icmp eq i32 %or6.i, 0
  %18 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i85.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i85.i to ptr
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i77

if.then.i77:                                      ; preds = %do.end
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %21, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %22 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, ptrtoint (ptr @int_active_memcg to i32)
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %31 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i82.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i82.i to ptr
  %preempt_count.i.i83.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i83.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i83.i, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !30
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx47.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx47.i, align 4
  %add48.i = add i32 %39, ptrtoint (ptr @int_active_memcg to i32)
  %40 = inttoptr i32 %add48.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %5, ptr %40, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !31
  %and.i.i84.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i)
  %tobool59.not.i = icmp eq i32 %and.i.i84.i, 0
  br i1 %tobool59.not.i, label %if.then63.i, label %if.then.i77.do.end65.i_crit_edge, !prof !32

if.then.i77.do.end65.i_crit_edge:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

if.then63.i:                                      ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.then63.i, %if.then.i77.do.end65.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #8, !srcloc !33
  br label %if.end8.i

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %43 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i, align 8
  %active_memcg.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 206
  %45 = ptrtoint ptr %active_memcg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %active_memcg.i, align 8
  store ptr %5, ptr %active_memcg.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %do.end65.i
  %old.0.i = phi ptr [ %30, %do.end65.i ], [ %46, %if.else.i ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %alloc_len.0, i32 noundef 4213952) #11
  %47 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i78 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i78 to ptr
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i79, align 4
  %and.i80 = and i32 %50, 15728640
  %51 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i78.i81 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i78.i81 to ptr
  %preempt_count.i79.i82 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i79.i82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i79.i82, align 4
  %and2.i83 = and i32 %54, 983040
  %or.i84 = or i32 %and2.i83, %and.i80
  %55 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i80.i85 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i80.i85 to ptr
  %preempt_count.i81.i86 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i81.i86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i81.i86, align 4
  %and5.i87 = and i32 %58, 256
  %or6.i88 = or i32 %or.i84, %and5.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i88)
  %tobool.not.i89 = icmp eq i32 %or6.i88, 0
  %59 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i85.i90 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i85.i90 to ptr
  br i1 %tobool.not.i89, label %if.else.i109, label %if.then.i104

if.then.i104:                                     ; preds = %if.end8.i
  %preempt_count.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i91, align 4
  %add.i.i92 = add i32 %62, 1
  store volatile i32 %add.i.i92, ptr %preempt_count.i.i.i91, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %63 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i93 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i93 to ptr
  %cpu.i94 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i94, align 4
  %arrayidx.i95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i95, align 4
  %add.i96 = add i32 %68, ptrtoint (ptr @int_active_memcg to i32)
  %69 = inttoptr i32 %add.i96 to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %69, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %72 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i82.i97 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i82.i97 to ptr
  %preempt_count.i.i83.i98 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i83.i98 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i83.i98, align 4
  %sub.i.i99 = add i32 %75, -1
  store volatile i32 %sub.i.i99, ptr %preempt_count.i.i83.i98, align 4
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !30
  %77 = ptrtoint ptr %cpu.i94 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu.i94, align 4
  %arrayidx47.i100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx47.i100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx47.i100, align 4
  %add48.i101 = add i32 %80, ptrtoint (ptr @int_active_memcg to i32)
  %81 = inttoptr i32 %add48.i101 to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %old.0.i, ptr %81, align 4
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !31
  %and.i.i84.i102 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i102)
  %tobool59.not.i103 = icmp eq i32 %and.i.i84.i102, 0
  br i1 %tobool59.not.i103, label %if.then63.i105, label %if.then.i104.do.end65.i106_crit_edge, !prof !32

if.then.i104.do.end65.i106_crit_edge:             ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i106

if.then63.i105:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end65.i106

do.end65.i106:                                    ; preds = %if.then63.i105, %if.then.i104.do.end65.i106_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #8, !srcloc !33
  br label %set_active_memcg.exit111

if.else.i109:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i107 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %84 = ptrtoint ptr %task.i107 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i107, align 8
  %active_memcg.i108 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 206
  %86 = ptrtoint ptr %active_memcg.i108 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %old.0.i, ptr %active_memcg.i108, align 8
  br label %set_active_memcg.exit111

set_active_memcg.exit111:                         ; preds = %if.else.i109, %do.end65.i106
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.then22, label %if.end23, !prof !32

if.then22:                                        ; preds = %set_active_memcg.exit111
  call void @__sanitizer_cov_trace_pc() #10
  %overflow_event.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %overflow_event.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %overflow_event.i, align 4
  %call.i.i = tail call i32 @fsnotify_insert_event(ptr noundef %1, ptr noundef %88, ptr noundef null, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %set_active_memcg.exit111
  %and = and i32 %mask, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %and26 = and i32 %mask, -1073741825
  %spec.select = select i1 %tobool24.not, i32 %mask, i32 %and26
  %89 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call9.i, ptr %call9.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %mask28 = getelementptr inbounds %struct.inotify_event_info, ptr %call9.i, i32 0, i32 1
  %91 = ptrtoint ptr %mask28 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %spec.select, ptr %mask28, align 8
  %wd = getelementptr inbounds %struct.inotify_inode_mark, ptr %inode_mark, i32 0, i32 1
  %92 = ptrtoint ptr %wd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wd, align 4
  %wd29 = getelementptr inbounds %struct.inotify_event_info, ptr %call9.i, i32 0, i32 2
  %94 = ptrtoint ptr %wd29 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %wd29, align 4
  %sync_cookie = getelementptr inbounds %struct.inotify_event_info, ptr %call9.i, i32 0, i32 3
  %95 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cookie, ptr %sync_cookie, align 16
  %name_len = getelementptr inbounds %struct.inotify_event_info, ptr %call9.i, i32 0, i32 4
  %96 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %len.0, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool30.not = icmp eq i32 %len.0, 0
  br i1 %tobool30.not, label %if.end23.if.end35_crit_edge, label %if.then31

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %name32 = getelementptr inbounds %struct.inotify_event_info, ptr %call9.i, i32 0, i32 5
  %name33 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %97 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name33, align 8
  %call34 = tail call ptr @strcpy(ptr noundef %name32, ptr noundef %98) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end23.if.end35_crit_edge
  %call.i = tail call i32 @fsnotify_insert_event(ptr noundef %1, ptr noundef nonnull %call9.i, ptr noundef nonnull @inotify_merge, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_destroy_event(ptr noundef %1, ptr noundef nonnull %call9.i) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %99 = ptrtoint ptr %inode_mark to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %inode_mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %tobool42.not = icmp sgt i32 %100, -1
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.then43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_destroy_mark(ptr noundef %inode_mark, ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end39.cleanup_crit_edge, %if.then22
  %retval.0 = phi i32 [ -12, %if.then22 ], [ 0, %if.then43 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inotify_merge(ptr nocapture noundef readonly %group, ptr nocapture noundef readonly %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %mask.i = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.event_compare.exit_crit_edge

entry.event_compare.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %event_compare.exit

if.end.i:                                         ; preds = %entry
  %mask3.i = getelementptr inbounds %struct.inotify_event_info, ptr %event, i32 0, i32 1
  %4 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %wd.i = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %wd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wd.i, align 4
  %wd4.i = getelementptr inbounds %struct.inotify_event_info, ptr %event, i32 0, i32 2
  %8 = ptrtoint ptr %wd4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wd4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.i = icmp eq i32 %7, %9
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %name_len.i = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name_len.i, align 4
  %name_len7.i = getelementptr inbounds %struct.inotify_event_info, ptr %event, i32 0, i32 4
  %12 = ptrtoint ptr %name_len7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %name_len7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp8.i = icmp eq i32 %11, %13
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true6.i.if.end17.i_crit_edge

land.lhs.true6.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not.i = icmp eq i32 %11, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.event_compare.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true9.i.event_compare.exit_crit_edge:    ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %event_compare.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %name.i = getelementptr inbounds %struct.inotify_event_info, ptr %1, i32 0, i32 5
  %name12.i = getelementptr inbounds %struct.inotify_event_info, ptr %event, i32 0, i32 5
  %call14.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef %name12.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.event_compare.exit_crit_edge, label %lor.lhs.false.i.if.end17.i_crit_edge

lor.lhs.false.i.if.end17.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

lor.lhs.false.i.event_compare.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %event_compare.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i.if.end17.i_crit_edge, %land.lhs.true6.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  br label %event_compare.exit

event_compare.exit:                               ; preds = %if.end17.i, %lor.lhs.false.i.event_compare.exit_crit_edge, %land.lhs.true9.i.event_compare.exit_crit_edge, %entry.event_compare.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end17.i ], [ 0, %entry.event_compare.exit_crit_edge ], [ 1, %lor.lhs.false.i.event_compare.exit_crit_edge ], [ 1, %land.lhs.true9.i.event_compare.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inotify_free_group_priv(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idr = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4, i32 3
  %call = tail call i32 @idr_for_each(ptr noundef %idr, ptr noundef nonnull @idr_callback, ptr noundef %group) #8
  tail call void @idr_destroy(ptr noundef %idr) #8
  %ucounts = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dec_ucount(ptr noundef nonnull %1, i32 noundef 8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inotify_freeing_mark(ptr noundef %fsn_mark, ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inotify_ignored_and_remove_idr(ptr noundef %fsn_mark, ptr noundef %group) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inotify_free_event(ptr nocapture noundef readnone %group, ptr noundef %fsn_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %fsn_event) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inotify_free_mark(ptr noundef %fsn_mark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @inotify_inode_mark_cachep to i32))
  %0 = load ptr, ptr @inotify_inode_mark_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %fsn_mark) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_insert_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idr_callback(i32 noundef %id, ptr noundef %p, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b31 = load i1, ptr @idr_callback.warned, align 1
  br i1 %.b31, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, ptr @idr_callback.warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %id, ptr noundef %p, ptr noundef %data) #8
  %tobool19.not = icmp eq ptr %p, null
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %do.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %group = getelementptr inbounds %struct.fsnotify_mark, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %wd = getelementptr inbounds %struct.inotify_inode_mark, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %wd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wd, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inotify_ignored_and_remove_idr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/notify/inotify/inotify_fsnotify.c", i32 77, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @inotify_handle_inode_event.__UNIQUE_ID_ddebug214, !1, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!6 = !{ptr @inotify_fsnotify_ops, !7, !"inotify_fsnotify_ops", i1 false, i1 false}
!7 = !{!"../fs/notify/inotify/inotify_fsnotify.c", i32 196, i32 27}
!8 = distinct !{null, !9, !"warned", i1 false, i1 false}
!9 = !{!"../fs/notify/inotify/inotify_fsnotify.c", i32 147, i32 14}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/notify/inotify/inotify_fsnotify.c", i32 156, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/notify/inotify/inotify_fsnotify.c", i32 166, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @idr_callback._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @idr_callback._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2148887755, i64 2148887760, i64 2148887773, i64 2148887817, i64 2148887851, i64 2148887872}
!28 = !{i64 2153095109}
!29 = !{i64 2153111882}
!30 = !{i64 594408, i64 594469}
!31 = !{i64 597140}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 597425}
