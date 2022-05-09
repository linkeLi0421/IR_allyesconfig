; ModuleID = '/llk/IR_all_yes/fs/adfs/inode.c_pt.bc'
source_filename = "../fs/adfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.adfs_sb_info = type { %union.anon.82, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.object_info = type { i32, i32, i32, i32, i32, i8, i32, [260 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@adfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@adfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@adfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@adfs_file_operations = external dso_local constant %struct.file_operations, align 4
@adfs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @adfs_writepage, ptr @adfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @adfs_write_begin, ptr @generic_write_end, ptr @_adfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4032, i64 4070]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 4032, i64 4070]
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"adfs_aops\00", align 1
@___asan_gen_.5 = private constant [19 x i8] c"../fs/adfs/inode.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 75, i32 46 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @adfs_aops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adfs_iget(ptr noundef %sb, ptr nocapture noundef readonly %obj) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp7.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_uid = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_uid, align 4
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_gid = getelementptr inbounds %struct.adfs_sb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_gid, align 4
  %8 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i_gid, align 8
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %indaddr, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_ino, align 8
  %size = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %conv = zext i32 %13 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %i_size, align 8
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef 2) #4
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %conv4 = zext i32 %18 to i64
  %add = add i64 %16, -1
  %sub = add i64 %add, %conv4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %19 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %20 to i64
  %shr = ashr i64 %sub, %sh_prom
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %21 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr, ptr %i_blocks, align 8
  %22 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %obj, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 -32
  %parent_id7 = getelementptr i8, ptr %call, i32 -24
  %24 = ptrtoint ptr %parent_id7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %parent_id7, align 8
  %25 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indaddr, align 4
  %indaddr10 = getelementptr i8, ptr %call, i32 -20
  %27 = ptrtoint ptr %indaddr10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %indaddr10, align 4
  %loadaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %28 = ptrtoint ptr %loadaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %loadaddr, align 4
  %loadaddr12 = getelementptr i8, ptr %call, i32 -16
  %30 = ptrtoint ptr %loadaddr12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %loadaddr12, align 8
  %execaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %31 = ptrtoint ptr %execaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %execaddr, align 4
  %execaddr14 = getelementptr i8, ptr %call, i32 -12
  %33 = ptrtoint ptr %execaddr14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %execaddr14, align 4
  %attr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %attr, align 4
  %conv15 = zext i8 %35 to i32
  %attr17 = getelementptr i8, ptr %call, i32 -8
  %36 = ptrtoint ptr %attr17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv15, ptr %attr17, align 8
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %and.i = and i32 %conv15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %s_owner_mask.i = getelementptr inbounds %struct.adfs_sb_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_owner_mask.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %s_owner_mask.i, align 4
  %41 = and i16 %40, 292
  %42 = or i16 %41, 16457
  br label %adfs_atts2mode.exit

