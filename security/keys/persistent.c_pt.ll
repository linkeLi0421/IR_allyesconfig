; ModuleID = '/llk/IR_all_yes/security/keys/persistent.c_pt.bc'
source_filename = "../security/keys/persistent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.keyring_index_key = type { i32, %union.anon.66, ptr, ptr, ptr }
%union.anon.66 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.44, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.44 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.27 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.27 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.64, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.65, %union.anon.70, ptr }
%union.anon.0 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.64 = type { i64 }
%union.anon.65 = type { %struct.keyring_index_key }
%union.anon.70 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.67 = type { [2 x i8], i16 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.72, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }

@persistent_keyring_expiry = dso_local global { i32, [28 x i8] } { i32 259200, [28 x i8] zeroinitializer }, align 32
@key_type_keyring = external dso_local global %struct.key_type, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_persistent.%u\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c".persistent_register\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [26 x i8] c"persistent_keyring_expiry\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 13, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 86, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [30 x i8] c"../security/keys/persistent.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 22, i32 34 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @persistent_keyring_expiry, ptr @.str, ptr @.str.4], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_keyring_expiry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_get_persistent(i32 noundef %_uid, i32 noundef %destid) local_unnamed_addr #0 align 64 {
entry:
  %index_key.i = alloca %struct.keyring_index_key, align 4
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %_uid)
  %cmp = icmp eq i32 %_uid, -1
  br i1 %cmp, label %do.end4, label %if.else

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uid9 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %uid9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %uid.sroa.0.0.copyload = load i32, ptr %uid9, align 4
  br label %if.end41

if.else:                                          ; preds = %entry
  %call11 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %_uid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp.i.not = icmp eq i32 %call11, -1
  br i1 %cmp.i.not, label %if.else.cleanup_crit_edge, label %do.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.else
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred21 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred21, align 16
  %uid22 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %uid22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i77 = icmp eq i32 %call11, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i77, label %do.end17.if.end41_crit_edge, label %do.end29

do.end17.if.end41_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end29:                                         ; preds = %do.end17
  %euid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 8
  %14 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp26.sroa.0.0.copyload = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %agg.tmp26.sroa.0.0.copyload)
  %cmp.i78 = icmp eq i32 %call11, %agg.tmp26.sroa.0.0.copyload
  br i1 %cmp.i78, label %do.end29.if.end41_crit_edge, label %land.lhs.true37

do.end29.if.end41_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true37:                                  ; preds = %do.end29
  %call38 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 7) #5
  br i1 %call38, label %land.lhs.true37.if.end41_crit_edge, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true37.if.end41_crit_edge, %do.end29.if.end41_crit_edge, %do.end17.if.end41_crit_edge, %do.end4
  %uid.sroa.0.0 = phi i32 [ %uid.sroa.0.0.copyload, %do.end4 ], [ %call11, %do.end17.if.end41_crit_edge ], [ %call11, %do.end29.if.end41_crit_edge ], [ %call11, %land.lhs.true37.if.end41_crit_edge ]
  %call42 = tail call ptr @lookup_user_key(i32 noundef %destid, i32 noundef 1, i32 noundef 3) #5
  %cmp.i79 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call42 to i32
  br i1 %cmp.i79, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %and.i80 = and i32 %15, -2
  %16 = inttoptr i32 %and.i80 to ptr
  %type = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 16, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 8
  %cmp48.not = icmp eq ptr %18, @key_type_keyring
  br i1 %cmp48.not, label %if.end50, label %if.end46.out_put_dest_crit_edge

if.end46.out_put_dest_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_dest

if.end50:                                         ; preds = %if.end46
  %.fca.0.insert66 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %index_key.i) #5
  %19 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #5
  %22 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %23 = call ptr @memset(ptr %index_key.i, i32 0, i32 16)
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @key_type_keyring, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i, ptr %21, align 4
  %call.i = call i32 @from_kuid(ptr noundef %7, [1 x i32] %.fca.0.insert66) #5
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str, i32 noundef %call.i) #5
  %conv.i = trunc i32 %call3.i to i16
  %desc_len.i = getelementptr inbounds %struct.anon.67, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %desc_len.i, align 2
  call void @key_set_index_key(ptr noundef nonnull %index_key.i) #5
  %persistent_keyring_register.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 13
  %27 = ptrtoint ptr %persistent_keyring_register.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %persistent_keyring_register.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end50.if.end10.i_crit_edge, label %if.then.i

