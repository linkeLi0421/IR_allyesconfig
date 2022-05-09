; ModuleID = '/llk/IR_all_yes/security/tomoyo/realpath.c_pt.bc'
source_filename = "../security/tomoyo/realpath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.128, %struct.list_head, %struct.list_head, %union.anon.129 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.128 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.129 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.120, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.121, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.122, ptr, %struct.address_space, %struct.list_head, %union.anon.125, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.120 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.121 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.125 = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__func__.tomoyo_realpath_from_path = private unnamed_addr constant [26 x i8] c"tomoyo_realpath_from_path\00", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/self\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev(%u,%u):\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 172, i32 17 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [30 x i8] c"../security/tomoyo/realpath.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 196, i32 36 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_encode2(ptr noundef readonly %str, i32 noundef %str_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %str_len)
  %cmp97 = icmp sgt i32 %str_len, 0
  br i1 %cmp97, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end8.i.i_crit_edge

for.cond.preheader.if.end8.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %len.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.098 = phi i32 [ %inc15, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %str, i32 %i.098
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp1 = icmp eq i8 %1, 92
  %2 = add i8 %1, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %2)
  %3 = icmp ult i8 %2, 94
  %. = select i1 %3, i32 1, i32 4
  %.sink = select i1 %cmp1, i32 2, i32 %.
  %inc = add i32 %len.099, %.sink
  %inc15 = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc15, %str_len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %inc, 11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.end.loopexit, %for.cond.preheader.if.end8.i.i_crit_edge
  %len.0.lcssa = phi i32 [ 11, %for.cond.preheader.if.end8.i.i_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0.lcssa, i32 noundef 3392) #10
  %tobool18.not = icmp ne ptr %call9.i.i, null
  %4 = and i1 %cmp97, %tobool18.not
  br i1 %4, label %if.end8.i.i.for.body24_crit_edge, label %if.end8.i.i.cleanup_crit_edge

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i.for.body24_crit_edge:                 ; preds = %if.end8.i.i
  br label %for.body24

for.body24:                                       ; preds = %if.end59.for.body24_crit_edge, %if.end8.i.i.for.body24_crit_edge
  %cp.0102 = phi ptr [ %cp.1, %if.end59.for.body24_crit_edge ], [ %call9.i.i, %if.end8.i.i.for.body24_crit_edge ]
  %i.1101 = phi i32 [ %inc61, %if.end59.for.body24_crit_edge ], [ 0, %if.end8.i.i.for.body24_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %str, i32 %i.1101
  %5 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %6)
  %cmp28 = icmp eq i8 %6, 92
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %cp.0102, i32 1
  %7 = ptrtoint ptr %cp.0102 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 92, ptr %cp.0102, align 1
  %incdec.ptr31 = getelementptr i8, ptr %cp.0102, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 92, ptr %incdec.ptr, align 1
  br label %if.end59

if.else32:                                        ; preds = %for.body24
  %9 = add i8 %6, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %9)
  %10 = icmp ult i8 %9, 94
  %incdec.ptr41 = getelementptr i8, ptr %cp.0102, i32 1
  br i1 %10, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %cp.0102 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %cp.0102, align 1
  br label %if.end59

if.else42:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %cp.0102 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 92, ptr %cp.0102, align 1
  %13 = lshr i8 %6, 6
  %add45 = or i8 %13, 48
  %incdec.ptr47 = getelementptr i8, ptr %cp.0102, i32 2
  %14 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add45, ptr %incdec.ptr41, align 1
  %15 = lshr i8 %6, 3
  %and = and i8 %15, 7
  %add50 = or i8 %and, 48
  %incdec.ptr52 = getelementptr i8, ptr %cp.0102, i32 3
  %16 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add50, ptr %incdec.ptr47, align 1
  %and54 = and i8 %6, 7
  %add55 = or i8 %and54, 48
  %incdec.ptr57 = getelementptr i8, ptr %cp.0102, i32 4
  %17 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add55, ptr %incdec.ptr52, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else42, %if.then40, %if.then30
  %cp.1 = phi ptr [ %incdec.ptr31, %if.then30 ], [ %incdec.ptr41, %if.then40 ], [ %incdec.ptr57, %if.else42 ]
  %inc61 = add nuw nsw i32 %i.1101, 1
  %exitcond103.not = icmp eq i32 %inc61, %str_len
  br i1 %exitcond103.not, label %if.end59.cleanup_crit_edge, label %if.end59.for.body24_crit_edge

