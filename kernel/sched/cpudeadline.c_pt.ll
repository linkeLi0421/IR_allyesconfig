; ModuleID = '/llk/IR_all_yes/kernel/sched/cpudeadline.c_pt.bc'
source_filename = "../kernel/sched/cpudeadline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.56 }
%struct.atomic_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpudl_item = type { i64, i32, i32 }

@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/sched/cpudeadline.c\00", [37 x i8] zeroinitializer }, align 32
@cpudl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cp->lock\00", [22 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 152, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private constant [30 x i8] c"../kernel/sched/cpudeadline.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 268, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 108, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @cpudl_init.__key, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpudl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpudl_find(ptr nocapture noundef readonly %cp, ptr noundef %p, ptr noundef %later_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %later_mask, null
  br i1 %tobool.not, label %if.else, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_mask = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 35
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %1 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %free_cpus, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull %later_mask, ptr noundef %2, ptr noundef %cpus_mask, i32 noundef %0) #6
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@cpudl_find, %for.cond)) #6
          to label %cleanup69 [label %for.cond], !srcloc !17

for.cond:                                         ; preds = %if.then16, %lor.lhs.false, %for.body, %if.then
  %max_cap.0 = phi i32 [ 0, %if.then ], [ %max_cap.0, %for.body ], [ %17, %if.then16 ], [ %max_cap.0, %lor.lhs.false ]
  %cpu.0 = phi i32 [ -1, %if.then ], [ %call7, %for.body ], [ %call7, %if.then16 ], [ %call7, %lor.lhs.false ]
  %max_cpu.0 = phi i32 [ -1, %if.then ], [ %max_cpu.0, %for.body ], [ %call7, %if.then16 ], [ %max_cpu.0, %lor.lhs.false ]
  %call7 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull %later_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %3
  br i1 %cmp, label %for.body, label %cpumask_empty.exit

for.body:                                         ; preds = %for.cond
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, ptrtoint (ptr @cpu_scale to i32)
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %dl_deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %9 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dl_deadline.i, align 8
  %conv.i = zext i32 %8 to i64
  %mul.i = mul i64 %10, %conv.i
  %shr.i = lshr i64 %mul.i, 10
  %dl_runtime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %dl_runtime.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dl_runtime.i, align 8
  %cmp.i.not = icmp ult i64 %shr.i, %12
  br i1 %cmp.i.not, label %cpumask_clear_cpu.exit, label %for.cond

cpumask_clear_cpu.exit:                           ; preds = %for.body
  tail call void @_clear_bit(i32 noundef %call7, ptr noundef nonnull %later_mask) #6
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add.i to ptr
  %cpu_capacity_orig.i = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %cpu_capacity_orig.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu_capacity_orig.i, align 4
  %cmp11 = icmp ugt i32 %17, %max_cap.0
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cpumask_clear_cpu.exit
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %cpu.i, align 4
  %cmp13 = icmp eq i32 %call7, %21
  %cmp15 = icmp eq i32 %17, %max_cap.0
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %for.cond

if.then16:                                        ; preds = %lor.lhs.false, %cpumask_clear_cpu.exit
  br label %for.cond

cpumask_empty.exit:                               ; preds = %for.cond
  %call.i.i101 = tail call i32 @_find_first_bit_be(ptr noundef nonnull %later_mask, i32 noundef %3) #6
  %cmp4.i.i = icmp eq i32 %call.i.i101, %3
  br i1 %cmp4.i.i, label %if.then20, label %cleanup69

if.then20:                                        ; preds = %cpumask_empty.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i104 = icmp ugt i32 %22, %max_cpu.0
  br i1 %cmp.not.i.i.i104, label %cpumask_set_cpu.exit, label %land.rhs.i.i.i106

land.rhs.i.i.i106:                                ; preds = %if.then20
  %.b37.i.i.i105 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i105, label %cpumask_set_cpu.exit, label %if.then.i.i.i107, !prof !18

if.then.i.i.i107:                                 ; preds = %land.rhs.i.i.i106
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i107, %land.rhs.i.i.i106, %if.then20
  tail call void @_set_bit(i32 noundef %max_cpu.0, ptr noundef nonnull %later_mask) #6
  br label %cleanup69

if.else:                                          ; preds = %if.end.i.i, %entry
  %elements.i = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %23 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %elements.i, align 4
  %cpu.i108 = getelementptr inbounds %struct.cpudl_item, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %cpu.i108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i108, align 8
  %cmp26.not = icmp eq i32 %26, -1
  br i1 %cmp26.not, label %if.end48, label %land.rhs