if.end50.if.end10.i_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end50
  %29 = ptrtoint ptr %28 to i32
  %or.i.i = or i32 %29, 1
  %30 = inttoptr i32 %or.i.i to ptr
  %keyring_sem.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 12
  call void @down_read(ptr noundef %keyring_sem.i) #5
  %call6.i = call ptr @find_key_to_update(ptr noundef nonnull %30, ptr noundef nonnull %index_key.i) #5
  call void @up_read(ptr noundef %keyring_sem.i) #5
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.then.i.if.end10.i_crit_edge, label %if.then.i.found.i_crit_edge

if.then.i.found.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %found.i

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %if.end50.if.end10.i_crit_edge
  %keyring_sem11.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 12
  call void @down_write(ptr noundef %keyring_sem11.i) #5
  %31 = ptrtoint ptr %persistent_keyring_register.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %persistent_keyring_register.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  %33 = call i32 @llvm.read_register.i32(metadata !20) #5
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 99
  %37 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cred.i.i.i, align 16
  %call4.i.i.i = call ptr @keyring_alloc(ptr noundef nonnull @.str.4, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %38, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #5
  %cmp.i.i.i.i = icmp ugt ptr %call4.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %key_create_persistent_register.exit.i.i, label %key_create_persistent_register.exit.thread.i.i

key_create_persistent_register.exit.thread.i.i:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %persistent_keyring_register.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call4.i.i.i, ptr %persistent_keyring_register.i, align 4
  br label %if.end9.i.i

key_create_persistent_register.exit.i.i:          ; preds = %if.then.i.i
  %cmp.i.i = icmp slt ptr %call4.i.i.i, null
  br i1 %cmp.i.i, label %key_create_persistent_register.exit.i.i.key_create_persistent.exit.i_crit_edge, label %key_create_persistent_register.exit.i.i.if.end9.i.i_crit_edge

key_create_persistent_register.exit.i.i.if.end9.i.i_crit_edge: ; preds = %key_create_persistent_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

key_create_persistent_register.exit.i.i.key_create_persistent.exit.i_crit_edge: ; preds = %key_create_persistent_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %key_create_persistent.exit.i

if.else.i.i:                                      ; preds = %if.end10.i
  %40 = ptrtoint ptr %32 to i32
  %or.i.i.i = or i32 %40, 1
  %41 = inttoptr i32 %or.i.i.i to ptr
  %call5.i.i = call ptr @find_key_to_update(ptr noundef nonnull %41, ptr noundef nonnull %index_key.i) #5
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.else.i.i.if.end9.i.i_crit_edge, label %if.else.i.i.key_create_persistent.exit.i_crit_edge

if.else.i.i.key_create_persistent.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %key_create_persistent.exit.i

if.else.i.i.if.end9.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.else.i.i.if.end9.i.i_crit_edge, %key_create_persistent_register.exit.i.i.if.end9.i.i_crit_edge, %key_create_persistent_register.exit.thread.i.i
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %21, align 4
  %44 = call i32 @llvm.read_register.i32(metadata !20) #5
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 99
  %48 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cred.i.i, align 16
  %50 = ptrtoint ptr %persistent_keyring_register.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %persistent_keyring_register.i, align 4
  %call14.i.i = call ptr @keyring_alloc(ptr noundef %43, [1 x i32] %.fca.0.insert66, [1 x i32] [i32 -1], ptr noundef %49, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef %51) #5
  %cmp.i.i.i = icmp ugt ptr %call14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end9.i.i.key_create_persistent.exit.i_crit_edge, label %if.end18.i.i

if.end9.i.i.key_create_persistent.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %key_create_persistent.exit.i

if.end18.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call14.i.i to i32
  %or.i32.i.i = or i32 %52, 1
  %53 = inttoptr i32 %or.i32.i.i to ptr
  br label %key_create_persistent.exit.i

key_create_persistent.exit.i:                     ; preds = %if.end18.i.i, %if.end9.i.i.key_create_persistent.exit.i_crit_edge, %if.else.i.i.key_create_persistent.exit.i_crit_edge, %key_create_persistent_register.exit.i.i.key_create_persistent.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %53, %if.end18.i.i ], [ %call5.i.i, %if.else.i.i.key_create_persistent.exit.i_crit_edge ], [ %call14.i.i, %if.end9.i.i.key_create_persistent.exit.i_crit_edge ], [ %call4.i.i.i, %key_create_persistent_register.exit.i.i.key_create_persistent.exit.i_crit_edge ]
  call void @up_write(ptr noundef %keyring_sem11.i) #5
  %cmp.i56.i = icmp ugt ptr %retval.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i, label %if.end17.i, label %key_create_persistent.exit.i.found.i_crit_edge