if.end59.for.body24_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end59.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_encode(ptr noundef readonly %str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %for.cond.preheader.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.cond.preheader.i:                             ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp97.i = icmp sgt i32 %call, 0
  br i1 %cmp97.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end8.i.i.i_crit_edge

for.cond.preheader.i.if.end8.i.i.i_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %len.099.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.098.i = phi i32 [ %inc15.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %str, i32 %i.098.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %1)
  %cmp1.i = icmp eq i8 %1, 92
  %2 = add i8 %1, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %2)
  %3 = icmp ult i8 %2, 94
  %..i = select i1 %3, i32 1, i32 4
  %.sink.i = select i1 %cmp1.i, i32 2, i32 %..i
  %inc.i = add i32 %.sink.i, %len.099.i
  %inc15.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, %call
  br i1 %exitcond.not.i, label %for.end.i.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %inc.i, 11
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %for.end.i.loopexit, %for.cond.preheader.i.if.end8.i.i.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 11, %for.cond.preheader.i.if.end8.i.i.i_crit_edge ], [ %phi.bo, %for.end.i.loopexit ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0.lcssa.i, i32 noundef 3392) #10
  %tobool18.not.i = icmp eq ptr %call9.i.i.i, null
  %cmp97.i.not = xor i1 %cmp97.i, true
  %brmerge = select i1 %tobool18.not.i, i1 true, i1 %cmp97.i.not
  br i1 %brmerge, label %if.end8.i.i.i.cond.end_crit_edge, label %if.end8.i.i.i.for.body24.i_crit_edge

if.end8.i.i.i.for.body24.i_crit_edge:             ; preds = %if.end8.i.i.i
  br label %for.body24.i

if.end8.i.i.i.cond.end_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.body24.i:                                     ; preds = %if.end59.i.for.body24.i_crit_edge, %if.end8.i.i.i.for.body24.i_crit_edge
  %cp.0102.i = phi ptr [ %cp.1.i, %if.end59.i.for.body24.i_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i.for.body24.i_crit_edge ]
  %i.1101.i = phi i32 [ %inc61.i, %if.end59.i.for.body24.i_crit_edge ], [ 0, %if.end8.i.i.i.for.body24.i_crit_edge ]
  %arrayidx26.i = getelementptr i8, ptr %str, i32 %i.1101.i
  %4 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %5)
  %cmp28.i = icmp eq i8 %5, 92
  br i1 %cmp28.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %cp.0102.i, i32 1
  %6 = ptrtoint ptr %cp.0102.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 92, ptr %cp.0102.i, align 1
  %incdec.ptr31.i = getelementptr i8, ptr %cp.0102.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 92, ptr %incdec.ptr.i, align 1
  br label %if.end59.i

if.else32.i:                                      ; preds = %for.body24.i
  %8 = add i8 %5, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %8)
  %9 = icmp ult i8 %8, 94
  %incdec.ptr41.i = getelementptr i8, ptr %cp.0102.i, i32 1
  br i1 %9, label %if.then40.i, label %if.else42.i

if.then40.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cp.0102.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %5, ptr %cp.0102.i, align 1
  br label %if.end59.i

if.else42.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %cp.0102.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 92, ptr %cp.0102.i, align 1
  %12 = lshr i8 %5, 6
  %add45.i = or i8 %12, 48
  %incdec.ptr47.i = getelementptr i8, ptr %cp.0102.i, i32 2
  %13 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add45.i, ptr %incdec.ptr41.i, align 1
  %14 = lshr i8 %5, 3
  %and.i = and i8 %14, 7
  %add50.i = or i8 %and.i, 48
  %incdec.ptr52.i = getelementptr i8, ptr %cp.0102.i, i32 3
  %15 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add50.i, ptr %incdec.ptr47.i, align 1
  %and54.i = and i8 %5, 7
  %add55.i = or i8 %and54.i, 48
  %incdec.ptr57.i = getelementptr i8, ptr %cp.0102.i, i32 4
  %16 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add55.i, ptr %incdec.ptr52.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else42.i, %if.then40.i, %if.then30.i
  %cp.1.i = phi ptr [ %incdec.ptr31.i, %if.then30.i ], [ %incdec.ptr41.i, %if.then40.i ], [ %incdec.ptr57.i, %if.else42.i ]
  %inc61.i = add nuw nsw i32 %i.1101.i, 1
  %exitcond103.not.i = icmp eq i32 %inc61.i, %call
  br i1 %exitcond103.not.i, label %if.end59.i.cond.end_crit_edge, label %if.end59.i.for.body24.i_crit_edge

