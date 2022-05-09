; ModuleID = '/llk/IR_all_yes/fs/reiserfs/xattr_acl.c_pt.bc'
source_filename = "../fs/reiserfs/xattr_acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.14 }
%union.anon.14 = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.75, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.75 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.15, ptr }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.reiserfs_acl_entry = type { i16, i16, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 205, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [27 x i8] c"../fs/reiserfs/xattr_acl.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 208, i32 10 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #6
  %1 = call ptr @memset(ptr %th, i32 255, i32 36)
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %2 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %3, 3
  %add.i = or i32 %mul.i, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #6
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %mode, align 2
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %12, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add7.i = select i1 %tobool.not.i, i32 54, i32 224
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %13 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags.i, align 8
  %and9.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %if.then.i, label %cond.end.reiserfs_xattr_jcreate_nblocks.exit_crit_edge

cond.end.reiserfs_xattr_jcreate_nblocks.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %reiserfs_xattr_jcreate_nblocks.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i = select i1 %tobool.not.i, i32 108, i32 448
  %xattr_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 32
  %15 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xattr_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %18, null
  %add45.i = select i1 %tobool.not.i, i32 162, i32 672
  %spec.select.i = select i1 %cmp.i.i, i32 %add45.i, i32 %add25.i
  br label %reiserfs_xattr_jcreate_nblocks.exit

reiserfs_xattr_jcreate_nblocks.exit:              ; preds = %if.then.i, %cond.end.reiserfs_xattr_jcreate_nblocks.exit_crit_edge
  %nblocks.0.i = phi i32 [ %add7.i, %cond.end.reiserfs_xattr_jcreate_nblocks.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %and.i.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %19 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i46 = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool.not.i.i, i1 %tobool.not.i46, i1 false
  br i1 %or.cond, label %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge, label %if.then.i48

reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge: ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reiserfs_xattr_nblocks.exit

if.then.i48:                                      ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv249 = zext i32 %cond to i64
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %21 to i64
  %add1.i = add nuw nsw i64 %conv249, 7
  %sub.i = add nuw nsw i64 %add1.i, %conv.i
  %neg.i = sub i32 0, %21
  %conv5.i = zext i32 %neg.i to i64
  %and.i47 = and i64 %sub.i, %conv5.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %23 to i64
  %shr.i = lshr i64 %and.i47, %sh_prom.i
  %extract.t = trunc i64 %shr.i to i32
  %phi.bo = shl i32 %extract.t, 1
  br label %reiserfs_xattr_nblocks.exit

reiserfs_xattr_nblocks.exit:                      ; preds = %if.then.i48, %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge
  %ret.0.i.off0 = phi i32 [ %phi.bo, %if.then.i48 ], [ 0, %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge ]
  %conv4 = add i32 %ret.0.i.off0, %nblocks.0.i
  tail call void @reiserfs_write_lock(ptr noundef %8) #6
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %call6 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %25, i32 noundef %conv4) #6
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then, label %reiserfs_xattr_nblocks.exit.if.end30_crit_edge

reiserfs_xattr_nblocks.exit.if.end30_crit_edge:   ; preds = %reiserfs_xattr_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %reiserfs_xattr_nblocks.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp9 = icmp eq i32 %type, 32768
  br i1 %cmp9, label %land.lhs.true, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then
  %28 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acl.addr, align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %land.lhs.true.if.end16_crit_edge, label %if.then12

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end16_crit_edge, label %if.then12.unlock_crit_edge

if.then12.unlock_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then12.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %tobool20.not = phi i1 [ true, %land.lhs.true.if.end16_crit_edge ], [ true, %if.then.if.end16_crit_edge ], [ false, %if.then12.if.end16_crit_edge ]
  %30 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %acl.addr, align 4
  %call17 = call fastcc i32 @__reiserfs_set_acl(ptr noundef nonnull %th, ptr noundef %inode, i32 noundef %type, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp ne i32 %call17, 0
  %brmerge = or i1 %tobool20.not, %tobool18.not
  br i1 %brmerge, label %if.end16.unlock_crit_edge, label %if.then21

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode, align 2
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %inode, align 8
  br label %unlock

unlock:                                           ; preds = %if.then21, %if.end16.unlock_crit_edge, %if.then12.unlock_crit_edge
  %error.0 = phi i32 [ %call13, %if.then12.unlock_crit_edge ], [ %call17, %if.end16.unlock_crit_edge ], [ 0, %if.then21 ]
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_lock(ptr noundef %36) #6
  %call25 = call i32 @journal_end(ptr noundef nonnull %th) #6
  %37 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i, align 4
  call void @reiserfs_write_unlock(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool27.not, i32 %error.0, i32 %call25
  br label %if.end30

if.end30:                                         ; preds = %unlock, %reiserfs_xattr_nblocks.exit.if.end30_crit_edge
  %error.1 = phi i32 [ %call6, %reiserfs_xattr_nblocks.exit.if.end30_crit_edge ], [ %spec.select, %unlock ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #6
  ret i32 %error.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reiserfs_set_acl(ptr noundef %th, ptr noundef %inode, i32 noundef %type, ptr noundef %acl) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
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
  %name.0 = phi ptr [ @.str.1, %sw.bb1.sw.epilog_crit_edge ], [ @.str, %entry.sw.epilog_crit_edge ]
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
  %cmp.i52.i = icmp slt i32 %5, 5
  %mul.i.i = shl i32 %5, 2
  %add.i.i = add i32 %mul.i.i, 4
  %sub.i.i = shl i32 %5, 3
  %add2.i.i = add i32 %sub.i.i, -12
  %retval.0.i.i = select i1 %cmp.i52.i, i32 %add.i.i, i32 %add2.i.i
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
  %cmp56.not.i = icmp eq i32 %8, 0
  br i1 %cmp56.not.i, label %if.end.i.reiserfs_posix_acl_to_disk.exit_crit_edge, label %for.body.preheader.i

if.end.i.reiserfs_posix_acl_to_disk.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reiserfs_posix_acl_to_disk.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.058.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %e.057.i = phi ptr [ %add.ptr23.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.058.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %12 = ptrtoint ptr %e.057.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %e.057.i, align 4
  %e_perm.i = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.058.i, i32 1
  %13 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_perm.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %e_perm11.i = getelementptr inbounds %struct.reiserfs_acl_entry, ptr %e.057.i, i32 0, i32 1
  %16 = ptrtoint ptr %e_perm11.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %e_perm11.i, align 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 4
  %conv.i = sext i16 %18 to i32
  %19 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv.i, label %fail.i [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb17.i
    i32 1, label %for.body.i.for.inc.i_crit_edge
    i32 4, label %for.body.i.for.inc.i_crit_edge47
    i32 16, label %for.body.i.for.inc.i_crit_edge48
    i32 32, label %for.body.i.for.inc.i_crit_edge49
  ]

for.body.i.for.inc.i_crit_edge49:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge48:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge47:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.058.i, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack51.i = load i32, ptr %20, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack51.i, 0
  %call15.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %22) #6
  br label %for.inc.sink.split.i

sw.bb17.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.058.i, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %23, align 4
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call19.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %25) #6
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.bb17.i, %sw.bb.i
  %call19.sink.i = phi i32 [ %call19.i, %sw.bb17.i ], [ %call15.i, %sw.bb.i ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %call19.sink.i) #6
  %e_id20.i = getelementptr inbounds %struct.reiserfs_acl_entry, ptr %e.057.i, i32 0, i32 2
  %27 = ptrtoint ptr %e_id20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %e_id20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge47, %for.body.i.for.inc.i_crit_edge48, %for.body.i.for.inc.i_crit_edge49
  %.sink.i = phi i32 [ 4, %for.body.i.for.inc.i_crit_edge ], [ 4, %for.body.i.for.inc.i_crit_edge47 ], [ 4, %for.body.i.for.inc.i_crit_edge48 ], [ 4, %for.body.i.for.inc.i_crit_edge49 ], [ 8, %for.inc.sink.split.i ]
  %add.ptr23.i = getelementptr i8, ptr %e.057.i, i32 %.sink.i
  %inc.i = add nuw i32 %n.058.i, 1
  %28 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.reiserfs_posix_acl_to_disk.exit_crit_edge

for.inc.i.reiserfs_posix_acl_to_disk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reiserfs_posix_acl_to_disk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

fail.i:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %if.then6

reiserfs_posix_acl_to_disk.exit:                  ; preds = %for.inc.i.reiserfs_posix_acl_to_disk.exit_crit_edge, %if.end.i.reiserfs_posix_acl_to_disk.exit_crit_edge
  %cmp.i40 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %reiserfs_posix_acl_to_disk.exit.if.then6_crit_edge, label %reiserfs_posix_acl_to_disk.exit.if.end9_crit_edge

reiserfs_posix_acl_to_disk.exit.if.end9_crit_edge: ; preds = %reiserfs_posix_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

reiserfs_posix_acl_to_disk.exit.if.then6_crit_edge: ; preds = %reiserfs_posix_acl_to_disk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %reiserfs_posix_acl_to_disk.exit.if.then6_crit_edge, %fail.i, %if.then4.if.then6_crit_edge
  %retval.0.i43 = phi ptr [ %call9.i.i, %reiserfs_posix_acl_to_disk.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then4.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %fail.i ]
  %30 = ptrtoint ptr %retval.0.i43 to i32
  br label %cleanup

if.end9:                                          ; preds = %reiserfs_posix_acl_to_disk.exit.if.end9_crit_edge, %sw.epilog.if.end9_crit_edge
  %size.0 = phi i32 [ 0, %sw.epilog.if.end9_crit_edge ], [ %retval.0.i.i, %reiserfs_posix_acl_to_disk.exit.if.end9_crit_edge ]
  %value.0 = phi ptr [ null, %sw.epilog.if.end9_crit_edge ], [ %call9.i.i, %reiserfs_posix_acl_to_disk.exit.if.end9_crit_edge ]
  %call10 = tail call i32 @reiserfs_xattr_set_handle(ptr noundef %th, ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -61
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp14 = icmp eq i32 %type, 32768
  br i1 %cmp14, label %if.then16, label %if.then13.if.end18.thread_crit_edge

if.then13.if.end18.thread_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.thread

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #6
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then16, %if.then13.if.end18.thread_crit_edge
  call void @kfree(ptr noundef %value.0) #6
  br label %if.then20

if.end18:                                         ; preds = %if.end9
  tail call void @kfree(ptr noundef %value.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool19.not = icmp eq i32 %call10, 0
  br i1 %tobool19.not, label %if.end18.if.then20_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.then6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then6 ], [ %cond, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ %call10, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/xattr_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.1, %sw.bb2 ], [ @.str, %if.end.sw.epilog_crit_edge ]
  %call6 = tail call i32 @reiserfs_xattr_get(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end8.i

if.then7:                                         ; preds = %sw.epilog
  %1 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call6, label %if.end11 [
    i32 -61, label %if.then7.cleanup_crit_edge
    i32 -38, label %if.then7.cleanup_crit_edge56
  ]

if.then7.cleanup_crit_edge56:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %2 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call6, i32 noundef 3136) #9
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end8.i.cleanup_crit_edge, label %if.end18

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i
  %call19 = tail call i32 @reiserfs_xattr_get(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull %call9.i, i32 noundef %call6) #6
  %3 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call19, label %if.else [
    i32 -61, label %if.end18.if.end30_crit_edge
    i32 -38, label %if.end18.if.end30_crit_edge57
  ]

if.end18.if.end30_crit_edge57:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp24 = icmp slt i32 %call19, 0
  br i1 %cmp24, label %if.then25, label %if.end.i50

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = inttoptr i32 %call19 to ptr
  br label %if.end30

if.end.i50:                                       ; preds = %if.else
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %call19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call19)
  %cmp.i49 = icmp ult i32 %call19, 4
  br i1 %cmp.i49, label %if.end.i50.if.end30_crit_edge, label %if.end2.i

if.end.i50.if.end30_crit_edge:                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end2.i:                                        ; preds = %if.end.i50
  %5 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp3.not.i = icmp eq i32 %6, 16777216
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end2.i.if.end30_crit_edge

if.end2.i.if.end30_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end6.i:                                        ; preds = %if.end2.i
  %add.ptr7.i = getelementptr i8, ptr %call9.i, i32 4
  %sub1.i.i = add nsw i32 %call19, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call19)
  %cmp.i.i51 = icmp ult i32 %call19, 20
  br i1 %cmp.i.i51, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  %rem.i.i = and i32 %call19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i52 = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i52, label %if.end12.i, label %if.then.i.i.if.end30_crit_edge

if.then.i.i.if.end30_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else.i.i:                                      ; preds = %if.end6.i
  %rem3.i.i = and i32 %sub1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12.thread.i, label %if.else.i.i.if.end30_crit_edge

if.else.i.i.if.end30_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end12.thread.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div713.i.i = lshr i32 %sub1.i.i, 3
  %add.i.i = add nuw nsw i32 %div713.i.i, 4
  br label %if.end15.i

if.end12.i:                                       ; preds = %if.then.i.i
  %sub.i.i = add nsw i32 %call19, -4
  %div14.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp13.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp13.i, label %if.end12.i.if.end30_crit_edge, label %if.end12.i.if.end15.i_crit_edge

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end12.i.if.end30_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end15.i:                                       ; preds = %if.end12.i.if.end15.i_crit_edge, %if.end12.thread.i
  %retval.0.i106.i = phi i32 [ %add.i.i, %if.end12.thread.i ], [ %div14.i.i, %if.end12.i.if.end15.i_crit_edge ]
  %call16.i = tail call ptr @posix_acl_alloc(i32 noundef %retval.0.i106.i, i32 noundef 3136) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end30_crit_edge, label %for.cond.preheader.i

if.end15.i.if.end30_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

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
  %7 = ptrtoint ptr %value.addr.0113.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %value.addr.0113.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx.i, align 4
  %e_perm.i = getelementptr inbounds %struct.reiserfs_acl_entry, ptr %value.addr.0113.i, i32 0, i32 1
  %11 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_perm.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %e_perm30.i = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 1
  %14 = ptrtoint ptr %e_perm30.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %e_perm30.i, align 2
  %conv.i = sext i16 %9 to i32
  %15 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv.i, label %if.end26.i.land.lhs.true.i.i_crit_edge [
    i32 1, label %if.end26.i.for.inc.i_crit_edge
    i32 4, label %if.end26.i.for.inc.i_crit_edge58
    i32 16, label %if.end26.i.for.inc.i_crit_edge59
    i32 32, label %if.end26.i.for.inc.i_crit_edge60
    i32 2, label %sw.bb35.i
    i32 8, label %sw.bb44.i
  ]

if.end26.i.for.inc.i_crit_edge60:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.for.inc.i_crit_edge59:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i.for.inc.i_crit_edge58:                 ; preds = %if.end26.i
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
  %16 = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 2
  %17 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr23.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %call43.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %19) #6
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call43.i, ptr %16, align 4
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
  %21 = getelementptr %struct.posix_acl, ptr %call16.i, i32 0, i32 3, i32 %n.0111.i, i32 2
  %22 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr23.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %call54.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %24) #6
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call54.i, ptr %21, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end49.i, %if.end40.i, %if.end26.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge58, %if.end26.i.for.inc.i_crit_edge59, %if.end26.i.for.inc.i_crit_edge60
  %value.addr.1.i = phi ptr [ %add.ptr45.i, %if.end49.i ], [ %add.ptr36.i, %if.end40.i ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge58 ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge59 ], [ %add.ptr23.i, %if.end26.i.for.inc.i_crit_edge60 ]
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
  br i1 %cmp56.not.i, label %for.end.i.if.end30_crit_edge, label %for.end.i.land.lhs.true.i.i_crit_edge

