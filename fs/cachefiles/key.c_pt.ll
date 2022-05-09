; ModuleID = '/llk/IR_all_yes/fs/cachefiles/key.c_pt.bc'
source_filename = "../fs/cachefiles/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.75, %union.anon.76 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { ptr, [12 x i8] }
%union.anon.76 = type { ptr, [4 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cachefiles_object = type { ptr, ptr, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.refcount_struct, i8, i8, i32 }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_cook_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017[%-6.6s] ==> %s(,%u,%*phN)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cachefiles_cook_key\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/cachefiles/key.c\00", [44 x i8] zeroinitializer }, align 32
@cachefiles_cook_key._entry_ptr = internal global ptr @cachefiles_cook_key._entry, section ".printk_index", align 4
@cachefiles_cook_key._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017[%-6.6s] len=%u nbe=%u nle=%u b64=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@cachefiles_cook_key._entry_ptr.5 = internal global ptr @cachefiles_cook_key._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@cachefiles_charmap = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-", [32 x i8] zeroinitializer }, align 32
@cachefiles_cook_key._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_cook_key._entry_ptr.9 = internal global ptr @cachefiles_cook_key._entry.7, section ".printk_index", align 4
@cachefiles_filecharmap = internal constant { <{ [128 x i8], [128 x i8] }>, [64 x i8] } { <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 45, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 84, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 100, i32 45 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"cachefiles_charmap\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 11, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 136, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"cachefiles_filecharmap\00", align 1
@___asan_gen_.42 = private constant [23 x i8] c"../fs/cachefiles/key.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 18, i32 19 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @cachefiles_cook_key._entry, ptr @cachefiles_cook_key._entry.3, ptr @cachefiles_cook_key._entry.7, ptr @cachefiles_cook_key._entry_ptr, ptr @cachefiles_cook_key._entry_ptr.5, ptr @cachefiles_cook_key._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @cachefiles_charmap, ptr @.str.8, ptr @cachefiles_filecharmap], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cook_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cook_key._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_charmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cook_key._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_filecharmap to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cachefiles_cook_key(ptr nocapture noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 4
  %key_len.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %3)
  %cmp.i343 = icmp ult i8 %3, 17
  %4 = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 20
  br i1 %cmp.i343, label %entry.fscache_get_key.exit_crit_edge, label %if.else.i

entry.fscache_get_key.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_get_key.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %fscache_get_key.exit

fscache_get_key.exit:                             ; preds = %if.else.i, %entry.fscache_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.else.i ], [ %4, %entry.fscache_get_key.exit_crit_edge ]
  %conv = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %7 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fscache_get_key.exit.do.body7_crit_edge, label %do.end

fscache_get_key.exit.do.body7_crit_edge:          ; preds = %fscache_get_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.end:                                           ; preds = %fscache_get_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv, ptr noundef %retval.0.i) #9
  br label %do.body7

do.body7:                                         ; preds = %do.end, %fscache_get_key.exit.do.body7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %3)
  %cmp = icmp ugt i8 %3, -4
  br i1 %cmp, label %do.body12, label %for.cond.preheader, !prof !30

for.cond.preheader:                               ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp21373.not = icmp eq i8 %3, 0
  br i1 %cmp21373.not, label %for.cond.preheader.if.end8.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.body12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0375 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %print.0374 = phi i32 [ %and25, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %retval.0.i, i32 %i.0375
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx23 = getelementptr [256 x i8], ptr @cachefiles_filecharmap, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %15 to i32
  %and25 = and i32 %print.0374, %conv24
  %inc = add nuw nsw i32 %i.0375, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end34, label %for.end.if.end8.i_crit_edge

for.end.if.end8.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.end.if.end8.i_crit_edge, %for.cond.preheader.if.end8.i_crit_edge
  %add28 = add nuw nsw i32 %conv, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add28, i32 noundef 3264) #10
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end8.i.cleanup181_crit_edge, label %if.end32

if.end8.i.cleanup181_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup181

if.end32:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %conv, 1
  %16 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 68, ptr %call9.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i, i32 1
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %retval.0.i, i32 %conv)
  br label %success

