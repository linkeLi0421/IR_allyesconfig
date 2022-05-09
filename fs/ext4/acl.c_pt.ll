; ModuleID = '/llk/IR_all_yes/fs/ext4/acl.c_pt.bc'
source_filename = "../fs/ext4/acl.c"
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
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.ext4_acl_entry = type { i16, i16, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }

@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__func__.ext4_set_acl = private unnamed_addr constant [13 x i8] c"ext4_set_acl\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [17 x i8] c"../fs/ext4/acl.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 165, i32 45 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext4_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %name_index.0 = phi i32 [ 3, %sw.bb2 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %call6 = tail call i32 @ext4_xattr_get(ptr noundef %inode, i32 noundef %name_index.0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.end8.i, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call6, i32 noundef 3136) #9
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cleanup_crit_edge, label %if.end14

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i
  %call13 = tail call i32 @ext4_xattr_get(ptr noundef %inode, i32 noundef %name_index.0, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i, i32 noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp15 = icmp sgt i32 %call13, 0
  br i1 %cmp15, label %if.end.i41, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i41:                                       ; preds = %if.end14
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %call13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call13)
  %cmp.i40 = icmp ult i32 %call13, 4
  br i1 %cmp.i40, label %if.end.i41.if.end24_crit_edge, label %if.end2.i

if.end.i41.if.end24_crit_edge:                    ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end2.i:                                        ; preds = %if.end.i41
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp3.not.i = icmp eq i32 %2, 16777216
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end2.i.if.end24_crit_edge

if.end2.i.if.end24_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end6.i:                                        ; preds = %if.end2.i
  %add.ptr7.i = getelementptr i8, ptr %call9.i, i32 4
  %sub1.i.i = add nsw i32 %call13, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call13)
  %cmp.i.i42 = icmp ult i32 %call13, 20
  br i1 %cmp.i.i42, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  %rem.i.i = and i32 %call13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i43 = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i43, label %if.end12.i, label %if.then.i.i.if.end24_crit_edge

if.then.i.i.if.end24_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else.i.i:                                      ; preds = %if.end6.i
  %rem3.i.i = and i32 %sub1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12.thread.i, label %if.else.i.i.if.end24_crit_edge

if.else.i.i.if.end24_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end12.thread.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div713.i.i = lshr i32 %sub1.i.i, 3
  %add.i.i = add nuw nsw i32 %div713.i.i, 4
  br label %if.end15.i

if.end12.i:                                       ; preds = %if.then.i.i
  %sub.i.i = add nsw i32 %call13, -4
  %div14.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp13.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp13.i, label %if.end12.i.if.end24_crit_edge, label %if.end12.i.if.end15.i_crit_edge

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end12.i.if.end24_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end15.i:                                       ; preds = %if.end12.i.if.end15.i_crit_edge, %if.end12.thread.i
  %retval.0.i106.i = phi i32 [ %add.i.i, %if.end12.thread.i ], [ %div14.i.i, %if.end12.i.if.end15.i_crit_edge ]
  %call16.i = tail call ptr @posix_acl_alloc(i32 noundef %retval.0.i106.i, i32 noundef 3136) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end24_crit_edge, label %for.cond.preheader.i

