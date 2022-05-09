; ModuleID = '/llk/IR_all_yes/ipc/namespace.c_pt.bc'
source_filename = "../ipc/namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.58, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsset = type { i32, ptr, ptr, ptr }

@mq_lock = external dso_local global %struct.spinlock, align 4
@free_ipc_list = internal global { %struct.llist_head, [28 x i8] } zeroinitializer, align 32
@free_ipc_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @free_ipc_work, i64 4), ptr getelementptr (i8, ptr @free_ipc_work, i64 4) }, ptr @free_ipc, %struct.lockdep_map { ptr @free_ipc_work, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipc\00", [28 x i8] zeroinitializer }, align 32
@ipcns_operations = dso_local constant { %struct.proc_ns_operations, [32 x i8] } { %struct.proc_ns_operations { ptr @.str, ptr null, i32 134217728, ptr @ipcns_get, ptr @ipcns_put, ptr @ipcns_install, ptr @ipcns_owner, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_ipc_work\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"free_ipc_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 134, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"free_ipc_work\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 219, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"ipcns_operations\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 218, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [19 x i8] c"../ipc/namespace.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 147, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @free_ipc_list, ptr @free_ipc_work, ptr @.str, ptr @ipcns_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_ipc_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_ipc_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcns_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_ipcs(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.then.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %if.then
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !26

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.return_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #7
  br label %return

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %euid.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call1.i.i = tail call ptr @inc_ucount(ptr noundef %user_ns, [1 x i32] %.fca.0.insert.i.i, i32 noundef 3) #7
  %tobool.not.i3 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i3, label %if.end.fail.i_crit_edge, label %if.end.i

if.end.fail.i_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.i

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 4197824, i32 noundef 1340) #10
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.i.fail_dec.i_crit_edge, label %if.end3.i

if.end.i.fail_dec.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_dec.i

if.end3.i:                                        ; preds = %if.end.i
  %ns4.i = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ns4.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %ns4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %ns4.i, align 4
  %inum.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 24, i32 2
  %call.i.i = tail call i32 @proc_alloc_inum(ptr noundef %inum.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.fail_free.i_crit_edge

if.end3.i.fail_free.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free.i

if.end8.i:                                        ; preds = %if.end3.i
  %ops.i = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 24, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ipcns_operations, ptr %ops.i, align 8
  %count.i4 = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 24, i32 3
  %call.i.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i4, i32 noundef 4) #7
  %12 = ptrtoint ptr %count.i4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %count.i4, align 8
  %tobool.not.i.i = icmp eq ptr %user_ns, null
  br i1 %tobool.not.i.i, label %if.end8.i.get_user_ns.exit.i_crit_edge, label %if.then.i.i

if.end8.i.get_user_ns.exit.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_user_ns.exit.i

if.then.i.i:                                      ; preds = %if.end8.i
  %count.i.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !26

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_user_ns.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_user_ns.exit.i_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_user_ns.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %get_user_ns.exit.i

get_user_ns.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_user_ns.exit.i_crit_edge, %if.end8.i.get_user_ns.exit.i_crit_edge
  %user_ns12.i = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 21
  %15 = ptrtoint ptr %user_ns12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %user_ns, ptr %user_ns12.i, align 8
  %ucounts13.i = getelementptr inbounds %struct.ipc_namespace, ptr %call7.i.i.i, i32 0, i32 22
  %16 = ptrtoint ptr %ucounts13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i, ptr %ucounts13.i, align 4
  %call14.i = tail call i32 @mq_init_ns(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %fail_put.i

if.end17.i:                                       ; preds = %get_user_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sem_init_ns(ptr noundef nonnull %call7.i.i.i) #7
  tail call void @msg_init_ns(ptr noundef nonnull %call7.i.i.i) #7
  tail call void @shm_init_ns(ptr noundef nonnull %call7.i.i.i) #7
  br label %return

fail_put.i:                                       ; preds = %get_user_ns.exit.i
  %17 = ptrtoint ptr %user_ns12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns12.i, align 8
  %tobool.not.i2.i = icmp eq ptr %18, null
  br i1 %tobool.not.i2.i, label %fail_put.i.put_user_ns.exit.i_crit_edge, label %land.lhs.true.i.i

fail_put.i.put_user_ns.exit.i_crit_edge:          ; preds = %fail_put.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_user_ns.exit.i

land.lhs.true.i.i:                                ; preds = %fail_put.i
  %count.i3.i = getelementptr inbounds %struct.user_namespace, ptr %18, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i3.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %count.i3.i, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i3.i, ptr %count.i3.i, i32 1, ptr elementtype(i32) %count.i3.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i6.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i5.i, label %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !27

if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_user_ns.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i3.i, i32 noundef 3) #7
  br label %put_user_ns.exit.i

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @__put_user_ns(ptr noundef nonnull %18) #7
  br label %put_user_ns.exit.i

put_user_ns.exit.i:                               ; preds = %if.then.i6.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_user_ns.exit.i_crit_edge, %fail_put.i.put_user_ns.exit.i_crit_edge
  %20 = ptrtoint ptr %inum.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inum.i.i, align 4
  tail call void @proc_free_inum(i32 noundef %21) #7
  br label %fail_free.i

fail_free.i:                                      ; preds = %put_user_ns.exit.i, %if.end3.i.fail_free.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.end3.i.fail_free.i_crit_edge ], [ %call14.i, %put_user_ns.exit.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %fail_dec.i

fail_dec.i:                                       ; preds = %fail_free.i, %if.end.i.fail_dec.i_crit_edge
  %err.1.i = phi i32 [ -12, %if.end.i.fail_dec.i_crit_edge ], [ %err.0.i, %fail_free.i ]
  tail call void @dec_ucount(ptr noundef nonnull %call1.i.i, i32 noundef 3) #7
  br label %fail.i

fail.i:                                           ; preds = %fail_dec.i, %if.end.fail.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %fail_dec.i ], [ -28, %if.end.fail.i_crit_edge ]
  %22 = inttoptr i32 %err.2.i to ptr
  br label %return

return:                                           ; preds = %fail.i, %if.end17.i, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi ptr [ null, %if.then.return_crit_edge ], [ %ns, %if.else.i.i.i.i.return_crit_edge ], [ %ns, %if.end15.sink.split.i.i.i.i ], [ %22, %fail.i ], [ %call7.i.i.i, %if.end17.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_ipcs(ptr noundef %ns, ptr noundef %ids, ptr nocapture noundef readonly %free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rwsem = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 2
  tail call void @down_write(ptr noundef %rwsem) #7
  %0 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %total.014 = phi i32 [ 0, %for.body.lr.ph ], [ %total.1, %for.inc.for.body_crit_edge ]
  %next_id.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc3, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @idr_find(ptr noundef %ipcs_idr, i32 noundef %next_id.013) #7
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %call) #7
  tail call void %free(ptr noundef %ns, ptr noundef nonnull %call) #7
  %inc = add nsw i32 %total.014, 1
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit, %for.body.for.inc_crit_edge
  %total.1 = phi i32 [ %total.014, %for.body.for.inc_crit_edge ], [ %inc, %rcu_read_lock.exit ]
  %inc3 = add i32 %next_id.013, 1
  %cmp = icmp slt i32 %total.1, %1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_ipc_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 24, i32 3
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count, ptr noundef nonnull @mq_lock) #7
  br i1 %call, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @mq_clear_sbinfo(ptr noundef %ns) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #7
  %mnt_llist = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 23
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %mnt_llist, ptr noundef %mnt_llist, ptr noundef nonnull @free_ipc_list) #7
  br i1 %call.i, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @free_ipc_work) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mq_clear_sbinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipcns_get(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #7
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 110
  %0 = ptrtoint ptr %nsproxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipc_ns, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %3, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !26

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %3, %if.else.i.i.i.i.if.end_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #7
  %tobool2.not = icmp eq ptr %ns.0, null
  %ns3 = getelementptr inbounds %struct.ipc_namespace, ptr %ns.0, i32 0, i32 24
  %spec.select = select i1 %tobool2.not, ptr null, ptr %ns3
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipcns_put(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr i8, ptr %ns, i32 12
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef nonnull @mq_lock) #7
  br i1 %call.i, label %if.then.i, label %entry.put_ipc_ns.exit_crit_edge

entry.put_ipc_ns.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_ipc_ns.exit

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ns, i32 -1324
  tail call void @mq_clear_sbinfo(ptr noundef %add.ptr.i) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #7
  %mnt_llist.i = getelementptr i8, ptr %ns, i32 -4
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %mnt_llist.i, ptr noundef %mnt_llist.i, ptr noundef nonnull @free_ipc_list) #7
  br i1 %call.i.i, label %if.then3.i, label %if.then.i.put_ipc_ns.exit_crit_edge

