; ModuleID = '/llk/IR_all_yes/fs/nfsd/auth.c_pt.bc'
source_filename = "../fs/nfsd/auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_export = type { %struct.cache_head, ptr, i32, %struct.path, %struct.kuid_t, %struct.kgid_t, i32, ptr, %struct.nfsd4_fs_locations, i32, [8 x %struct.exp_flavor_info], i32, ptr, ptr, %struct.callback_head, %struct.export_stats }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfsd4_fs_locations = type { i32, ptr, i32 }
%struct.exp_flavor_info = type { i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.export_stats = type { i64, [3 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.130 }
%union.anon.130 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/nfsd/auth.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private constant [18 x i8] c"../fs/nfsd/auth.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 29, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 253, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsexp_flags(ptr nocapture noundef readonly %rqstp, ptr noundef readonly %exp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_flavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 10
  %ex_nflavors = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 9
  %0 = ptrtoint ptr %ex_nflavors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ex_nflavors, align 4
  %add.ptr = getelementptr %struct.exp_flavor_info, ptr %ex_flavors, i32 %1
  %cmp12 = icmp ult ptr %ex_flavors, %add.ptr
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cr_flavor = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %cr_flavor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cr_flavor, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.013 = phi ptr [ %ex_flavors, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %f.013 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f.013, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3 = icmp eq i32 %5, %3
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.exp_flavor_info, ptr %f.013, i32 0, i32 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.exp_flavor_info, ptr %f.013, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ex_flags = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0.in = phi ptr [ %flags, %if.then ], [ %ex_flags, %for.end ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd_setuser(ptr nocapture noundef readonly %rqstp, ptr noundef readonly %exp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_flavors.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 10
  %ex_nflavors.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 9
  %0 = ptrtoint ptr %ex_nflavors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ex_nflavors.i, align 4
  %add.ptr.i = getelementptr %struct.exp_flavor_info, ptr %ex_flavors.i, i32 %1
  %cmp12.i = icmp ult ptr %ex_flavors.i, %add.ptr.i
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %cr_flavor.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %cr_flavor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cr_flavor.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %f.013.i = phi ptr [ %ex_flavors.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %f.013.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f.013.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3.i = icmp eq i32 %5, %3
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i = getelementptr inbounds %struct.exp_flavor_info, ptr %f.013.i, i32 0, i32 1
  br label %nfsexp_flags.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.exp_flavor_info, ptr %f.013.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %ex_flags.i = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 2
  br label %nfsexp_flags.exit

nfsexp_flags.exit:                                ; preds = %for.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %flags.i, %if.then.i ], [ %ex_flags.i, %for.end.i ]
  %6 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 29) #5
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 98
  %13 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %real_cred, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %nfsexp_flags.exit.get_cred.exit_crit_edge, label %do.body.i

nfsexp_flags.exit.get_cred.exit_crit_edge:        ; preds = %nfsexp_flags.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_cred.exit

do.body.i:                                        ; preds = %nfsexp_flags.exit
  %call.i.i189 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %14) #5
  br i1 %call.i.i189, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !16

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %14, ptr noundef nonnull @.str.1, i32 noundef 253) #5
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %15 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #5, !srcloc !17
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %nfsexp_flags.exit.get_cred.exit_crit_edge
  tail call void @revert_creds(ptr noundef %14) #5
  %call8 = tail call ptr @prepare_creds() #5
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %get_cred.exit.cleanup_crit_edge, label %if.end

get_cred.exit.cleanup_crit_edge:                  ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_cred.exit
  %fsuid = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 10
  %rq_cred = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11
  %18 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_cred, align 4
  %20 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 11
  %cr_gid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %cr_gid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cr_gid, align 4
  %23 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fsgid, align 4
  %cr_group_info = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %cr_group_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cr_group_info, align 4
  %and = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %ex_anon_uid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 4
  %26 = ptrtoint ptr %ex_anon_uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ex_anon_uid, align 8
  %28 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fsuid, align 4
  %ex_anon_gid = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 5
  %29 = ptrtoint ptr %ex_anon_gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ex_anon_gid, align 4
  %31 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fsgid, align 4
  %call15 = tail call ptr @groups_alloc(i32 noundef 0) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then12.oom_crit_edge, label %if.then12.if.end62_crit_edge

if.then12.if.end62_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then12.oom_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %oom

if.else:                                          ; preds = %if.end
  %and19 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else59, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i190 = icmp eq i32 %19, 0
  br i1 %cmp.i190, label %if.then25, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %ex_anon_uid27 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 4
  %32 = ptrtoint ptr %ex_anon_uid27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ex_anon_uid27, align 8
  %34 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fsuid, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then21.if.end28_crit_edge
  %35 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack187 = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack187)
  %cmp.i191 = icmp eq i32 %.unpack187, 0
  br i1 %cmp.i191, label %if.then35, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %ex_anon_gid37 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 5
  %36 = ptrtoint ptr %ex_anon_gid37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ex_anon_gid37, align 4
  %38 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fsgid, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end28.if.end38_crit_edge
  %ngroups = getelementptr inbounds %struct.group_info, ptr %25, i32 0, i32 1
  %39 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ngroups, align 4
  %call39 = tail call ptr @groups_alloc(i32 noundef %40) #5
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.oom_crit_edge, label %for.cond.preheader

if.end38.oom_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %oom

for.cond.preheader:                               ; preds = %if.end38
  %41 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp215 = icmp sgt i32 %42, 0
  br i1 %cmp215, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ex_anon_gid52 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.group_info, ptr %25, i32 0, i32 2, i32 %i.0216
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack188 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack188)
  %cmp.i192 = icmp eq i32 %.unpack188, 0
  br i1 %cmp.i192, label %if.then49, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ex_anon_gid52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ex_anon_gid52, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %for.body.for.inc_crit_edge
  %.unpack188.sink = phi i32 [ %45, %if.then49 ], [ %.unpack188, %for.body.for.inc_crit_edge ]
  %46 = getelementptr %struct.group_info, ptr %call39, i32 0, i32 2, i32 %i.0216
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.unpack188.sink, ptr %46, align 4
  %inc = add nuw nsw i32 %i.0216, 1
  %48 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ngroups, align 4
  %cmp = icmp slt i32 %inc, %49
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @groups_sort(ptr noundef nonnull %call39) #5
  br label %if.end62

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #5
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #5, !srcloc !17
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %for.end, %if.then12.if.end62_crit_edge
  %gi.0 = phi ptr [ %call15, %if.then12.if.end62_crit_edge ], [ %call39, %for.end ], [ %25, %if.else59 ]
  %51 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack)
  %cmp.i193 = icmp eq i32 %.unpack, -1
  br i1 %cmp.i193, label %if.then69, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %ex_anon_uid71 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 4
  %52 = ptrtoint ptr %ex_anon_uid71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ex_anon_uid71, align 8
  %54 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fsuid, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end62.if.end72_crit_edge
  %55 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack175 = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack175)
  %cmp.i194 = icmp eq i32 %.unpack175, -1
  br i1 %cmp.i194, label %if.then79, label %if.end72.if.end82_crit_edge

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %ex_anon_gid81 = getelementptr inbounds %struct.svc_export, ptr %exp, i32 0, i32 5
  %56 = ptrtoint ptr %ex_anon_gid81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ex_anon_gid81, align 4
  %58 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %fsgid, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end72.if.end82_crit_edge
  tail call void @set_groups(ptr noundef nonnull %call8, ptr noundef %gi.0) #5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gi.0, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr %gi.0, i32 1, i32 3, i32 1) #5
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gi.0, ptr %gi.0, i32 1, ptr elementtype(i32) %gi.0) #5, !srcloc !19
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then85, label %if.end82.do.end88_crit_edge

