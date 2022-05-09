; ModuleID = '/llk/IR_all_yes/crypto/algboss.c_pt.bc'
source_filename = "../crypto/algboss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.103, ptr, ptr, ptr, ptr, %union.anon.104, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.104 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cryptomgr_param = type { [34 x ptr], %struct.anon.122, [32 x %struct.anon.123], [128 x i8], ptr, i32, i32 }
%struct.anon.122 = type { %struct.rtattr, %struct.crypto_attr_type }
%struct.rtattr = type { i16, i16 }
%struct.crypto_attr_type = type { i32, i32 }
%struct.anon.123 = type { %struct.rtattr, %struct.crypto_attr_alg }
%struct.crypto_attr_alg = type { [128 x i8] }
%struct.crypto_larval = type { %struct.crypto_alg, ptr, %struct.completion, i32, i8, [63 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_test_param = type { [128 x i8], [128 x i8], i32 }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@cryptomgr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cryptomgr_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_cryptomgr__339_269_cryptomgr_init3 = internal global ptr @cryptomgr_init, section ".initcall3.init", align 4
@__exitcall_cryptomgr_exit = internal global ptr @cryptomgr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [32 x i8] c"cryptomgr.file=crypto/cryptomgr\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [22 x i8] c"cryptomgr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [47 x i8] c"cryptomgr.description=Crypto Algorithm Manager\00", section ".modinfo", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cryptomgr_probe\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cryptomgr_test\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 45, i64 95]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 40, i64 45, i64 95]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 40, i64 41]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 41, i64 44]
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"cryptomgr_notifier\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 248, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 158, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [20 x i8] c"../crypto/algboss.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 219, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_cryptomgr_exit, ptr @__initcall__kmod_cryptomgr__339_269_cryptomgr_init3, ptr @cryptomgr_exit, ptr @cryptomgr_notifier, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryptomgr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cryptomgr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @crypto_unregister_notifier(ptr noundef nonnull @cryptomgr_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !25

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algboss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !26
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cryptomgr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_notifier(ptr noundef nonnull @cryptomgr_notifier) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryptomgr_notify(ptr nocapture noundef readnone %this, i32 noundef %msg, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %msg, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 8
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4512) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.err_put_module.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.err_put_module.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_module.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end.i.for.cond.i_crit_edge
  %p.0.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %cra_name.i, %if.end.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.0.i, align 1
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %.fr216.i = freeze i8 %5
  %6 = and i8 %.fr216.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.not.i = icmp eq i8 %6, 0
  br i1 %cmp.not.not.i, label %switch.early.test.i, label %for.cond.i.for.inc.i_crit_edge

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

switch.early.test.i:                              ; preds = %for.cond.i
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %3, label %for.end.i [
    i8 95, label %switch.early.test.i.for.inc.i_crit_edge
    i8 45, label %switch.early.test.i.for.inc.i_crit_edge57
  ]

switch.early.test.i.for.inc.i_crit_edge57:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

switch.early.test.i.for.inc.i_crit_edge:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %switch.early.test.i.for.inc.i_crit_edge, %switch.early.test.i.for.inc.i_crit_edge57, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %switch.early.test.i
  %tobool12.not.i = icmp ne ptr %p.0.i, %cra_name.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %3)
  %cmp15.not.i = icmp eq i8 %3, 40
  %or.cond208.i = select i1 %tobool12.not.i, i1 %cmp15.not.i, i1 false
  br i1 %or.cond208.i, label %if.end18.i, label %for.end.i.err_free_param.i_crit_edge

for.end.i.err_free_param.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.end18.i:                                       ; preds = %for.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.0.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %cra_name.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %template.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %template.i, ptr %cra_name.i, i32 %sub.ptr.sub.i)
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %if.end87.i.for.cond20.i_crit_edge, %if.end18.i
  %p.1.i = phi ptr [ %p.0.i, %if.end18.i ], [ %p.5.i, %if.end87.i.for.cond20.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end18.i ], [ %add.i, %if.end87.i.for.cond20.i_crit_edge ]
  %incdec.ptr21.i = getelementptr i8, ptr %p.1.i, i32 1
  br label %for.cond22.i