if.end15.i.if.end24_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.cond.preheader.i:                             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i106.i)
  %cmp21110.not.i = icmp eq i32 %retval.0.i106.i, 0
  br i1 %cmp21110.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %value.addr.0113.i = phi ptr [ %value.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr7.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.0111.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr23.i = getelementptr i8, ptr %value.addr.0113.i, i32 4
  %cmp24.i = icmp ugt ptr %add.ptr23.i, %add.ptr.i
  br i1 %cmp24.i, label %for.body.i.land.lhs.true.i.i_crit_edge, label %if.end26.i

for.body.i.land.lhs.true.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.end26.i:                                       ; preds = %for.body.i
  %3 = ptrtoint ptr %value.addr.0113.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value.addr.0113.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx.i, align 4
  %e_perm.i = getelementptr inbounds %struct.ext4_acl_entry, ptr %value.addr.0113.i, i32 0, i32 1
  %7 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %e_perm.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  %e_perm30.i = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 1
  %10 = ptrtoint ptr %e_perm30.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %e_perm30.i, align 2
  %conv.i = sext i16 %5 to i32
  %11 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %conv.i, label %if.end26.i.land.lhs.true.i.i_crit_edge [
    i32 1, label %if.end26.i.for.inc.i_crit_edge
    i32 4, label %if.end26.i.for.inc.i_crit_edge50
    i32 16, label %if.end26.i.for.inc.i_crit_edge51
    i32 32, label %if.end26.i.for.inc.i_crit_edge52
    i32 2, label %sw.bb35.i
    i32 8, label %sw.bb44.i
  ]

if.end26.i.for.inc.i_crit_edge52:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.for.inc.i_crit_edge51:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.for.inc.i_crit_edge50:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

sw.bb35.i:                                        ; preds = %if.end26.i
  %add.ptr36.i = getelementptr i8, ptr %value.addr.0113.i, i32 8
  %cmp37.i = icmp ugt ptr %add.ptr36.i, %add.ptr.i
  br i1 %cmp37.i, label %sw.bb35.i.land.lhs.true.i.i_crit_edge, label %if.end40.i

sw.bb35.i.land.lhs.true.i.i_crit_edge:            ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.end40.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 2
  %13 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr23.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %call43.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %15) #6
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call43.i, ptr %12, align 4
  br label %for.inc.i

sw.bb44.i:                                        ; preds = %if.end26.i
  %add.ptr45.i = getelementptr i8, ptr %value.addr.0113.i, i32 8
  %cmp46.i = icmp ugt ptr %add.ptr45.i, %add.ptr.i
  br i1 %cmp46.i, label %sw.bb44.i.land.lhs.true.i.i_crit_edge, label %if.end49.i

sw.bb44.i.land.lhs.true.i.i_crit_edge:            ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.end49.i:                                       ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 2
  %18 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr23.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %call54.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %20) #6
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call54.i, ptr %17, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end49.i, %if.end40.i, %if.end26.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge50, %if.end26.i.for.inc.i_crit_edge51, %if.end26.i.for.inc.i_crit_edge52
  %value.addr.1.i = phi ptr [ %add.ptr45.i, %if.end49.i ], [ %add.ptr36.i, %if.end40.i ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge50 ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge51 ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge52 ]
  %inc.i = add nuw nsw i32 %n.0111.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i106.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %value.addr.0.lcssa.i = phi ptr [ %add.ptr7.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %value.addr.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp56.not.i = icmp eq ptr %value.addr.0.lcssa.i, %add.ptr.i
  br i1 %cmp56.not.i, label %for.end.i.if.end24_crit_edge, label %for.end.i.land.lhs.true.i.i_crit_edge

for.end.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

for.end.i.if.end24_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true.i.i:                                ; preds = %for.end.i.land.lhs.true.i.i_crit_edge, %sw.bb44.i.land.lhs.true.i.i_crit_edge, %sw.bb35.i.land.lhs.true.i.i_crit_edge, %if.end26.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call16.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr nonnull %call16.i, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call16.i, ptr nonnull %call16.i, i32 1, ptr nonnull elementtype(i32) %call16.i) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end24_crit_edge, label %if.then10.i.i.i.i.i, !prof !16

if.end5.i.i.i.i.i.if.end24_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call16.i, i32 noundef 3) #6
  br label %if.end24

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %call16.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end24

if.else:                                          ; preds = %if.end14.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %retval1.049 = phi i32 [ %call13, %if.end14.if.else_crit_edge ], [ %call6, %sw.epilog.if.else_crit_edge ]
  %value.048 = phi ptr [ %call9.i, %if.end14.if.else_crit_edge ], [ null, %sw.epilog.if.else_crit_edge ]
  %23 = zext i32 %retval1.049 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %retval1.049, label %if.else21 [
    i32 -61, label %if.else.if.end24_crit_edge
    i32 -38, label %if.else.if.end24_crit_edge53
  ]

