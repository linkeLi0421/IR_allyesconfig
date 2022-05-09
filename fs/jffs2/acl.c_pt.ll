; ModuleID = '/llk/IR_all_yes/fs/jffs2/acl.c_pt.bc'
source_filename = "../fs/jffs2/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.jffs2_acl_entry = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.jffs2_acl_header = type { %struct.jint32_t, [0 x %struct.jffs2_acl_entry] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.79 = type { ptr }

@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@jffs2_acl_from_medium._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014jffs2: warning: (%d) %s: Invalid ACL version. (=%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jffs2_acl_from_medium\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jffs2/acl.c\00", [17 x i8] zeroinitializer }, align 32
@jffs2_acl_from_medium._entry_ptr = internal global ptr @jffs2_acl_from_medium._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 195, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [18 x i8] c"../fs/jffs2/acl.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 70, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @jffs2_acl_from_medium._entry, ptr @jffs2_acl_from_medium._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_acl_from_medium._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %xprefix.0 = phi i32 [ 4, %sw.bb1 ], [ 3, %if.end.sw.epilog_crit_edge ]
  %call5 = tail call i32 @do_jffs2_getxattr(ptr noundef %inode, i32 noundef %xprefix.0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp sgt i32 %call5, 0
  br i1 %cmp, label %if.end8.i, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call5, i32 noundef 3264) #11
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end8.i.cleanup_crit_edge, label %if.end13

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i
  %call12 = tail call i32 @do_jffs2_getxattr(ptr noundef %inode, i32 noundef %xprefix.0, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i, i32 noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp sgt i32 %call12, 0
  br i1 %cmp14, label %if.end.i40, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i40:                                       ; preds = %if.end13
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call12)
  %cmp.i39 = icmp ult i32 %call12, 4
  br i1 %cmp.i39, label %if.end.i40.if.end23_crit_edge, label %if.end3.i

if.end.i40.if.end23_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end3.i:                                        ; preds = %if.end.i40
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp4.not.i = icmp eq i32 %2, 1
  br i1 %cmp4.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !8) #8
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid.i.i, align 8
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %8, ptr noundef nonnull @.str.2, i32 noundef %2) #12
  br label %if.end23

if.end10.i:                                       ; preds = %if.end3.i
  %add.ptr11.i = getelementptr i8, ptr %call9.i, i32 4
  %sub.i.i = add nsw i32 %call12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp.i.i41 = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i41, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  %rem.i.i = and i32 %call12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i42 = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i42, label %if.end16.i, label %if.then.i.i.if.end23_crit_edge

if.then.i.i.if.end23_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else.i.i:                                      ; preds = %if.end10.i
  %sub2.i.i = add nsw i32 %call12, -20
  %rem3.i.i = and i32 %sub2.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16.thread.i, label %if.else.i.i.if.end23_crit_edge

if.else.i.i.if.end23_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end16.thread.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div713.i.i = lshr i32 %sub2.i.i, 3
  %add.i.i = add nuw nsw i32 %div713.i.i, 4
  br label %if.end19.i

if.end16.i:                                       ; preds = %if.then.i.i
  %div14.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp17.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp17.i, label %if.end16.i.if.end23_crit_edge, label %if.end16.i.if.end19.i_crit_edge

if.end16.i.if.end19.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end16.i.if.end23_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end19.i:                                       ; preds = %if.end16.i.if.end19.i_crit_edge, %if.end16.thread.i
  %retval.0.i116.i = phi i32 [ %add.i.i, %if.end16.thread.i ], [ %div14.i.i, %if.end16.i.if.end19.i_crit_edge ]
  %call20.i = tail call ptr @posix_acl_alloc(i32 noundef %retval.0.i116.i, i32 noundef 3264) #8
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end23_crit_edge, label %for.cond.preheader.i

