; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regcache-rbtree.c_pt.bc'
source_filename = "../drivers/base/regmap/regcache-rbtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.regcache_rbtree_ctx = type { %struct.rb_root, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regcache_rbtree_node = type { ptr, ptr, i32, i32, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rbtree\00", [25 x i8] zeroinitializer }, align 32
@regcache_rbtree_ops = dso_local global { %struct.regcache_ops, [60 x i8] } { %struct.regcache_ops { ptr @.str, i32 1, ptr @regcache_rbtree_init, ptr @regcache_rbtree_exit, ptr @rbtree_debugfs_init, ptr @regcache_rbtree_read, ptr @regcache_rbtree_write, ptr @regcache_rbtree_sync, ptr @regcache_rbtree_drop }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rbtree_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rbtree_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%x-%x (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%d nodes, %d registers, average %d registers, used %zu bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 543, i32 10 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"regcache_rbtree_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 541, i32 21 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"rbtree_fops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 176, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 157, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [41 x i8] c"../drivers/base/regmap/regcache-rbtree.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 168, i32 16 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @regcache_rbtree_ops, ptr @rbtree_fops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_rbtree_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_init(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #9
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %cache, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call7.i, align 8
  %cached_rbnode = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %cached_rbnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cached_rbnode, align 4
  %num_reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %4 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_reg_defaults, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24.not = icmp eq i32 %5, 0
  br i1 %cmp24.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.025, 1
  %6 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_reg_defaults, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_defaults, align 4
  %arrayidx = getelementptr %struct.reg_default, ptr %9, i32 %i.025
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %def = getelementptr %struct.reg_default, ptr %9, i32 %i.025, i32 1
  %12 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def, align 4
  %call5 = tail call i32 @regcache_rbtree_write(ptr noundef %map, i32 noundef %11, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %err

err:                                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @regcache_rbtree_exit(ptr noundef %map)
  br label %cleanup

cleanup:                                          ; preds = %err, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_exit(ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @rb_first(ptr noundef nonnull %1) #6
  %tobool1.not18 = icmp eq ptr %call, null
  br i1 %tobool1.not18, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %next.019 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %next.019, i32 -16
  %call2 = tail call ptr @rb_next(ptr noundef nonnull %next.019) #6
  tail call void @rb_erase(ptr noundef nonnull %next.019, ptr noundef nonnull %1) #6
  %cache_present = getelementptr i8, ptr %next.019, i32 -12
  %2 = ptrtoint ptr %cache_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_present, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  %tobool1.not = icmp eq ptr %call2, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  tail call void @kfree(ptr noundef %7) #6
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rbtree_debugfs_init(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 18
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %map, ptr noundef nonnull @rbtree_fops) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_read(ptr noundef %map, i32 noundef %reg, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache.i, align 4
  %cached_rbnode.i = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cached_rbnode.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %base_reg.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_reg.i.i, align 4
  %blklen.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blklen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blklen.i.i, align 4
  %sub.i.i = add i32 %7, -1
  %reg_stride.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %8 = ptrtoint ptr %reg_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_stride.i.i, align 4
  %mul.i.i = mul i32 %sub.i.i, %9
  %add.i.i = add i32 %mul.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp.not.i = icmp ugt i32 %5, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %reg)
  %cmp1.not.i = icmp ult i32 %add.i.i, %reg
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.050.i = load ptr, ptr %1, align 4
  %tobool4.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool4.not51.i, label %if.end3.i.cleanup_crit_edge, label %while.body.lr.ph.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %reg_stride.i42.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %11 = ptrtoint ptr %reg_stride.i42.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_stride.i42.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.052.i = phi ptr [ %node.050.i, %while.body.lr.ph.i ], [ %node.0.i, %if.end17.i.while.body.i_crit_edge ]
  %base_reg.i39.i = getelementptr i8, ptr %node.052.i, i32 -8
  %13 = ptrtoint ptr %base_reg.i39.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i39.i, align 4
  %blklen.i40.i = getelementptr i8, ptr %node.052.i, i32 -4
  %15 = ptrtoint ptr %blklen.i40.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blklen.i40.i, align 4
  %sub.i41.i = add i32 %16, -1
  %mul.i43.i = mul i32 %sub.i41.i, %12
  %add.i44.i = add i32 %mul.i43.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %reg)
  %cmp5.not.i = icmp ugt i32 %14, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i44.i, i32 %reg)
  %cmp10.i = icmp ult i32 %add.i44.i, %reg
  br i1 %cmp5.not.i, label %if.else.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %while.body.i
  br i1 %cmp10.i, label %land.lhs.true6.i.if.then11.i_crit_edge, label %regcache_rbtree_lookup.exit

land.lhs.true6.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.else.i:                                        ; preds = %while.body.i
  br i1 %cmp10.i, label %if.else.i.if.then11.i_crit_edge, label %if.then14.i

if.else.i.if.then11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i.if.then11.i_crit_edge, %land.lhs.true6.i.if.then11.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then11.i
  %node.1.in.i = phi ptr [ %rb_right.i, %if.then11.i ], [ %rb_left.i, %if.then14.i ]
  %17 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool4.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool4.not.i, label %if.end17.i.cleanup_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

regcache_rbtree_lookup.exit:                      ; preds = %land.lhs.true6.i
  %add.ptr.le.i = getelementptr i8, ptr %node.052.i, i32 -16
  %18 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.le.i, ptr %cached_rbnode.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %regcache_rbtree_lookup.exit.cleanup_crit_edge, label %regcache_rbtree_lookup.exit.if.then_crit_edge

regcache_rbtree_lookup.exit.if.then_crit_edge:    ; preds = %regcache_rbtree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

regcache_rbtree_lookup.exit.cleanup_crit_edge:    ; preds = %regcache_rbtree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %regcache_rbtree_lookup.exit.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %retval.0.i19 = phi ptr [ %add.ptr.le.i, %regcache_rbtree_lookup.exit.if.then_crit_edge ], [ %3, %if.then.i.if.then_crit_edge ]
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %retval.0.i19, i32 0, i32 2
  %19 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_reg, align 4
  %sub = sub i32 %reg, %20
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %21 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_stride, align 4
  %div = udiv i32 %sub, %22
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %retval.0.i19, i32 0, i32 1
  %23 = ptrtoint ptr %cache_present to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache_present, align 4
  %div3.i = lshr i32 %div, 5
  %arrayidx.i = getelementptr i32, ptr %24, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %div, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not = icmp eq i32 %28, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %retval.0.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.0.i19, align 4
  %call.i = tail call i32 @regcache_get_val(ptr noundef %map, ptr noundef %30, i32 noundef %div) #6
  %31 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %regcache_rbtree_lookup.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %if.then.cleanup_crit_edge ], [ -2, %regcache_rbtree_lookup.exit.cleanup_crit_edge ], [ -2, %if.end3.i.cleanup_crit_edge ], [ -2, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_write(ptr noundef %map, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %cached_rbnode.i = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cached_rbnode.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %base_reg.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_reg.i.i, align 4
  %blklen.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blklen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blklen.i.i, align 4
  %sub.i.i = add i32 %7, -1
  %reg_stride.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %8 = ptrtoint ptr %reg_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_stride.i.i, align 4
  %mul.i.i = mul i32 %sub.i.i, %9
  %add.i.i = add i32 %mul.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp.not.i = icmp ugt i32 %5, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %reg)
  %cmp1.not.i = icmp ult i32 %add.i.i, %reg
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.050.i = load ptr, ptr %1, align 4
  %tobool4.not51.i = icmp eq ptr %node.050.i, null
  br i1 %tobool4.not51.i, label %if.end3.i.if.else_crit_edge, label %while.body.lr.ph.i

if.end3.i.if.else_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %reg_stride.i42.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %11 = ptrtoint ptr %reg_stride.i42.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_stride.i42.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.052.i = phi ptr [ %node.050.i, %while.body.lr.ph.i ], [ %node.0.i, %if.end17.i.while.body.i_crit_edge ]
  %base_reg.i39.i = getelementptr i8, ptr %node.052.i, i32 -8
  %13 = ptrtoint ptr %base_reg.i39.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i39.i, align 4
  %blklen.i40.i = getelementptr i8, ptr %node.052.i, i32 -4
  %15 = ptrtoint ptr %blklen.i40.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blklen.i40.i, align 4
  %sub.i41.i = add i32 %16, -1
  %mul.i43.i = mul i32 %sub.i41.i, %12
  %add.i44.i = add i32 %mul.i43.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %reg)
  %cmp5.not.i = icmp ugt i32 %14, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i44.i, i32 %reg)
  %cmp10.i = icmp ult i32 %add.i44.i, %reg
  br i1 %cmp5.not.i, label %if.else.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %while.body.i
  br i1 %cmp10.i, label %land.lhs.true6.i.if.then11.i_crit_edge, label %regcache_rbtree_lookup.exit