if.else.if.end24_crit_edge53:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %24 = inttoptr i32 %retval1.049 to ptr
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.else.if.end24_crit_edge, %if.else.if.end24_crit_edge53, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end24_crit_edge, %for.end.i.if.end24_crit_edge, %if.end15.i.if.end24_crit_edge, %if.end12.i.if.end24_crit_edge, %if.else.i.i.if.end24_crit_edge, %if.then.i.i.if.end24_crit_edge, %if.end2.i.if.end24_crit_edge, %if.end.i41.if.end24_crit_edge
  %value.047 = phi ptr [ %value.048, %if.else21 ], [ %value.048, %if.else.if.end24_crit_edge ], [ %value.048, %if.else.if.end24_crit_edge53 ], [ %call9.i, %if.end.i41.if.end24_crit_edge ], [ %call9.i, %if.end2.i.if.end24_crit_edge ], [ %call9.i, %if.then.i.i.if.end24_crit_edge ], [ %call9.i, %if.else.i.i.if.end24_crit_edge ], [ %call9.i, %if.end12.i.if.end24_crit_edge ], [ %call9.i, %if.end15.i.if.end24_crit_edge ], [ %call9.i, %for.end.i.if.end24_crit_edge ], [ %call9.i, %if.end5.i.i.i.i.i.if.end24_crit_edge ], [ %call9.i, %if.then10.i.i.i.i.i ], [ %call9.i, %do.end.i.i ]
  %acl.0 = phi ptr [ %24, %if.else21 ], [ null, %if.else.if.end24_crit_edge ], [ null, %if.else.if.end24_crit_edge53 ], [ inttoptr (i32 -22 to ptr), %if.end.i41.if.end24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end2.i.if.end24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.if.end24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.i.if.end24_crit_edge ], [ null, %if.end12.i.if.end24_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.i.if.end24_crit_edge ], [ %call16.i, %for.end.i.if.end24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.end24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i ]
  tail call void @kfree(ptr noundef %value.047) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end24 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_set_acl(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %credits = alloca i32, align 4
  %retries = alloca i32, align 4
  %mode = alloca i16, align 2
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credits) #6
  %1 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %credits, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #6
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retries, align 4
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %3 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.i = icmp slt i32 %4, 5
  %mul.i = shl i32 %4, 2
  %add.i = add i32 %mul.i, 4
  %sub.i = shl i32 %4, 3
  %add2.i = add i32 %sub.i, -12
  %retval.0.i = select i1 %cmp.i, i32 %add.i, i32 %add2.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #6
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %mode, align 2
  %call1 = tail call i32 @dquot_initialize(ptr noundef %inode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %retry.preheader, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

retry.preheader:                                  ; preds = %cond.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp eq i32 %type, 32768
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  br label %retry

retry:                                            ; preds = %land.lhs.true37.retry_crit_edge, %retry.preheader
  %update_mode.0 = phi i32 [ %update_mode.2, %land.lhs.true37.retry_crit_edge ], [ 0, %retry.preheader ]
  %call3 = call i32 @ext4_xattr_set_credits(ptr noundef %inode, i32 noundef %cond, i1 noundef zeroext false, ptr noundef nonnull %credits) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %retry
  %8 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %credits, align 4
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %15, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %11, i32 noundef 246, i32 noundef 10, i32 noundef %9, i32 noundef 0, i32 noundef %mul.i.i) #6
  %cmp.i73 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  br i1 %cmp, label %land.lhs.true, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end12
  %17 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acl.addr, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %land.lhs.true.if.end25_crit_edge, label %if.then14

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then14:                                        ; preds = %land.lhs.true
  %call15 = call i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then14.out_stop_crit_edge

if.then14.out_stop_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode, align 2
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %inode, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp21.not = icmp eq i16 %20, %22
  %spec.select = select i1 %cmp21.not, i32 %update_mode.0, i32 1
  br label %if.end25