if.end82.do.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @groups_free(ptr noundef %gi.0) #5
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %if.end82.do.end88_crit_edge
  %60 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack176 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack176)
  %cmp.i195 = icmp eq i32 %.unpack176, 0
  %cap_effective100 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 15
  br i1 %cmp.i195, label %if.else99, label %if.then95

if.then95:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %cap_effective100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack177 = load i32, ptr %cap_effective100, align 4
  %.elt178 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 15, i32 0, i32 1
  %62 = ptrtoint ptr %.elt178 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack179 = load i32, ptr %.elt178, align 4
  %and.i.i = and i32 %.unpack177, -150994976
  %and.1.i.i = and i32 %.unpack179, -2
  br label %do.body106

if.else99:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #7
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 14
  %63 = ptrtoint ptr %cap_effective100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack180 = load i32, ptr %cap_effective100, align 4
  %.elt181 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 15, i32 0, i32 1
  %64 = ptrtoint ptr %.elt181 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack182 = load i32, ptr %.elt181, align 4
  %65 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack183 = load i32, ptr %cap_permitted, align 4
  %.elt184 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 14, i32 0, i32 1
  %66 = ptrtoint ptr %.elt184 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack185 = load i32, ptr %.elt184, align 4
  %and.i.i196 = and i32 %.unpack183, 150994975
  %and.1.i.i197 = and i32 %.unpack185, 1
  %or.i.i = or i32 %and.i.i196, %.unpack180
  %or.1.i.i = or i32 %and.1.i.i197, %.unpack182
  br label %do.body106