land.lhs.true6.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.else.i:                                        ; preds = %while.body.i
  br i1 %cmp10.i, label %if.else.i.if.then11.i_crit_edge, label %if.then14.i

if.else.i.if.then11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i.if.then11.i_crit_edge, %land.lhs.true6.i.if.then11.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then11.i
  %node.1.in.i = phi ptr [ %rb_right.i, %if.then11.i ], [ %rb_left.i, %if.then14.i ]
  %17 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool4.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool4.not.i, label %if.end17.i.if.else_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end17.i.if.else_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

regcache_rbtree_lookup.exit:                      ; preds = %land.lhs.true6.i
  %add.ptr.le.i = getelementptr i8, ptr %node.052.i, i32 -16
  %18 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.le.i, ptr %cached_rbnode.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %regcache_rbtree_lookup.exit.if.else_crit_edge, label %regcache_rbtree_lookup.exit.if.then_crit_edge

regcache_rbtree_lookup.exit.if.then_crit_edge:    ; preds = %regcache_rbtree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

regcache_rbtree_lookup.exit.if.else_crit_edge:    ; preds = %regcache_rbtree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %regcache_rbtree_lookup.exit.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %retval.0.i173 = phi ptr [ %add.ptr.le.i, %regcache_rbtree_lookup.exit.if.then_crit_edge ], [ %3, %if.then.i.if.then_crit_edge ]
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %retval.0.i173, i32 0, i32 2
  %19 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_reg, align 4
  %sub = sub i32 %reg, %20
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %21 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_stride, align 4
  %div = udiv i32 %sub, %22
  %cache_present.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %retval.0.i173, i32 0, i32 1
  %23 = ptrtoint ptr %cache_present.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache_present.i, align 4
  tail call void @_set_bit(i32 noundef %div, ptr noundef %24) #6
  %25 = ptrtoint ptr %retval.0.i173 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i173, align 4
  %call.i = tail call zeroext i1 @regcache_set_val(ptr noundef %map, ptr noundef %26, i32 noundef %div, i32 noundef %value) #6
  br label %cleanup66