if.end19.i.if.end23_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.cond.preheader.i:                             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i116.i)
  %cmp25118.not.i = icmp eq i32 %retval.0.i116.i, 0
  br i1 %cmp25118.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %value.addr.0121.i = phi ptr [ %value.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr11.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0119.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr26.i = getelementptr i8, ptr %value.addr.0121.i, i32 4
  %cmp27.i = icmp ugt ptr %add.ptr26.i, %add.ptr.i
  br i1 %cmp27.i, label %for.body.i.land.lhs.true.i.i_crit_edge, label %if.end29.i

for.body.i.land.lhs.true.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.end29.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %value.addr.0121.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %value.addr.0121.i, align 1
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call20.i, i32 0, i32 3, i32 %i.0119.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx.i, align 4
  %e_perm.i = getelementptr inbounds %struct.jffs2_acl_entry, ptr %value.addr.0121.i, i32 0, i32 1
  %12 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %e_perm.i, align 1
  %e_perm34.i = getelementptr %struct.posix_acl, ptr %call20.i, i32 0, i32 3, i32 %i.0119.i, i32 1
  %14 = ptrtoint ptr %e_perm34.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %e_perm34.i, align 2
  %conv.i = sext i16 %10 to i32
  %15 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %conv.i, label %if.end29.i.land.lhs.true.i.i_crit_edge [
    i32 1, label %if.end29.i.for.inc.i_crit_edge
    i32 4, label %if.end29.i.for.inc.i_crit_edge49
    i32 16, label %if.end29.i.for.inc.i_crit_edge50
    i32 32, label %if.end29.i.for.inc.i_crit_edge51
    i32 2, label %sw.bb39.i
    i32 8, label %sw.bb50.i
  ]

if.end29.i.for.inc.i_crit_edge51:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end29.i.for.inc.i_crit_edge50:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end29.i.for.inc.i_crit_edge49:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end29.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

sw.bb39.i:                                        ; preds = %if.end29.i
  %add.ptr40.i = getelementptr i8, ptr %value.addr.0121.i, i32 8
  %cmp41.i = icmp ugt ptr %add.ptr40.i, %add.ptr.i
  br i1 %cmp41.i, label %sw.bb39.i.land.lhs.true.i.i_crit_edge, label %if.end44.i

sw.bb39.i.land.lhs.true.i.i_crit_edge:            ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.end44.i:                                       ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = getelementptr %struct.posix_acl, ptr %call20.i, i32 0, i32 3, i32 %i.0119.i, i32 2
  %17 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr26.i, align 1
  %call49.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %18) #8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call49.i, ptr %16, align 4
  br label %for.inc.i

sw.bb50.i:                                        ; preds = %if.end29.i
  %add.ptr51.i = getelementptr i8, ptr %value.addr.0121.i, i32 8
  %cmp52.i = icmp ugt ptr %add.ptr51.i, %add.ptr.i
  br i1 %cmp52.i, label %sw.bb50.i.land.lhs.true.i.i_crit_edge, label %if.end55.i

sw.bb50.i.land.lhs.true.i.i_crit_edge:            ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.end55.i:                                       ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = getelementptr %struct.posix_acl, ptr %call20.i, i32 0, i32 3, i32 %i.0119.i, i32 2
  %21 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr26.i, align 1
  %call61.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %22) #8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call61.i, ptr %20, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end55.i, %if.end44.i, %if.end29.i.for.inc.i_crit_edge, %if.end29.i.for.inc.i_crit_edge49, %if.end29.i.for.inc.i_crit_edge50, %if.end29.i.for.inc.i_crit_edge51
  %value.addr.1.i = phi ptr [ %add.ptr51.i, %if.end55.i ], [ %add.ptr40.i, %if.end44.i ], [ %add.ptr26.i, %if.end29.i.for.inc.i_crit_edge ], [ %add.ptr26.i, %if.end29.i.for.inc.i_crit_edge49 ], [ %add.ptr26.i, %if.end29.i.for.inc.i_crit_edge50 ], [ %add.ptr26.i, %if.end29.i.for.inc.i_crit_edge51 ]
  %inc.i = add nuw nsw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i116.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %value.addr.0.lcssa.i = phi ptr [ %add.ptr11.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %value.addr.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp63.not.i = icmp eq ptr %value.addr.0.lcssa.i, %add.ptr.i
  br i1 %cmp63.not.i, label %for.end.i.if.end23_crit_edge, label %for.end.i.land.lhs.true.i.i_crit_edge

for.end.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

for.end.i.if.end23_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true.i.i:                                ; preds = %for.end.i.land.lhs.true.i.i_crit_edge, %sw.bb50.i.land.lhs.true.i.i_crit_edge, %sw.bb39.i.land.lhs.true.i.i_crit_edge, %if.end29.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call20.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr nonnull %call20.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call20.i, ptr nonnull %call20.i, i32 1, ptr nonnull elementtype(i32) %call20.i) #8, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i.i, !prof !21