if.end.i:                                         ; preds = %if.end
  %43 = ptrtoint ptr %loadaddr12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %loadaddr12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %44)
  %cmp.i.i = icmp ugt i32 %44, -1048577
  %shr.i.i = lshr i32 %44, 8
  %45 = trunc i32 %shr.i.i to i16
  %phi.cast.i.i = and i16 %45, 4095
  %cond.i.i = select i1 %cmp.i.i, i16 %phi.cast.i.i, i16 -1
  %46 = zext i16 %cond.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i16 %cond.i.i, label %sw.default.i [
    i16 4032, label %if.end.i.adfs_atts2mode.exit_crit_edge
    i16 4070, label %if.end.i.sw.epilog.i_crit_edge
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end.i.adfs_atts2mode.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_atts2mode.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end.i.sw.epilog.i_crit_edge
  %rmask.0.i = phi i16 [ 292, %sw.default.i ], [ 365, %if.end.i.sw.epilog.i_crit_edge ]
  %and11.i = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %sw.epilog.i.if.end21.i_crit_edge, label %if.then13.i

sw.epilog.i.if.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_owner_mask15.i = getelementptr inbounds %struct.adfs_sb_info, ptr %38, i32 0, i32 3
  %47 = ptrtoint ptr %s_owner_mask15.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %s_owner_mask15.i, align 4
  %49 = and i16 %48, %rmask.0.i
  %conv20.i = or i16 %49, -32768
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %sw.epilog.i.if.end21.i_crit_edge
  %mode.0.i = phi i16 [ %conv20.i, %if.then13.i ], [ -32768, %sw.epilog.i.if.end21.i_crit_edge ]
  %and22.i = and i32 %conv15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end31.i_crit_edge, label %if.then24.i

if.end21.i.if.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_owner_mask25.i = getelementptr inbounds %struct.adfs_sb_info, ptr %38, i32 0, i32 3
  %50 = ptrtoint ptr %s_owner_mask25.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %s_owner_mask25.i, align 4
  %52 = and i16 %51, 146
  %or2971.i = or i16 %52, %mode.0.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end31.i_crit_edge
  %mode.1.i = phi i16 [ %or2971.i, %if.then24.i ], [ %mode.0.i, %if.end21.i.if.end31.i_crit_edge ]
  %and32.i = and i32 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end41.i_crit_edge, label %if.then34.i

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_other_mask.i = getelementptr inbounds %struct.adfs_sb_info, ptr %38, i32 0, i32 4
  %53 = ptrtoint ptr %s_other_mask.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %s_other_mask.i, align 2
  %55 = and i16 %54, %rmask.0.i
  %conv40.i = or i16 %55, %mode.1.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end41.i_crit_edge
  %mode.2.i = phi i16 [ %conv40.i, %if.then34.i ], [ %mode.1.i, %if.end31.i.if.end41.i_crit_edge ]
  %and42.i = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.adfs_atts2mode.exit_crit_edge, label %if.then44.i

if.end41.i.adfs_atts2mode.exit_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_atts2mode.exit

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_other_mask45.i = getelementptr inbounds %struct.adfs_sb_info, ptr %38, i32 0, i32 4
  %56 = ptrtoint ptr %s_other_mask45.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s_other_mask45.i, align 2
  %58 = and i16 %57, 146
  %or4970.i = or i16 %58, %mode.2.i
  br label %adfs_atts2mode.exit

adfs_atts2mode.exit:                              ; preds = %if.then44.i, %if.end41.i.adfs_atts2mode.exit_crit_edge, %if.end.i.adfs_atts2mode.exit_crit_edge, %if.then.i
  %retval.0.i = phi i16 [ %42, %if.then.i ], [ -24065, %if.end.i.adfs_atts2mode.exit_crit_edge ], [ %or4970.i, %if.then44.i ], [ %mode.2.i, %if.end41.i.adfs_atts2mode.exit_crit_edge ]
  %59 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %retval.0.i, ptr %call, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %60 = ptrtoint ptr %loadaddr12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %loadaddr12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %61)
  %cmp.i.i83 = icmp ugt i32 %61, -1048577
  br i1 %cmp.i.i83, label %if.end.i85, label %cur_time.i

if.end.i85:                                       ; preds = %adfs_atts2mode.exit
  %and.i84 = and i32 %61, 255
  %62 = ptrtoint ptr %execaddr14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %execaddr14, align 4
  %conv.i = zext i32 %and.i84 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %conv3.i = zext i32 %63 to i64
  %or.i = or i64 %shl.i, %conv3.i
  %mul.i = mul nuw i64 %or.i, 10000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 2208988800000000000, i64 %mul.i)
  %cmp.i = icmp slt i64 %mul.i, 2208988800000000000
  br i1 %cmp.i, label %too_early.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i64 %mul.i, -2208988800000000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #4
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %sub.i) #4
  %64 = call ptr @memcpy(ptr %i_mtime, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #4
  br label %adfs_adfs2unix_time.exit

cur_time.i:                                       ; preds = %adfs_atts2mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp7.i) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp7.i, ptr noundef nonnull %call) #4
  %65 = call ptr @memcpy(ptr %i_mtime, ptr %tmp7.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp7.i) #4
  br label %adfs_adfs2unix_time.exit

