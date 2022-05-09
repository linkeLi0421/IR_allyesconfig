; ModuleID = '/llk/IR_all_yes/kernel/utsname_sysctl.c_pt.bc'
source_filename = "../kernel/utsname_sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.23, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@uts_kern_table = internal global { [6 x %struct.ctl_table], [40 x i8] } { [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr @init_uts_ns, i32 65, i16 292, ptr null, ptr @proc_do_uts_string, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_uts_ns, i64 130), i32 65, i16 292, ptr null, ptr @proc_do_uts_string, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @init_uts_ns, i64 195), i32 65, i16 292, ptr null, ptr @proc_do_uts_string, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @init_uts_ns, i64 65), i32 65, i16 420, ptr null, ptr @proc_do_uts_string, ptr @hostname_poll, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_uts_ns, i64 325), i32 65, i16 420, ptr null, ptr @proc_do_uts_string, ptr @domainname_poll, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_utsname_sysctl__135_144_utsname_sysctl_init6 = internal global ptr @utsname_sysctl_init, section ".initcall6.init", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ostype\00", [25 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"osrelease\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hostname\00", [23 x i8] zeroinitializer }, align 32
@hostname_poll = internal global { %struct.ctl_table_poll, [40 x i8] } { %struct.ctl_table_poll { %struct.atomic_t zeroinitializer, %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @hostname_poll, i64 48), ptr getelementptr (i8, ptr @hostname_poll, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"domainname\00", [21 x i8] zeroinitializer }, align 32
@domainname_poll = internal global { %struct.ctl_table_poll, [40 x i8] } { %struct.ctl_table_poll { %struct.atomic_t zeroinitializer, %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @domainname_poll, i64 48), ptr getelementptr (i8, ptr @domainname_poll, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@uts_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hostname_poll.wait.lock\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"domainname_poll.wait.lock\00", [38 x i8] zeroinitializer }, align 32
@uts_root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr null, i32 0, i16 365, ptr @uts_kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"uts_kern_table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 75, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 77, i32 15 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 84, i32 15 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 91, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 98, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"hostname_poll\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 106, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"domainname_poll\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 72, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 73, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"uts_root_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 116, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [27 x i8] c"../kernel/utsname_sysctl.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 118, i32 15 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_utsname_sysctl__135_144_utsname_sysctl_init6, ptr @uts_kern_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hostname_poll, ptr @.str.4, ptr @domainname_poll, ptr @.str.5, ptr @.str.6, ptr @uts_root_table, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uts_kern_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostname_poll to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domainname_poll to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uts_root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uts_proc_notify(i32 noundef %proc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %poll = getelementptr [6 x %struct.ctl_table], ptr @uts_kern_table, i32 0, i32 %proc, i32 6
  %0 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poll, align 4
  tail call void @proc_sys_poll_notify(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sys_poll_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @utsname_sysctl_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_table(ptr noundef nonnull @uts_root_table) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_uts_string(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %uts_table = alloca %struct.ctl_table, align 4
  %tmp_data = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %uts_table) #5
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %tmp_data) #5
  %0 = call ptr @memset(ptr %tmp_data, i32 255, i32 65)
  %1 = call ptr @memcpy(ptr %uts_table, ptr %table, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %uts_table, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_data, ptr %data, align 4
  call void @down_read(ptr noundef nonnull @uts_sem) #5
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 110
  %9 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns1.i = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %uts_ns1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uts_ns1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @init_uts_ns to i32)
  %add.ptr.i = getelementptr i8, ptr %12, i32 %sub.ptr.sub.i
  %13 = call ptr @memcpy(ptr %tmp_data, ptr %add.ptr.i, i32 65)
  call void @up_read(ptr noundef nonnull @uts_sem) #5
  %call2 = call i32 @proc_dostring(ptr noundef nonnull %uts_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @down_write(ptr noundef nonnull @uts_sem) #5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = call i32 @llvm.read_register.i32(metadata !24) #5
  %and.i.i10 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i10 to ptr
  %task.i11 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i11, align 8
  %nsproxy.i12 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 110
  %20 = ptrtoint ptr %nsproxy.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nsproxy.i12, align 4
  %uts_ns1.i13 = getelementptr inbounds %struct.nsproxy, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %uts_ns1.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uts_ns1.i13, align 4
  %sub.ptr.lhs.cast.i14 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i15 = sub i32 %sub.ptr.lhs.cast.i14, ptrtoint (ptr @init_uts_ns to i32)
  %add.ptr.i16 = getelementptr i8, ptr %23, i32 %sub.ptr.sub.i15
  %24 = call ptr @memcpy(ptr %add.ptr.i16, ptr %tmp_data, i32 65)
  call void @up_write(ptr noundef nonnull @uts_sem) #5
  %poll = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 6
  %25 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %poll, align 4
  call void @proc_sys_poll_notify(ptr noundef %26) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %tmp_data) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %uts_table) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_utsname_sysctl__135_144_utsname_sysctl_init6, !1, !"__initcall__kmod_utsname_sysctl__135_144_utsname_sysctl_init6", i1 false, i1 false}
!1 = !{!"../kernel/utsname_sysctl.c", i32 144, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/utsname_sysctl.c", i32 77, i32 15}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/utsname_sysctl.c", i32 84, i32 15}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/utsname_sysctl.c", i32 91, i32 15}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/utsname_sysctl.c", i32 98, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/utsname_sysctl.c", i32 106, i32 15}
!12 = !{ptr @uts_kern_table, !13, !"uts_kern_table", i1 false, i1 false}
!13 = !{!"../kernel/utsname_sysctl.c", i32 75, i32 25}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/utsname_sysctl.c", i32 72, i32 8}
!16 = !{ptr @hostname_poll, !15, !"hostname_poll", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/utsname_sysctl.c", i32 73, i32 8}
!19 = !{ptr @domainname_poll, !18, !"domainname_poll", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/utsname_sysctl.c", i32 118, i32 15}
!22 = !{ptr @uts_root_table, !23, !"uts_root_table", i1 false, i1 false}
!23 = !{!"../kernel/utsname_sysctl.c", i32 116, i32 25}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