for.cond22.i:                                     ; preds = %for.inc39.i, %for.cond20.i
  %p.2.i = phi ptr [ %incdec.ptr21.i, %for.cond20.i ], [ %incdec.ptr40.i, %for.inc39.i ]
  %9 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p.2.i, align 1
  %conv23.i = zext i8 %10 to i32
  %arrayidx24.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv23.i
  %11 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx24.i, align 1
  %.fr.i = freeze i8 %12
  %13 = and i8 %.fr.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp27.not.not.i = icmp eq i8 %13, 0
  br i1 %cmp27.not.not.i, label %switch.early.test211.i, label %for.cond22.i.for.inc39.i_crit_edge

for.cond22.i.for.inc39.i_crit_edge:               ; preds = %for.cond22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

switch.early.test211.i:                           ; preds = %for.cond22.i
  %14 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %10, label %switch.early.test211.i.if.end64.i_crit_edge [
    i8 95, label %switch.early.test211.i.for.inc39.i_crit_edge
    i8 45, label %switch.early.test211.i.for.inc39.i_crit_edge58
    i8 40, label %switch.early.test211.i.for.cond46.i.outer_crit_edge
  ]

switch.early.test211.i.for.cond46.i.outer_crit_edge: ; preds = %switch.early.test211.i
  br label %for.cond46.i.outer

switch.early.test211.i.for.inc39.i_crit_edge58:   ; preds = %switch.early.test211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

switch.early.test211.i.for.inc39.i_crit_edge:     ; preds = %switch.early.test211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

switch.early.test211.i.if.end64.i_crit_edge:      ; preds = %switch.early.test211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

for.inc39.i:                                      ; preds = %switch.early.test211.i.for.inc39.i_crit_edge, %switch.early.test211.i.for.inc39.i_crit_edge58, %for.cond22.i.for.inc39.i_crit_edge
  %incdec.ptr40.i = getelementptr i8, ptr %p.2.i, i32 1
  br label %for.cond22.i

for.cond46.i:                                     ; preds = %for.cond46.i.outer, %for.cond46.i.for.cond46.i_crit_edge
  %p.3.i = phi ptr [ %incdec.ptr47.i, %for.cond46.i.for.cond46.i_crit_edge ], [ %p.3.i.ph, %for.cond46.i.outer ]
  %incdec.ptr47.i = getelementptr i8, ptr %p.3.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr47.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %16, label %for.cond46.i.for.cond46.i_crit_edge [
    i8 0, label %for.cond46.i.err_free_param.i_crit_edge
    i8 40, label %if.then54.i
    i8 41, label %land.lhs.true.i
  ]

for.cond46.i.err_free_param.i_crit_edge:          ; preds = %for.cond46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

for.cond46.i.for.cond46.i_crit_edge:              ; preds = %for.cond46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond46.i

if.then54.i:                                      ; preds = %for.cond46.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %recursion.0.i.ph, 1
  br label %for.cond46.i.outer.backedge

for.cond46.i.outer:                               ; preds = %for.cond46.i.outer.backedge, %switch.early.test211.i.for.cond46.i.outer_crit_edge
  %p.3.i.ph = phi ptr [ %incdec.ptr47.i, %for.cond46.i.outer.backedge ], [ %p.2.i, %switch.early.test211.i.for.cond46.i.outer_crit_edge ]
  %recursion.0.i.ph = phi i32 [ %recursion.0.i.ph.be, %for.cond46.i.outer.backedge ], [ 0, %switch.early.test211.i.for.cond46.i.outer_crit_edge ]
  br label %for.cond46.i

land.lhs.true.i:                                  ; preds = %for.cond46.i
  %dec.i = add i32 %recursion.0.i.ph, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recursion.0.i.ph)
  %tobool58.not.i = icmp eq i32 %recursion.0.i.ph, 0
  br i1 %tobool58.not.i, label %cleanup.thread.i, label %land.lhs.true.i.for.cond46.i.outer.backedge_crit_edge

land.lhs.true.i.for.cond46.i.outer.backedge_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond46.i.outer.backedge

for.cond46.i.outer.backedge:                      ; preds = %land.lhs.true.i.for.cond46.i.outer.backedge_crit_edge, %if.then54.i
  %recursion.0.i.ph.be = phi i32 [ %inc.i, %if.then54.i ], [ %dec.i, %land.lhs.true.i.for.cond46.i.outer.backedge_crit_edge ]
  br label %for.cond46.i.outer