too_early.i:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #6
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %66 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tv_nsec.i, align 8
  %67 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %i_mtime, align 8
  br label %adfs_adfs2unix_time.exit

adfs_adfs2unix_time.exit:                         ; preds = %too_early.i, %cur_time.i, %if.end6.i
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %68 = call ptr @memcpy(ptr %i_atime, ptr %i_mtime, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %69 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %70 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %call, align 8
  %72 = and i16 %71, -4096
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %72, label %adfs_adfs2unix_time.exit.if.end35_crit_edge [
    i16 16384, label %if.then24
    i16 -32768, label %if.then30
  ]

adfs_adfs2unix_time.exit.if.end35_crit_edge:      ; preds = %adfs_adfs2unix_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then24:                                        ; preds = %adfs_adfs2unix_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %74 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @adfs_dir_inode_operations, ptr %i_op, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @adfs_dir_operations, ptr %75, align 8
  br label %if.end35

if.then30:                                        ; preds = %adfs_adfs2unix_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  %i_op31 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %77 = ptrtoint ptr %i_op31 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @adfs_file_inode_operations, ptr %i_op31, align 8
  %78 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @adfs_file_operations, ptr %78, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %80 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @adfs_aops, ptr %a_ops, align 4
  %83 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_size, align 8
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %add.ptr.i, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then24, %adfs_adfs2unix_time.exit.if.end35_crit_edge
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 28
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 28, i32 1
  %86 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %i_hash.i, ptr %pprev.i.i, align 4
  br label %out

out:                                              ; preds = %if.end35, %entry.out_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfs_notify_change(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp7.i = alloca %struct.timespec64, align 8
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_uid = getelementptr inbounds %struct.adfs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack79 = load i32, ptr %ia_uid, align 8
  %9 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack80 = load i32, ptr %s_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack79, i32 %.unpack80)
  %cmp.i = icmp eq i32 %.unpack79, %.unpack80
  br i1 %cmp.i, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true8

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %s_fs_info.i81 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i81 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i81, align 16
  %s_gid = getelementptr inbounds %struct.adfs_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %ia_gid, align 4
  %13 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack78 = load i32, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack78)
  %cmp.i82 = icmp eq i32 %.unpack, %.unpack78
  br i1 %cmp.i82, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.out_crit_edge

land.lhs.true8.out_crit_edge:                     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool13.not = icmp eq i32 %call2, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15:                                         ; preds = %if.end
  %and16 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %14 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %15) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %and20 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %land.lhs.true22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true22:                                  ; preds = %if.end19
  %loadaddr.i = getelementptr i8, ptr %1, i32 -16
  %16 = ptrtoint ptr %loadaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loadaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %17)
  %cmp.i83 = icmp ugt i32 %17, -1048577
  br i1 %cmp.i83, label %if.then24, label %land.lhs.true22.if.end25_crit_edge

land.lhs.true22.if.end25_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true22
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %18 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ia_mtime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %19)
  %cmp.i.i = icmp sgt i64 %19, 9223372035
  br i1 %cmp.i.i, label %if.then24.adfs_unix2adfs_time.exit_crit_edge, label %if.end.i.i

if.then24.adfs_unix2adfs_time.exit_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_unix2adfs_time.exit

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %19)
  %cmp2.i.i = icmp slt i64 %19, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.adfs_unix2adfs_time.exit_crit_edge, label %if.end4.i.i

if.end.i.i.adfs_unix2adfs_time.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_unix2adfs_time.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i.i = mul nsw i64 %19, 1000000000
  %tv_nsec.i.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %21 to i64
  %add.i.i = add i64 %mul.i.i, 2208988800000000000
  %phi.bo27.i = add i64 %add.i.i, %conv.i.i
  br label %adfs_unix2adfs_time.exit