if.end59.i.for.body24.i_crit_edge:                ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i

if.end59.i.cond.end_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.end:                                         ; preds = %if.end59.i.cond.end_crit_edge, %if.end8.i.i.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %entry.cond.end_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i.cond.end_crit_edge ], [ %call9.i.i.i, %if.end59.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_realpath_from_path(ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %d_op = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %s_type = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %buf.0 = phi ptr [ null, %if.end ], [ %call9.i, %while.cond.backedge ]
  %buf_len.0 = phi i32 [ 2048, %if.end ], [ %shl, %while.cond.backedge ]
  %shl = shl i32 %buf_len.0, 1
  tail call void @kfree(ptr noundef %buf.0) #7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3136) #10
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %while.end.thread, label %if.end4

while.end.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef null) #7
  br label %if.then38

if.end4:                                          ; preds = %while.cond
  %sub = add i32 %shl, -1
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %5 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_op, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %d_dname = getelementptr inbounds %struct.dentry_operations, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %d_dname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_dname, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true.if.end13_crit_edge, label %if.then8

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr %8(ptr noundef nonnull %1, ptr noundef nonnull %call9.i, i32 noundef %sub) #7
  br label %encode

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.end13.if.then19_crit_edge, label %lor.lhs.false

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end13
  %11 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_op, align 8
  %rename = getelementptr inbounds %struct.inode_operations, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rename, align 16
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %land.lhs.true17, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_type, align 32
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs_flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.then19_crit_edge, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true17.if.then19_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true17.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  %23 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry1, align 4
  %call22 = tail call fastcc ptr @tomoyo_get_local_path(ptr noundef %24, ptr noundef nonnull %call9.i, i32 noundef %sub)
  br label %encode

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp.i73 = icmp sgt i32 %sub, 255
  br i1 %cmp.i73, label %if.then.i75, label %if.else.while.cond.backedge_crit_edge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %encode.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge
  br label %while.cond

if.then.i75:                                      ; preds = %if.else
  %sub.i = add i32 %shl, -2
  %call1.i = tail call ptr @d_absolute_path(ptr noundef %path, ptr noundef nonnull %call9.i, i32 noundef %sub.i) #7
  %cmp.i.i74 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i74, label %if.then.i75.tomoyo_get_absolute_path.exit_crit_edge, label %land.lhs.true.i

if.then.i75.tomoyo_get_absolute_path.exit_crit_edge: ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %tomoyo_get_absolute_path.exit

land.lhs.true.i:                                  ; preds = %if.then.i75
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %26)
  %cmp3.i = icmp eq i8 %26, 47
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.tomoyo_get_absolute_path.exit_crit_edge

land.lhs.true.i.tomoyo_get_absolute_path.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tomoyo_get_absolute_path.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr i8, ptr %call1.i, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true5.i.tomoyo_get_absolute_path.exit_crit_edge, label %if.then7.i

land.lhs.true5.i.tomoyo_get_absolute_path.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tomoyo_get_absolute_path.exit

if.then7.i:                                       ; preds = %land.lhs.true5.i
  %29 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dentry1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i.i, align 8
  %tobool9.not.i = icmp eq ptr %32, null
  br i1 %tobool9.not.i, label %if.then7.i.tomoyo_get_absolute_path.exit_crit_edge, label %land.lhs.true10.i

if.then7.i.tomoyo_get_absolute_path.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tomoyo_get_absolute_path.exit

land.lhs.true10.i:                                ; preds = %if.then7.i
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 8
  %35 = and i16 %34, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %cmp12.i = icmp eq i16 %35, 16384
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true10.i.tomoyo_get_absolute_path.exit_crit_edge

land.lhs.true10.i.tomoyo_get_absolute_path.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tomoyo_get_absolute_path.exit

if.then14.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i = add i32 %shl, -3
  %arrayidx16.i = getelementptr i8, ptr %call9.i, i32 %sub15.i
  %36 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 47, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %call9.i, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx18.i, align 2
  br label %tomoyo_get_absolute_path.exit

tomoyo_get_absolute_path.exit:                    ; preds = %if.then14.i, %land.lhs.true10.i.tomoyo_get_absolute_path.exit_crit_edge, %if.then7.i.tomoyo_get_absolute_path.exit_crit_edge, %land.lhs.true5.i.tomoyo_get_absolute_path.exit_crit_edge, %land.lhs.true.i.tomoyo_get_absolute_path.exit_crit_edge, %if.then.i75.tomoyo_get_absolute_path.exit_crit_edge
  %cmp = icmp eq ptr %call1.i, inttoptr (i32 -22 to ptr)
  br i1 %cmp, label %if.then26, label %tomoyo_get_absolute_path.exit.encode_crit_edge