if.then.i.put_ipc_ns.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_ipc_ns.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @free_ipc_work) #7
  br label %put_ipc_ns.exit

put_ipc_ns.exit:                                  ; preds = %if.then3.i, %if.then.i.put_ipc_ns.exit_crit_edge, %entry.put_ipc_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipcns_install(ptr nocapture noundef readonly %nsset, ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 1
  %0 = ptrtoint ptr %nsproxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy1, align 4
  %add.ptr.i = getelementptr i8, ptr %new, i32 -1324
  %user_ns = getelementptr i8, ptr %new, i32 -12
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 21) #7
  br i1 %call2, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cred = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 3
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 4
  %user_ns3 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns3, align 4
  %call4 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #7
  br i1 %call4, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns, align 4
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 24, i32 3
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count.i, ptr noundef nonnull @mq_lock) #7
  br i1 %call.i, label %if.then.i, label %if.end.put_ipc_ns.exit_crit_edge

if.end.put_ipc_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_ipc_ns.exit

if.then.i:                                        ; preds = %if.end
  tail call void @mq_clear_sbinfo(ptr noundef %9) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mq_lock) #7
  %mnt_llist.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %mnt_llist.i, ptr noundef %mnt_llist.i, ptr noundef nonnull @free_ipc_list) #7
  br i1 %call.i.i, label %if.then3.i, label %if.then.i.put_ipc_ns.exit_crit_edge