if.end25:                                         ; preds = %if.end18, %land.lhs.true.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %update_mode.1 = phi i32 [ %update_mode.0, %land.lhs.true.if.end25_crit_edge ], [ %update_mode.0, %if.end12.if.end25_crit_edge ], [ %spec.select, %if.end18 ]
  %23 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %acl.addr, align 4
  %call26 = call fastcc i32 @__ext4_set_acl(ptr noundef %call.i, ptr noundef %inode, i32 noundef %type, ptr noundef %24, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end25.out_stop_crit_edge

if.end25.out_stop_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop

land.lhs.true28:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_mode.1)
  %tobool29.not = icmp eq i32 %update_mode.1, 0
  br i1 %tobool29.not, label %out_stop.thread, label %if.then30

out_stop.thread:                                  ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %call3476 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_set_acl, i32 noundef 265, ptr noundef %call.i) #6
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mode, align 2
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #6
  %28 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %call32 = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_set_acl, i32 noundef 262) #6
  br label %out_stop

out_stop:                                         ; preds = %if.then30, %if.end25.out_stop_crit_edge, %if.then14.out_stop_crit_edge
  %error.0 = phi i32 [ %call15, %if.then14.out_stop_crit_edge ], [ %call26, %if.end25.out_stop_crit_edge ], [ %call32, %if.then30 ]
  %update_mode.2 = phi i32 [ %update_mode.0, %if.then14.out_stop_crit_edge ], [ %update_mode.1, %if.end25.out_stop_crit_edge ], [ 1, %if.then30 ]
  %call34 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_set_acl, i32 noundef 265, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error.0)
  %cmp35 = icmp eq i32 %error.0, -28
  br i1 %cmp35, label %land.lhs.true37, label %out_stop.cleanup_crit_edge

out_stop.cleanup_crit_edge:                       ; preds = %out_stop
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true37:                                  ; preds = %out_stop
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %call39 = call i32 @ext4_should_retry_alloc(ptr noundef %30, ptr noundef nonnull %retries) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true37.cleanup_crit_edge, label %land.lhs.true37.retry_crit_edge