land.rhs:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %27, %26
  br i1 %cmp.not.i.i.i.i, label %cpu_present.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_present.exit, label %if.then.i.i.i.i, !prof !18

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_present.exit

cpu_present.exit:                                 ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %land.rhs
  %div3.i.i.i = lshr i32 %26, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div3.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %26, 31
  %30 = shl nuw i32 1, %and.i.i.i
  %31 = and i32 %29, %30
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %do.end, label %if.end48, !prof !19

do.end:                                           ; preds = %cpu_present.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %if.end48

if.end48:                                         ; preds = %do.end, %cpu_present.exit, %if.else
  %cpus_mask56 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i109 = icmp ugt i32 %32, %26
  br i1 %cmp.not.i.i.i109, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i111

land.rhs.i.i.i111:                                ; preds = %if.end48
  %.b37.i.i.i110 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i110, label %cpumask_test_cpu.exit, label %if.then.i.i.i112, !prof !18

if.then.i.i.i112:                                 ; preds = %land.rhs.i.i.i111
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i112, %land.rhs.i.i.i111, %if.end48
  %div3.i.i = lshr i32 %26, 5
  %arrayidx.i.i113 = getelementptr i32, ptr %cpus_mask56, i32 %div3.i.i
  %33 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i.i113, align 4
  %and.i.i114 = and i32 %26, 31
  %35 = shl nuw i32 1, %and.i.i114
  %36 = and i32 %34, %35
  %tobool58.not = icmp eq i32 %36, 0
  br i1 %tobool58.not, label %cleanup67.thread, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %cpumask_test_cpu.exit
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %37 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %deadline, align 8
  %39 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %elements.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %sub.i = sub i64 %38, %42
  %cmp.i116 = icmp sgt i64 %sub.i, -1
  %brmerge = or i1 %tobool.not, %cmp.i116
  br i1 %brmerge, label %cleanup67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i117 = icmp ugt i32 %43, %26
  br i1 %cmp.not.i.i.i117, label %cleanup67.thread123, label %land.rhs.i.i.i119

land.rhs.i.i.i119:                                ; preds = %if.then64
  %.b37.i.i.i118 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i118, label %cleanup67.thread123, label %if.then.i.i.i120, !prof !18

if.then.i.i.i120:                                 ; preds = %land.rhs.i.i.i119
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cleanup67.thread123

cleanup67.thread123:                              ; preds = %if.then.i.i.i120, %land.rhs.i.i.i119, %if.then64
  tail call void @_set_bit(i32 noundef %26, ptr noundef nonnull %later_mask) #6
  br label %cleanup69

cleanup67:                                        ; preds = %land.lhs.true59
  br i1 %cmp.i116, label %cleanup67.thread, label %cleanup69

cleanup67.thread:                                 ; preds = %cleanup67, %cpumask_test_cpu.exit
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup67.thread, %cleanup67, %cleanup67.thread123, %cpumask_set_cpu.exit, %cpumask_empty.exit, %if.then
  %retval.2 = phi i32 [ 1, %cpumask_empty.exit ], [ 1, %cpumask_set_cpu.exit ], [ 1, %if.then ], [ 0, %cleanup67.thread ], [ 1, %cleanup67 ], [ 1, %cleanup67.thread123 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpudl_clear(ptr noundef %cp, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %cpu_present.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_present.exit, label %if.then.i.i.i.i, !prof !18

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_present.exit

cpu_present.exit:                                 ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %entry
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.end, label %if.end, !prof !19

do.end:                                           ; preds = %cpu_present.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %cpu_present.exit
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp) #6
  %elements = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %5 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elements, align 4
  %idx = getelementptr %struct.cpudl_item, ptr %6, i32 %cpu, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %cmp25 = icmp eq i32 %8, -1
  br i1 %cmp25, label %do.body49, label %if.else

if.else:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %sub = add i32 %10, -1
  %arrayidx29 = getelementptr %struct.cpudl_item, ptr %6, i32 %sub
  %cpu30 = getelementptr %struct.cpudl_item, ptr %6, i32 %sub, i32 1
  %11 = ptrtoint ptr %cpu30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu30, align 8
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx29, align 8
  %arrayidx36 = getelementptr %struct.cpudl_item, ptr %6, i32 %8
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx36, align 8
  %16 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %elements, align 4
  %cpu40 = getelementptr %struct.cpudl_item, ptr %17, i32 %8, i32 1
  %18 = ptrtoint ptr %cpu40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %cpu40, align 8
  %19 = load i32, ptr %size, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %size, align 4
  %20 = load ptr, ptr %elements, align 4
  %idx44 = getelementptr %struct.cpudl_item, ptr %20, i32 %12, i32 2
  %21 = ptrtoint ptr %idx44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %idx44, align 4
  %22 = load ptr, ptr %elements, align 4
  %idx47 = getelementptr %struct.cpudl_item, ptr %22, i32 %cpu, i32 2
  %23 = ptrtoint ptr %idx47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %idx47, align 4
  tail call fastcc void @cpudl_heapify(ptr noundef %cp, i32 noundef %8)
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %24 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %26, %cpu
  br i1 %cmp.not.i.i.i, label %cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !18

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.else
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %25) #6
  br label %do.body49