if.then.i.put_ipc_ns.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_ipc_ns.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull @free_ipc_work) #7
  br label %put_ipc_ns.exit

put_ipc_ns.exit:                                  ; preds = %if.then3.i, %if.then.i.put_ipc_ns.exit_crit_edge, %if.end.put_ipc_ns.exit_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %put_ipc_ns.exit.get_ipc_ns.exit_crit_edge, label %if.then.i12

put_ipc_ns.exit.get_ipc_ns.exit_crit_edge:        ; preds = %put_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ipc_ns.exit

if.then.i12:                                      ; preds = %put_ipc_ns.exit
  %count.i11 = getelementptr i8, ptr %new, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i11, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i11, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i11, ptr %count.i11, i32 1, ptr elementtype(i32) %count.i11) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !26

if.then.i12.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_ipc_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ipc_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i11, i32 noundef %.sink.i.i.i.i) #7
  br label %get_ipc_ns.exit

get_ipc_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, %put_ipc_ns.exit.get_ipc_ns.exit_crit_edge
  %13 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ipc_ns, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_ipc_ns.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_ipc_ns.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ipcns_owner(ptr nocapture noundef readonly %ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr i8, ptr %ns, i32 -12
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mq_init_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sem_init_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_init_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_init_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ipc(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @free_ipc_list, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr nonnull @free_ipc_list, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @free_ipc_list) #7, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  %n.06 = getelementptr i8, ptr %1, i32 -1320
  %cmp.not7 = icmp eq ptr %n.06, inttoptr (i32 -1320 to ptr)
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %free_ipc_ns.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %n.09 = phi ptr [ %n.0, %free_ipc_ns.exit.land.rhs_crit_edge ], [ %n.06, %entry.land.rhs_crit_edge ]
  %call.pn8 = phi ptr [ %3, %free_ipc_ns.exit.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %call.pn8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.pn8, align 4
  tail call void @mq_put_mnt(ptr noundef %n.09) #7
  tail call void @sem_exit_ns(ptr noundef %n.09) #7
  tail call void @msg_exit_ns(ptr noundef %n.09) #7
  tail call void @shm_exit_ns(ptr noundef %n.09) #7
  %ucounts.i = getelementptr i8, ptr %call.pn8, i32 -4
  %4 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ucounts.i, align 4
  tail call void @dec_ucount(ptr noundef %5, i32 noundef 3) #7
  %user_ns.i = getelementptr i8, ptr %call.pn8, i32 -8
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %land.rhs.free_ipc_ns.exit_crit_edge, label %land.lhs.true.i.i

land.rhs.free_ipc_ns.exit_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ipc_ns.exit

land.lhs.true.i.i:                                ; preds = %land.rhs
  %count.i.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_ipc_ns.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !27

if.end5.i.i.i.i.i.free_ipc_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ipc_ns.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #7
  br label %free_ipc_ns.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @__put_user_ns(ptr noundef nonnull %7) #7
  br label %free_ipc_ns.exit

free_ipc_ns.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_ipc_ns.exit_crit_edge, %land.rhs.free_ipc_ns.exit_crit_edge
  %inum.i = getelementptr i8, ptr %call.pn8, i32 12
  %9 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inum.i, align 4
  tail call void @proc_free_inum(i32 noundef %10) #7
  tail call void @kfree(ptr noundef %n.09) #7
  %n.0 = getelementptr i8, ptr %3, i32 -1320
  %cmp.not = icmp eq ptr %n.0, inttoptr (i32 -1320 to ptr)
  br i1 %cmp.not, label %free_ipc_ns.exit.for.end_crit_edge, label %free_ipc_ns.exit.land.rhs_crit_edge

free_ipc_ns.exit.land.rhs_crit_edge:              ; preds = %free_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

free_ipc_ns.exit.for.end_crit_edge:               ; preds = %free_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %free_ipc_ns.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mq_put_mnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sem_exit_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_exit_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_exit_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../ipc/namespace.c", i32 219, i32 11}
!2 = !{ptr @ipcns_operations, !3, !"ipcns_operations", i1 false, i1 false}
!3 = !{!"../ipc/namespace.c", i32 218, i32 33}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../ipc/namespace.c", i32 24, i32 24}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @free_ipc_list, !11, !"free_ipc_list", i1 false, i1 false}
!11 = !{!"../ipc/namespace.c", i32 134, i32 8}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../ipc/namespace.c", i32 147, i32 8}
!14 = !{ptr @free_ipc_work, !13, !"free_ipc_work", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148482797, i64 2148482829, i64 2148482858, i64 2148482892, i64 2148482923, i64 2148482946}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148570822}
!29 = !{i64 2148485262, i64 2148485294, i64 2148485323, i64 2148485357, i64 2148485388, i64 2148485411}
!30 = !{i64 2149397082}
!31 = !{i64 2149360667}
!32 = !{i64 2149099277}
!33 = !{i64 988035, i64 988052, i64 988076, i64 988102, i64 988120}
!34 = !{i64 2149099630}