tomoyo_get_absolute_path.exit.encode_crit_edge:   ; preds = %tomoyo_get_absolute_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %encode

if.then26:                                        ; preds = %tomoyo_get_absolute_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dentry1, align 4
  %call29 = tail call fastcc ptr @tomoyo_get_local_path(ptr noundef %39, ptr noundef nonnull %call9.i, i32 noundef %sub)
  br label %encode

encode:                                           ; preds = %if.then26, %tomoyo_get_absolute_path.exit.encode_crit_edge, %if.then19, %if.then8
  %pos.0 = phi ptr [ %call12, %if.then8 ], [ %call29, %if.then26 ], [ %call1.i, %tomoyo_get_absolute_path.exit.encode_crit_edge ], [ %call22, %if.then19 ]
  %cmp.i76 = icmp ugt ptr %pos.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %encode.while.cond.backedge_crit_edge, label %while.end

encode.while.cond.backedge_crit_edge:             ; preds = %encode
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

while.end:                                        ; preds = %encode
  %call35 = tail call ptr @tomoyo_encode(ptr noundef %pos.0)
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %while.end.if.then38_crit_edge, label %while.end.cleanup40_crit_edge

while.end.cleanup40_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

while.end.if.then38_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then38:                                        ; preds = %while.end.if.then38_crit_edge, %while.end.thread
  tail call void @tomoyo_warn_oom(ptr noundef nonnull @__func__.tomoyo_realpath_from_path) #7
  br label %cleanup40

cleanup40:                                        ; preds = %if.then38, %while.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup40_crit_edge ], [ null, %if.then38 ], [ %call35, %while.end.cleanup40_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tomoyo_get_local_path(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) unnamed_addr #0 align 64 {
entry:
  %ep = alloca ptr, align 4
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %buflen)
  %cmp.i = icmp sgt i32 %buflen, 255
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.then.i:                                        ; preds = %entry
  %sub.i = add nsw i32 %buflen, -1
  %call1.i = tail call ptr @dentry_path_raw(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %sub.i) #7
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.cleanup66_crit_edge, label %land.lhs.true.i

if.then.i.cleanup66_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

land.lhs.true.i:                                  ; preds = %if.then.i
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp3.i = icmp eq i8 %3, 47
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr i8, ptr %call1.i, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true5.i.if.end_crit_edge, label %if.then7.i

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7.i:                                       ; preds = %land.lhs.true5.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %tobool9.not.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i, label %if.then7.i.if.end_crit_edge, label %land.lhs.true10.i

if.then7.i.if.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.then7.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp12.i = icmp eq i16 %10, 16384
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true10.i.if.end_crit_edge

land.lhs.true10.i.if.end_crit_edge:               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then14.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i = add nsw i32 %buflen, -2
  %arrayidx16.i = getelementptr i8, ptr %buffer, i32 %sub15.i
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 47, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %buffer, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx18.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %land.lhs.true10.i.if.end_crit_edge, %if.then7.i.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40864, i32 %14)
  %cmp = icmp eq i32 %14, 40864
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %16)
  %cmp2 = icmp eq i8 %16, 47
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #7
  %17 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !16
  %add.ptr = getelementptr i8, ptr %call1.i, i32 1
  %call5 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %ep, i32 noundef 10) #7
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %21)
  %cmp8 = icmp ne i8 %21, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then4.cleanup.thread_crit_edge, label %land.lhs.true11

if.then4.cleanup.thread_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

land.lhs.true11:                                  ; preds = %if.then4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !6) #7
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %call.i = call i32 @__task_pid_nr_ns(ptr noundef %29, i32 noundef 1, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %call.i)
  %cmp14 = icmp eq i32 %call5, %call.i
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup.thread_crit_edge

land.lhs.true11.cleanup.thread_crit_edge:         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then16:                                        ; preds = %land.lhs.true11
  %30 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep, align 4
  %add.ptr17 = getelementptr i8, ptr %31, i32 -5
  %cmp18 = icmp ult ptr %add.ptr17, %buffer
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call ptr @memcpy(ptr %add.ptr17, ptr @.str, i32 5)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end21, %land.lhs.true11.cleanup.thread_crit_edge, %if.then4.cleanup.thread_crit_edge
  %pos.1.ph = phi ptr [ %call1.i, %if.then4.cleanup.thread_crit_edge ], [ %call1.i, %land.lhs.true11.cleanup.thread_crit_edge ], [ %add.ptr17, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #7
  br label %prepend_filesystem_name

cleanup:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #7
  br label %cleanup66

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %34)
  %tobool26.not = icmp ult i32 %34, 1048576
  br i1 %tobool26.not, label %if.end25.prepend_filesystem_name_crit_edge, label %if.end28