do.body49:                                        ; preds = %cpumask_set_cpu.exit, %if.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp, i32 noundef %call22) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpudl_heapify(ptr nocapture noundef readonly %cp, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp sgt i32 %idx, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %elements = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %0 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elements, align 4
  %sub.i = add nsw i32 %idx, -1
  %shr.i21 = lshr i32 %sub.i, 1
  %arrayidx = getelementptr %struct.cpudl_item, ptr %1, i32 %shr.i21
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.cpudl_item, ptr %1, i32 %idx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx2, align 8
  %sub.i12 = sub i64 %3, %5
  %cmp.i = icmp slt i64 %sub.i12, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %cpu.i = getelementptr %struct.cpudl_item, ptr %1, i32 %idx, i32 1
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i, %if.then
  %idx.addr.0.i = phi i32 [ %shr.i.i, %if.end8.i ], [ %idx, %if.then ]
  %sub.i.i = add nsw i32 %idx.addr.0.i, -1
  %shr.i.i = ashr i32 %sub.i.i, 1
  %8 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elements, align 4
  %arrayidx4.i = getelementptr %struct.cpudl_item, ptr %9, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4.i, align 8
  %sub.i70.i = sub i64 %5, %11
  %cmp.i.i = icmp slt i64 %sub.i70.i, 0
  br i1 %cmp.i.i, label %cpudl_heapify_up.exit, label %if.end8.i

if.end8.i:                                        ; preds = %do.body.i
  %cpu11.i = getelementptr %struct.cpudl_item, ptr %9, i32 %shr.i.i, i32 1
  %12 = ptrtoint ptr %cpu11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu11.i, align 8
  %cpu14.i = getelementptr %struct.cpudl_item, ptr %9, i32 %idx.addr.0.i, i32 1
  %14 = ptrtoint ptr %cpu14.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cpu14.i, align 8
  %15 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %elements, align 4
  %arrayidx16.i = getelementptr %struct.cpudl_item, ptr %16, i32 %shr.i.i
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx16.i, align 8
  %arrayidx19.i = getelementptr %struct.cpudl_item, ptr %16, i32 %idx.addr.0.i
  %19 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx19.i, align 8
  %20 = load ptr, ptr %elements, align 4
  %cpu24.i = getelementptr %struct.cpudl_item, ptr %20, i32 %idx.addr.0.i, i32 1
  %21 = ptrtoint ptr %cpu24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu24.i, align 8
  %idx26.i = getelementptr %struct.cpudl_item, ptr %20, i32 %22, i32 2
  %23 = ptrtoint ptr %idx26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %idx.addr.0.i, ptr %idx26.i, align 4
  %cmp27.not.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp27.not.i, label %cpudl_heapify_up.exit, label %do.body.i

cpudl_heapify_up.exit:                            ; preds = %if.end8.i, %do.body.i
  %idx.addr.1.i = phi i32 [ %idx.addr.0.i, %do.body.i ], [ 0, %if.end8.i ]
  %24 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %elements, align 4
  %cpu30.i = getelementptr %struct.cpudl_item, ptr %25, i32 %idx.addr.1.i, i32 1
  %26 = ptrtoint ptr %cpu30.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %cpu30.i, align 8
  %27 = load ptr, ptr %elements, align 4
  %arrayidx32.i = getelementptr %struct.cpudl_item, ptr %27, i32 %idx.addr.1.i
  %28 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %5, ptr %arrayidx32.i, align 8
  %29 = load ptr, ptr %elements, align 4
  %cpu37.i = getelementptr %struct.cpudl_item, ptr %29, i32 %idx.addr.1.i, i32 1
  br label %if.end.sink.split

if.else:                                          ; preds = %land.lhs.true, %entry
  %elements.i14 = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %30 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %elements.i14, align 4
  %arrayidx.i15 = getelementptr %struct.cpudl_item, ptr %31, i32 %idx
  %cpu.i16 = getelementptr %struct.cpudl_item, ptr %31, i32 %idx, i32 1
  %32 = ptrtoint ptr %cpu.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i16, align 8
  %34 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i15, align 8
  %shl.i.i = shl i32 %idx, 1
  %add.i.i = or i32 %shl.i.i, 1
  %size.i = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 1
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i, align 4
  %cmp.not.i = icmp slt i32 %add.i.i, %37
  br i1 %cmp.not.i, label %while.cond.i, label %if.end

while.cond.i:                                     ; preds = %cleanup.i, %if.else
  %idx.addr.0.i17 = phi i32 [ %largest.1.i, %cleanup.i ], [ %idx, %if.else ]
  %shl.i106.i = shl i32 %idx.addr.0.i17, 1
  %add.i107.i = or i32 %shl.i106.i, 1
  %add.i109.i = add i32 %shl.i106.i, 2
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  %cmp6.i = icmp slt i32 %add.i107.i, %39
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end15.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %40 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %elements.i14, align 4
  %arrayidx8.i = getelementptr %struct.cpudl_item, ptr %41, i32 %add.i107.i
  %42 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx8.i, align 8
  %sub.i.i18 = sub i64 %35, %43
  %cmp.i.i19 = icmp slt i64 %sub.i.i18, 0
  %spec.select116.i = select i1 %cmp.i.i19, i32 %add.i107.i, i32 %idx.addr.0.i17
  %spec.select117.i = select i1 %cmp.i.i19, i64 %43, i64 %35
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true.i, %while.cond.i
  %largest.0.i = phi i32 [ %idx.addr.0.i17, %while.cond.i ], [ %spec.select116.i, %land.lhs.true.i ]
  %largest_dl.0.i = phi i64 [ %35, %while.cond.i ], [ %spec.select117.i, %land.lhs.true.i ]
  %cmp17.i = icmp slt i32 %add.i109.i, %39
  br i1 %cmp17.i, label %land.lhs.true18.i, label %if.end24.i

land.lhs.true18.i:                                ; preds = %if.end15.i
  %44 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %elements.i14, align 4
  %arrayidx20.i = getelementptr %struct.cpudl_item, ptr %45, i32 %add.i109.i
  %46 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx20.i, align 8
  %sub.i110.i = sub i64 %largest_dl.0.i, %47
  %cmp.i111.i = icmp slt i64 %sub.i110.i, 0
  %spec.select.i = select i1 %cmp.i111.i, i32 %add.i109.i, i32 %largest.0.i
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true18.i, %if.end15.i
  %largest.1.i = phi i32 [ %largest.0.i, %if.end15.i ], [ %spec.select.i, %land.lhs.true18.i ]
  %cmp25.i = icmp eq i32 %largest.1.i, %idx.addr.0.i17
  %48 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %elements.i14, align 4
  br i1 %cmp25.i, label %while.end.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.end24.i
  %cpu30.i20 = getelementptr %struct.cpudl_item, ptr %49, i32 %largest.1.i, i32 1
  %50 = ptrtoint ptr %cpu30.i20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu30.i20, align 8
  %cpu33.i = getelementptr %struct.cpudl_item, ptr %49, i32 %idx.addr.0.i17, i32 1
  %52 = ptrtoint ptr %cpu33.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %cpu33.i, align 8
  %53 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %elements.i14, align 4
  %arrayidx35.i = getelementptr %struct.cpudl_item, ptr %54, i32 %largest.1.i
  %55 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx35.i, align 8
  %arrayidx38.i = getelementptr %struct.cpudl_item, ptr %54, i32 %idx.addr.0.i17
  %57 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx38.i, align 8
  %58 = load ptr, ptr %elements.i14, align 4
  %cpu43.i = getelementptr %struct.cpudl_item, ptr %58, i32 %idx.addr.0.i17, i32 1
  %59 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu43.i, align 8
  %idx45.i = getelementptr %struct.cpudl_item, ptr %58, i32 %60, i32 2
  %61 = ptrtoint ptr %idx45.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %idx.addr.0.i17, ptr %idx45.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end24.i
  %cpu48.i = getelementptr %struct.cpudl_item, ptr %49, i32 %idx.addr.0.i17, i32 1
  %62 = ptrtoint ptr %cpu48.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %33, ptr %cpu48.i, align 8
  %63 = ptrtoint ptr %elements.i14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elements.i14, align 4
  %arrayidx50.i = getelementptr %struct.cpudl_item, ptr %64, i32 %idx.addr.0.i17
  %65 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %35, ptr %arrayidx50.i, align 8
  %66 = load ptr, ptr %elements.i14, align 4
  %cpu55.i = getelementptr %struct.cpudl_item, ptr %66, i32 %idx.addr.0.i17, i32 1
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %while.end.i, %cpudl_heapify_up.exit
  %cpu55.i.sink = phi ptr [ %cpu55.i, %while.end.i ], [ %cpu37.i, %cpudl_heapify_up.exit ]
  %.sink = phi ptr [ %66, %while.end.i ], [ %29, %cpudl_heapify_up.exit ]
  %idx.addr.0.i17.lcssa.sink = phi i32 [ %idx.addr.0.i17, %while.end.i ], [ %idx.addr.1.i, %cpudl_heapify_up.exit ]
  %67 = ptrtoint ptr %cpu55.i.sink to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu55.i.sink, align 8
  %idx57.i = getelementptr %struct.cpudl_item, ptr %.sink, i32 %68, i32 2
  %69 = ptrtoint ptr %idx57.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %idx.addr.0.i17.lcssa.sink, ptr %idx57.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpudl_set(ptr noundef %cp, i32 noundef %cpu, i64 noundef %dl) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %cpu_present.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_present.exit, label %if.then.i.i.i.i, !prof !18

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_present.exit

cpu_present.exit:                                 ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %entry
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.end, label %if.end, !prof !19

do.end:                                           ; preds = %cpu_present.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %cpu_present.exit
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cp) #6
  %elements = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %5 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elements, align 4
  %idx = getelementptr %struct.cpudl_item, ptr %6, i32 %cpu, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %cmp25 = icmp eq i32 %8, -1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end
  %size = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %size, align 4
  %arrayidx29 = getelementptr %struct.cpudl_item, ptr %6, i32 %10
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %dl, ptr %arrayidx29, align 8
  %12 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %elements, align 4
  %cpu33 = getelementptr %struct.cpudl_item, ptr %13, i32 %10, i32 1
  %14 = ptrtoint ptr %cpu33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cpu, ptr %cpu33, align 8
  %15 = load ptr, ptr %elements, align 4
  %idx36 = getelementptr %struct.cpudl_item, ptr %15, i32 %cpu, i32 2
  %16 = ptrtoint ptr %idx36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %idx36, align 4
  %17 = load ptr, ptr %elements, align 4
  %arrayidx.i = getelementptr %struct.cpudl_item, ptr %17, i32 %10
  %cpu.i = getelementptr %struct.cpudl_item, ptr %17, i32 %10, i32 1
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i, align 8
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %cpudl_heapify_up.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end8.i, %if.then27
  %idx.addr.0.i = phi i32 [ %shr.i.i, %if.end8.i ], [ %10, %if.then27 ]
  %sub.i.i = add i32 %idx.addr.0.i, -1
  %shr.i.i = ashr i32 %sub.i.i, 1
  %22 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %elements, align 4
  %arrayidx4.i = getelementptr %struct.cpudl_item, ptr %23, i32 %shr.i.i
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx4.i, align 8
  %sub.i70.i = sub i64 %21, %25
  %cmp.i.i = icmp slt i64 %sub.i70.i, 0
  br i1 %cmp.i.i, label %do.end.i, label %if.end8.i