land.lhs.true37.retry_crit_edge:                  ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true37.cleanup_crit_edge, %out_stop.cleanup_crit_edge, %out_stop.thread, %if.then10, %retry.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then10 ], [ %call1, %cond.end.cleanup_crit_edge ], [ 0, %out_stop.thread ], [ %error.0, %out_stop.cleanup_crit_edge ], [ -28, %land.lhs.true37.cleanup_crit_edge ], [ %call3, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credits) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_set_credits(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_set_acl(ptr noundef %handle, ptr noundef %inode, i32 noundef %type, ptr noundef %acl, i32 noundef %xattr_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 32768, label %entry.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool.not, i32 0, i32 -13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %name_index.0 = phi i32 [ 3, %sw.bb1.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge ]
  %tobool3.not = icmp eq ptr %acl, null
  br i1 %tobool3.not, label %sw.epilog.if.end9_crit_edge, label %if.then4

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %sw.epilog
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %4 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i43.i = icmp slt i32 %5, 5
  %mul.i.i = shl i32 %5, 2
  %add.i.i = add i32 %mul.i.i, 4
  %sub.i.i = shl i32 %5, 3
  %add2.i.i = add i32 %sub.i.i, -12
  %retval.0.i.i = select i1 %cmp.i43.i, i32 %add.i.i, i32 %add2.i.i
  %add.i = or i32 %sub.i.i, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then4.if.then6_crit_edge, label %if.end.i

if.then4.if.then6_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.i:                                         ; preds = %if.then4
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %call9.i.i, align 128
  %7 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp47.not.i = icmp eq i32 %8, 0
  br i1 %cmp47.not.i, label %if.end.i.ext4_acl_to_disk.exit_crit_edge, label %for.body.preheader.i

if.end.i.ext4_acl_to_disk.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ext4_acl_to_disk.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %e.048.i = phi ptr [ %add.ptr17.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.049.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %12 = ptrtoint ptr %e.048.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %e.048.i, align 4
  %e_perm.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.049.i, i32 1
  %13 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_perm.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %e_perm7.i = getelementptr inbounds %struct.ext4_acl_entry, ptr %e.048.i, i32 0, i32 1
  %16 = ptrtoint ptr %e_perm7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %e_perm7.i, align 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 4
  %conv.i = sext i16 %18 to i32
  %19 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %conv.i, label %fail.i [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb11.i
    i32 1, label %for.body.i.for.inc.i_crit_edge
    i32 4, label %for.body.i.for.inc.i_crit_edge31
    i32 16, label %for.body.i.for.inc.i_crit_edge32
    i32 32, label %for.body.i.for.inc.i_crit_edge33
  ]

for.body.i.for.inc.i_crit_edge33:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge32:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge31:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.049.i, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack42.i = load i32, ptr %20, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack42.i, 0
  %call9.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %22) #6
  br label %for.inc.sink.split.i

sw.bb11.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.049.i, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %23, align 4
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call13.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %25) #6
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.bb11.i, %sw.bb.i
  %call13.sink.i = phi i32 [ %call13.i, %sw.bb11.i ], [ %call9.i, %sw.bb.i ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %call13.sink.i) #6
  %e_id14.i = getelementptr inbounds %struct.ext4_acl_entry, ptr %e.048.i, i32 0, i32 2
  %27 = ptrtoint ptr %e_id14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %e_id14.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge31, %for.body.i.for.inc.i_crit_edge32, %for.body.i.for.inc.i_crit_edge33
  %.sink.i = phi i32 [ 4, %for.body.i.for.inc.i_crit_edge ], [ 4, %for.body.i.for.inc.i_crit_edge31 ], [ 4, %for.body.i.for.inc.i_crit_edge32 ], [ 4, %for.body.i.for.inc.i_crit_edge33 ], [ 8, %for.inc.sink.split.i ]
  %add.ptr17.i = getelementptr i8, ptr %e.048.i, i32 %.sink.i
  %inc.i = add nuw i32 %n.049.i, 1
  %28 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ext4_acl_to_disk.exit_crit_edge

for.inc.i.ext4_acl_to_disk.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ext4_acl_to_disk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

fail.i:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %if.then6

ext4_acl_to_disk.exit:                            ; preds = %for.inc.i.ext4_acl_to_disk.exit_crit_edge, %if.end.i.ext4_acl_to_disk.exit_crit_edge
  %cmp.i27 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %ext4_acl_to_disk.exit.if.then6_crit_edge, label %ext4_acl_to_disk.exit.if.end9_crit_edge

ext4_acl_to_disk.exit.if.end9_crit_edge:          ; preds = %ext4_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

ext4_acl_to_disk.exit.if.then6_crit_edge:         ; preds = %ext4_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %ext4_acl_to_disk.exit.if.then6_crit_edge, %fail.i, %if.then4.if.then6_crit_edge
  %retval.0.i30 = phi ptr [ %call9.i.i, %ext4_acl_to_disk.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then4.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %fail.i ]
  %30 = ptrtoint ptr %retval.0.i30 to i32
  br label %cleanup

if.end9:                                          ; preds = %ext4_acl_to_disk.exit.if.end9_crit_edge, %sw.epilog.if.end9_crit_edge
  %size.0 = phi i32 [ 0, %sw.epilog.if.end9_crit_edge ], [ %retval.0.i.i, %ext4_acl_to_disk.exit.if.end9_crit_edge ]
  %value.0 = phi ptr [ null, %sw.epilog.if.end9_crit_edge ], [ %call9.i.i, %ext4_acl_to_disk.exit.if.end9_crit_edge ]
  %call10 = tail call i32 @ext4_xattr_set_handle(ptr noundef %handle, ptr noundef %inode, i32 noundef %name_index.0, ptr noundef nonnull @.str, ptr noundef %value.0, i32 noundef %size.0, i32 noundef %xattr_flags) #6
  tail call void @kfree(ptr noundef %value.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.then6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then6 ], [ %cond, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_acl(ptr noundef %handle, ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #6
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !18
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_acl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end4.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @__ext4_set_acl(ptr noundef %handle, ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %3, i32 noundef 1)
  %4 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then2.if.end4_crit_edge, label %land.lhs.true.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.then2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #6
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !16

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #6
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end4.if.else11_crit_edge, label %if.then6

if.end4.if.else11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else11

if.end4.thread:                                   ; preds = %if.end
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %9 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %i_default_acl, align 4
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl, align 4
  %tobool5.not36 = icmp eq ptr %11, null
  br i1 %tobool5.not36, label %if.end4.thread.if.else11_crit_edge, label %if.end4.thread.if.end10_crit_edge

if.end4.thread.if.end10_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end4.thread.if.else11_crit_edge:               ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not = icmp eq i32 %call3, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.land.lhs.true.i28_crit_edge

if.then6.land.lhs.true.i28_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i28

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end4.thread.if.end10_crit_edge
  %12 = phi ptr [ %8, %if.then6.if.end10_crit_edge ], [ %11, %if.end4.thread.if.end10_crit_edge ]
  %call9 = call fastcc i32 @__ext4_set_acl(ptr noundef %handle, ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %12, i32 noundef 1)
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i24 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i24, label %if.end10.cleanup_crit_edge, label %if.end10.land.lhs.true.i28_crit_edge

if.end10.land.lhs.true.i28_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i28

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i28:                                ; preds = %if.end10.land.lhs.true.i28_crit_edge, %if.then6.land.lhs.true.i28_crit_edge
  %error.143 = phi i32 [ %call9, %if.end10.land.lhs.true.i28_crit_edge ], [ %call3, %if.then6.land.lhs.true.i28_crit_edge ]
  %14 = phi ptr [ %.pr, %if.end10.land.lhs.true.i28_crit_edge ], [ %8, %if.then6.land.lhs.true.i28_crit_edge ]
  %call.i.i.i.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #6
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i26 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i27 = icmp eq i32 %asmresult.i.i.i.i.i.i.i26, 1
  br i1 %cmp.i.i.i.i27, label %do.end.i33, label %if.end5.i.i.i.i30

if.end5.i.i.i.i30:                                ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26)
  %.not.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i29, label %if.end5.i.i.i.i30.cleanup_crit_edge, label %if.then10.i.i.i.i31, !prof !16

if.end5.i.i.i.i30.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i31:                              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #6
  br label %cleanup

do.end.i33:                                       ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i32 = getelementptr inbounds %struct.posix_acl, ptr %14, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i32, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

if.else11:                                        ; preds = %if.end4.thread.if.else11_crit_edge, %if.end4.if.else11_crit_edge
  %error.038 = phi i32 [ 0, %if.end4.thread.if.else11_crit_edge ], [ %call3, %if.end4.if.else11_crit_edge ]
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %16 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %i_acl, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %do.end.i33, %if.then10.i.i.i.i31, %if.end5.i.i.i.i30.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.038, %if.else11 ], [ %call9, %if.end10.cleanup_crit_edge ], [ %error.143, %if.end5.i.i.i.i30.cleanup_crit_edge ], [ %error.143, %if.then10.i.i.i.i31 ], [ %error.143, %do.end.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_set_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/acl.c", i32 165, i32 45}
!2 = !{ptr @__func__.ext4_set_acl, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/acl.c", i32 262, i32 11}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2155138438, i64 2155138916, i64 2155138475, i64 2155138531, i64 2155138565, i64 2155138589, i64 2155138630, i64 2155138651, i64 2155138679, i64 2155138713}
!14 = !{i64 2148757186}
!15 = !{i64 2148671626, i64 2148671658, i64 2148671687, i64 2148671721, i64 2148671752, i64 2148671775}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2150378275}
!18 = !{!"auto-init"}