if.end34:                                         ; preds = %for.end
  %sub = add nsw i32 %conv, -1
  %or = or i32 %sub, 3
  %add35 = add nsw i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35)
  %cmp37376.not = icmp eq i32 %add35, 0
  br i1 %cmp37376.not, label %if.end34.for.end50_crit_edge, label %if.end34.for.body39_crit_edge

if.end34.for.body39_crit_edge:                    ; preds = %if.end34
  br label %for.body39

if.end34.for.end50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.body39:                                       ; preds = %how_many_hex_digits.exit359.for.body39_crit_edge, %if.end34.for.body39_crit_edge
  %i.1379 = phi i32 [ %add49, %how_many_hex_digits.exit359.for.body39_crit_edge ], [ 0, %if.end34.for.body39_crit_edge ]
  %nbe.0378 = phi i32 [ %add44395, %how_many_hex_digits.exit359.for.body39_crit_edge ], [ 0, %if.end34.for.body39_crit_edge ]
  %nle.0377 = phi i32 [ %add47, %how_many_hex_digits.exit359.for.body39_crit_edge ], [ 0, %if.end34.for.body39_crit_edge ]
  %add.ptr40 = getelementptr i8, ptr %retval.0.i, i32 %i.1379
  %18 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %how_many_hex_digits.exit.thread, label %cond.true.i346

how_many_hex_digits.exit.thread:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  %add43393 = add i32 %nbe.0378, 1
  br label %how_many_hex_digits.exit359

cond.true.i346:                                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #6, !range !32
  %22 = and i32 %21, 28
  %add7.i = sub nuw nsw i32 32, %22
  %div.i399 = lshr exact i32 %add7.i, 2
  %add43 = add i32 %nbe.0378, 1
  %add44 = add i32 %add43, %div.i399
  %23 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #6, !range !32
  %24 = and i32 %23, 28
  %add7.i355 = sub nuw nsw i32 32, %24
  %div.i356400 = lshr exact i32 %add7.i355, 2
  br label %how_many_hex_digits.exit359

how_many_hex_digits.exit359:                      ; preds = %cond.true.i346, %how_many_hex_digits.exit.thread
  %add44395 = phi i32 [ %add44, %cond.true.i346 ], [ %add43393, %how_many_hex_digits.exit.thread ]
  %cond10.i358 = phi i32 [ %div.i356400, %cond.true.i346 ], [ 0, %how_many_hex_digits.exit.thread ]
  %add46 = add i32 %nle.0377, 1
  %add47 = add i32 %add46, %cond10.i358
  %add49 = add i32 %i.1379, 4
  %cmp37 = icmp ult i32 %add49, %add35
  br i1 %cmp37, label %how_many_hex_digits.exit359.for.body39_crit_edge, label %how_many_hex_digits.exit359.for.end50_crit_edge

how_many_hex_digits.exit359.for.end50_crit_edge:  ; preds = %how_many_hex_digits.exit359
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

how_many_hex_digits.exit359.for.body39_crit_edge: ; preds = %how_many_hex_digits.exit359
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.end50:                                        ; preds = %how_many_hex_digits.exit359.for.end50_crit_edge, %if.end34.for.end50_crit_edge
  %nle.0.lcssa = phi i32 [ 0, %if.end34.for.end50_crit_edge ], [ %add47, %how_many_hex_digits.exit359.for.end50_crit_edge ]
  %nbe.0.lcssa = phi i32 [ 0, %if.end34.for.end50_crit_edge ], [ %add44395, %how_many_hex_digits.exit359.for.end50_crit_edge ]
  %sub52 = add nuw nsw i32 %conv, 2
  %div = udiv i32 %sub52, 3
  %mul54 = shl nuw nsw i32 %div, 2
  %add55 = or i32 %mul54, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %25 = load i32, ptr @cachefiles_debug, align 4
  %and57 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.end50.do.end71_crit_edge, label %do.end62

for.end50.do.end71_crit_edge:                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.end62:                                         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i360 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i360 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task65, align 8
  %comm66 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm66, i32 noundef %conv, i32 noundef %nbe.0.lcssa, i32 noundef %nle.0.lcssa, i32 noundef %add55) #9
  br label %do.end71