if.else:                                          ; preds = %regcache_rbtree_lookup.exit.if.else_crit_edge, %if.end17.i.if.else_crit_edge, %if.end3.i.if.else_crit_edge
  %reg_stride2 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %27 = ptrtoint ptr %reg_stride2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_stride2, align 4
  %mul = mul i32 %28, 28
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %29 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cache_word_size, align 4
  %div3 = udiv i32 %mul, %30
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %reg, i32 %div3)
  %add = add i32 %div3, %reg
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %node.0183 = load ptr, ptr %1, align 4
  %tobool7.not184 = icmp eq ptr %node.0183, null
  br i1 %tobool7.not184, label %if.else.if.end47_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %if.else.while.body_crit_edge
  %node.0189 = phi ptr [ %node.0, %if.end40.while.body_crit_edge ], [ %node.0183, %if.else.while.body_crit_edge ]
  %rbnode.0188 = phi ptr [ %rbnode.1, %if.end40.while.body_crit_edge ], [ null, %if.else.while.body_crit_edge ]
  %best_dist.0187 = phi i32 [ %best_dist.1, %if.end40.while.body_crit_edge ], [ -1, %if.else.while.body_crit_edge ]
  %new_top_reg.0186 = phi i32 [ %new_top_reg.1, %if.end40.while.body_crit_edge ], [ -1, %if.else.while.body_crit_edge ]
  %new_base_reg.0185 = phi i32 [ %new_base_reg.1, %if.end40.while.body_crit_edge ], [ -1, %if.else.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.0189, i32 -16
  %base_reg.i = getelementptr i8, ptr %node.0189, i32 -8
  %33 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_reg.i, align 4
  %blklen.i = getelementptr i8, ptr %node.0189, i32 -4
  %35 = ptrtoint ptr %blklen.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blklen.i, align 4
  %sub.i = add i32 %36, -1
  %mul.i = mul i32 %sub.i, %28
  %add.i = add i32 %mul.i, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add)
  %cmp8.not = icmp ugt i32 %34, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp9.not = icmp ult i32 %add.i, %31
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %while.body.if.end32_crit_edge, label %if.then10

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %reg)
  %cmp11 = icmp ugt i32 %34, %reg
  %sub13 = sub i32 %34, %reg
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %reg, i32 %add.i)
  %dist.0 = select i1 %cmp11, i32 %sub13, i32 %37
  call void @__sanitizer_cov_trace_cmp4(i32 %dist.0, i32 %best_dist.0187)
  %cmp21 = icmp ult i32 %dist.0, %best_dist.0187
  br i1 %cmp21, label %if.then22, label %if.then10.if.end32_crit_edge

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then22:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %38 = tail call i32 @llvm.umin.i32(i32 %34, i32 %reg)
  %39 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %reg)
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.then10.if.end32_crit_edge, %while.body.if.end32_crit_edge
  %new_base_reg.1 = phi i32 [ %38, %if.then22 ], [ %new_base_reg.0185, %if.then10.if.end32_crit_edge ], [ %new_base_reg.0185, %while.body.if.end32_crit_edge ]
  %new_top_reg.1 = phi i32 [ %39, %if.then22 ], [ %new_top_reg.0186, %if.then10.if.end32_crit_edge ], [ %new_top_reg.0186, %while.body.if.end32_crit_edge ]
  %best_dist.1 = phi i32 [ %dist.0, %if.then22 ], [ %best_dist.0187, %if.then10.if.end32_crit_edge ], [ %best_dist.0187, %while.body.if.end32_crit_edge ]
  %rbnode.1 = phi ptr [ %add.ptr, %if.then22 ], [ %rbnode.0188, %if.then10.if.end32_crit_edge ], [ %rbnode.0188, %while.body.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %reg)
  %cmp33 = icmp ugt i32 %34, %reg
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.0189, i32 0, i32 2
  br label %if.end40