cleanup.thread.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr63.i = getelementptr i8, ptr %p.3.i, i32 2
  br label %if.end64.i

if.end64.i:                                       ; preds = %cleanup.thread.i, %switch.early.test211.i.if.end64.i_crit_edge
  %p.5.i = phi ptr [ %incdec.ptr63.i, %cleanup.thread.i ], [ %p.2.i, %switch.early.test211.i.if.end64.i_crit_edge ]
  %tobool68.not.i = icmp eq ptr %p.5.i, %incdec.ptr21.i
  br i1 %tobool68.not.i, label %if.end64.i.err_free_param.i_crit_edge, label %if.end70.i

if.end64.i.err_free_param.i_crit_edge:            ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.end70.i:                                       ; preds = %if.end64.i
  %sub.ptr.rhs.cast66.i = ptrtoint ptr %incdec.ptr21.i to i32
  %sub.ptr.lhs.cast65.i = ptrtoint ptr %p.5.i to i32
  %sub.ptr.sub67.i = sub i32 %sub.ptr.lhs.cast65.i, %sub.ptr.rhs.cast66.i
  %arrayidx71.i = getelementptr %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 2, i32 %i.0.i
  %18 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 132, ptr %arrayidx71.i, align 4
  %rta_type.i = getelementptr inbounds %struct.rtattr, ptr %arrayidx71.i, i32 0, i32 1
  %19 = ptrtoint ptr %rta_type.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %rta_type.i, align 2
  %data.i = getelementptr %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 2, i32 %i.0.i, i32 1
  %20 = call ptr @memcpy(ptr %data.i, ptr %incdec.ptr21.i, i32 %sub.ptr.sub67.i)
  %add.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx82.i = getelementptr [34 x ptr], ptr %call7.i.i.i, i32 0, i32 %add.i
  %21 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx71.i, ptr %arrayidx82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 31
  br i1 %exitcond.i, label %if.end70.i.err_free_param.i_crit_edge, label %if.end87.i

if.end70.i.err_free_param.i_crit_edge:            ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.end87.i:                                       ; preds = %if.end70.i
  %22 = ptrtoint ptr %p.5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p.5.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %23, label %if.end87.i.err_free_param.i_crit_edge [
    i8 41, label %if.end101.i
    i8 44, label %if.end87.i.for.cond20.i_crit_edge
  ]

if.end87.i.for.cond20.i_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.i

if.end87.i.err_free_param.i_crit_edge:            ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.end101.i:                                      ; preds = %if.end87.i
  %add103.i = add nuw i32 %i.0.i, 2
  %arrayidx104.i = getelementptr [34 x ptr], ptr %call7.i.i.i, i32 0, i32 %add103.i
  %25 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx104.i, align 4
  %type.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 12, ptr %type.i, align 8
  %rta_type109.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %rta_type109.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %rta_type109.i, align 2
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_flags.i, align 16
  %and111.i = and i32 %29, -1025
  %data113.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %data113.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and111.i, ptr %data113.i, align 4
  %mask.i = getelementptr inbounds %struct.crypto_larval, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask.i, align 4
  %and115.i = and i32 %32, -1025
  %mask118.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %mask118.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and115.i, ptr %mask118.i, align 8
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %type.i, ptr %call7.i.i.i, align 8
  %otype.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %otype.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %otype.i, align 8
  %omask.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %omask.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %omask.i, align 4
  %cra_refcnt.i17 = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 7
  %call.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cra_refcnt.i17, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %cra_refcnt.i17, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cra_refcnt.i17, ptr %cra_refcnt.i17, i32 1, ptr elementtype(i32) %cra_refcnt.i17) #9, !srcloc !27
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end101.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !28

if.end101.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end101.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i19 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i19, label %if.else.i.i.i.i.crypto_alg_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !25

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.crypto_alg_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_alg_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end101.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end101.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %cra_refcnt.i17, i32 noundef %.sink.i.i.i.i) #9
  br label %crypto_alg_get.exit

