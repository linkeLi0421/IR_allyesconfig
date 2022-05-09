; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_uid.c_pt.bc'
source_filename = "../net/ax25/ax25_uid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ax25_uid_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_uid_policy\09\09\09\09"
module asm "\09.long\09__crc_ax25_uid_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_uid_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_uid_policy\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_uid_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_findbyuid\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_findbyuid\09\09\09\09"
module asm "\09.long\09__crc_ax25_findbyuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_findbyuid:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_findbyuid\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_findbyuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ax25_uid_assoc = type { %struct.hlist_node, %struct.refcount_struct, %struct.kuid_t, %struct.ax25_address }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.ax25_address = type { [7 x i8] }
%struct.sockaddr_ax25 = type { i16, %struct.ax25_address, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%union.anon.121 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@ax25_uid_policy = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ax25_uid_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_uid_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_uid_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_uid_policy to i32), ptr @__kstrtab_ax25_uid_policy, ptr @__kstrtabns_ax25_uid_policy }, section "___ksymtab+ax25_uid_policy", align 4
@ax25_uid_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ax25_uid_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ax25_findbyuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_findbyuid = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_findbyuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_findbyuid to i32), ptr @__kstrtab_ax25_findbyuid, ptr @__kstrtabns_ax25_findbyuid }, section "___ksymtab+ax25_findbyuid", align 4
@ax25_uid_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ax25_uid_seq_start, ptr @ax25_uid_seq_stop, ptr @ax25_uid_seq_next, ptr @ax25_uid_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax25_uid_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Policy: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%6d %s\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35296, i64 35297, i64 35298]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"ax25_uid_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 46, i32 5 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ax25_uid_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"ax25_uid_list\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 43, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"ax25_uid_seqops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 181, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 44, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 169, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [23 x i8] c"../net/ax25/ax25_uid.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 174, i32 19 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_ax25_findbyuid, ptr @__ksymtab_ax25_uid_policy, ptr @ax25_uid_free, ptr @ax25_uid_policy, ptr @ax25_uid_lock, ptr @ax25_uid_list, ptr @ax25_uid_seqops, ptr @.str, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_uid_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_uid_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_uid_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_uid_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_findbyuid([1 x i32] %uid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %uid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %uid.coerce, 0
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ax25_uid.0.in = phi ptr [ @ax25_uid_list, %entry ], [ %ax25_uid.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ax25_uid.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ax25_uid.0 = load ptr, ptr %ax25_uid.0.in, align 4
  %tobool2.not = icmp eq ptr %ax25_uid.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %uid3 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0, i32 0, i32 2
  %1 = ptrtoint ptr %uid3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %uid3, align 4
  %cmp.i = icmp eq i32 %.unpack, %uid.coerce.fca.0.extract.i6.i
  br i1 %cmp.i, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !31
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !32

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !33

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.end_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #7
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  ret ptr %ax25_uid.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_uid_ioctl(i32 noundef %cmd, ptr noundef %sax) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup96_crit_edge [
    i32 35296, label %sw.bb
    i32 35297, label %sw.bb18
    i32 35298, label %sw.bb55
  ]

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

sw.bb:                                            ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %ax25_uid.0.in = phi ptr [ @ax25_uid_list, %sw.bb ], [ %ax25_uid.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %ax25_uid.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %ax25_uid.0 = load ptr, ptr %ax25_uid.0.in, align 4
  %tobool2.not = icmp eq ptr %ax25_uid.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0, i32 0, i32 3
  %call3 = tail call i32 @ax25cmp(ptr noundef %sax25_call, ptr noundef %call) #7
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0, i32 0, i32 2
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %uid, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %9, [1 x i32] %11) #7
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge
  %res.0 = phi i32 [ %call7, %do.end ], [ -2, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  br label %cleanup96

sw.bb18:                                          ; preds = %entry
  %call19 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call19, label %if.end21, label %sw.bb18.cleanup96_crit_edge

sw.bb18.cleanup96_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end21:                                         ; preds = %sw.bb18
  %12 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i131 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i131 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task29, align 8
  %cred30 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred30, align 16
  %user_ns31 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns31, align 4
  %sax25_ndigis = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 2
  %20 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sax25_ndigis, align 4
  %call32 = tail call i32 @make_kuid(ptr noundef %19, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp.i.not = icmp eq i32 %call32, -1
  br i1 %cmp.i.not, label %if.end21.cleanup96_crit_edge, label %if.end37

if.end21.cleanup96_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end37:                                         ; preds = %if.end21
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_uid_lock) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end37
  %ax25_uid.0.in.i = phi ptr [ @ax25_uid_list, %if.end37 ], [ %ax25_uid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %ax25_uid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %ax25_uid.0.i = load ptr, ptr %ax25_uid.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %ax25_uid.0.i, null
  br i1 %tobool2.not.i, label %if.end42, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %uid3.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %uid3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i = load i32, ptr %uid3.i, align 4
  %cmp.i.i = icmp eq i32 %.unpack.i, %call32
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.0.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !32

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then41_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !33

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then41_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #7
  br label %if.then41

if.then41:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then41_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  %call.i.i.i.i.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i135, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i134 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i134, label %if.end5.i.i.i.i.cleanup96_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.cleanup96_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup96

if.then.i135:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @kfree(ptr noundef nonnull %ax25_uid.0.i) #7
  br label %cleanup96

if.end42:                                         ; preds = %for.cond.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  %27 = ptrtoint ptr %sax25_ndigis to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sax25_ndigis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp44 = icmp eq i32 %28, 0
  br i1 %cmp44, label %if.end42.cleanup96_crit_edge, label %if.end46

if.end42.cleanup96_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end46:                                         ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 24) #10
  %cmp48 = icmp eq ptr %call7.i, null
  br i1 %cmp48, label %if.end46.cleanup96_crit_edge, label %if.end50

if.end46.cleanup96_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end50:                                         ; preds = %if.end46
  %refcount = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call7.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  %30 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %refcount, align 8
  %uid51 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %uid51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call32, ptr %uid51, align 4
  %call52 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call7.i, i32 0, i32 3
  %sax25_call53 = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %call52, ptr %sax25_call53, i32 7)
  tail call void @_raw_write_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %33 = load ptr, ptr @ax25_uid_list, align 4
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end50.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end50.hlist_add_head.exit_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end50.hlist_add_head.exit_crit_edge
  store volatile ptr %call7.i, ptr @ax25_uid_list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %36 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr @ax25_uid_list, ptr %pprev34.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  br label %cleanup96

sw.bb55:                                          ; preds = %entry
  %call56 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call56, label %if.end58, label %sw.bb55.cleanup96_crit_edge

sw.bb55.cleanup96_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end58:                                         ; preds = %sw.bb55
  tail call void @_raw_write_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %sax25_call72 = getelementptr inbounds %struct.sockaddr_ax25, ptr %sax, i32 0, i32 1
  br label %for.cond69

for.cond69:                                       ; preds = %for.body71.for.cond69_crit_edge, %if.end58
  %ax25_uid.1.in = phi ptr [ @ax25_uid_list, %if.end58 ], [ %ax25_uid.1, %for.body71.for.cond69_crit_edge ]
  %37 = ptrtoint ptr %ax25_uid.1.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %ax25_uid.1 = load ptr, ptr %ax25_uid.1.in, align 4
  %cond = icmp eq ptr %ax25_uid.1, null
  br i1 %cond, label %if.then93, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %call73 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.1, i32 0, i32 3
  %call74 = tail call i32 @ax25cmp(ptr noundef %sax25_call72, ptr noundef %call73) #7
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.end94, label %for.body71.for.cond69_crit_edge

for.body71.for.cond69_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond69

if.then93:                                        ; preds = %for.cond69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_write_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  br label %cleanup96

if.end94:                                         ; preds = %for.body71
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ax25_uid.1, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.not.i, label %if.end94.hlist_del_init.exit_crit_edge, label %if.then.i136

if.end94.hlist_del_init.exit_crit_edge:           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit

if.then.i136:                                     ; preds = %if.end94
  %40 = ptrtoint ptr %ax25_uid.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ax25_uid.1, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %39, align 4
  %tobool.not.i3.i = icmp eq ptr %41, null
  br i1 %tobool.not.i3.i, label %if.then.i136.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i136.__hlist_del.exit.i_crit_edge:        ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i136.__hlist_del.exit.i_crit_edge
  %44 = ptrtoint ptr %ax25_uid.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %ax25_uid.1, align 4
  %45 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end94.hlist_del_init.exit_crit_edge
  %refcount.i137 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %ax25_uid.1, i32 0, i32 1
  %call.i.i.i.i.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i137, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcount.i137, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i137, ptr %refcount.i137, i32 1, ptr elementtype(i32) %refcount.i137) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i139 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i139)
  %cmp.i.i.i.i140 = icmp eq i32 %asmresult.i.i.i.i.i.i.i139, 1
  br i1 %cmp.i.i.i.i140, label %if.then.i144, label %if.end5.i.i.i.i142