do.body106:                                       ; preds = %if.else99, %if.then95
  %and.1.i.i.sink = phi i32 [ %and.1.i.i, %if.then95 ], [ %or.1.i.i, %if.else99 ]
  %and.i.i.sink = phi i32 [ %and.i.i, %if.then95 ], [ %or.i.i, %if.else99 ]
  %tmp96.sroa.4.0.insert.ext = zext i32 %and.1.i.i.sink to i64
  %tmp96.sroa.0.0.insert.ext = zext i32 %and.i.i.sink to i64
  %tmp96.sroa.0.0.insert.shift = shl nuw i64 %tmp96.sroa.0.0.insert.ext, 32
  %tmp96.sroa.0.0.insert.insert = or i64 %tmp96.sroa.0.0.insert.shift, %tmp96.sroa.4.0.insert.ext
  %67 = ptrtoint ptr %cap_effective100 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %tmp96.sroa.0.0.insert.insert, ptr %cap_effective100, align 4
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %69, ptr noundef nonnull @.str, i32 noundef 84) #5
  %call111 = tail call ptr @override_creds(ptr noundef nonnull %call8) #5
  %tobool.not.i198 = icmp eq ptr %call111, null
  br i1 %tobool.not.i198, label %do.body106.do.body.i206_crit_edge, label %do.body.i200

do.body106.do.body.i206_crit_edge:                ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i206

do.body.i200:                                     ; preds = %do.body106
  %call.i.i199 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call111) #5
  br i1 %call.i.i199, label %if.then.i.i201, label %do.body.i200.__validate_creds.exit.i203_crit_edge, !prof !16

do.body.i200.__validate_creds.exit.i203_crit_edge: ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i203

if.then.i.i201:                                   ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %call111, ptr noundef nonnull @.str.1, i32 noundef 286) #5
  br label %__validate_creds.exit.i203

__validate_creds.exit.i203:                       ; preds = %if.then.i.i201, %do.body.i200.__validate_creds.exit.i203_crit_edge
  %call.i.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call111, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr nonnull %call111, i32 1, i32 3, i32 1) #5
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call111, ptr nonnull %call111, i32 1, ptr nonnull elementtype(i32) %call111) #5, !srcloc !19
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i203.do.body.i206_crit_edge

__validate_creds.exit.i203.do.body.i206_crit_edge: ; preds = %__validate_creds.exit.i203
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i206

if.then1.i:                                       ; preds = %__validate_creds.exit.i203
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_cred(ptr noundef nonnull %call111) #5
  br label %do.body.i206

do.body.i206:                                     ; preds = %if.then1.i, %__validate_creds.exit.i203.do.body.i206_crit_edge, %do.body106.do.body.i206_crit_edge
  %call.i.i205 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call8) #5
  br i1 %call.i.i205, label %if.then.i.i207, label %do.body.i206.__validate_creds.exit.i211_crit_edge, !prof !16

do.body.i206.__validate_creds.exit.i211_crit_edge: ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i211

if.then.i.i207:                                   ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %call8, ptr noundef nonnull @.str.1, i32 noundef 286) #5
  br label %__validate_creds.exit.i211

__validate_creds.exit.i211:                       ; preds = %if.then.i.i207, %do.body.i206.__validate_creds.exit.i211_crit_edge
  %call.i.i.i208 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr nonnull %call8, i32 1, i32 3, i32 1) #5
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8, ptr nonnull %call8, i32 1, ptr nonnull elementtype(i32) %call8) #5, !srcloc !19
  %asmresult.i.i.i.i.i.i209 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i209)
  %cmp.i.i.i210 = icmp eq i32 %asmresult.i.i.i.i.i.i209, 0
  br i1 %cmp.i.i.i210, label %if.then1.i212, label %__validate_creds.exit.i211.put_cred.exit213_crit_edge

__validate_creds.exit.i211.put_cred.exit213_crit_edge: ; preds = %__validate_creds.exit.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_cred.exit213

if.then1.i212:                                    ; preds = %__validate_creds.exit.i211
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_cred(ptr noundef nonnull %call8) #5
  br label %put_cred.exit213

put_cred.exit213:                                 ; preds = %if.then1.i212, %__validate_creds.exit.i211.put_cred.exit213_crit_edge
  %72 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task, align 8
  tail call void @__validate_process_creds(ptr noundef %73, ptr noundef nonnull @.str, i32 noundef 87) #5
  br label %cleanup

oom:                                              ; preds = %if.end38.oom_crit_edge, %if.then12.oom_crit_edge
  tail call void @abort_creds(ptr noundef nonnull %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %oom, %put_cred.exit213, %get_cred.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %put_cred.exit213 ], [ -12, %oom ], [ -12, %get_cred.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__validate_process_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/auth.c", i32 29, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/nfsd/auth.c", i32 32, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/cred.h", i32 253, i32 2}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148419477, i64 2148419503, i64 2148419532, i64 2148419566, i64 2148419597, i64 2148419620}
!18 = !{i64 2148507929}
!19 = !{i64 2148422662, i64 2148422694, i64 2148422723, i64 2148422757, i64 2148422788, i64 2148422811}
!20 = !{i64 2148508158}