adfs_unix2adfs_time.exit:                         ; preds = %if.end4.i.i, %if.end.i.i.adfs_unix2adfs_time.exit_crit_edge, %if.then24.adfs_unix2adfs_time.exit_crit_edge
  %retval.0.i.i = phi i64 [ %phi.bo27.i, %if.end4.i.i ], [ -7014383236854775809, %if.then24.adfs_unix2adfs_time.exit_crit_edge ], [ -7014383236854775808, %if.end.i.i.adfs_unix2adfs_time.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #4
  %22 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !11
  %call.i.i = call i64 @div_s64_rem(i64 noundef %retval.0.i.i, i32 noundef 10000000, ptr noundef nonnull %remainder.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #4
  %23 = call i64 @llvm.smax.i64(i64 %call.i.i, i64 0) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627775, i64 %23)
  %cmp3.i = icmp ult i64 %23, 1099511627775
  %extract.i = lshr i64 %23, 32
  %extract.t24.i = trunc i64 %extract.i to i32
  %phi.bo.i = and i32 %extract.t24.i, 255
  %24 = call i64 @llvm.umin.i64(i64 %23, i64 1099511627775) #4
  %25 = trunc i64 %24 to i32
  %cond7.off32.i = select i1 %cmp3.i, i32 %phi.bo.i, i32 255
  %26 = ptrtoint ptr %loadaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %loadaddr.i, align 8
  %and.i = and i32 %27, -256
  %conv12.i = or i32 %cond7.off32.i, %and.i
  store i32 %conv12.i, ptr %loadaddr.i, align 8
  %execaddr.i = getelementptr i8, ptr %1, i32 -12
  %28 = ptrtoint ptr %execaddr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %execaddr.i, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %conv12.i)
  %cmp.i.i85 = icmp ugt i32 %conv12.i, -1048577
  br i1 %cmp.i.i85, label %if.end.i, label %cur_time.i

if.end.i:                                         ; preds = %adfs_unix2adfs_time.exit
  %conv.i = zext i32 %cond7.off32.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %conv3.i = and i64 %24, 4294967295
  %or.i = or i64 %shl.i, %conv3.i
  %mul.i = mul nuw i64 %or.i, 10000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 2208988800000000000, i64 %mul.i)
  %cmp.i88 = icmp slt i64 %mul.i, 2208988800000000000
  br i1 %cmp.i88, label %too_early.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i64 %mul.i, -2208988800000000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #4
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %sub.i) #4
  %29 = call ptr @memcpy(ptr %i_mtime, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #4
  br label %if.end25

cur_time.i:                                       ; preds = %adfs_unix2adfs_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp7.i) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp7.i, ptr noundef %1) #4
  %30 = call ptr @memcpy(ptr %i_mtime, ptr %tmp7.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp7.i) #4
  br label %if.end25

too_early.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tv_nsec.i, align 8
  %32 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %i_mtime, align 8
  br label %if.end25

if.end25:                                         ; preds = %too_early.i, %cur_time.i, %if.end6.i, %land.lhs.true22.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %and26 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %i_atime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %i_atime, ptr %ia_atime, i32 16)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %and30 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %34 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %and34 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end41_crit_edge, label %if.then36

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then36:                                        ; preds = %if.end33
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 8
  %37 = and i16 %36, -4096
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %37, label %if.end10.i [
    i16 -24576, label %if.then.i
    i16 16384, label %adfs_mode2atts.exit.thread
  ]

adfs_mode2atts.exit.thread:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %attr39104 = getelementptr i8, ptr %1, i32 -8
  %39 = ptrtoint ptr %attr39104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %attr39104, align 8
  %s_fs_info.i.i89105 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i89105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i89105, align 16
  br label %if.then.i93

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %attr3.i = getelementptr i8, ptr %1, i32 -8
  %42 = ptrtoint ptr %attr3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr3.i, align 8
  br label %adfs_mode2atts.exit

