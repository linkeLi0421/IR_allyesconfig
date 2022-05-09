; ModuleID = '/llk/IR_all_yes/fs/coda/cnode.c_pt.bc'
source_filename = "../fs/coda/cnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.coda_vattr = type { i32, i16, i16, i32, i32, i32, i64, i32, %struct.coda_timespec, %struct.coda_timespec, %struct.coda_timespec, i32, i32, i64, i64, i64 }
%struct.coda_timespec = type { i64, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@coda_cnode_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014coda: %s: coda_iget failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coda_cnode_make\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/coda/cnode.c\00", [16 x i8] zeroinitializer }, align 32
@coda_cnode_make._entry_ptr = internal global ptr @coda_cnode_make._entry, section ".printk_index", align 4
@coda_ioctl_inode_operations = external dso_local constant %struct.inode_operations, align 128
@coda_ioctl_operations = external dso_local constant %struct.file_operations, align 4
@coda_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@coda_file_operations = external dso_local constant %struct.file_operations, align 4
@coda_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@coda_dir_operations = external dso_local constant %struct.file_operations, align 4
@coda_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@coda_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [19 x i8] c"../fs/coda/cnode.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 110, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @coda_cnode_make._entry, ptr @coda_cnode_make._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_cnode_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coda_iget(ptr noundef %sb, ptr noundef %fid, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fid, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x i32], ptr %fid, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %fid, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %shl = shl i32 %3, 10
  %xor = xor i32 %shl, %1
  %arrayidx4 = getelementptr [4 x i32], ptr %fid, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %shl5 = shl i32 %5, 20
  %xor6 = xor i32 %xor, %shl5
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fid, align 4
  %xor9 = xor i32 %xor6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %xor9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call = tail call zeroext i16 @coda_inode_type(ptr noundef %attr) #7
  %call1044 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %cond, ptr noundef nonnull @coda_test_inode, ptr noundef nonnull @coda_set_inode, ptr noundef %fid) #7
  %tobool11.not45 = icmp eq ptr %call1044, null
  br i1 %tobool11.not45, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %coda_flag_inode.exit.if.end_crit_edge, %cond.end.if.end_crit_edge
  %call1046 = phi ptr [ %call10, %coda_flag_inode.exit.if.end_crit_edge ], [ %call1044, %cond.end.if.end_crit_edge ]
  %i_state = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %i_ino, align 8
  %c_mapcount = getelementptr i8, ptr %call1046, i32 -60
  %11 = ptrtoint ptr %c_mapcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %c_mapcount, align 4
  tail call void @coda_vattr_to_iattr(ptr noundef nonnull %call1046, ptr noundef %attr) #7
  %12 = ptrtoint ptr %call1046 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call1046, align 8
  %14 = and i16 %13, -4096
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.else18.i [
    i16 -32768, label %if.then.i
    i16 16384, label %if.then7.i
    i16 -24576, label %if.then15.i
  ]

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 7
  %16 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @coda_file_inode_operations, ptr %i_op.i, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 44
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @coda_file_operations, ptr %17, align 8
  br label %coda_fill_inode.exit

if.then7.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %i_op8.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 7
  %19 = ptrtoint ptr %i_op8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @coda_dir_inode_operations, ptr %i_op8.i, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 44
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @coda_dir_operations, ptr %20, align 8
  br label %coda_fill_inode.exit

if.then15.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %i_op16.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 7
  %22 = ptrtoint ptr %i_op16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @coda_symlink_inode_operations, ptr %i_op16.i, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call1046) #7
  %i_data.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 46
  %a_ops.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 46, i32 9
  %23 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @coda_symlink_aops, ptr %a_ops.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %i_data.i, ptr %i_mapping.i, align 8
  br label %coda_fill_inode.exit

if.else18.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %va_rdev.i = getelementptr inbounds %struct.coda_vattr, ptr %attr, i32 0, i32 13
  %25 = ptrtoint ptr %va_rdev.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %va_rdev.i, align 8
  %conv.i.i = trunc i64 %26 to i32
  %and1.i.i.i = and i32 %conv.i.i, 255
  %shr2.i.i.i = lshr i32 %conv.i.i, 12
  %and3.i.i.i = and i32 %shr2.i.i.i, 1048320
  %or.i.i.i = or i32 %and3.i.i.i, %and1.i.i.i
  %27 = shl i32 %conv.i.i, 12
  %shl.i.i.i = and i32 %27, -1048576
  %or4.i.i.i = or i32 %or.i.i.i, %shl.i.i.i
  tail call void @init_special_inode(ptr noundef nonnull %call1046, i16 noundef zeroext %13, i32 noundef %or4.i.i.i) #7
  br label %coda_fill_inode.exit

coda_fill_inode.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.then7.i, %if.then.i
  tail call void @unlock_new_inode(ptr noundef nonnull %call1046) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %28 = ptrtoint ptr %call1046 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call1046, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %call)
  %cmp.not = icmp eq i16 %30, %call
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %if.then19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.else
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 28, i32 1
  %31 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %32, null
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %call1046, i32 0, i32 28
  %cmp.i.i = icmp eq ptr %32, %i_hash.i
  %or.cond = select i1 %tobool.not.i.i.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond, label %if.then19.coda_flag_inode.exit_crit_edge, label %if.then.i42

if.then19.coda_flag_inode.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %coda_flag_inode.exit

