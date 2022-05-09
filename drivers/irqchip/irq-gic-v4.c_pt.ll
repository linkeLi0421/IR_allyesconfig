; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v4.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.its_vm = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, [16 x i32] }
%struct.its_vpe = type { ptr, ptr, %struct.atomic_t, i32, i32, i8, i8, %union.anon.47, %struct.raw_spinlock, i16, i16, i8 }
%union.anon.47 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, [16 x %struct.anon.50], %struct.atomic_t }
%struct.anon.50 = type { i8, i8, i8 }
%struct.its_cmd_info = type { i32, %union.anon.51 }
%union.anon.51 = type { ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.52 = type { i8, i8 }
%struct.anon.53 = type { i8, i8 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GICv4-vpe\00", [22 x i8] zeroinitializer }, align 32
@gic_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vpe_domain_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/irqchip/irq-gic-v4.c\00", [35 x i8] zeroinitializer }, align 32
@its_init_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ITS: Enabling GICv4 support\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"its_init_v4\00", [20 x i8] zeroinitializer }, align 32
@its_init_v4._entry_ptr = internal global ptr @its_init_v4._entry, section ".printk_index", align 4
@sgi_domain_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@its_init_v4._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.1, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ITS: No GICv4 VPE domain allocated\0A\00", [58 x i8] zeroinitializer }, align 32
@its_init_v4._entry_ptr.6 = internal global ptr @its_init_v4._entry.4, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 163, i32 48 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"gic_domain\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 86, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"vpe_domain_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 87, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 242, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 383, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"sgi_domain_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 88, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [32 x i8] c"../drivers/irqchip/irq-gic-v4.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 390, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @its_init_v4._entry, ptr @its_init_v4._entry.4, ptr @its_init_v4._entry_ptr, ptr @its_init_v4._entry_ptr.6, ptr @.str, ptr @gic_domain, ptr @vpe_domain_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sgi_domain_ops, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_domain_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_init_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgi_domain_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_init_v4._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gic_cpuif_has_vsgi() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_alloc_vcpu_irqs(ptr noundef %vm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call.i = tail call ptr @__irq_domain_alloc_fwnode(i32 noundef 2, i32 noundef %5, ptr noundef nonnull @.str, ptr noundef null) #6
  %6 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %vm, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr @gic_domain, align 4
  %nr_vpes = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 4
  %8 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_vpes, align 4
  %10 = load ptr, ptr @vpe_domain_ops, align 4
  %call5 = tail call ptr @irq_domain_create_hierarchy(ptr noundef %7, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %call.i, ptr noundef %10, ptr noundef %vm) #6
  %domain = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 1
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %domain, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.err_crit_edge, label %for.cond.preheader

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.cond.preheader:                               ; preds = %if.end
  %12 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_vpes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp78 = icmp sgt i32 %13, 0
  br i1 %cmp78, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vpes = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %vpes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpes, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.079
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %its_vm = getelementptr inbounds %struct.its_vpe, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %its_vm to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vm, ptr %its_vm, align 4
  %19 = load ptr, ptr %vpes, align 4
  %arrayidx12 = getelementptr ptr, ptr %19, i32 %i.079
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12, align 4
  %idai = getelementptr inbounds %struct.its_vpe, ptr %21, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %idai to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %idai, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %23 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_vpes, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %13, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  %call15 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef %26, i32 noundef -1, i32 noundef %.lcssa, i32 noundef -1, ptr noundef %vm, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %for.end.err_crit_edge, label %for.cond19.preheader

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.cond19.preheader:                             ; preds = %for.end
  %27 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_vpes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2180 = icmp sgt i32 %28, 0
  br i1 %cmp2180, label %for.body22.lr.ph, label %for.cond19.preheader.cleanup44_crit_edge

for.cond19.preheader.cleanup44_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %vpes23 = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 3
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.181 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc32, %for.body22.for.body22_crit_edge ]
  %add = add i32 %i.181, %call15
  %29 = ptrtoint ptr %vpes23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vpes23, align 4
  %arrayidx24 = getelementptr ptr, ptr %30, i32 %i.181
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx24, align 4
  %irq = getelementptr inbounds %struct.its_vpe, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %irq, align 4
  %inc32 = add nuw nsw i32 %i.181, 1
  %34 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_vpes, align 4
  %cmp21 = icmp slt i32 %inc32, %35
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.cleanup44_crit_edge

for.body22.cleanup44_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

err:                                              ; preds = %for.end.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %domain34 = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 1
  %36 = ptrtoint ptr %domain34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %domain34, align 4
  %tobool35.not = icmp eq ptr %37, null
  br i1 %tobool35.not, label %err.if.end38_crit_edge, label %if.then36

err.if.end38_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %37) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %err.if.end38_crit_edge
  %38 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm, align 4
  %tobool40.not = icmp eq ptr %39, null
  br i1 %tobool40.not, label %if.end38.cleanup44_crit_edge, label %if.then41

if.end38.cleanup44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_free_fwnode(ptr noundef nonnull %39) #6
  br label %cleanup44