if.else35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reg)
  %cmp36 = icmp ult i32 %add.i, %reg
  br i1 %cmp36, label %if.then37, label %if.else35.while.end_crit_edge

if.else35.while.end_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then37:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.0189, i32 0, i32 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then34
  %node.1.in = phi ptr [ %rb_left, %if.then34 ], [ %rb_right, %if.then37 ]
  %40 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool7.not = icmp eq ptr %node.0, null
  br i1 %tobool7.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %if.else35.while.end_crit_edge
  %tobool41.not = icmp eq ptr %rbnode.1, null
  br i1 %tobool41.not, label %while.end.if.end47_crit_edge, label %if.then42

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then42:                                        ; preds = %while.end
  %sub.i128 = sub i32 %new_top_reg.1, %new_base_reg.1
  %div.i = udiv i32 %sub.i128, %28
  %add.i130 = add i32 %div.i, 1
  %sub1.i = sub i32 %reg, %new_base_reg.1
  %div3.i = udiv i32 %sub1.i, %28
  %base_reg4.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %rbnode.1, i32 0, i32 2
  %41 = ptrtoint ptr %base_reg4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_reg4.i, align 4
  %sub5.i = sub i32 %42, %new_base_reg.1
  %div7.i = udiv i32 %sub5.i, %28
  %43 = ptrtoint ptr %rbnode.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rbnode.1, align 4
  %mul.i131 = mul i32 %add.i130, %30
  %call.i132 = tail call noalias ptr @krealloc(ptr noundef %44, i32 noundef %mul.i131, i32 noundef 3264) #10
  %tobool.not.i133 = icmp eq ptr %call.i132, null
  br i1 %tobool.not.i133, label %if.then42.cleanup66_crit_edge, label %if.end.i

if.then42.cleanup66_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end.i:                                         ; preds = %if.then42
  %45 = ptrtoint ptr %rbnode.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i132, ptr %rbnode.1, align 4
  %sub10.i = add i32 %div.i, 32
  %div1191.i = lshr i32 %sub10.i, 5
  %blklen12.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %rbnode.1, i32 0, i32 3
  %46 = ptrtoint ptr %blklen12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blklen12.i, align 4
  %sub14.i = add i32 %47, 31
  %div1592.i = lshr i32 %sub14.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div1191.i, i32 %div1592.i)
  %cmp.i = icmp ugt i32 %div1191.i, %div1592.i
  %cache_present.i134 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %rbnode.1, i32 0, i32 1
  %48 = ptrtoint ptr %cache_present.i134 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cache_present.i134, align 4
  br i1 %cmp.i, label %if.then16.i, label %if.end.i.if.end39.i_crit_edge

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then16.i:                                      ; preds = %if.end.i
  %mul20.i = shl nuw nsw i32 %div1191.i, 2
  %call21.i = tail call noalias ptr @krealloc(ptr noundef %49, i32 noundef %mul20.i, i32 noundef 3264) #10
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.then16.i.cleanup66_crit_edge, label %if.end24.i