do.end71:                                         ; preds = %do.end62, %for.end50.do.end71_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nbe.0.lcssa, i32 %add55)
  %cmp72 = icmp ult i32 %nbe.0.lcssa, %add55
  call void @__sanitizer_cov_trace_cmp4(i32 %nle.0.lcssa, i32 %add55)
  %cmp74 = icmp ult i32 %nle.0.lcssa, %add55
  %or.cond = select i1 %cmp72, i1 true, i1 %cmp74
  br i1 %or.cond, label %if.then76, label %if.end8.i340

if.then76:                                        ; preds = %do.end71
  %30 = tail call i32 @llvm.umin.i32(i32 %nbe.0.lcssa, i32 %nle.0.lcssa)
  %add80 = add i32 %30, 1
  %call9.i311 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add80, i32 noundef 3264) #10
  %tobool82.not = icmp eq ptr %call9.i311, null
  br i1 %tobool82.not, label %if.then76.cleanup181_crit_edge, label %if.end84

if.then76.cleanup181_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup181

if.end84:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_cmp4(i32 %nbe.0.lcssa, i32 %nle.0.lcssa)
  %cmp85.not = icmp ugt i32 %nbe.0.lcssa, %nle.0.lcssa
  br i1 %cmp37376.not, label %if.end84.success_crit_edge, label %for.body92.preheader

if.end84.success_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

for.body92.preheader:                             ; preds = %if.end84
  %conv88 = select i1 %cmp85.not, i8 84, i8 83
  %31 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retval.0.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %x.0.peel = select i1 %cmp85.not, i32 %33, i32 %32
  %34 = ptrtoint ptr %call9.i311 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv88, ptr %call9.i311, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0.peel)
  %cmp101.not.peel = icmp eq i32 %x.0.peel, 0
  br i1 %cmp101.not.peel, label %for.body92.preheader.if.end108.peel_crit_edge, label %if.then103.peel

for.body92.preheader.if.end108.peel_crit_edge:    ; preds = %for.body92.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.peel

if.then103.peel:                                  ; preds = %for.body92.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr104.peel = getelementptr i8, ptr %call9.i311, i32 1
  %call106.peel = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr104.peel, i32 noundef %30, ptr noundef nonnull @.str.6, i32 noundef %x.0.peel)
  %add107.peel = add i32 %call106.peel, 1
  br label %if.end108.peel

if.end108.peel:                                   ; preds = %if.then103.peel, %for.body92.preheader.if.end108.peel_crit_edge
  %len.1.peel = phi i32 [ %add107.peel, %if.then103.peel ], [ 1, %for.body92.preheader.if.end108.peel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add35)
  %cmp90.peel = icmp ugt i32 %add35, 4
  br i1 %cmp90.peel, label %if.end108.peel.for.body92_crit_edge, label %if.end108.peel.success_crit_edge

if.end108.peel.success_crit_edge:                 ; preds = %if.end108.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end108.peel.for.body92_crit_edge:              ; preds = %if.end108.peel
  br label %for.body92

for.body92:                                       ; preds = %if.end108.for.body92_crit_edge, %if.end108.peel.for.body92_crit_edge
  %i.2385 = phi i32 [ %add110, %if.end108.for.body92_crit_edge ], [ 4, %if.end108.peel.for.body92_crit_edge ]
  %len.0383 = phi i32 [ %len.1, %if.end108.for.body92_crit_edge ], [ %len.1.peel, %if.end108.peel.for.body92_crit_edge ]
  %add.ptr97 = getelementptr i8, ptr %retval.0.i, i32 %i.2385
  %35 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr97, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %x.0 = select i1 %cmp85.not, i32 %37, i32 %36
  %inc99 = add i32 %len.0383, 1
  %arrayidx100 = getelementptr i8, ptr %call9.i311, i32 %len.0383
  %38 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 44, ptr %arrayidx100, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0)
  %cmp101.not = icmp eq i32 %x.0, 0
  br i1 %cmp101.not, label %for.body92.if.end108_crit_edge, label %if.then103