if.then.i42:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__remove_inode_hash(ptr noundef nonnull %call1046) #7
  br label %coda_flag_inode.exit

coda_flag_inode.exit:                             ; preds = %if.then.i42, %if.then19.coda_flag_inode.exit_crit_edge
  %c_lock.i = getelementptr i8, ptr %call1046, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock.i) #7
  %c_flags.i = getelementptr i8, ptr %call1046, i32 -64
  %33 = ptrtoint ptr %c_flags.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %c_flags.i, align 8
  %35 = or i16 %34, 8
  store i16 %35, ptr %c_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock.i) #7
  tail call void @iput(ptr noundef nonnull %call1046) #7
  %call10 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %cond, ptr noundef nonnull @coda_test_inode, ptr noundef nonnull @coda_set_inode, ptr noundef %fid) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %coda_flag_inode.exit.cleanup_crit_edge, label %coda_flag_inode.exit.if.end_crit_edge

coda_flag_inode.exit.if.end_crit_edge:            ; preds = %coda_flag_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

coda_flag_inode.exit.cleanup_crit_edge:           ; preds = %coda_flag_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %coda_flag_inode.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %coda_fill_inode.exit, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1046, %coda_fill_inode.exit ], [ inttoptr (i32 -12 to ptr), %cond.end.cleanup_crit_edge ], [ %call1046, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %coda_flag_inode.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @coda_inode_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_test_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -80
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr.i, ptr noundef dereferenceable(16) %data, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_set_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -80
  %0 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coda_cnode_make(ptr noundef %fid, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.coda_vattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %attr) #7
  %0 = call ptr @memset(ptr %attr, i32 255, i32 120)
  %call = call i32 @venus_getattr(ptr noundef %sb, ptr noundef %fid, ptr noundef nonnull %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @coda_iget(ptr noundef %sb, ptr noundef %fid, ptr noundef nonnull %attr)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %call2, %do.end ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %attr) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_getattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_replace_fid(ptr noundef %inode, ptr nocapture noundef readonly %oldfid, ptr noundef readonly %newfid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -80
  %tobool.not = icmp eq ptr %newfid, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x i32], ptr %newfid, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %newfid, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %shl = shl i32 %3, 10
  %xor = xor i32 %shl, %1
  %arrayidx4 = getelementptr [4 x i32], ptr %newfid, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %shl5 = shl i32 %5, 20
  %xor6 = xor i32 %xor, %shl5
  %6 = ptrtoint ptr %newfid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %newfid, align 4
  %xor9 = xor i32 %xor6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %xor9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr.i, ptr noundef dereferenceable(16) %oldfid, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.not, label %do.end20, label %do.body15, !prof !17

do.body15:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/coda/cnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

do.end20:                                         ; preds = %cond.end
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %9, null
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %cmp.i.i = icmp eq ptr %9, %i_hash.i
  %or.cond = select i1 %tobool.not.i.i.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond, label %do.end20.remove_inode_hash.exit_crit_edge, label %if.then.i

do.end20.remove_inode_hash.exit_crit_edge:        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_inode_hash.exit

if.then.i:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__remove_inode_hash(ptr noundef %inode) #7
  br label %remove_inode_hash.exit

remove_inode_hash.exit:                           ; preds = %if.then.i, %do.end20.remove_inode_hash.exit_crit_edge
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %newfid, i32 16)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %i_ino, align 8
  tail call void @__insert_inode_hash(ptr noundef %inode, i32 noundef %cond) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coda_fid_to_inode(ptr noundef %fid, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fid, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x i32], ptr %fid, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %fid, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %shl = shl i32 %3, 10
  %xor = xor i32 %shl, %1
  %arrayidx4 = getelementptr [4 x i32], ptr %fid, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %shl5 = shl i32 %5, 20
  %xor6 = xor i32 %xor, %shl5
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fid, align 4
  %xor9 = xor i32 %xor6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %xor9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call = tail call ptr @ilookup5(ptr noundef %sb, i32 noundef %cond, ptr noundef nonnull @coda_test_inode, ptr noundef %fid) #7
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %cond.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %do.body15, !prof !17

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/coda/cnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #7, !srcloc !19
  unreachable

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coda_ftoc(ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !20

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1059405606, i32 %3)
  %cmp.not = icmp eq i32 %3, -1059405606
  br i1 %cmp.not, label %do.end8, label %lor.rhs.do.body3_crit_edge, !prof !17

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/coda/cnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

do.end8:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coda_cnode_makectl(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i_ino, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @coda_ioctl_inode_operations, ptr %i_op, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @coda_ioctl_operations, ptr %2, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 292, ptr %call, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_vattr_to_iattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/coda/cnode.c", i32 110, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @coda_cnode_make._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @coda_cnode_make._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @coda_symlink_inode_operations, !7, !"coda_symlink_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/coda/cnode.c", i32 20, i32 38}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2154658758, i64 2154659238, i64 2154658795, i64 2154658851, i64 2154658885, i64 2154658909, i64 2154658950, i64 2154658971, i64 2154658999, i64 2154659033}
!19 = !{i64 2154660495, i64 2154660975, i64 2154660532, i64 2154660588, i64 2154660622, i64 2154660646, i64 2154660687, i64 2154660708, i64 2154660736, i64 2154660770}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2154662122, i64 2154662602, i64 2154662159, i64 2154662215, i64 2154662249, i64 2154662273, i64 2154662314, i64 2154662335, i64 2154662363, i64 2154662397}