crypto_alg_get.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.crypto_alg_get.exit_crit_edge
  %larval128.i = getelementptr inbounds %struct.cryptomgr_param, ptr %call7.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %larval128.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data, ptr %larval128.i, align 4
  %call129.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cryptomgr_probe, ptr noundef nonnull %call7.i.i.i, i32 noundef -1, ptr noundef nonnull @.str) #9
  %cmp.i.i = icmp ugt ptr %call129.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %err_put_larval.i, label %if.end133.i

if.end133.i:                                      ; preds = %crypto_alg_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call132.i = tail call i32 @wake_up_process(ptr noundef %call129.i) #9
  br label %return

err_put_larval.i:                                 ; preds = %crypto_alg_get.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cra_refcnt.i17, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %cra_refcnt.i17, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cra_refcnt.i17, ptr %cra_refcnt.i17, i32 1, ptr elementtype(i32) %cra_refcnt.i17) #9, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i15, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_put_larval.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.err_free_param.i_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end5.i.i.i.i.err_free_param.i_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %cra_refcnt.i17, i32 noundef 3) #9
  br label %err_free_param.i

land.lhs.true.i15:                                ; preds = %err_put_larval.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  %cra_destroy.i = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 14
  %41 = ptrtoint ptr %cra_destroy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cra_destroy.i, align 8
  %tobool.not.i14 = icmp eq ptr %42, null
  br i1 %tobool.not.i14, label %land.lhs.true.i15.err_free_param.i_crit_edge, label %if.then.i

land.lhs.true.i15.err_free_param.i_crit_edge:     ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_param.i

if.then.i:                                        ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %42(ptr noundef %data) #9
  br label %err_free_param.i

err_free_param.i:                                 ; preds = %if.then.i, %land.lhs.true.i15.err_free_param.i_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err_free_param.i_crit_edge, %if.end87.i.err_free_param.i_crit_edge, %if.end70.i.err_free_param.i_crit_edge, %if.end64.i.err_free_param.i_crit_edge, %for.cond46.i.err_free_param.i_crit_edge, %for.end.i.err_free_param.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %err_put_module.i

err_put_module.i:                                 ; preds = %err_free_param.i, %if.end.i.err_put_module.i_crit_edge
  tail call void @module_put(ptr noundef null) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i4 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call.i4, label %if.end.i7, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i7:                                        ; preds = %sw.bb1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 260) #12
  %tobool.not.i6 = icmp eq ptr %call7.i.i.i5, null
  br i1 %tobool.not.i6, label %if.end.i7.err_put_module.i12_crit_edge, label %if.end3.i

if.end.i7.err_put_module.i12_crit_edge:           ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_module.i12

if.end3.i:                                        ; preds = %if.end.i7
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 9
  %44 = call ptr @memcpy(ptr %call7.i.i.i5, ptr %cra_driver_name.i, i32 128)
  %alg5.i = getelementptr inbounds %struct.crypto_test_param, ptr %call7.i.i.i5, i32 0, i32 1
  %cra_name.i8 = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 8
  %45 = call ptr @memcpy(ptr %alg5.i, ptr %cra_name.i8, i32 128)
  %cra_flags.i9 = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 2
  %46 = ptrtoint ptr %cra_flags.i9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cra_flags.i9, align 16
  %and.i = lshr i32 %47, 3
  %48 = and i32 %and.i, 1024
  %49 = or i32 %48, %47
  %type11.i = getelementptr inbounds %struct.crypto_test_param, ptr %call7.i.i.i5, i32 0, i32 2
  %50 = ptrtoint ptr %type11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %type11.i, align 8
  %call12.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cryptomgr_test, ptr noundef nonnull %call7.i.i.i5, i32 noundef -1, ptr noundef nonnull @.str.1) #9
  %cmp.i.i10 = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i10, label %err_free_param.i11, label %if.end16.i

if.end16.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 @wake_up_process(ptr noundef %call12.i) #9
  br label %return

err_free_param.i11:                               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i5) #9
  br label %err_put_module.i12

err_put_module.i12:                               ; preds = %err_free_param.i11, %if.end.i7.err_put_module.i12_crit_edge
  tail call void @module_put(ptr noundef null) #9
  br label %return