if.end5.i.i.i.i142:                               ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i139)
  %.not.i.i.i.i141 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i139, 0
  br i1 %.not.i.i.i.i141, label %if.end5.i.i.i.i142.ax25_uid_put.exit145_crit_edge, label %if.then10.i.i.i.i143, !prof !33

if.end5.i.i.i.i142.ax25_uid_put.exit145_crit_edge: ; preds = %if.end5.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax25_uid_put.exit145

if.then10.i.i.i.i143:                             ; preds = %if.end5.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i137, i32 noundef 3) #7
  br label %ax25_uid_put.exit145

if.then.i144:                                     ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @kfree(ptr noundef nonnull %ax25_uid.1) #7
  br label %ax25_uid_put.exit145

ax25_uid_put.exit145:                             ; preds = %if.then.i144, %if.then10.i.i.i.i143, %if.end5.i.i.i.i142.ax25_uid_put.exit145_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  br label %cleanup96

cleanup96:                                        ; preds = %ax25_uid_put.exit145, %if.then93, %sw.bb55.cleanup96_crit_edge, %hlist_add_head.exit, %if.end46.cleanup96_crit_edge, %if.end42.cleanup96_crit_edge, %if.then.i135, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup96_crit_edge, %if.end21.cleanup96_crit_edge, %sw.bb18.cleanup96_crit_edge, %for.end, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ -2, %if.then93 ], [ 0, %ax25_uid_put.exit145 ], [ %res.0, %for.end ], [ 0, %hlist_add_head.exit ], [ -1, %sw.bb18.cleanup96_crit_edge ], [ -22, %if.end21.cleanup96_crit_edge ], [ -22, %if.end42.cleanup96_crit_edge ], [ -12, %if.end46.cleanup96_crit_edge ], [ -1, %sw.bb55.cleanup96_crit_edge ], [ -22, %entry.cleanup96_crit_edge ], [ -17, %if.end5.i.i.i.i.cleanup96_crit_edge ], [ -17, %if.then10.i.i.i.i ], [ -17, %if.then.i135 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax25_uid_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_hlist_start_head(ptr noundef nonnull @ax25_uid_list, i64 noundef %1) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_uid_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax25_uid_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_hlist_next(ptr noundef %v, ptr noundef nonnull @ax25_uid_list, ptr noundef %pos) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_uid_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr @ax25_uid_policy, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %uid = getelementptr inbounds %struct.ax25_uid_assoc, ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %uid, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %9) #7
  %call2 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %v, i32 0, i32 3
  %call3 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %call2) #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i32 noundef %call1, ptr noundef %call3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_uid_free() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_write_lock(ptr noundef nonnull @ax25_uid_lock) #7
  %0 = load ptr, ptr @ax25_uid_list, align 4
  %tobool.not18 = icmp eq ptr %0, null
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ax25_uid_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %11, %ax25_uid_put.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %for.body.hlist_del_init.exit_crit_edge, label %if.then.i