if.end10.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %44 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ia_mode, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_owner_mask.i = getelementptr inbounds %struct.adfs_sb_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %s_owner_mask.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %s_owner_mask.i, align 4
  %and1361.i = and i16 %49, %45
  %conv15.i = zext i16 %and1361.i to i32
  %and16.i = and i32 %conv15.i, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp ne i32 %and16.i, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  %and20.i = and i32 %conv15.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or23.i = or i32 %spec.select.i, 2
  %attr.1.i = select i1 %tobool21.not.i, i32 %spec.select.i, i32 %or23.i
  %s_other_mask.i = getelementptr inbounds %struct.adfs_sb_info, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %s_other_mask.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %s_other_mask.i, align 2
  %neg.i = xor i16 %49, -1
  %and2762.i = and i16 %45, %neg.i
  %and32.i = and i16 %and2762.i, %51
  %conv34.i = zext i16 %and32.i to i32
  %and35.i = and i32 %conv34.i, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %or38.i = or i32 %attr.1.i, 32
  %attr.2.i = select i1 %tobool36.not.i, i32 %attr.1.i, i32 %or38.i
  %and41.i = and i32 %conv34.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %or44.i = or i32 %attr.2.i, 64
  %attr.3.i = select i1 %tobool42.not.i, i32 %attr.2.i, i32 %or44.i
  br label %adfs_mode2atts.exit

adfs_mode2atts.exit:                              ; preds = %if.end10.i, %if.then.i
  %retval.0.i = phi i32 [ %43, %if.then.i ], [ %attr.3.i, %if.end10.i ]
  %attr39 = getelementptr i8, ptr %1, i32 -8
  %52 = ptrtoint ptr %attr39 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i, ptr %attr39, align 8
  %s_fs_info.i.i89 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i89, align 16
  %and.i90 = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %if.end.i96, label %adfs_mode2atts.exit.if.then.i93_crit_edge

adfs_mode2atts.exit.if.then.i93_crit_edge:        ; preds = %adfs_mode2atts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i93

if.then.i93:                                      ; preds = %adfs_mode2atts.exit.if.then.i93_crit_edge, %adfs_mode2atts.exit.thread
  %55 = phi ptr [ %41, %adfs_mode2atts.exit.thread ], [ %54, %adfs_mode2atts.exit.if.then.i93_crit_edge ]
  %s_owner_mask.i92 = getelementptr inbounds %struct.adfs_sb_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %s_owner_mask.i92 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s_owner_mask.i92, align 4
  %58 = and i16 %57, 292
  %59 = or i16 %58, 16457
  br label %adfs_atts2mode.exit

if.end.i96:                                       ; preds = %adfs_mode2atts.exit
  %loadaddr.i94 = getelementptr i8, ptr %1, i32 -16
  %60 = ptrtoint ptr %loadaddr.i94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %loadaddr.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %61)
  %cmp.i.i95 = icmp ugt i32 %61, -1048577
  %shr.i.i = lshr i32 %61, 8
  %62 = trunc i32 %shr.i.i to i16
  %phi.cast.i.i = and i16 %62, 4095
  %cond.i.i = select i1 %cmp.i.i95, i16 %phi.cast.i.i, i16 -1
  %63 = zext i16 %cond.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %cond.i.i, label %sw.default.i [
    i16 4032, label %if.end.i96.adfs_atts2mode.exit_crit_edge
    i16 4070, label %if.end.i96.sw.epilog.i_crit_edge
  ]

if.end.i96.sw.epilog.i_crit_edge:                 ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end.i96.adfs_atts2mode.exit_crit_edge:         ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_atts2mode.exit

sw.default.i:                                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end.i96.sw.epilog.i_crit_edge
  %rmask.0.i = phi i16 [ 292, %sw.default.i ], [ 365, %if.end.i96.sw.epilog.i_crit_edge ]
  %and11.i = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %sw.epilog.i.if.end21.i_crit_edge, label %if.then13.i

