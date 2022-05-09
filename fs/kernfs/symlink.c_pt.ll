; ModuleID = '/llk/IR_all_yes/fs/kernfs/symlink.c_pt.bc'
source_filename = "../fs/kernfs/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.0, ptr, i64, i16, i16, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_call = type { ptr, ptr }

@kernfs_symlink_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @kernfs_iop_get_link, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_link(ptr noundef %parent, ptr noundef %name, ptr noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %target, i32 0, i32 13
  %0 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iattr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %uid.sroa.0.0.copyload = load i32, ptr %1, align 8
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %3)
  %gid.sroa.0.0.copyload = load i32, ptr %ia_gid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uid.sroa.0.0 = phi i32 [ %uid.sroa.0.0.copyload, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %gid.sroa.0.0 = phi i32 [ %gid.sroa.0.0.copyload, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %.fca.0.insert20 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0, 0
  %call = tail call ptr @kernfs_new_node(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext -24065, [1 x i32] %.fca.0.insert20, [1 x i32] %.fca.0.insert, i32 noundef 4) #4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %target, i32 0, i32 6
  %7 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns, align 8
  %ns10 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %ns10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ns10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %target, ptr %10, align 8
  tail call void @kernfs_get(ptr noundef %target) #4
  %call12 = tail call i32 @kernfs_add_one(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kernfs_put(ptr noundef nonnull %call) #4
  %12 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.end15 ], [ %call, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_iop_get_link(ptr noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  %parent1.i = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent1.i, align 4
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %4, ptr %9
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %10 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root.i.i, align 8
  %kernfs_rwsem.i = getelementptr inbounds %struct.kernfs_root, ptr %11, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem.i) #4
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i, align 4
  %tobool.not97.i.i = icmp eq ptr %13, null
  br i1 %tobool.not97.i.i, label %if.end5.while.end13.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end5.while.end13.i.i_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end13.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end5
  %parent2.i.i = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 3
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call7.i.i to i32
  %sub.ptr.sub.i.i = sub i32 3, %sub.ptr.rhs.cast.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end11.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %parent1100.i.i = phi ptr [ %parent.i.i, %while.body.lr.ph.i.i ], [ %parent1.i.i, %if.end11.i.i.while.body.i.i_crit_edge ]
  %s.099.i.i = phi ptr [ %call7.i.i, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %if.end11.i.i.while.body.i.i_crit_edge ]
  %base.098.i.i = phi ptr [ %4, %while.body.lr.ph.i.i ], [ %20, %if.end11.i.i.while.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %parent2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent2.i.i, align 4
  br label %while.cond3.i.i

while.cond3.i.i:                                  ; preds = %while.cond3.i.i.while.cond3.i.i_crit_edge, %while.body.i.i
  %kn.0.i.i = phi ptr [ %15, %while.body.i.i ], [ %17, %while.cond3.i.i.while.cond3.i.i_crit_edge ]
  %parent4.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn.0.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %parent4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %17, null
  %cmp.not.i.i = icmp eq ptr %base.098.i.i, %kn.0.i.i
  %or.cond.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i.i, label %while.end.i.i, label %while.cond3.i.i.while.cond3.i.i_crit_edge

while.cond3.i.i.while.cond3.i.i_crit_edge:        ; preds = %while.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond3.i.i

while.end.i.i:                                    ; preds = %while.cond3.i.i
  br i1 %cmp.not.i.i, label %while.end.i.i.while.end13.i.i_crit_edge, label %if.end.i.i

while.end.i.i.while.end13.i.i_crit_edge:          ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end13.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %s.099.i.i to i32
  %add.i.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add.i.i)
  %cmp9.i.i = icmp sgt i32 %add.i.i, 4095
  br i1 %cmp9.i.i, label %if.end.i.i.if.then9_crit_edge, label %if.end11.i.i

if.end.i.i.if.then9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.end11.i.i:                                     ; preds = %if.end.i.i
  %18 = ptrtoint ptr %s.099.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 774778624, ptr %s.099.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %s.099.i.i, i32 3
  %19 = ptrtoint ptr %parent1100.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent1100.i.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent1.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %22, null
  br i1 %tobool.not.i7.i, label %if.end11.i.i.while.end13.i.i_crit_edge, label %if.end11.i.i.while.body.i.i_crit_edge

if.end11.i.i.while.body.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

if.end11.i.i.while.end13.i.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end13.i.i

while.end13.i.i:                                  ; preds = %if.end11.i.i.while.end13.i.i_crit_edge, %while.end.i.i.while.end13.i.i_crit_edge, %if.end5.while.end13.i.i_crit_edge
  %base.0.lcssa.i.i = phi ptr [ %4, %if.end5.while.end13.i.i_crit_edge ], [ %base.098.i.i, %while.end.i.i.while.end13.i.i_crit_edge ], [ %20, %if.end11.i.i.while.end13.i.i_crit_edge ]
  %s.0.lcssa.i.i = phi ptr [ %call7.i.i, %if.end5.while.end13.i.i_crit_edge ], [ %s.099.i.i, %while.end.i.i.while.end13.i.i_crit_edge ], [ %add.ptr.i.i, %if.end11.i.i.while.end13.i.i_crit_edge ]
  %parent15104.i.i = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %parent15104.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent15104.i.i, align 4
  %tobool16.not105.i.i = icmp eq ptr %24, null
  %cmp18.not106.i.i = icmp eq ptr %base.0.lcssa.i.i, %7
  %or.cond91107.i.i = select i1 %tobool16.not105.i.i, i1 true, i1 %cmp18.not106.i.i
  br i1 %or.cond91107.i.i, label %while.end13.i.i.if.then9_crit_edge, label %while.end13.i.i.while.body20.i.i_crit_edge

while.end13.i.i.while.body20.i.i_crit_edge:       ; preds = %while.end13.i.i
  br label %while.body20.i.i

while.end13.i.i.if.then9_crit_edge:               ; preds = %while.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

while.body20.i.i:                                 ; preds = %while.body20.i.i.while.body20.i.i_crit_edge, %while.end13.i.i.while.body20.i.i_crit_edge
  %25 = phi ptr [ %29, %while.body20.i.i.while.body20.i.i_crit_edge ], [ %24, %while.end13.i.i.while.body20.i.i_crit_edge ]
  %len.0109.i.i = phi i32 [ %add23.i.i, %while.body20.i.i.while.body20.i.i_crit_edge ], [ 0, %while.end13.i.i.while.body20.i.i_crit_edge ]
  %kn.1108.i.i = phi ptr [ %25, %while.body20.i.i.while.body20.i.i_crit_edge ], [ %7, %while.end13.i.i.while.body20.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn.1108.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i.i, align 8
  %call21.i.i = tail call i32 @strlen(ptr noundef %27) #8
  %add22.i.i = add i32 %call21.i.i, %len.0109.i.i
  %add23.i.i = add i32 %add22.i.i, 1
  %parent15.i.i = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %parent15.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent15.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %29, null
  %cmp18.not.i.i = icmp eq ptr %25, %base.0.lcssa.i.i
  %or.cond91.i.i = select i1 %tobool16.not.i.i, i1 true, i1 %cmp18.not.i.i
  br i1 %or.cond91.i.i, label %while.end25.i.i, label %while.body20.i.i.while.body20.i.i_crit_edge

while.body20.i.i.while.body20.i.i_crit_edge:      ; preds = %while.body20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body20.i.i

while.end25.i.i:                                  ; preds = %while.body20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add23.i.i)
  %cmp26.i.i = icmp slt i32 %add23.i.i, 2
  br i1 %cmp26.i.i, label %while.end25.i.i.if.then9_crit_edge, label %if.end28.i.i

while.end25.i.i.if.then9_crit_edge:               ; preds = %while.end25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.end28.i.i:                                     ; preds = %while.end25.i.i
  %sub.ptr.lhs.cast29.i.i = ptrtoint ptr %s.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast30.i.i = ptrtoint ptr %call7.i.i to i32
  %sub.ptr.sub31.i.i = sub i32 %sub.ptr.lhs.cast29.i.i, %sub.ptr.rhs.cast30.i.i
  %add32.i.i = add i32 %sub.ptr.sub31.i.i, %add22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add32.i.i)
  %cmp33.i.i = icmp sgt i32 %add32.i.i, 4095
  br i1 %cmp33.i.i, label %if.end28.i.i.if.then9_crit_edge, label %if.end28.i.i.while.body42.i.i_crit_edge

if.end28.i.i.while.body42.i.i_crit_edge:          ; preds = %if.end28.i.i
  br label %while.body42.i.i

if.end28.i.i.if.then9_crit_edge:                  ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

while.body42.i.i:                                 ; preds = %if.end50.i.i.while.body42.i.i_crit_edge, %if.end28.i.i.while.body42.i.i_crit_edge
  %parent37117.i.i = phi ptr [ %parent37.i.i, %if.end50.i.i.while.body42.i.i_crit_edge ], [ %parent15104.i.i, %if.end28.i.i.while.body42.i.i_crit_edge ]
  %len.1116.i.i = phi i32 [ %len.2.i.i, %if.end50.i.i.while.body42.i.i_crit_edge ], [ %add22.i.i, %if.end28.i.i.while.body42.i.i_crit_edge ]
  %kn.2115.i.i = phi ptr [ %35, %if.end50.i.i.while.body42.i.i_crit_edge ], [ %7, %if.end28.i.i.while.body42.i.i_crit_edge ]
  %name43.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn.2115.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %name43.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name43.i.i, align 8
  %call44.i.i = tail call i32 @strlen(ptr noundef %31) #8
  %sub.i.i = sub i32 %len.1116.i.i, %call44.i.i
  %add.ptr45.i.i = getelementptr i8, ptr %s.0.lcssa.i.i, i32 %sub.i.i
  %32 = call ptr @memcpy(ptr %add.ptr45.i.i, ptr %31, i32 %call44.i.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1116.i.i, i32 %call44.i.i)
  %tobool47.not.i.i = icmp eq i32 %len.1116.i.i, %call44.i.i
  br i1 %tobool47.not.i.i, label %while.body42.i.i.if.end50.i.i_crit_edge, label %if.then48.i.i

while.body42.i.i.if.end50.i.i_crit_edge:          ; preds = %while.body42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i.i

if.then48.i.i:                                    ; preds = %while.body42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec49.i.i = add i32 %sub.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %s.0.lcssa.i.i, i32 %dec49.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 47, ptr %arrayidx.i.i, align 1
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then48.i.i, %while.body42.i.i.if.end50.i.i_crit_edge
  %len.2.i.i = phi i32 [ %dec49.i.i, %if.then48.i.i ], [ 0, %while.body42.i.i.if.end50.i.i_crit_edge ]
  %34 = ptrtoint ptr %parent37117.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent37117.i.i, align 4
  %parent37.i.i = getelementptr inbounds %struct.kernfs_node, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %parent37.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent37.i.i, align 4
  %tobool38.not.i.i = icmp eq ptr %37, null
  %cmp40.not.i.i = icmp eq ptr %35, %base.0.lcssa.i.i
  %or.cond92.i.i = select i1 %tobool38.not.i.i, i1 true, i1 %cmp40.not.i.i
  br i1 %or.cond92.i.i, label %if.end11, label %if.end50.i.i.while.body42.i.i_crit_edge

if.end50.i.i.while.body42.i.i_crit_edge:          ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body42.i.i

if.then9:                                         ; preds = %if.end28.i.i.if.then9_crit_edge, %while.end25.i.i.if.then9_crit_edge, %while.end13.i.i.if.then9_crit_edge, %if.end.i.i.if.then9_crit_edge
  %retval.0.i.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %while.end13.i.i.if.then9_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end28.i.i.if.then9_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.end25.i.i.if.then9_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end.i.i.if.then9_crit_edge ]
  tail call void @up_read(ptr noundef %kernfs_rwsem.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %kernfs_rwsem.i) #4
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %39 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.i.ph, %if.then9 ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @kernfs_symlink_iops, !1, !"kernfs_symlink_iops", i1 false, i1 false}
!1 = !{!"../fs/kernfs/symlink.c", i32 147, i32 31}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/kernfs/symlink.c", i32 76, i32 13}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