if.end5.i.i.i.i.i.if.end23_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call20.i, i32 noundef 3) #8
  br label %if.end23

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %call20.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %if.end23

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %rc.048 = phi i32 [ %call12, %if.end13.if.else_crit_edge ], [ %call5, %sw.epilog.if.else_crit_edge ]
  %value.047 = phi ptr [ %call9.i, %if.end13.if.else_crit_edge ], [ null, %sw.epilog.if.else_crit_edge ]
  %25 = zext i32 %rc.048 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rc.048, label %if.else20 [
    i32 -61, label %if.else.if.end23_crit_edge
    i32 -38, label %if.else.if.end23_crit_edge52
  ]

if.else.if.end23_crit_edge52:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %26 = inttoptr i32 %rc.048 to ptr
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.else.if.end23_crit_edge, %if.else.if.end23_crit_edge52, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end23_crit_edge, %for.end.i.if.end23_crit_edge, %if.end19.i.if.end23_crit_edge, %if.end16.i.if.end23_crit_edge, %if.else.i.i.if.end23_crit_edge, %if.then.i.i.if.end23_crit_edge, %do.end.i, %if.end.i40.if.end23_crit_edge
  %value.046 = phi ptr [ %value.047, %if.else20 ], [ %value.047, %if.else.if.end23_crit_edge ], [ %value.047, %if.else.if.end23_crit_edge52 ], [ %call9.i, %if.end.i40.if.end23_crit_edge ], [ %call9.i, %do.end.i ], [ %call9.i, %if.then.i.i.if.end23_crit_edge ], [ %call9.i, %if.else.i.i.if.end23_crit_edge ], [ %call9.i, %if.end16.i.if.end23_crit_edge ], [ %call9.i, %if.end19.i.if.end23_crit_edge ], [ %call9.i, %for.end.i.if.end23_crit_edge ], [ %call9.i, %if.end5.i.i.i.i.i.if.end23_crit_edge ], [ %call9.i, %if.then10.i.i.i.i.i ], [ %call9.i, %do.end.i.i ]
  %acl.0 = phi ptr [ %26, %if.else20 ], [ null, %if.else.if.end23_crit_edge ], [ null, %if.else.if.end23_crit_edge52 ], [ inttoptr (i32 -22 to ptr), %if.end.i40.if.end23_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.if.end23_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.i.if.end23_crit_edge ], [ null, %if.end16.i.if.end23_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end19.i.if.end23_crit_edge ], [ %call20.i, %for.end.i.if.end23_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.end23_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i ]
  tail call void @kfree(ptr noundef %value.046) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end23 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_jffs2_getxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %mode = alloca i16, align 2
  %attr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %type, label %entry.cleanup28_crit_edge [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb16
  ]

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mode, align 2, !annotation !23
  %call = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup12.thread_crit_edge

if.then.cleanup12.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12.thread

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not = icmp eq i16 %4, %6
  br i1 %cmp.not, label %if.end.cleanup12_crit_edge, label %if.then5

if.end.cleanup12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr) #8
  %7 = call ptr @memset(ptr %attr, i32 255, i32 80)
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65, ptr %attr, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %ia_mode, align 4
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %inode) #8
  %call6 = call i32 @jffs2_do_setattr(ptr noundef %inode, ptr noundef nonnull %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr) #8
  br i1 %cmp7, label %if.then5.cleanup12.thread_crit_edge, label %if.then5.cleanup12_crit_edge

if.then5.cleanup12_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

if.then5.cleanup12.thread_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12.thread