if.then16.i.cleanup66_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end24.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %blklen12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blklen12.i, align 4
  %sub27.i = add i32 %51, 31
  %div2893.i = lshr i32 %sub27.i, 5
  %add.ptr.i = getelementptr i32, ptr %call21.i, i32 %div2893.i
  %sub36.i = sub nsw i32 %div1191.i, %div2893.i
  %mul37.i = shl nsw i32 %sub36.i, 2
  %52 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %mul37.i)
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end24.i, %if.end.i.if.end39.i_crit_edge
  %present.0.i = phi ptr [ %call21.i, %if.end24.i ], [ %49, %if.end.i.if.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub1.i)
  %cmp40.i = icmp ugt i32 %28, %sub1.i
  br i1 %cmp40.i, label %if.then41.i, label %if.end39.i.if.end46_crit_edge

if.end39.i.if.end46_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cache_word_size, align 4
  %mul43.i = mul i32 %54, %div7.i
  %add.ptr44.i = getelementptr i8, ptr %call.i132, i32 %mul43.i
  %55 = ptrtoint ptr %blklen12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %blklen12.i, align 4
  %mul47.i = mul i32 %56, %54
  %57 = call ptr @memmove(ptr %add.ptr44.i, ptr %call.i132, i32 %mul47.i)
  tail call void @__bitmap_shift_left(ptr noundef %present.0.i, ptr noundef %present.0.i, i32 noundef %div7.i, i32 noundef %add.i130) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then41.i, %if.end39.i.if.end46_crit_edge
  %58 = ptrtoint ptr %blklen12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i130, ptr %blklen12.i, align 4
  %59 = ptrtoint ptr %base_reg4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %new_base_reg.1, ptr %base_reg4.i, align 4
  %60 = ptrtoint ptr %cache_present.i134 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %present.0.i, ptr %cache_present.i134, align 4
  tail call void @_set_bit(i32 noundef %div3.i, ptr noundef %present.0.i) #6
  %61 = ptrtoint ptr %rbnode.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rbnode.1, align 4
  %call.i.i = tail call zeroext i1 @regcache_set_val(ptr noundef %map, ptr noundef %62, i32 noundef %div3.i, i32 noundef %value) #6
  %63 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rbnode.1, ptr %cached_rbnode.i, align 4
  br label %cleanup66

if.end47:                                         ; preds = %while.end.if.end47_crit_edge, %if.else.if.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i136 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i136, label %if.end47.cleanup66_crit_edge, label %if.end.i137

if.end47.cleanup66_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.end.i137:                                      ; preds = %if.end47
  %rd_table.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 33
  %65 = ptrtoint ptr %rd_table.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rd_table.i, align 4
  %tobool1.not.i = icmp eq ptr %66, null
  br i1 %tobool1.not.i, label %if.end.i137.if.end17.i145_crit_edge, label %for.cond.preheader.i

if.end.i137.if.end17.i145_crit_edge:              ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i145

for.cond.preheader.i:                             ; preds = %if.end.i137
  %n_yes_ranges.i = getelementptr inbounds %struct.regmap_access_table, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %n_yes_ranges.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_yes_ranges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp87.not.i = icmp eq i32 %68, 0
  br i1 %cmp87.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.regmap_range, ptr %70, i32 %i.088.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %reg)
  %cmp.not.i.i = icmp ugt i32 %72, %reg
  br i1 %cmp.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %regmap_reg_in_range.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

regmap_reg_in_range.exit.i:                       ; preds = %for.body.i
  %range_max.i.i = getelementptr %struct.regmap_range, ptr %70, i32 %i.088.i, i32 1
  %73 = ptrtoint ptr %range_max.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %range_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %reg)
  %cmp1.i.not.i = icmp ult i32 %74, %reg
  br i1 %cmp1.i.not.i, label %regmap_reg_in_range.exit.i.for.inc.i_crit_edge, label %regmap_reg_in_range.exit.i.for.end.i_crit_edge

regmap_reg_in_range.exit.i.for.end.i_crit_edge:   ; preds = %regmap_reg_in_range.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

regmap_reg_in_range.exit.i.for.inc.i_crit_edge:   ; preds = %regmap_reg_in_range.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %regmap_reg_in_range.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %68
  br i1 %exitcond.not.i, label %for.inc.i.if.end17.i145_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end17.i145_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i145

for.end.i:                                        ; preds = %regmap_reg_in_range.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.088.i, %regmap_reg_in_range.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %68)
  %cmp10.not.i = icmp eq i32 %i.0.lcssa.i, %68
  br i1 %cmp10.not.i, label %for.end.i.if.end17.i145_crit_edge, label %if.then11.i144

for.end.i.if.end17.i145_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i145