return:                                           ; preds = %err_put_module.i12, %if.end16.i, %sw.bb1.return_crit_edge, %err_put_module.i, %if.end133.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 32769, %if.end133.i ], [ 1, %sw.bb.return_crit_edge ], [ 1, %err_put_module.i ], [ 32769, %if.end16.i ], [ 1, %sw.bb1.return_crit_edge ], [ 1, %err_put_module.i12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryptomgr_probe(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %template = getelementptr inbounds %struct.cryptomgr_param, ptr %data, i32 0, i32 3
  %call = tail call ptr @crypto_lookup_template(ptr noundef %template) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.preheader:                                ; preds = %entry
  %create = getelementptr inbounds %struct.crypto_template, ptr %call, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %do.body.preheader
  %0 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create, align 4
  %call2 = tail call i32 %1(ptr noundef nonnull %call, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2)
  %cmp = icmp eq i32 %call2, -11
  br i1 %cmp, label %land.rhs, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %2 = tail call i32 @llvm.read_register.i32(metadata !15) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.rhs.do.end_crit_edge, !prof !25

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

signal_pending.exit:                              ; preds = %land.rhs
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %7, align 4
  %and1.i.i.i.i.i = and i32 %12, 1
  %tobool5.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool5.not, label %signal_pending.exit.do.body_crit_edge, label %signal_pending.exit.do.end_crit_edge

signal_pending.exit.do.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %signal_pending.exit.do.end_crit_edge, %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %module.i = getelementptr inbounds %struct.crypto_template, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %14) #9
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  %larval = getelementptr inbounds %struct.cryptomgr_param, ptr %data, i32 0, i32 4
  %15 = ptrtoint ptr %larval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %larval, align 4
  %completion = getelementptr inbounds %struct.crypto_larval, ptr %16, i32 0, i32 2
  tail call void @complete_all(ptr noundef %completion) #9
  %17 = ptrtoint ptr %larval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %larval, align 4
  tail call fastcc void @crypto_alg_put(ptr noundef %18)
  tail call void @kfree(ptr noundef %data) #9
  call void @__asan_handle_no_return()
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #13
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_alg_put(ptr noundef %alg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cra_refcnt = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cra_refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %cra_refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cra_refcnt, ptr %cra_refcnt, i32 1, ptr elementtype(i32) %cra_refcnt) #9, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %land.lhs.true, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !25

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %cra_refcnt, i32 noundef 3) #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  %cra_destroy = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 14
  %1 = ptrtoint ptr %cra_destroy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cra_destroy, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %2(ptr noundef %alg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_lookup_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryptomgr_test(ptr noundef %data) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_alg_tested(ptr noundef %data, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %data) #9
  call void @__asan_handle_no_return()
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #13
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_alg_tested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_cryptomgr__339_269_cryptomgr_init3, !1, !"__initcall__kmod_cryptomgr__339_269_cryptomgr_init3", i1 false, i1 false}
!1 = !{!"../crypto/algboss.c", i32 269, i32 1}
!2 = !{ptr @__exitcall_cryptomgr_exit, !3, !"__exitcall_cryptomgr_exit", i1 false, i1 false}
!3 = !{!"../crypto/algboss.c", i32 270, i32 1}
!4 = !{ptr @__UNIQUE_ID_file340, !5, !"__UNIQUE_ID_file340", i1 false, i1 false}
!5 = !{!"../crypto/algboss.c", i32 272, i32 1}
!6 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description342, !8, !"__UNIQUE_ID_description342", i1 false, i1 false}
!8 = !{!"../crypto/algboss.c", i32 273, i32 1}
!9 = !{ptr @cryptomgr_notifier, !10, !"cryptomgr_notifier", i1 false, i1 false}
!10 = !{!"../crypto/algboss.c", i32 248, i32 30}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../crypto/algboss.c", i32 158, i32 11}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../crypto/algboss.c", i32 219, i32 11}
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
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2156019198, i64 2156019679, i64 2156019235, i64 2156019291, i64 2156019325, i64 2156019349, i64 2156019390, i64 2156019411, i64 2156019439, i64 2156019473}
!27 = !{i64 2148189136, i64 2148189168, i64 2148189197, i64 2148189231, i64 2148189262, i64 2148189285}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2148277137}
!30 = !{i64 2148191601, i64 2148191633, i64 2148191662, i64 2148191696, i64 2148191727, i64 2148191750}
!31 = !{i64 2148887750}