cleanup12.thread:                                 ; preds = %if.then5.cleanup12.thread_crit_edge, %if.then.cleanup12.thread_crit_edge
  %retval.2.ph = phi i32 [ %call, %if.then.cleanup12.thread_crit_edge ], [ %call6, %if.then5.cleanup12.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #8
  br label %cleanup28

cleanup12:                                        ; preds = %if.then5.cleanup12_crit_edge, %if.end.cleanup12_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp19 = icmp eq i16 %12, 16384
  br i1 %cmp19, label %sw.bb16.sw.epilog_crit_edge, label %if.then21

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %tobool22.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool22.not, i32 0, i32 -13
  br label %cleanup28

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %cleanup12, %sw.bb.sw.epilog_crit_edge
  %xprefix.0 = phi i32 [ 4, %sw.bb16.sw.epilog_crit_edge ], [ 3, %cleanup12 ], [ 3, %sw.bb.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acl.addr, align 4
  %call24 = call fastcc i32 @__jffs2_set_acl(ptr noundef %inode, i32 noundef %xprefix.0, ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %sw.epilog.cleanup28_crit_edge

sw.epilog.cleanup28_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acl.addr, align 4
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %16) #8
  br label %cleanup28

cleanup28:                                        ; preds = %if.then26, %sw.epilog.cleanup28_crit_edge, %if.then21, %cleanup12.thread, %entry.cleanup28_crit_edge
  %retval.3 = phi i32 [ %cond, %if.then21 ], [ -22, %entry.cleanup28_crit_edge ], [ 0, %if.then26 ], [ %call24, %sw.epilog.cleanup28_crit_edge ], [ %retval.2.ph, %cleanup12.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__jffs2_set_acl(ptr noundef %inode, i32 noundef %xprefix, ptr noundef readonly %acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i51.i = icmp slt i32 %1, 5
  %mul.i.i = shl i32 %1, 2
  %add.i.i = add i32 %mul.i.i, 4
  %sub.i.i = shl i32 %1, 3
  %add2.i.i = add i32 %sub.i.i, -12
  %retval.0.i.i = select i1 %cmp.i51.i, i32 %add.i.i, i32 %add2.i.i
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = or i32 %4, 4
  %retval.0.i52.i = select i1 %3, i32 -1, i32 %5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i52.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then.if.then2_crit_edge, label %if.end.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call9.i.i, align 128
  %7 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp56.not.i = icmp eq i32 %8, 0
  br i1 %cmp56.not.i, label %if.end.i.jffs2_acl_to_medium.exit_crit_edge, label %for.body.preheader.i

if.end.i.jffs2_acl_to_medium.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jffs2_acl_to_medium.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.jffs2_acl_header, ptr %call9.i.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %e.059.i = phi ptr [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %i.057.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %i.057.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %e.059.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %e.059.i, align 1
  %e_perm.i = getelementptr inbounds %struct.jffs2_acl_entry, ptr %e.059.i, i32 0, i32 1
  %e_perm11.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %i.057.i, i32 1
  %12 = ptrtoint ptr %e_perm11.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %e_perm11.i, align 2
  %14 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %e_perm.i, align 1
  %conv.i = sext i16 %10 to i32
  %15 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv.i, label %fail.i [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb17.i
    i32 1, label %for.body.i.for.inc.i_crit_edge
    i32 4, label %for.body.i.for.inc.i_crit_edge21
    i32 16, label %for.body.i.for.inc.i_crit_edge22
    i32 32, label %for.body.i.for.inc.i_crit_edge23
  ]

for.body.i.for.inc.i_crit_edge23:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge22:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge21:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %e_id.i = getelementptr inbounds %struct.jffs2_acl_entry, ptr %e.059.i, i32 0, i32 2
  %16 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %i.057.i, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack50.i = load i32, ptr %16, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack50.i, 0
  %call15.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %18) #8
  %19 = ptrtoint ptr %e_id.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %call15.i, ptr %e_id.i, align 1
  br label %for.inc.i

sw.bb17.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %e_id18.i = getelementptr inbounds %struct.jffs2_acl_entry, ptr %e.059.i, i32 0, i32 2
  %20 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %i.057.i, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i = load i32, ptr %20, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call22.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %22) #8
  %23 = ptrtoint ptr %e_id18.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %call22.i, ptr %e_id18.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb17.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge21, %for.body.i.for.inc.i_crit_edge22, %for.body.i.for.inc.i_crit_edge23
  %.sink.i = phi i32 [ 8, %sw.bb17.i ], [ 8, %sw.bb.i ], [ 4, %for.body.i.for.inc.i_crit_edge ], [ 4, %for.body.i.for.inc.i_crit_edge21 ], [ 4, %for.body.i.for.inc.i_crit_edge22 ], [ 4, %for.body.i.for.inc.i_crit_edge23 ]
  %add.ptr25.i = getelementptr i8, ptr %e.059.i, i32 %.sink.i
  %inc.i = add nuw i32 %i.057.i, 1
  %24 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %a_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.jffs2_acl_to_medium.exit_crit_edge

for.inc.i.jffs2_acl_to_medium.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jffs2_acl_to_medium.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fail.i:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %if.then2

jffs2_acl_to_medium.exit:                         ; preds = %for.inc.i.jffs2_acl_to_medium.exit_crit_edge, %if.end.i.jffs2_acl_to_medium.exit_crit_edge
  %cmp.i17 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %jffs2_acl_to_medium.exit.if.then2_crit_edge, label %jffs2_acl_to_medium.exit.if.end4_crit_edge

jffs2_acl_to_medium.exit.if.end4_crit_edge:       ; preds = %jffs2_acl_to_medium.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

jffs2_acl_to_medium.exit.if.then2_crit_edge:      ; preds = %jffs2_acl_to_medium.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.then2:                                         ; preds = %jffs2_acl_to_medium.exit.if.then2_crit_edge, %fail.i, %if.then.if.then2_crit_edge
  %retval.0.i20 = phi ptr [ %call9.i.i, %jffs2_acl_to_medium.exit.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then2_crit_edge ], [ inttoptr (i32 -22 to ptr), %fail.i ]
  %26 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end4:                                          ; preds = %jffs2_acl_to_medium.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %size.0 = phi i32 [ 0, %entry.if.end4_crit_edge ], [ %retval.0.i.i, %jffs2_acl_to_medium.exit.if.end4_crit_edge ]
  %value.0 = phi ptr [ null, %entry.if.end4_crit_edge ], [ %call9.i.i, %jffs2_acl_to_medium.exit.if.end4_crit_edge ]
  %call5 = tail call i32 @do_jffs2_setxattr(ptr noundef %inode, i32 noundef %xprefix, ptr noundef nonnull @.str, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %value.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call5)
  %cmp = icmp eq i32 %call5, -61
  %27 = select i1 %tobool6.not, i1 %cmp, i1 false
  %rc.0 = select i1 %27, i32 0, i32 %call5
  tail call void @kfree(ptr noundef %value.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ %26, %if.then2 ], [ %rc.0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_init_acl_pre(ptr noundef %dir_i, ptr noundef %inode, ptr noundef %i_mode) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #8
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #8
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !23
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %2 = ptrtoint ptr %i_acl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %i_acl.i, align 8
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %3 = ptrtoint ptr %i_default_acl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %i_default_acl.i, align 4
  %call = call i32 @posix_acl_create(ptr noundef %dir_i, ptr noundef %i_mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_acl, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @set_cached_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then2.if.end3_crit_edge, label %land.lhs.true.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.then2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !19
  call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #8
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #8, !srcloc !20
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i, !prof !21

if.end5.i.i.i.i.if.end3_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #8
  br label %if.end3

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %7, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %9 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acl, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %10) #8
  %11 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acl, align 4
  %tobool.not.i13 = icmp eq ptr %12, null
  br i1 %tobool.not.i13, label %if.then5.cleanup_crit_edge, label %land.lhs.true.i17

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i17:                                ; preds = %if.then5
  %call.i.i.i.i.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !19
  call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #8
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #8, !srcloc !20
  %asmresult.i.i.i.i.i.i.i15 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i15)
  %cmp.i.i.i.i16 = icmp eq i32 %asmresult.i.i.i.i.i.i.i15, 1
  br i1 %cmp.i.i.i.i16, label %do.end.i22, label %if.end5.i.i.i.i19

if.end5.i.i.i.i19:                                ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15)
  %.not.i.i.i.i18 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i15, 0
  br i1 %.not.i.i.i.i18, label %if.end5.i.i.i.i19.cleanup_crit_edge, label %if.then10.i.i.i.i20, !prof !21

if.end5.i.i.i.i19.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i20:                              ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #8
  br label %cleanup

do.end.i22:                                       ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  %a_rcu.i21 = getelementptr inbounds %struct.posix_acl, ptr %12, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i21, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i22, %if.then10.i.i.i.i20, %if.end5.i.i.i.i19.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_init_acl_post(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %0 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_default_acl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @__jffs2_set_acl(ptr noundef %inode, i32 noundef 4, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %2 = ptrtoint ptr %i_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_acl, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = tail call fastcc i32 @__jffs2_set_acl(ptr noundef %inode, i32 noundef 3, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %if.then.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_jffs2_setxattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/acl.c", i32 195, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jffs2/acl.c", i32 70, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jffs2_acl_from_medium._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jffs2_acl_from_medium._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2154043855, i64 2154044334, i64 2154043892, i64 2154043948, i64 2154043982, i64 2154044006, i64 2154044047, i64 2154044068, i64 2154044096, i64 2154044130}
!19 = !{i64 2148304231}
!20 = !{i64 2148218695, i64 2148218727, i64 2148218756, i64 2148218790, i64 2148218821, i64 2148218844}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149872820}
!23 = !{!"auto-init"}