if.then11.i144:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %66, align 4
  %arrayidx14.i = getelementptr %struct.regmap_range, ptr %76, i32 %i.0.lcssa.i
  %range_max.i = getelementptr %struct.regmap_range, ptr %76, i32 %i.0.lcssa.i, i32 1
  %77 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %range_max.i, align 4
  %79 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx14.i, align 4
  %sub.i138 = sub i32 %78, %80
  %81 = ptrtoint ptr %reg_stride2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reg_stride2, align 4
  %div.i140 = udiv i32 %sub.i138, %82
  %add.i141 = add i32 %div.i140, 1
  %blklen.i142 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %blklen.i142 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add.i141, ptr %blklen.i142, align 4
  %84 = load i32, ptr %arrayidx14.i, align 4
  %base_reg.i143 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %base_reg.i143 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %base_reg.i143, align 8
  br label %if.end17.i145

if.end17.i145:                                    ; preds = %if.then11.i144, %for.end.i.if.end17.i145_crit_edge, %for.inc.i.if.end17.i145_crit_edge, %if.end.i137.if.end17.i145_crit_edge
  %blklen18.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %blklen18.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %blklen18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool19.not.i = icmp eq i32 %87, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end17.i145.if.end23.i_crit_edge

if.end17.i145.if.end23.i_crit_edge:               ; preds = %if.end17.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i145
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %blklen18.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %blklen18.i, align 4
  %base_reg22.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %base_reg22.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %reg, ptr %base_reg22.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i145.if.end23.i_crit_edge
  %90 = ptrtoint ptr %blklen18.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blklen18.i, align 4
  %92 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cache_word_size, align 4
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 %93) #6
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !19

kmalloc_array.exit.thread.i:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %err_free.i

if.end7.i.i:                                      ; preds = %if.end23.i
  %97 = extractvalue { i32, i1 } %94, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3264) #11
  %98 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call8.i.i, ptr %call7.i.i.i, align 8
  %tobool27.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not.i, label %if.end7.i.i.err_free.i_crit_edge, label %if.end7.i.i.i

if.end7.i.i.err_free.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free.i

if.end7.i.i.i:                                    ; preds = %if.end7.i.i
  %99 = ptrtoint ptr %blklen18.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blklen18.i, align 4
  %sub32.i = add i32 %100, 31
  %101 = lshr i32 %sub32.i, 3
  %102 = and i32 %101, 536870908
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %102, i32 noundef 3520) #11
  %cache_present.i147 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %cache_present.i147 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call8.i.i.i, ptr %cache_present.i147, align 4
  %tobool36.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool36.not.i, label %err_free_block.i, label %if.end51

err_free_block.i:                                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %105) #6
  br label %err_free.i

err_free.i:                                       ; preds = %err_free_block.i, %if.end7.i.i.err_free.i_crit_edge, %kmalloc_array.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup66

if.end51:                                         ; preds = %if.end7.i.i.i
  %base_reg52 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %base_reg52 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_reg52, align 8
  %sub53 = sub i32 %reg, %107
  %cache_present.i149 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %cache_present.i149 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cache_present.i149, align 4
  tail call void @_set_bit(i32 noundef %sub53, ptr noundef %109) #6
  %110 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call7.i.i.i, align 8
  %call.i150 = tail call zeroext i1 @regcache_set_val(ptr noundef %map, ptr noundef %111, i32 noundef %sub53, i32 noundef %value) #6
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %tobool.not6.i = icmp eq ptr %113, null
  br i1 %tobool.not6.i, label %if.end51.while.end.i_crit_edge, label %while.body.lr.ph.i152

if.end51.while.end.i_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i152:                            ; preds = %if.end51
  %114 = ptrtoint ptr %reg_stride2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %reg_stride2, align 4
  %116 = ptrtoint ptr %base_reg52 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %base_reg52, align 8
  br label %while.body.i159

while.body.i159:                                  ; preds = %if.end9.i.while.body.i159_crit_edge, %while.body.lr.ph.i152
  %118 = phi ptr [ %113, %while.body.lr.ph.i152 ], [ %124, %if.end9.i.while.body.i159_crit_edge ]
  %base_reg.i.i153 = getelementptr i8, ptr %118, i32 -8
  %119 = ptrtoint ptr %base_reg.i.i153 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base_reg.i.i153, align 4
  %blklen.i.i154 = getelementptr i8, ptr %118, i32 -4
  %121 = ptrtoint ptr %blklen.i.i154 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %blklen.i.i154, align 4
  %sub.i.i155 = add i32 %122, -1
  %mul.i.i156 = mul i32 %sub.i.i155, %115
  %add.i.i157 = add i32 %mul.i.i156, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %120)
  %cmp.not.i158 = icmp ult i32 %117, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %add.i.i157)
  %cmp3.i = icmp ugt i32 %117, %add.i.i157
  br i1 %cmp.not.i158, label %if.else.i160, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body.i159
  br i1 %cmp3.i, label %land.lhs.true.i.if.then4.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.if.then4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.else.i160:                                     ; preds = %while.body.i159
  br i1 %cmp3.i, label %if.else.i160.if.then4.i_crit_edge, label %if.then7.i