for.end.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

for.end.i.if.end30_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true.i.i:                                ; preds = %for.end.i.land.lhs.true.i.i_crit_edge, %sw.bb44.i.land.lhs.true.i.i_crit_edge, %sw.bb35.i.land.lhs.true.i.i_crit_edge, %if.end26.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call16.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr nonnull %call16.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call16.i, ptr nonnull %call16.i, i32 1, ptr nonnull elementtype(i32) %call16.i) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end30_crit_edge, label %if.then10.i.i.i.i.i, !prof !16

if.end5.i.i.i.i.i.if.end30_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call16.i, i32 noundef 3) #6
  br label %if.end30

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %call16.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end30_crit_edge, %for.end.i.if.end30_crit_edge, %if.end15.i.if.end30_crit_edge, %if.end12.i.if.end30_crit_edge, %if.else.i.i.if.end30_crit_edge, %if.then.i.i.if.end30_crit_edge, %if.end2.i.if.end30_crit_edge, %if.end.i50.if.end30_crit_edge, %if.then25, %if.end18.if.end30_crit_edge, %if.end18.if.end30_crit_edge57
  %acl.0 = phi ptr [ %4, %if.then25 ], [ null, %if.end18.if.end30_crit_edge ], [ null, %if.end18.if.end30_crit_edge57 ], [ null, %if.end12.i.if.end30_crit_edge ], [ %call16.i, %for.end.i.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i50.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end2.i.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.i.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.if.end30_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.i.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.end30_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end8.i.cleanup_crit_edge, %if.end11, %if.then7.cleanup_crit_edge, %if.then7.cleanup_crit_edge56, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end11 ], [ %acl.0, %if.end30 ], [ null, %if.then7.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge56 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_inherit_default_acl(ptr noundef %th, ptr noundef %dir, ptr nocapture noundef readnone %dentry, ptr noundef %inode) local_unnamed_addr #0 align 64 {
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
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %4)
  %cmp = icmp eq i16 %4, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr i8, ptr %dir, i32 -248
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 8
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.end.apply_umask_crit_edge, label %if.end6