if.end25.prepend_filesystem_name_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepend_filesystem_name

if.end28:                                         ; preds = %if.end25
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_op, align 8
  %rename = getelementptr inbounds %struct.inode_operations, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rename, align 16
  %tobool30.not = icmp eq ptr %42, null
  br i1 %tobool30.not, label %if.end28.prepend_filesystem_name_crit_edge, label %cleanup.cont

if.end28.prepend_filesystem_name_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepend_filesystem_name

cleanup.cont:                                     ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #7
  %43 = call ptr @memset(ptr %name, i32 255, i32 63)
  %arrayidx = getelementptr inbounds [64 x i8], ptr %name, i32 0, i32 63
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx, align 1
  %shr35 = lshr i32 %34, 20
  %and = and i32 %34, 1048575
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 63, ptr noundef nonnull @.str.1, i32 noundef %shr35, i32 noundef %and)
  %call38 = call i32 @strlen(ptr noundef nonnull %name) #11
  %idx.neg = sub i32 0, %call38
  %add.ptr39 = getelementptr i8, ptr %call1.i, i32 %idx.neg
  %cmp40 = icmp ult ptr %add.ptr39, %buffer
  br i1 %cmp40, label %out.critedge, label %if.end43

if.end43:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  %45 = call ptr @memcpy(ptr %add.ptr39, ptr %name, i32 %call38)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #7
  br label %cleanup66

prepend_filesystem_name:                          ; preds = %if.end28.prepend_filesystem_name_crit_edge, %if.end25.prepend_filesystem_name_crit_edge, %cleanup.thread
  %pos.2 = phi ptr [ %call1.i, %if.end28.prepend_filesystem_name_crit_edge ], [ %call1.i, %if.end25.prepend_filesystem_name_crit_edge ], [ %pos.1.ph, %cleanup.thread ]
  %s_type = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_type, align 32
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call52 = call i32 @strlen(ptr noundef %49) #11
  %idx.neg53 = xor i32 %call52, -1
  %add.ptr54 = getelementptr i8, ptr %pos.2, i32 %idx.neg53
  %cmp55 = icmp ult ptr %add.ptr54, %buffer
  br i1 %cmp55, label %prepend_filesystem_name.cleanup66_crit_edge, label %cleanup60.thread

prepend_filesystem_name.cleanup66_crit_edge:      ; preds = %prepend_filesystem_name
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

cleanup60.thread:                                 ; preds = %prepend_filesystem_name
  call void @__sanitizer_cov_trace_pc() #9
  %50 = call ptr @memmove(ptr %add.ptr54, ptr %49, i32 %call52)
  %arrayidx59 = getelementptr i8, ptr %pos.2, i32 -1
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 58, ptr %arrayidx59, align 1
  br label %cleanup66

out.critedge:                                     ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #7
  br label %cleanup66

cleanup66:                                        ; preds = %out.critedge, %cleanup60.thread, %prepend_filesystem_name.cleanup66_crit_edge, %if.end43, %cleanup, %if.then.i.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.1 = phi ptr [ %add.ptr39, %if.end43 ], [ %add.ptr54, %cleanup60.thread ], [ inttoptr (i32 -12 to ptr), %prepend_filesystem_name.cleanup66_crit_edge ], [ inttoptr (i32 -12 to ptr), %cleanup ], [ inttoptr (i32 -12 to ptr), %out.critedge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup66_crit_edge ], [ %call1.i, %if.then.i.cleanup66_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_warn_oom(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_realpath_nofollow(ptr noundef %pathname) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #7
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !16
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !16
  %tobool.not = icmp eq ptr %pathname, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @kern_path(ptr noundef nonnull %pathname, i32 noundef 0, ptr noundef nonnull %path) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call ptr @tomoyo_realpath_from_path(ptr noundef nonnull %path)
  call void @path_put(ptr noundef nonnull %path) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.then ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_absolute_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__func__.tomoyo_realpath_from_path, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/realpath.c", i32 293, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/realpath.c", i32 172, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/realpath.c", i32 196, i32 36}
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
!16 = !{!"auto-init"}