if.else.i160.if.then4.i_crit_edge:                ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i160.if.then4.i_crit_edge, %land.lhs.true.i.if.then4.i_crit_edge
  %rb_right.i161 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 1
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i162 = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then4.i
  %new.1.i = phi ptr [ %rb_right.i161, %if.then4.i ], [ %rb_left.i162, %if.then7.i ]
  %123 = ptrtoint ptr %new.1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %new.1.i, align 4
  %tobool.not.i163 = icmp eq ptr %124, null
  br i1 %tobool.not.i163, label %while.cond.while.end_crit_edge.i, label %if.end9.i.while.body.i159_crit_edge

if.end9.i.while.body.i159_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i159

while.cond.while.end_crit_edge.i:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le.i = ptrtoint ptr %118 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end51.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end51.while.end.i_crit_edge ]
  %new.0.lcssa.i = phi ptr [ %new.1.i, %while.cond.while.end_crit_edge.i ], [ %1, %if.end51.while.end.i_crit_edge ]
  %node.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 4
  %125 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %parent.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.regcache_rbtree_node, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %127 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %rb_left.i.i, align 8
  %128 = ptrtoint ptr %new.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %node.i, ptr %new.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %land.lhs.true.i.cleanup_crit_edge
  %129 = ptrtoint ptr %cached_rbnode.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call7.i.i.i, ptr %cached_rbnode.i, align 4
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %err_free.i, %if.end47.cleanup66_crit_edge, %if.end46, %if.then16.i.cleanup66_crit_edge, %if.then42.cleanup66_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.then ], [ 0, %if.end46 ], [ -12, %if.then42.cleanup66_crit_edge ], [ -12, %if.then16.i.cleanup66_crit_edge ], [ -12, %err_free.i ], [ -12, %if.end47.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_sync(ptr noundef %map, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %call = tail call ptr @rb_first(ptr noundef %1) #6
  %tobool.not46 = icmp eq ptr %call, null
  br i1 %tobool.not46, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_stride.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.047 = phi ptr [ %call, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.047, i32 -16
  %base_reg.i = getelementptr i8, ptr %node.047, i32 -8
  %2 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_reg.i, align 4
  %blklen.i = getelementptr i8, ptr %node.047, i32 -4
  %4 = ptrtoint ptr %blklen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blklen.i, align 4
  %sub.i = add i32 %5, -1
  %6 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_stride.i, align 4
  %mul.i = mul i32 %sub.i, %7
  %add.i = add i32 %mul.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max)
  %cmp = icmp ugt i32 %3, %max
  br i1 %cmp, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %min)
  %cmp1 = icmp ult i32 %add.i, %min
  br i1 %cmp1, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min)
  %cmp4 = icmp ult i32 %3, %min
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %min, %3
  %div = udiv i32 %sub, %7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %start.0 = phi i32 [ %div, %if.then5 ], [ 0, %if.end3.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max)
  %cmp7 = icmp ugt i32 %add.i, %max
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = sub i32 %max, %3
  %div11 = udiv i32 %sub9, %7
  %add = add i32 %div11, 1
  br label %if.end13