if.end8.i:                                        ; preds = %do.body.i
  %cpu11.i = getelementptr %struct.cpudl_item, ptr %23, i32 %shr.i.i, i32 1
  %26 = ptrtoint ptr %cpu11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu11.i, align 8
  %cpu14.i = getelementptr %struct.cpudl_item, ptr %23, i32 %idx.addr.0.i, i32 1
  %28 = ptrtoint ptr %cpu14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cpu14.i, align 8
  %29 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %elements, align 4
  %arrayidx16.i = getelementptr %struct.cpudl_item, ptr %30, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx16.i, align 8
  %arrayidx19.i = getelementptr %struct.cpudl_item, ptr %30, i32 %idx.addr.0.i
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx19.i, align 8
  %34 = load ptr, ptr %elements, align 4
  %cpu24.i = getelementptr %struct.cpudl_item, ptr %34, i32 %idx.addr.0.i, i32 1
  %35 = ptrtoint ptr %cpu24.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu24.i, align 8
  %idx26.i = getelementptr %struct.cpudl_item, ptr %34, i32 %36, i32 2
  %37 = ptrtoint ptr %idx26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %idx.addr.0.i, ptr %idx26.i, align 4
  %cmp27.not.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp27.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %if.end8.i, %do.body.i
  %idx.addr.1.i = phi i32 [ %idx.addr.0.i, %do.body.i ], [ 0, %if.end8.i ]
  %38 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %elements, align 4
  %cpu30.i = getelementptr %struct.cpudl_item, ptr %39, i32 %idx.addr.1.i, i32 1
  %40 = ptrtoint ptr %cpu30.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %19, ptr %cpu30.i, align 8
  %41 = load ptr, ptr %elements, align 4
  %arrayidx32.i = getelementptr %struct.cpudl_item, ptr %41, i32 %idx.addr.1.i
  %42 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %21, ptr %arrayidx32.i, align 8
  %43 = load ptr, ptr %elements, align 4
  %cpu37.i = getelementptr %struct.cpudl_item, ptr %43, i32 %idx.addr.1.i, i32 1
  %44 = ptrtoint ptr %cpu37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu37.i, align 8
  %idx39.i = getelementptr %struct.cpudl_item, ptr %43, i32 %45, i32 2
  %46 = ptrtoint ptr %idx39.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %idx.addr.1.i, ptr %idx39.i, align 4
  br label %cpudl_heapify_up.exit