cleanup44:                                        ; preds = %if.then41, %if.end38.cleanup44_crit_edge, %for.body22.cleanup44_crit_edge, %for.cond19.preheader.cleanup44_crit_edge
  %retval.0 = phi i32 [ -12, %if.then41 ], [ -12, %if.end38.cleanup44_crit_edge ], [ 0, %for.cond19.preheader.cleanup44_crit_edge ], [ 0, %for.body22.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @its_free_vcpu_irqs(ptr nocapture noundef readonly %vm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vpes = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 3
  %0 = ptrtoint ptr %vpes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpes, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.its_vpe, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %nr_vpes = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 4
  %6 = ptrtoint ptr %nr_vpes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_vpes, align 4
  tail call void @irq_domain_free_irqs(i32 noundef %5, i32 noundef %7) #6
  %domain = getelementptr inbounds %struct.its_vm, ptr %vm, i32 0, i32 1
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %9) #6
  %10 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm, align 4
  tail call void @irq_domain_free_fwnode(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_make_vpe_non_resident(ptr nocapture noundef %vpe, i1 noundef zeroext %db) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %db to i8
  %irq = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 21474836480, ptr %info, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !31
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end23, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end23:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end23, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = load ptr, ptr @sgi_domain_ops, align 4
  %tobool.i.not = icmp eq ptr %8, null
  br i1 %tobool.i.not, label %while.cond, label %if.then37

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %9, align 4
  br label %if.end47

while.cond:                                       ; preds = %if.end
  br i1 %db, label %land.rhs42.preheader, label %while.cond.if.end47_crit_edge

while.cond.if.end47_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.rhs42.preheader:                             ; preds = %while.cond
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i5961 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5961)
  %tobool.i60.not62 = icmp eq i32 %and.i5961, 0
  br i1 %tobool.i60.not62, label %land.rhs42.preheader.if.end47_crit_edge, label %land.rhs42.preheader.while.body_crit_edge

land.rhs42.preheader.while.body_crit_edge:        ; preds = %land.rhs42.preheader
  br label %while.body

land.rhs42.preheader.if.end47_crit_edge:          ; preds = %land.rhs42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

while.body:                                       ; preds = %while.body.while.body_crit_edge, %land.rhs42.preheader.while.body_crit_edge
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %16) #6
  %17 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i59 = and i32 %20, 65536
  %tobool.i60.not = icmp eq i32 %and.i59, 0
  br i1 %tobool.i60.not, label %while.body.if.end47_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end47_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47:                                         ; preds = %while.body.if.end47_crit_edge, %land.rhs42.preheader.if.end47_crit_edge, %while.cond.if.end47_crit_edge, %if.then37
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call.i = call i32 @irq_set_vcpu_affinity(i32 noundef %22, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.then50, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %resident = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 5
  %23 = ptrtoint ptr %resident to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %resident, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %ready = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 6
  %24 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ready, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_make_vpe_resident(ptr nocapture noundef %vpe, i1 noundef zeroext %g0en, i1 noundef zeroext %g1en) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %g0en to i8
  %frombool1 = zext i1 %g1en to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 17179869184, ptr %info, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !31
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end23, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end23:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end23, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = load ptr, ptr @sgi_domain_ops, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %7, align 4
  %g1en42 = getelementptr inbounds %struct.anon.52, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %g1en42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool1, ptr %g1en42, align 1
  br label %if.end44

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %11) #6
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then37
  %irq.i = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 3
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call.i = call i32 @irq_set_vcpu_affinity(i32 noundef %13, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %resident = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 5
  %14 = ptrtoint ptr %resident to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %resident, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_commit_vpe(ptr nocapture noundef %vpe) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 25769803776, ptr %info, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !31
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end22, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end22:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end22, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %irq.i = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 3
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  %call.i = call i32 @irq_set_vcpu_affinity(i32 noundef %7, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.then37, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ready = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 6
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ready, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_invall_vpe(ptr nocapture noundef readonly %vpe) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 30064771072, ptr %info, align 8
  %irq.i = getelementptr inbounds %struct.its_vpe, ptr %vpe, i32 0, i32 3
  %1 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq.i, align 4
  %call.i = call i32 @irq_set_vcpu_affinity(i32 noundef %2, ptr noundef nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_map_vlpi(i32 noundef %irq, ptr noundef %map) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %info, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %map, ptr %0, align 4
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 524288) #6
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_modify_status(i32 noundef %irq, i32 noundef 524288, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_vcpu_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_get_vlpi(i32 noundef %irq, ptr noundef %map) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %info, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %map, ptr %0, align 4
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_unmap_vlpi(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 524288, i32 noundef 0) #6
  %call = tail call i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_prop_update_vlpi(i32 noundef %irq, i8 noundef zeroext %config, i1 noundef zeroext %inv) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !33
  %cond = select i1 %inv, i32 3, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %info, align 4
  store i8 %config, ptr %0, align 4
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_prop_update_vsgi(i32 noundef %irq, i8 noundef zeroext %priority, i1 noundef zeroext %group) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.its_cmd_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %group to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = getelementptr inbounds %struct.its_cmd_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !33
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %info, align 4
  store i8 %priority, ptr %0, align 4
  %group2 = getelementptr inbounds %struct.anon.53, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %group2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %group2, align 1
  %call = call i32 @irq_set_vcpu_affinity(i32 noundef %irq, ptr noundef nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @its_init_v4(ptr noundef %domain, ptr noundef %vpe_ops, ptr noundef %sgi_ops) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %do.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  store ptr %domain, ptr @gic_domain, align 4
  store ptr %vpe_ops, ptr @vpe_domain_ops, align 4
  store ptr %sgi_ops, ptr @sgi_domain_ops, align 4
  br label %return

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %return

return:                                           ; preds = %do.end2, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %do.end2 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_alloc_fwnode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 163, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 242, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 383, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @its_init_v4._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @its_init_v4._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 390, i32 2}
!11 = !{ptr @its_init_v4._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @its_init_v4._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @gic_domain, !14, !"gic_domain", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 86, i32 27}
!15 = !{ptr @vpe_domain_ops, !16, !"vpe_domain_ops", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 87, i32 37}
!17 = !{ptr @sgi_domain_ops, !18, !"sgi_domain_ops", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 88, i32 37}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-gic-v4.c", i32 126, i32 31}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 638351}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"auto-init"}
