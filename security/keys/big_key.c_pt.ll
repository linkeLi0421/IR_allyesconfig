; ModuleID = '/llk/IR_all_yes/security/keys/big_key.c_pt.bc'
source_filename = "../security/keys/big_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.84, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.84 = type { %union.key_payload }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"big_key\00", [24 x i8] zeroinitializer }, align 32
@key_type_big_key = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @big_key_preparse, ptr @big_key_free_preparse, ptr @generic_key_instantiate, ptr @big_key_update, ptr null, ptr null, ptr @big_key_revoke, ptr @big_key_destroy, ptr @big_key_describe, ptr @big_key_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c": %zu [%s]\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"buff\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_big_key__292_291_big_key_init7 = internal global ptr @big_key_init, section ".initcall7.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 42, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"key_type_big_key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 41, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 103, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 219, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 221, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [27 x i8] c"../security/keys/big_key.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 221, i32 51 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_big_key__292_291_big_key_init7, ptr @.str, ptr @key_type_big_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_big_key to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @big_key_preparse(ptr noundef %prep) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen1, align 4
  %add = add i32 %1, 16
  %2 = add i32 %1, -1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %2)
  %3 = icmp ult i32 %2, -1048576
  br i1 %3, label %entry.cleanup51_crit_edge, label %lor.lhs.false3

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

lor.lhs.false3:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup51_crit_edge, label %if.end

lor.lhs.false3.cleanup51_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end:                                           ; preds = %lor.lhs.false3
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %6 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %quotalen, align 8
  %7 = inttoptr i32 %1 to ptr
  %arrayidx5 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %1)
  %cmp6 = icmp ugt i32 %1, 992
  br i1 %cmp6, label %if.then7, label %if.end8.i

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #7
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %pos, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %cleanup.thread108, label %if.end10

cleanup.thread108:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %cleanup51