if.end.apply_umask_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %apply_umask

if.end6:                                          ; preds = %if.end
  %i_flags7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags7, align 4
  %and8 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.apply_umask_crit_edge

if.end6.apply_umask_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %apply_umask

if.end11:                                         ; preds = %if.end6
  %call13 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %default_acl, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end20.thread, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i32 @__reiserfs_set_acl(ptr noundef %th, ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %11)
  %12 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then18.if.end20_crit_edge, label %land.lhs.true.i

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.then18
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #6
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end20_crit_edge, label %if.then10.i.i.i.i, !prof !16

if.end5.i.i.i.i.if.end20_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #6
  br label %if.end20

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %13, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end20_crit_edge, %if.then18.if.end20_crit_edge
  %15 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acl, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.thread:                                  ; preds = %if.end16
  %17 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acl, align 4
  %tobool21.not59 = icmp eq ptr %18, null
  br i1 %tobool21.not59, label %if.end20.thread.cleanup_crit_edge, label %if.end20.thread.if.end26_crit_edge

if.end20.thread.if.end26_crit_edge:               ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end20.thread.cleanup_crit_edge:                ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool23.not = icmp eq i32 %call19, 0
  br i1 %tobool23.not, label %if.then22.if.end26_crit_edge, label %if.then22.land.lhs.true.i51_crit_edge