for.body.hlist_del_init.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %for.body.hlist_del_init.exit_crit_edge
  %refcount.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i17, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_uid_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.ax25_uid_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax25_uid_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %ax25_uid_put.exit

if.then.i17:                                      ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %ax25_uid_put.exit

ax25_uid_put.exit:                                ; preds = %if.then.i17, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_uid_put.exit_crit_edge
  %11 = load ptr, ptr @ax25_uid_list, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %ax25_uid_put.exit.for.end_crit_edge, label %ax25_uid_put.exit.for.body_crit_edge

ax25_uid_put.exit.for.body_crit_edge:             ; preds = %ax25_uid_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ax25_uid_put.exit.for.end_crit_edge:              ; preds = %ax25_uid_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ax25_uid_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @ax25_uid_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_ax25_uid_policy, !1, !"__ksymtab_ax25_uid_policy", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_uid.c", i32 48, i32 1}
!2 = !{ptr @__ksymtab_ax25_findbyuid, !3, !"__ksymtab_ax25_findbyuid", i1 false, i1 false}
!3 = !{!"../net/ax25/ax25_uid.c", i32 67, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ax25/ax25_uid.c", i32 81, i32 28}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ax25/ax25_uid.c", i32 94, i32 26}
!8 = !{ptr @ax25_uid_seqops, !9, !"ax25_uid_seqops", i1 false, i1 false}
!9 = !{!"../net/ax25/ax25_uid.c", i32 181, i32 29}
!10 = !{ptr @ax25_uid_policy, !11, !"ax25_uid_policy", i1 false, i1 false}
!11 = !{!"../net/ax25/ax25_uid.c", i32 46, i32 5}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ax25/ax25_uid.c", i32 44, i32 8}
!14 = !{ptr @ax25_uid_lock, !13, !"ax25_uid_lock", i1 false, i1 false}
!15 = !{ptr @ax25_uid_list, !16, !"ax25_uid_list", i1 false, i1 false}
!16 = !{!"../net/ax25/ax25_uid.c", i32 43, i32 8}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ax25/ax25_uid.c", i32 169, i32 19}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ax25/ax25_uid.c", i32 174, i32 19}
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
!31 = !{i64 2148289361, i64 2148289393, i64 2148289422, i64 2148289456, i64 2148289487, i64 2148289510}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148377362}
!35 = !{i64 2148291826, i64 2148291858, i64 2148291887, i64 2148291921, i64 2148291952, i64 2148291975}
!36 = !{i64 2149313642}