if.end10:                                         ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 32) #11
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call.i100 = tail call i32 @wait_for_random_bytes() #7
  tail call void @get_random_bytes(ptr noundef nonnull %call7.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool16.not = icmp eq i32 %call.i100, 0
  br i1 %tobool16.not, label %if.end20, label %if.end14.cleanup.thread_crit_edge, !prof !26

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  tail call void @chacha20poly1305_encrypt(ptr noundef nonnull %call.i, ptr noundef %12, i32 noundef %1, ptr noundef null, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %call7.i) #7
  %conv = zext i32 %add to i64
  %call22 = tail call ptr @shmem_kernel_file_setup(ptr noundef nonnull @.str.1, i64 noundef %conv, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call22 to i32
  br label %cleanup.thread

if.end26:                                         ; preds = %if.end20
  %call27 = call i32 @kernel_write(ptr noundef %call22, ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull %pos) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %add)
  %cmp28.not = icmp eq i32 %call27, %add
  br i1 %cmp28.not, label %cleanup.thread113, label %err_fput

cleanup.thread113:                                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %payload, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %call22, i32 0, i32 1
  %15 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %f_path, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %arrayidx, align 4
  call void @path_get(ptr noundef %arrayidx) #7
  call void @fput(ptr noundef %call22) #7
  call void @kvfree_sensitive(ptr noundef nonnull %call.i, i32 noundef %add) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %cleanup51

cleanup.thread:                                   ; preds = %if.then24, %if.end14.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call.i100, %if.end14.cleanup.thread_crit_edge ], [ %13, %if.then24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %err_enckey

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %error

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #10
  %tobool40.not = icmp eq ptr %call9.i, null
  br i1 %tobool40.not, label %if.end8.i.cleanup51_crit_edge, label %if.end42

if.end8.i.cleanup51_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end42:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %payload, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %21 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %datalen1, align 4
  %23 = call ptr @memcpy(ptr %call9.i, ptr %20, i32 %22)
  br label %cleanup51

err_fput:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp31 = icmp sgt i32 %call27, -1
  %spec.store.select = select i1 %cmp31, i32 -5, i32 %call27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  call void @fput(ptr noundef %call22) #7
  br label %err_enckey

err_enckey:                                       ; preds = %err_fput, %cleanup.thread
  %ret.0107 = phi i32 [ %ret.0.ph, %cleanup.thread ], [ %spec.store.select, %err_fput ]
  call void @kfree_sensitive(ptr noundef nonnull %call7.i) #7
  br label %error

error:                                            ; preds = %err_enckey, %cleanup
  %ret.0106 = phi i32 [ %ret.0107, %err_enckey ], [ -12, %cleanup ]
  call void @kvfree_sensitive(ptr noundef nonnull %call.i, i32 noundef %add) #7
  br label %cleanup51

cleanup51:                                        ; preds = %error, %if.end42, %if.end8.i.cleanup51_crit_edge, %cleanup.thread113, %cleanup.thread108, %lor.lhs.false3.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ %ret.0106, %error ], [ -22, %lor.lhs.false3.cleanup51_crit_edge ], [ -22, %entry.cleanup51_crit_edge ], [ -12, %if.end8.i.cleanup51_crit_edge ], [ -12, %cleanup.thread108 ], [ 0, %cleanup.thread113 ], [ 0, %if.end42 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @big_key_free_preparse(ptr noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 992, i32 %1)
  %cmp = icmp ugt i32 %1, 992
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  tail call void @path_put(ptr noundef %arrayidx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %payload1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %2 = ptrtoint ptr %payload1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload1, align 8
  tail call void @kfree_sensitive(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @big_key_update(ptr noundef %key, ptr noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  %call = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i10 = icmp ugt ptr %5, inttoptr (i32 992 to ptr)
  br i1 %cmp.i10, label %if.then.i, label %if.then2.big_key_destroy.exit_crit_edge

if.then2.big_key_destroy.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %big_key_destroy.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1.i = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  tail call void @path_put(ptr noundef %arrayidx1.i) #7
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx1.i, align 4
  %dentry.i = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dentry.i, align 4
  br label %big_key_destroy.exit

big_key_destroy.exit:                             ; preds = %if.then.i, %if.then2.big_key_destroy.exit_crit_edge
  %8 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #7
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %8, align 4
  br label %if.end3

if.end3:                                          ; preds = %big_key_destroy.exit, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @generic_key_instantiate(ptr noundef %key, ptr noundef %prep) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @big_key_revoke(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %call = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef 0) #7
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp eq i16 %1, 1
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %cmp = icmp ugt ptr %3, inttoptr (i32 992 to ptr)
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @vfs_truncate(ptr noundef %arrayidx, i64 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @big_key_destroy(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp ugt ptr %1, inttoptr (i32 992 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  tail call void @path_put(ptr noundef %arrayidx1) #7
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx1, align 4
  %dentry = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #7
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @big_key_describe(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %2 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %3) #7
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i = icmp eq i16 %5, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  %cmp = icmp ugt ptr %1, inttoptr (i32 992 to ptr)
  %cond = select i1 %cmp, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %6, ptr noundef nonnull %cond) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @big_key_read(ptr noundef %key, ptr noundef writeonly %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  %tobool.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %buflen)
  %cmp = icmp ugt i32 %2, %buflen
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %cmp1 = icmp ugt ptr %1, inttoptr (i32 992 to ptr)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %add = add i32 %2, 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %pos, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %cleanup.thread, label %if.end7

cleanup.thread:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %cleanup34

if.end7:                                          ; preds = %if.then2
  %arrayidx3 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %7 = tail call i32 @llvm.read_register.i32(metadata !16) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %call9 = tail call ptr @dentry_open(ptr noundef %arrayidx3, i32 noundef 0, ptr noundef %12) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = call i32 @kernel_read(ptr noundef %call9, ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull %pos) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %add)
  %cmp15.not = icmp eq i32 %call14, %add
  br i1 %cmp15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp17 = icmp sgt i32 %call14, -1
  %spec.store.select = select i1 %cmp17, i32 -5, i32 %call14
  br label %err_fput

if.end20:                                         ; preds = %if.end13
  %call21 = call zeroext i1 @chacha20poly1305_decrypt(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef null, i32 noundef 0, i64 noundef 0, ptr noundef %5) #7
  br i1 %call21, label %if.end26, label %if.end20.err_fput_crit_edge, !prof !26

if.end20.err_fput_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fput

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %buffer, ptr %call.i, i32 %2)
  br label %err_fput

err_fput:                                         ; preds = %if.end26, %if.end20.err_fput_crit_edge, %if.then16
  %ret.0 = phi i32 [ %spec.store.select, %if.then16 ], [ -74, %if.end20.err_fput_crit_edge ], [ %2, %if.end26 ]
  call void @fput(ptr noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %err_fput, %if.then11
  %ret.1 = phi i32 [ %13, %if.then11 ], [ %ret.0, %err_fput ]
  call void @kvfree_sensitive(ptr noundef nonnull %call.i, i32 noundef %add) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  br label %cleanup34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %buffer, ptr %5, i32 %2)
  br label %cleanup34

cleanup34:                                        ; preds = %if.else, %cleanup, %cleanup.thread, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ %2, %entry.cleanup34_crit_edge ], [ -12, %cleanup.thread ], [ %ret.1, %cleanup ], [ %2, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha20poly1305_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_kernel_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @chacha20poly1305_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @big_key_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_key_type(ptr noundef nonnull @key_type_big_key) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/big_key.c", i32 42, i32 12}
!2 = !{ptr @key_type_big_key, !3, !"key_type_big_key", i1 false, i1 false}
!3 = !{!"../security/keys/big_key.c", i32 41, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/keys/big_key.c", i32 103, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/keys/big_key.c", i32 219, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/keys/big_key.c", i32 221, i32 42}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/keys/big_key.c", i32 221, i32 51}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/keys/big_key.c", i32 247, i32 38}
!14 = !{ptr @__initcall__kmod_big_key__292_291_big_key_init7, !15, !"__initcall__kmod_big_key__292_291_big_key_init7", i1 false, i1 false}
!15 = !{!"../security/keys/big_key.c", i32 291, i32 1}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152270523}