sw.epilog.i.if.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_owner_mask15.i = getelementptr inbounds %struct.adfs_sb_info, ptr %54, i32 0, i32 3
  %64 = ptrtoint ptr %s_owner_mask15.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %s_owner_mask15.i, align 4
  %66 = and i16 %65, %rmask.0.i
  %conv20.i = or i16 %66, -32768
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %sw.epilog.i.if.end21.i_crit_edge
  %mode.0.i = phi i16 [ %conv20.i, %if.then13.i ], [ -32768, %sw.epilog.i.if.end21.i_crit_edge ]
  %and22.i = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end31.i_crit_edge, label %if.then24.i

if.end21.i.if.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_owner_mask25.i = getelementptr inbounds %struct.adfs_sb_info, ptr %54, i32 0, i32 3
  %67 = ptrtoint ptr %s_owner_mask25.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %s_owner_mask25.i, align 4
  %69 = and i16 %68, 146
  %or2971.i = or i16 %69, %mode.0.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end31.i_crit_edge
  %mode.1.i = phi i16 [ %or2971.i, %if.then24.i ], [ %mode.0.i, %if.end21.i.if.end31.i_crit_edge ]
  %and32.i97 = and i32 %retval.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i97)
  %tobool33.not.i = icmp eq i32 %and32.i97, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end41.i_crit_edge, label %if.then34.i

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_other_mask.i98 = getelementptr inbounds %struct.adfs_sb_info, ptr %54, i32 0, i32 4
  %70 = ptrtoint ptr %s_other_mask.i98 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %s_other_mask.i98, align 2
  %72 = and i16 %71, %rmask.0.i
  %conv40.i = or i16 %72, %mode.1.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end41.i_crit_edge
  %mode.2.i = phi i16 [ %conv40.i, %if.then34.i ], [ %mode.1.i, %if.end31.i.if.end41.i_crit_edge ]
  %and42.i = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.adfs_atts2mode.exit_crit_edge, label %if.then44.i

if.end41.i.adfs_atts2mode.exit_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adfs_atts2mode.exit

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %s_other_mask45.i = getelementptr inbounds %struct.adfs_sb_info, ptr %54, i32 0, i32 4
  %73 = ptrtoint ptr %s_other_mask45.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %s_other_mask45.i, align 2
  %75 = and i16 %74, 146
  %or4970.i = or i16 %75, %mode.2.i
  br label %adfs_atts2mode.exit

adfs_atts2mode.exit:                              ; preds = %if.then44.i, %if.end41.i.adfs_atts2mode.exit_crit_edge, %if.end.i96.adfs_atts2mode.exit_crit_edge, %if.then.i93
  %retval.0.i99 = phi i16 [ %59, %if.then.i93 ], [ -24065, %if.end.i96.adfs_atts2mode.exit_crit_edge ], [ %or4970.i, %if.then44.i ], [ %mode.2.i, %if.end41.i.adfs_atts2mode.exit_crit_edge ]
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %retval.0.i99, ptr %1, align 8
  br label %if.end41

if.end41:                                         ; preds = %adfs_atts2mode.exit, %if.end33.if.end41_crit_edge
  %and42 = and i32 %5, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.out_crit_edge, label %if.then44

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #4
  br label %out