for.body92.if.end108_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then103:                                       ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr104 = getelementptr i8, ptr %call9.i311, i32 %inc99
  %sub105 = sub i32 %add80, %inc99
  %call106 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.6, i32 noundef %x.0)
  %add107 = add i32 %call106, %inc99
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %for.body92.if.end108_crit_edge
  %len.1 = phi i32 [ %add107, %if.then103 ], [ %inc99, %for.body92.if.end108_crit_edge ]
  %add110 = add i32 %i.2385, 4
  %cmp90 = icmp ult i32 %add110, %add35
  br i1 %cmp90, label %if.end108.for.body92_crit_edge, label %if.end108.success_crit_edge, !llvm.loop !33

if.end108.success_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end108.for.body92_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

if.end8.i340:                                     ; preds = %do.end71
  %add113 = or i32 %mul54, 3
  %call9.i339 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add113, i32 noundef 3264) #10
  %tobool115.not = icmp eq ptr %call9.i339, null
  br i1 %tobool115.not, label %if.end8.i340.cleanup181_crit_edge, label %if.end117

if.end8.i340.cleanup181_crit_edge:                ; preds = %if.end8.i340
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup181

if.end117:                                        ; preds = %if.end8.i340
  %39 = ptrtoint ptr %call9.i339 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 69, ptr %call9.i339, align 128
  %40 = trunc i32 %div to i8
  %41 = mul i8 %40, 3
  %42 = sub i8 48, %3
  %conv120 = add i8 %42, %41
  %arrayidx121 = getelementptr i8, ptr %call9.i339, i32 1
  %43 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv120, ptr %arrayidx121, align 1
  %add.ptr122 = getelementptr i8, ptr %retval.0.i, i32 %conv
  br label %do.body123

do.body123:                                       ; preds = %if.end139.do.body123_crit_edge, %if.end117
  %len.3 = phi i32 [ 2, %if.end117 ], [ %inc156, %if.end139.do.body123_crit_edge ]
  %key.0 = phi ptr [ %retval.0.i, %if.end117 ], [ %key.1, %if.end139.do.body123_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %key.0, i32 1
  %44 = ptrtoint ptr %key.0 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %key.0, align 1
  %conv124 = zext i8 %45 to i32
  %cmp125 = icmp ult ptr %incdec.ptr, %add.ptr122
  br i1 %cmp125, label %if.then127, label %do.body123.if.end139_crit_edge

do.body123.if.end139_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then127:                                       ; preds = %do.body123
  %incdec.ptr128 = getelementptr i8, ptr %key.0, i32 2
  %46 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr, align 1
  %conv129 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv129, 8
  %or130 = or i32 %shl, %conv124
  %cmp131 = icmp ult ptr %incdec.ptr128, %add.ptr122
  br i1 %cmp131, label %if.then133, label %if.then127.if.end139_crit_edge

if.then127.if.end139_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then133:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr134 = getelementptr i8, ptr %key.0, i32 3
  %48 = ptrtoint ptr %incdec.ptr128 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr128, align 1
  %conv135 = zext i8 %49 to i32
  %shl136 = shl nuw nsw i32 %conv135, 16
  %or137 = or i32 %shl136, %or130
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.then127.if.end139_crit_edge, %do.body123.if.end139_crit_edge
  %acc.0 = phi i32 [ %or137, %if.then133 ], [ %or130, %if.then127.if.end139_crit_edge ], [ %conv124, %do.body123.if.end139_crit_edge ]
  %key.1 = phi ptr [ %incdec.ptr134, %if.then133 ], [ %incdec.ptr128, %if.then127.if.end139_crit_edge ], [ %incdec.ptr, %do.body123.if.end139_crit_edge ]
  %and140 = and i32 %acc.0, 63
  %arrayidx141 = getelementptr [64 x i8], ptr @cachefiles_charmap, i32 0, i32 %and140
  %50 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx141, align 1
  %inc142 = or i32 %len.3, 1
  %arrayidx143 = getelementptr i8, ptr %call9.i339, i32 %len.3
  %52 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx143, align 2
  %shr = lshr i32 %acc.0, 6
  %and144 = and i32 %shr, 63
  %arrayidx145 = getelementptr [64 x i8], ptr @cachefiles_charmap, i32 0, i32 %and144
  %53 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx145, align 1
  %inc146 = add i32 %len.3, 2
  %arrayidx147 = getelementptr i8, ptr %call9.i339, i32 %inc142
  %55 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx147, align 1
  %shr148 = lshr i32 %acc.0, 12
  %and149 = and i32 %shr148, 63
  %arrayidx150 = getelementptr [64 x i8], ptr @cachefiles_charmap, i32 0, i32 %and149
  %56 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx150, align 1
  %inc151 = add i32 %len.3, 3
  %arrayidx152 = getelementptr i8, ptr %call9.i339, i32 %inc146
  %58 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx152, align 2
  %shr153 = lshr i32 %acc.0, 18
  %and154 = and i32 %shr153, 63
  %arrayidx155 = getelementptr [64 x i8], ptr @cachefiles_charmap, i32 0, i32 %and154
  %59 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx155, align 1
  %inc156 = add i32 %len.3, 4
  %arrayidx157 = getelementptr i8, ptr %call9.i339, i32 %inc151
  %61 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx157, align 1
  %cmp159 = icmp ult ptr %key.1, %add.ptr122
  br i1 %cmp159, label %if.end139.do.body123_crit_edge, label %if.end139.success_crit_edge

if.end139.success_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end139.do.body123_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body123

success:                                          ; preds = %if.end139.success_crit_edge, %if.end108.success_crit_edge, %if.end108.peel.success_crit_edge, %if.end84.success_crit_edge, %if.end32
  %len.4 = phi i32 [ %add, %if.end32 ], [ 0, %if.end84.success_crit_edge ], [ %len.1.peel, %if.end108.peel.success_crit_edge ], [ %len.1, %if.end108.success_crit_edge ], [ %inc156, %if.end139.success_crit_edge ]
  %name.0 = phi ptr [ %call9.i, %if.end32 ], [ %call9.i311, %if.end84.success_crit_edge ], [ %call9.i311, %if.end108.peel.success_crit_edge ], [ %call9.i311, %if.end108.success_crit_edge ], [ %call9.i339, %if.end139.success_crit_edge ]
  %arrayidx162 = getelementptr i8, ptr %name.0, i32 %len.4
  %62 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx162, align 1
  %d_name = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %63 = ptrtoint ptr %d_name to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %name.0, ptr %d_name, align 4
  %conv163 = trunc i32 %len.4 to i8
  %d_name_len = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 8
  %64 = ptrtoint ptr %d_name_len to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv163, ptr %d_name_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %65 = load i32, ptr @cachefiles_debug, align 4
  %and165 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %success.cleanup181_crit_edge, label %do.end170

success.cleanup181_crit_edge:                     ; preds = %success
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup181

do.end170:                                        ; preds = %success
  call void @__sanitizer_cov_trace_pc() #8
  %66 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i361 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i361 to ptr
  %task173 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task173 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task173, align 8
  %comm174 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 101
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm174, ptr noundef nonnull @.str.1, ptr noundef nonnull %name.0) #9
  br label %cleanup181