cpudl_heapify_up.exit:                            ; preds = %do.end.i, %if.then27
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %47 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %49, %cpu
  br i1 %cmp.not.i.i.i, label %cpumask_clear_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %cpudl_heapify_up.exit
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_clear_cpu.exit, label %if.then.i.i.i, !prof !18

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %cpudl_heapify_up.exit
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %48) #6
  br label %do.body41

if.else:                                          ; preds = %if.end
  %arrayidx38 = getelementptr %struct.cpudl_item, ptr %6, i32 %8
  %50 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %dl, ptr %arrayidx38, align 8
  tail call fastcc void @cpudl_heapify(ptr noundef %cp, i32 noundef %8)
  br label %do.body41

do.body41:                                        ; preds = %if.else, %cpumask_clear_cpu.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cp, i32 noundef %call22) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpudl_set_freecpu(ptr nocapture noundef readonly %cp, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %0 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i, label %cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !18

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %entry
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpudl_clear_freecpu(ptr nocapture noundef readonly %cp, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %0 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i, label %cpumask_clear_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_clear_cpu.exit, label %if.then.i.i.i, !prof !18

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %entry
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpudl_init(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %cp, ptr noundef nonnull @.str.1, ptr noundef nonnull @cpudl_init.__key, i16 noundef signext 2) #6
  %size = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !19

kcalloc.exit.thread:                              ; preds = %entry
  %elements17 = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %4 = ptrtoint ptr %elements17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %elements17, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #9
  %elements = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %6 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %elements, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.end7.i.i
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %call2 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %free_cpus, i32 noundef 3264) #6
  br i1 %call2, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %if.end
  %call624 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp25 = icmp ult i32 %call624, %7
  br i1 %cmp25, label %for.body, label %cleanup

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elements, align 4
  tail call void @kfree(ptr noundef %9) #6
  br label %cleanup

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %call626 = phi i32 [ %call6, %for.body ], [ %call624, %for.cond.preheader ]
  %10 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elements, align 4
  %idx = getelementptr %struct.cpudl_item, ptr %11, i32 %call626, i32 2
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %idx, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call626, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %13
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.then3, %for.cond.preheader, %if.end7.i.i, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %if.end7.i.i ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpudl_cleanup(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cpus = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 2
  %0 = ptrtoint ptr %free_cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_cpus, align 4
  tail call void @free_cpumask_var(ptr noundef %1) #6
  %elements = getelementptr inbounds %struct.cpudl, ptr %cp, i32 0, i32 3
  %2 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elements, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/cpudeadline.c", i32 152, i32 3}
!2 = !{ptr @cpudl_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/sched/cpudeadline.c", i32 268, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148319976, i64 2148319981, i64 2148319994, i64 2148320038, i64 2148320072, i64 2148320093}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