if.then22.land.lhs.true.i51_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i51

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.then22.if.end26_crit_edge, %if.end20.thread.if.end26_crit_edge
  %19 = phi ptr [ %16, %if.then22.if.end26_crit_edge ], [ %18, %if.end20.thread.if.end26_crit_edge ]
  %call25 = call fastcc i32 @__reiserfs_set_acl(ptr noundef %th, ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %19)
  %20 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i47 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i47, label %if.end26.cleanup_crit_edge, label %if.end26.land.lhs.true.i51_crit_edge

if.end26.land.lhs.true.i51_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i51

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i51:                                ; preds = %if.end26.land.lhs.true.i51_crit_edge, %if.then22.land.lhs.true.i51_crit_edge
  %err.165 = phi i32 [ %call25, %if.end26.land.lhs.true.i51_crit_edge ], [ %call19, %if.then22.land.lhs.true.i51_crit_edge ]
  %21 = phi ptr [ %.pr, %if.end26.land.lhs.true.i51_crit_edge ], [ %16, %if.then22.land.lhs.true.i51_crit_edge ]
  %call.i.i.i.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #6
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i50, label %do.end.i56, label %if.end5.i.i.i.i53

if.end5.i.i.i.i53:                                ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i52 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i52, label %if.end5.i.i.i.i53.cleanup_crit_edge, label %if.then10.i.i.i.i54, !prof !16