cleanup181:                                       ; preds = %do.end170, %success.cleanup181_crit_edge, %if.end8.i340.cleanup181_crit_edge, %if.then76.cleanup181_crit_edge, %if.end8.i.cleanup181_crit_edge
  %retval.1 = phi i1 [ false, %if.end8.i.cleanup181_crit_edge ], [ false, %if.end8.i340.cleanup181_crit_edge ], [ true, %do.end170 ], [ true, %success.cleanup181_crit_edge ], [ false, %if.then76.cleanup181_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/key.c", i32 45, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_cook_key._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_cook_key._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/key.c", i32 84, i32 2}
!8 = !{ptr @cachefiles_cook_key._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_cook_key._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cachefiles/key.c", i32 100, i32 45}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/cachefiles/key.c", i32 136, i32 2}
!14 = !{ptr @cachefiles_cook_key._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cachefiles_cook_key._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cachefiles_filecharmap, !17, !"cachefiles_filecharmap", i1 false, i1 false}
!17 = !{!"../fs/cachefiles/key.c", i32 18, i32 19}
!18 = !{ptr @cachefiles_charmap, !19, !"cachefiles_charmap", i1 false, i1 false}
!19 = !{!"../fs/cachefiles/key.c", i32 11, i32 19}
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
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2155170008, i64 2155170491, i64 2155170045, i64 2155170101, i64 2155170135, i64 2155170159, i64 2155170200, i64 2155170221, i64 2155170249, i64 2155170283}
!32 = !{i32 0, i32 33}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