if.else12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %blklen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blklen.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then8
  %end.0 = phi i32 [ %add, %if.then8 ], [ %9, %if.else12 ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %cache_present = getelementptr i8, ptr %node.047, i32 -12
  %12 = ptrtoint ptr %cache_present to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache_present, align 4
  %14 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_reg.i, align 4
  %call15 = tail call i32 @regcache_sync_block(ptr noundef %map, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %start.0, i32 noundef %end.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end13.for.inc_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %call19 = tail call ptr @rb_next(ptr noundef nonnull %node.047) #6
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call20 = tail call i32 @regmap_async_complete(ptr noundef %map) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %for.end ], [ %call15, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_rbtree_drop(ptr nocapture noundef readonly %map, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %call = tail call ptr @rb_first(ptr noundef %1) #6
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_stride.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.031 = phi ptr [ %call, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %base_reg.i = getelementptr i8, ptr %node.031, i32 -8
  %2 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_reg.i, align 4
  %blklen.i = getelementptr i8, ptr %node.031, i32 -4
  %4 = ptrtoint ptr %blklen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blklen.i, align 4
  %sub.i = add i32 %5, -1
  %6 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_stride.i, align 4
  %mul.i = mul i32 %sub.i, %7
  %add.i = add i32 %mul.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max)
  %cmp = icmp ugt i32 %3, %max
  br i1 %cmp, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %min)
  %cmp1 = icmp ult i32 %add.i, %min
  br i1 %cmp1, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min)
  %cmp4 = icmp ult i32 %3, %min
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %min, %3
  %div = udiv i32 %sub, %7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %start.0 = phi i32 [ %div, %if.then5 ], [ 0, %if.end3.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max)
  %cmp7 = icmp ugt i32 %add.i, %max
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = sub i32 %max, %3
  %div11 = udiv i32 %sub9, %7
  %add = add i32 %div11, 1
  br label %if.end13

if.else12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %blklen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blklen.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then8
  %end.0 = phi i32 [ %add, %if.then8 ], [ %9, %if.else12 ]
  %cache_present = getelementptr i8, ptr %node.031, i32 -12
  %10 = ptrtoint ptr %cache_present to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_present, align 4
  %sub14 = sub i32 %end.0, %start.0
  tail call void @__bitmap_clear(ptr noundef %11, i32 noundef %start.0, i32 noundef %sub14) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.end.for.inc_crit_edge
  %call15 = tail call ptr @rb_next(ptr noundef nonnull %node.031) #6
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbtree_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rbtree_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rbtree_show(ptr noundef %s, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cache = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %lock = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_arg, align 4
  tail call void %5(ptr noundef %7) #6
  %call = tail call ptr @rb_first(ptr noundef %3) #6
  %cmp.not36 = icmp eq ptr %call, null
  br i1 %cmp.not36, label %entry.if.end_crit_edge, label %for.body.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 50
  %reg_stride.i = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %registers.040 = phi i32 [ 0, %for.body.lr.ph ], [ %add9, %for.body.for.body_crit_edge ]
  %nodes.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mem_size.038 = phi i32 [ 8, %for.body.lr.ph ], [ %add5, %for.body.for.body_crit_edge ]
  %node.037 = phi ptr [ %call, %for.body.lr.ph ], [ %call10, %for.body.for.body_crit_edge ]
  %add = add i32 %mem_size.038, 28
  %blklen = getelementptr i8, ptr %node.037, i32 -4
  %8 = ptrtoint ptr %blklen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blklen, align 4
  %10 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_word_size, align 4
  %mul = mul i32 %11, %9
  %add1 = add i32 %add, %mul
  %sub = add i32 %9, 31
  %12 = lshr i32 %sub, 3
  %mul4 = and i32 %12, 536870908
  %add5 = add i32 %add1, %mul4
  %base_reg.i = getelementptr i8, ptr %node.037, i32 -8
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i, align 4
  %sub.i = add i32 %9, -1
  %15 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_stride.i, align 4
  %mul.i = mul i32 %sub.i, %16
  %add.i = add i32 %mul.i, %14
  %div7 = udiv i32 %mul.i, %16
  %add8 = add i32 %div7, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %add.i, i32 noundef %add8) #6
  %inc = add i32 %nodes.039, 1
  %add9 = add i32 %add8, %registers.040
  %call10 = tail call ptr @rb_next(ptr noundef nonnull %node.037) #6
  %cmp.not = icmp eq ptr %call10, null
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %div11 = sdiv i32 %add9, %inc
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %registers.0.lcssa49 = phi i32 [ %add9, %if.then ], [ %add9, %for.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %nodes.0.lcssa48 = phi i32 [ %inc, %if.then ], [ 0, %for.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %mem_size.0.lcssa47 = phi i32 [ %add5, %if.then ], [ %add5, %for.end.if.end_crit_edge ], [ 8, %entry.if.end_crit_edge ]
  %average.0 = phi i32 [ %div11, %if.then ], [ 0, %for.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %nodes.0.lcssa48, i32 noundef %registers.0.lcssa49, i32 noundef %average.0, i32 noundef %mem_size.0.lcssa47) #6
  %unlock = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlock, align 4
  %19 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock_arg, align 4
  tail call void %18(ptr noundef %20) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_get_val(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regcache_set_val(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_left(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_async_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regcache-rbtree.c", i32 543, i32 10}
!2 = !{ptr @regcache_rbtree_ops, !3, !"regcache_rbtree_ops", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regcache-rbtree.c", i32 541, i32 21}
!4 = !{ptr @rbtree_fops, !5, !"rbtree_fops", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regcache-rbtree.c", i32 176, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regcache-rbtree.c", i32 157, i32 17}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/regmap/regcache-rbtree.c", i32 168, i32 16}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