key_create_persistent.exit.i.found.i_crit_edge:   ; preds = %key_create_persistent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %found.i

if.end17.i:                                       ; preds = %key_create_persistent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %retval.1.i.i to i32
  br label %key_get_persistent.exit

found.i:                                          ; preds = %key_create_persistent.exit.i.found.i_crit_edge, %if.then.i.found.i_crit_edge
  %persistent_ref.0.i = phi ptr [ %call6.i, %if.then.i.found.i_crit_edge ], [ %retval.1.i.i, %key_create_persistent.exit.i.found.i_crit_edge ]
  %55 = call i32 @llvm.read_register.i32(metadata !20) #5
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 99
  %59 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cred.i, align 16
  %call20.i = call i32 @key_task_permission(ptr noundef %persistent_ref.0.i, ptr noundef %60, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.i81 = icmp eq i32 %call20.i, 0
  %61 = ptrtoint ptr %persistent_ref.0.i to i32
  %and.i57.i = and i32 %61, -2
  %62 = inttoptr i32 %and.i57.i to ptr
  br i1 %cmp.i81, label %if.then22.i, label %found.i.if.end30.i_crit_edge

found.i.if.end30.i_crit_edge:                     ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then22.i:                                      ; preds = %found.i
  %call25.i = call i32 @key_link(ptr noundef %16, ptr noundef %62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then22.i.if.end30.i_crit_edge

if.then22.i.if.end30.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = load i32, ptr @persistent_keyring_expiry, align 4
  call void @key_set_timeout(ptr noundef %62, i32 noundef %63) #5
  %serial.i = getelementptr inbounds %struct.key, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %serial.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.then22.i.if.end30.i_crit_edge, %found.i.if.end30.i_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.then22.i.if.end30.i_crit_edge ], [ %65, %if.then28.i ], [ %call20.i, %found.i.if.end30.i_crit_edge ]
  call void @key_put(ptr noundef %62) #5
  br label %key_get_persistent.exit

key_get_persistent.exit:                          ; preds = %if.end30.i, %if.end17.i
  %retval.0.i = phi i32 [ %ret.0.i, %if.end30.i ], [ %54, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %index_key.i) #5
  br label %out_put_dest

out_put_dest:                                     ; preds = %key_get_persistent.exit, %if.end46.out_put_dest_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %key_get_persistent.exit ], [ -20, %if.end46.out_put_dest_crit_edge ]
  call void @key_put(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %out_put_dest, %if.end41.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put_dest ], [ -22, %if.else.cleanup_crit_edge ], [ -1, %land.lhs.true37.cleanup_crit_edge ], [ %15, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_index_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_key_to_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @persistent_keyring_expiry, !1, !"persistent_keyring_expiry", i1 false, i1 false}
!1 = !{!"../security/keys/persistent.c", i32 13, i32 10}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../security/keys/persistent.c", i32 131, i32 30}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/keys/persistent.c", i32 138, i32 9}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/keys/persistent.c", i32 147, i32 20}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/keys/persistent.c", i32 148, i32 20}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/keys/persistent.c", i32 86, i32 36}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/keys/persistent.c", i32 111, i32 44}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../security/keys/persistent.c", i32 58, i32 26}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/keys/persistent.c", i32 22, i32 34}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/keys/persistent.c", i32 24, i32 6}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