if.end5.i.i.i.i53.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i54:                              ; preds = %if.end5.i.i.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #6
  br label %cleanup

do.end.i56:                                       ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i55 = getelementptr inbounds %struct.posix_acl, ptr %21, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i55, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

apply_umask:                                      ; preds = %if.end6.apply_umask_crit_edge, %if.end.apply_umask_crit_edge
  %call28 = tail call i32 @current_umask() #6
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inode, align 8
  %25 = trunc i32 %call28 to i16
  %26 = xor i16 %25, -1
  %conv32 = and i16 %24, %26
  store i16 %conv32, ptr %inode, align 8
  br label %cleanup

cleanup:                                          ; preds = %apply_umask, %do.end.i56, %if.then10.i.i.i.i54, %if.end5.i.i.i.i53.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end20.thread.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %apply_umask ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call19, %if.end20.cleanup_crit_edge ], [ 0, %if.end20.thread.cleanup_crit_edge ], [ %call25, %if.end26.cleanup_crit_edge ], [ %err.165, %if.end5.i.i.i.i53.cleanup_crit_edge ], [ %err.165, %if.then10.i.i.i.i54 ], [ %err.165, %do.end.i56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_cache_default_acl(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef 16384) #6
  %tobool1.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool1.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i37 = icmp slt i32 %3, 5
  %mul.i = shl i32 %3, 2
  %add.i = add i32 %mul.i, 4
  %sub.i = shl i32 %3, 3
  %add2.i = add i32 %sub.i, -12
  %retval.0.i = select i1 %cmp.i37, i32 %add.i, i32 %add2.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %9, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add7.i = select i1 %tobool.not.i, i32 54, i32 224
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 8
  %and9.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i38 = icmp eq i32 %and9.i, 0
  br i1 %cmp.i38, label %if.then.i, label %if.then3.reiserfs_xattr_jcreate_nblocks.exit_crit_edge

if.then3.reiserfs_xattr_jcreate_nblocks.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %reiserfs_xattr_jcreate_nblocks.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i = select i1 %tobool.not.i, i32 108, i32 448
  %xattr_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 32
  %12 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xattr_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %15, null
  %add45.i = select i1 %tobool.not.i, i32 162, i32 672
  %spec.select.i = select i1 %cmp.i.i, i32 %add45.i, i32 %add25.i
  br label %reiserfs_xattr_jcreate_nblocks.exit

reiserfs_xattr_jcreate_nblocks.exit:              ; preds = %if.then.i, %if.then3.reiserfs_xattr_jcreate_nblocks.exit_crit_edge
  %nblocks.0.i = phi i32 [ %add7.i, %if.then3.reiserfs_xattr_jcreate_nblocks.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %add16 = add nuw nsw i32 %nblocks.0.i, %add7.i
  %16 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags.i, align 8
  %or = or i32 %17, 64
  store i32 %or, ptr %i_flags.i, align 8
  %conv45 = zext i32 %retval.0.i to i64
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %reiserfs_file_data_log.exit.i, label %reiserfs_xattr_jcreate_nblocks.exit.if.then.i43_crit_edge

reiserfs_xattr_jcreate_nblocks.exit.if.then.i43_crit_edge: ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i43

reiserfs_file_data_log.exit.i:                    ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  %22 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags.i, align 8
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i40 = icmp eq i32 %24, 0
  br i1 %tobool.not.i40, label %reiserfs_file_data_log.exit.i.land.lhs.true.i_crit_edge, label %reiserfs_file_data_log.exit.i.if.then.i43_crit_edge

reiserfs_file_data_log.exit.i.if.then.i43_crit_edge: ; preds = %reiserfs_file_data_log.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i43

reiserfs_file_data_log.exit.i.land.lhs.true.i_crit_edge: ; preds = %reiserfs_file_data_log.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then.i43:                                      ; preds = %reiserfs_file_data_log.exit.i.if.then.i43_crit_edge, %reiserfs_xattr_jcreate_nblocks.exit.if.then.i43_crit_edge
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %26 to i64
  %add1.i = add nuw nsw i64 %conv45, 7
  %sub.i41 = add nuw nsw i64 %add1.i, %conv.i
  %neg.i = sub i32 0, %26
  %conv5.i = zext i32 %neg.i to i64
  %and.i42 = and i64 %sub.i41, %conv5.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %28 to i64
  %shr.i = lshr i64 %and.i42, %sh_prom.i
  %extract.t = trunc i64 %shr.i to i32
  %phi.bo = shl i32 %extract.t, 2
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i43, %reiserfs_file_data_log.exit.i.land.lhs.true.i_crit_edge
  %ret.0.i.off0 = phi i32 [ %phi.bo, %if.then.i43 ], [ 0, %reiserfs_file_data_log.exit.i.land.lhs.true.i_crit_edge ]
  %conv23 = add i32 %add16, %ret.0.i.off0
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #6, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !16

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %conv23, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %conv23, %if.then10.i.i.i.i ], [ %conv23, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_acl_chmod(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %i_flags1 = getelementptr i8, ptr %inode, i32 -248
  %2 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags1, align 8
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt, align 4
  %and5 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false.return_crit_edge, label %if.end8

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %call9 = tail call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i16 noundef zeroext %12) #6
  br label %return

return:                                           ; preds = %if.end8, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

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
declare dso_local i32 @reiserfs_xattr_set_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
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
!1 = !{!"../fs/reiserfs/xattr_acl.c", i32 205, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/xattr_acl.c", i32 208, i32 10}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2154158338, i64 2154158826, i64 2154158375, i64 2154158431, i64 2154158465, i64 2154158489, i64 2154158530, i64 2154158551, i64 2154158579, i64 2154158613}
!14 = !{i64 2148788251}
!15 = !{i64 2148702691, i64 2148702723, i64 2148702752, i64 2148702786, i64 2148702817, i64 2148702840}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2150399269}
!18 = !{!"auto-init"}