out:                                              ; preds = %if.then44, %if.end41.out_crit_edge, %if.end.out_crit_edge, %land.lhs.true8.out_crit_edge, %land.lhs.true.out_crit_edge
  %error.0102 = phi i32 [ 0, %if.end41.out_crit_edge ], [ 0, %if.then44 ], [ %call2, %if.end.out_crit_edge ], [ -1, %land.lhs.true.out_crit_edge ], [ -1, %land.lhs.true8.out_crit_edge ]
  ret i32 %error.0102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  %obj = alloca %struct.object_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %obj) #4
  %2 = getelementptr inbounds i8, ptr %obj, i32 20
  %3 = call ptr @memset(ptr %2, i32 255, i32 268)
  %indaddr = getelementptr i8, ptr %inode, i32 -20
  %4 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %indaddr, align 4
  %indaddr1 = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  %6 = ptrtoint ptr %indaddr1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %indaddr1, align 4
  %name_len = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  %7 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %name_len, align 4
  %parent_id = getelementptr i8, ptr %inode, i32 -24
  %8 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_id, align 8
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %obj, align 4
  %loadaddr = getelementptr i8, ptr %inode, i32 -16
  %11 = ptrtoint ptr %loadaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loadaddr, align 8
  %loadaddr5 = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %13 = ptrtoint ptr %loadaddr5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %loadaddr5, align 4
  %execaddr = getelementptr i8, ptr %inode, i32 -12
  %14 = ptrtoint ptr %execaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %execaddr, align 4
  %execaddr7 = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %16 = ptrtoint ptr %execaddr7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %execaddr7, align 4
  %attr = getelementptr i8, ptr %inode, i32 -8
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr, align 8
  %conv = trunc i32 %18 to i8
  %attr9 = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %19 = ptrtoint ptr %attr9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %attr9, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %conv10 = trunc i64 %21 to i32
  %size = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %size, align 4
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %23 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp eq i32 %24, 1
  %conv11 = zext i1 %cmp to i32
  %call12 = call i32 @adfs_dir_update(ptr noundef %1, ptr noundef nonnull %obj, i32 noundef %conv11) #4
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %obj) #4
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @adfs_get_block, ptr noundef %wbc) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @adfs_get_block) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -32
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @adfs_get_block, ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %3 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %add)
  %cmp.i = icmp slt i64 %6, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @truncate_pagecache(ptr noundef %4, i64 noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_adfs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @adfs_get_block) #4
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_get_block(ptr nocapture noundef readonly %inode, i64 noundef %block, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %block)
  %cmp.not = icmp ugt i64 %1, %block
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %if.then
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %indaddr = getelementptr i8, ptr %inode, i32 -20
  %4 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %indaddr, align 4
  %conv = trunc i64 %block to i32
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.__adfs_block_map.exit_crit_edge, label %if.then.i

if.end.__adfs_block_map.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %__adfs_block_map.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %and.i, -1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_log2sharesize.i = getelementptr inbounds %struct.adfs_sb_info, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_log2sharesize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_log2sharesize.i, align 4
  %shl.i = shl i32 %sub.i, %9
  %add.i = add i32 %shl.i, %conv
  br label %__adfs_block_map.exit

__adfs_block_map.exit:                            ; preds = %if.then.i, %if.end.__adfs_block_map.exit_crit_edge
  %block.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %conv, %if.end.__adfs_block_map.exit_crit_edge ]
  %shr.i = lshr i32 %5, 8
  %call2.i = tail call i32 @adfs_map_lookup(ptr noundef %3, i32 noundef %shr.i, i32 noundef %block.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not, label %__adfs_block_map.exit.return_crit_edge, label %if.then5

__adfs_block_map.exit.return_crit_edge:           ; preds = %__adfs_block_map.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then5:                                         ; preds = %__adfs_block_map.exit
  %conv3 = sext i32 %call2.i to i64
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %bh, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then5.map_bh.exit_crit_edge

if.then5.map_bh.exit_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh) #4
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then5.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %17 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv3, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %21 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %b_size.i, align 8
  br label %return

return:                                           ; preds = %map_bh.exit, %__adfs_block_map.exit.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %map_bh.exit ], [ 0, %__adfs_block_map.exit.return_crit_edge ], [ -5, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_map_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @adfs_aops, !1, !"adfs_aops", i1 false, i1 false}
!1 = !{!"../fs/adfs/inode.c", i32 75, i32 46}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
