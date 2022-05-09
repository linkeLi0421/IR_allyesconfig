; ModuleID = '/llk/IR_all_yes/fs/fat/nfs.c_pt.bc'
source_filename = "../fs/fat/nfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.67 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fat_fid = type { i32, i32, i16, i16, i32, i32 }

@fat_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @fat_fh_to_dentry, ptr @fat_fh_to_parent, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@fat_export_ops_nostale = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @fat_encode_fh_nostale, ptr @fat_fh_to_dentry_nostale, ptr @fat_fh_to_parent_nostale, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to read block(%llu) for building NFS inode\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to read cluster of parent directory\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 113, i64 114]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"fat_export_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 281, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"fat_export_ops_nostale\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 287, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 73, i32 16 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 74, i32 5 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [16 x i8] c"../fs/fat/nfs.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 226, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @fat_export_ops, ptr @fat_export_ops_nostale, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_export_ops_nostale to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @fat_nfs_get_inode) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @fat_nfs_get_inode) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_get_parent(ptr nocapture noundef readonly %child_dir) #0 align 64 {
entry:
  %sinfo.i = alloca %struct.fat_slot_info, align 8
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child_dir, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #5
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #5
  %3 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !19
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child_dir, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call2 = call i32 @fat_get_dotdot_entry(ptr noundef %7, ptr noundef nonnull %bh, ptr noundef nonnull %de) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %de, align 4
  %start.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start.i, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11) #5
  %conv.i = zext i16 %12 to i32
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 32
  br i1 %cmp.i.i, label %if.then.i, label %if.then.fat_get_start.exit_crit_edge

if.then.fat_get_start.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %fat_get_start.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %starthi.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %9, i32 0, i32 7
  %15 = ptrtoint ptr %starthi.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %starthi.i, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16) #5
  %conv1.i = zext i16 %17 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %fat_get_start.exit

fat_get_start.exit:                               ; preds = %if.then.i, %if.then.fat_get_start.exit_crit_edge
  %cluster.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %if.then.fat_get_start.exit_crit_edge ]
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %dir_hashtable.i = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 34
  %mul.i.i.i.i = mul i32 %cluster.0.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %dir_hashtable.i, i32 %shr.i.i.i
  %dir_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %dir_hash_lock.i) #5
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %add.ptr3.i = getelementptr i8, ptr %21, i32 -104
  %tobool4.not4851.i = icmp eq ptr %add.ptr3.i, null
  %tobool4.not48.i = or i1 %tobool.not.i, %tobool4.not4851.i
  br i1 %tobool4.not48.i, label %fat_get_start.exit.land.lhs.true_crit_edge, label %fat_get_start.exit.do.body.i_crit_edge

fat_get_start.exit.do.body.i_crit_edge:           ; preds = %fat_get_start.exit
  br label %do.body.i

fat_get_start.exit.land.lhs.true_crit_edge:       ; preds = %fat_get_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %fat_get_start.exit.do.body.i_crit_edge
  %i.049.i = phi ptr [ %add.ptr28.i, %for.inc.i.do.body.i_crit_edge ], [ %add.ptr3.i, %fat_get_start.exit.do.body.i_crit_edge ]
  %vfs_inode.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 12
  %i_sb.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 12, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %cmp.not.i = icmp eq ptr %23, %1
  br i1 %cmp.not.i, label %do.end12.i, label %do.body7.i, !prof !20

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/nfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 33, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %i_logstart13.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 6
  %24 = ptrtoint ptr %i_logstart13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_logstart13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cluster.0.i)
  %cmp14.not.i = icmp eq i32 %25, %cluster.0.i
  br i1 %cmp14.not.i, label %if.end16.i, label %do.end12.i.for.inc.i_crit_edge

do.end12.i.for.inc.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end16.i:                                       ; preds = %do.end12.i
  %call18.i = call ptr @igrab(ptr noundef %vfs_inode.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end16.i.for.inc.i_crit_edge, label %fat_dget.exit

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %do.end12.i.for.inc.i_crit_edge
  %i_dir_hash.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 10
  %26 = ptrtoint ptr %i_dir_hash.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_dir_hash.i, align 8
  %tobool24.not.i = icmp eq ptr %27, null
  %add.ptr28.i = getelementptr i8, ptr %27, i32 -104
  %tobool4.not52.i = icmp eq ptr %add.ptr28.i, null
  %tobool4.not.i = or i1 %tobool24.not.i, %tobool4.not52.i
  br i1 %tobool4.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

fat_dget.exit:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %dir_hash_lock.i) #5
  br label %if.end9

land.lhs.true:                                    ; preds = %for.inc.i.land.lhs.true_crit_edge, %fat_get_start.exit.land.lhs.true_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dir_hash_lock.i) #5
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 10
  %28 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nfs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp = icmp eq i8 %29, 2
  br i1 %cmp, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i) #5
  %30 = call ptr @memset(ptr %sinfo.i, i32 255, i32 32)
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i.i = sext i32 %cluster.0.i to i64
  %sub.i.i = add nsw i64 %conv.i.i, -2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  %conv1.i.i = zext i16 %34 to i64
  %mul.i.i = mul nsw i64 %sub.i.i, %conv1.i.i
  %data_start.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_start.i.i, align 4
  %conv2.i.i = zext i32 %36 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv2.i.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %38, i64 noundef %add.i.i, i32 noundef %40, i32 noundef 8) #5
  %tobool.not.i18 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i18, label %if.then.i19, label %if.end.i

if.then.i19:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %fat_rebuild_parent.exit

if.end.i:                                         ; preds = %if.then7
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %start.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %start.i.i, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44) #5
  %conv.i53.i = zext i16 %45 to i32
  %fat_bits.i.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %32, i32 0, i32 4
  %46 = ptrtoint ptr %fat_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fat_bits.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp.i.i.i = icmp eq i8 %47, 32
  br i1 %cmp.i.i.i, label %if.then.i63.i, label %fat_get_start.exit.i

fat_get_start.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %start.i55.i = getelementptr %struct.msdos_dir_entry, ptr %42, i32 1, i32 10
  %48 = ptrtoint ptr %start.i55.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %start.i55.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #5
  %conv.i56.i = zext i16 %50 to i32
  br label %fat_get_start.exit65.i

if.then.i63.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %starthi.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %42, i32 0, i32 7
  %51 = ptrtoint ptr %starthi.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %starthi.i.i, align 4
  %53 = call i16 @llvm.bswap.i16(i16 %52) #5
  %conv1.i54.i = zext i16 %53 to i32
  %shl.i.i = shl nuw i32 %conv1.i54.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i53.i
  %start.i5574.i = getelementptr %struct.msdos_dir_entry, ptr %42, i32 1, i32 10
  %54 = ptrtoint ptr %start.i5574.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %start.i5574.i, align 2
  %starthi.i59.i = getelementptr %struct.msdos_dir_entry, ptr %42, i32 1, i32 7
  %56 = ptrtoint ptr %starthi.i59.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %starthi.i59.i, align 4
  %58 = zext i16 %57 to i32
  %59 = zext i16 %55 to i32
  %60 = shl nuw i32 %59, 16
  %61 = or i32 %60, %58
  %62 = call i32 @llvm.bswap.i32(i32 %61) #5
  br label %fat_get_start.exit65.i

fat_get_start.exit65.i:                           ; preds = %if.then.i63.i, %fat_get_start.exit.i
  %cluster.0.i76.i = phi i32 [ %or.i.i, %if.then.i63.i ], [ %conv.i53.i, %fat_get_start.exit.i ]
  %cluster.0.i64.i = phi i32 [ %62, %if.then.i63.i ], [ %conv.i56.i, %fat_get_start.exit.i ]
  %arrayidx478.i = getelementptr %struct.msdos_dir_entry, ptr %42, i32 1
  %63 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i, align 16
  %dir_hashtable.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 34
  %mul.i.i.i.i.i = mul i32 %cluster.0.i64.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 24
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %dir_hashtable.i.i, i32 %shr.i.i.i.i
  %dir_hash_lock.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %dir_hash_lock.i.i) #5
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  %add.ptr3.i.i = getelementptr i8, ptr %66, i32 -104
  %tobool4.not4851.i.i = icmp eq ptr %add.ptr3.i.i, null
  %tobool4.not48.i.i = or i1 %tobool.not.i.i, %tobool4.not4851.i.i
  br i1 %tobool4.not48.i.i, label %fat_get_start.exit65.i.if.then8.i_crit_edge, label %fat_get_start.exit65.i.do.body.i.i_crit_edge

fat_get_start.exit65.i.do.body.i.i_crit_edge:     ; preds = %fat_get_start.exit65.i
  br label %do.body.i.i

fat_get_start.exit65.i.if.then8.i_crit_edge:      ; preds = %fat_get_start.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %fat_get_start.exit65.i.do.body.i.i_crit_edge
  %i.049.i.i = phi ptr [ %add.ptr28.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %add.ptr3.i.i, %fat_get_start.exit65.i.do.body.i.i_crit_edge ]
  %vfs_inode.i.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i.i, i32 0, i32 12
  %i_sb.i.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i.i, i32 0, i32 12, i32 8
  %67 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %68, %1
  br i1 %cmp.not.i.i, label %do.end12.i.i, label %do.body7.i.i, !prof !20

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/nfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 33, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

do.end12.i.i:                                     ; preds = %do.body.i.i
  %i_logstart13.i.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %i_logstart13.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_logstart13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %cluster.0.i64.i)
  %cmp14.not.i.i = icmp eq i32 %70, %cluster.0.i64.i
  br i1 %cmp14.not.i.i, label %if.end16.i.i, label %do.end12.i.i.for.inc.i.i_crit_edge

do.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %do.end12.i.i
  %call18.i.i = call ptr @igrab(ptr noundef %vfs_inode.i.i) #5
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %if.end16.i.i.for.inc.i.i_crit_edge, label %fat_dget.exit.i

if.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end16.i.i.for.inc.i.i_crit_edge, %do.end12.i.i.for.inc.i.i_crit_edge
  %i_dir_hash.i.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %i_dir_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_dir_hash.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %72, null
  %add.ptr28.i.i = getelementptr i8, ptr %72, i32 -104
  %tobool4.not52.i.i = icmp eq ptr %add.ptr28.i.i, null
  %tobool4.not.i.i = or i1 %tobool24.not.i.i, %tobool4.not52.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.then8.i_crit_edge, label %for.inc.i.i.do.body.i.i_crit_edge

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.inc.i.i.if.then8.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

fat_dget.exit.i:                                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %dir_hash_lock.i.i) #5
  br label %if.end17.i

if.then8.i:                                       ; preds = %for.inc.i.i.if.then8.i_crit_edge, %fat_get_start.exit65.i.if.then8.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dir_hash_lock.i.i) #5
  %call9.i = call ptr @new_inode(ptr noundef %1) #5
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %brelse.exit.i, label %if.end12.i

brelse.exit.i:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br label %fat_rebuild_parent.exit

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i = call i32 @iunique(ptr noundef %1, i32 noundef 1) #5
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call9.i, i32 0, i32 11
  %73 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call13.i, ptr %i_ino.i, align 8
  %call15.i = call i32 @fat_fill_inode(ptr noundef nonnull %call9.i, ptr noundef %arrayidx478.i) #5
  %i_pos.i = getelementptr i8, ptr %call9.i, i32 -120
  %74 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 -1, ptr %i_pos.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i, %fat_dget.exit.i
  %dummy_grand_parent.0.i = phi ptr [ %call18.i.i, %fat_dget.exit.i ], [ %call9.i, %if.end12.i ]
  %call18.i20 = call i32 @fat_scan_logstart(ptr noundef nonnull %dummy_grand_parent.0.i, i32 noundef %cluster.0.i76.i, ptr noundef nonnull %sinfo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i20)
  %tobool19.not.i21 = icmp eq i32 %call18.i20, 0
  br i1 %tobool19.not.i21, label %if.then20.i, label %if.end17.i.brelse.exit71.i_crit_edge

if.end17.i.brelse.exit71.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit71.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %de21.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i, i32 0, i32 3
  %75 = ptrtoint ptr %de21.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %de21.i, align 4
  %77 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %sinfo.i, align 8
  %call23.i = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %76, i64 noundef %78) #5
  br label %brelse.exit71.i

brelse.exit71.i:                                  ; preds = %if.then20.i, %if.end17.i.brelse.exit71.i_crit_edge
  %parent.0.i = phi ptr [ null, %if.end17.i.brelse.exit71.i_crit_edge ], [ %call23.i, %if.then20.i ]
  call void @__brelse(ptr noundef nonnull %call.i.i) #5
  call void @iput(ptr noundef nonnull %dummy_grand_parent.0.i) #5
  br label %fat_rebuild_parent.exit

fat_rebuild_parent.exit:                          ; preds = %brelse.exit71.i, %brelse.exit.i, %if.then.i19
  %retval.0.i = phi ptr [ %parent.0.i, %brelse.exit71.i ], [ null, %brelse.exit.i ], [ null, %if.then.i19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i) #5
  br label %if.end9

if.end9:                                          ; preds = %fat_rebuild_parent.exit, %land.lhs.true.if.end9_crit_edge, %fat_dget.exit, %entry.if.end9_crit_edge
  %parent_inode.1 = phi ptr [ null, %entry.if.end9_crit_edge ], [ %call18.i, %fat_dget.exit ], [ %retval.0.i, %fat_rebuild_parent.exit ], [ null, %land.lhs.true.if.end9_crit_edge ]
  %79 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bh, align 4
  %tobool.not.i22 = icmp eq ptr %80, null
  br i1 %tobool.not.i22, label %if.end9.brelse.exit_crit_edge, label %if.then.i23

if.end9.brelse.exit_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i23:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %80) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i23, %if.end9.brelse.exit_crit_edge
  %call10 = call ptr @d_obtain_alias(ptr noundef %parent_inode.1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #5
  ret ptr %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_encode_fh_nostale(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %lenp, ptr noundef readonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lenp, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %if.else.cleanup.sink.split_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %inode_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #5
  %i_pos1.i = getelementptr i8, ptr %inode, i32 -120
  %6 = ptrtoint ptr %i_pos1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_pos1.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #5
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %lenp, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation, align 8
  %11 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fh, align 4
  %conv = trunc i64 %7 to i32
  %i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 1
  %12 = ptrtoint ptr %i_pos_low to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %i_pos_low, align 4
  %13 = lshr i64 %7, 32
  %conv8 = trunc i64 %13 to i16
  %i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 2
  %14 = ptrtoint ptr %i_pos_hi to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8, ptr %i_pos_hi, align 4
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #5
  %i_pos1.i43 = getelementptr i8, ptr %parent, i32 -120
  %15 = ptrtoint ptr %i_pos1.i43 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_pos1.i43, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #5
  %17 = lshr i64 %16, 32
  %conv14 = trunc i64 %17 to i16
  %parent_i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 3
  %18 = ptrtoint ptr %parent_i_pos_hi to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv14, ptr %parent_i_pos_hi, align 2
  %conv16 = trunc i64 %16 to i32
  %parent_i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 4
  %19 = ptrtoint ptr %parent_i_pos_low to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv16, ptr %parent_i_pos_low, align 4
  %i_generation17 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %20 = ptrtoint ptr %i_generation17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_generation17, align 8
  %parent_i_gen = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 5
  %22 = ptrtoint ptr %parent_i_gen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %parent_i_gen, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.else.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 5, %if.then10 ], [ 5, %if.then.cleanup.sink.split_crit_edge ], [ 3, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 114, %if.then10 ], [ 255, %if.then.cleanup.sink.split_crit_edge ], [ 255, %if.else.cleanup.sink.split_crit_edge ]
  %23 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 113, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_fh_to_dentry_nostale(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 113, label %sw.bb
    i32 114, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 3
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %fh_len)
  %cmp2 = icmp ult i32 %fh_len, 5
  br i1 %cmp2, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 2
  %1 = ptrtoint ptr %i_pos_hi to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %i_pos_hi, align 4
  %conv = zext i16 %2 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 1
  %3 = ptrtoint ptr %i_pos_low to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_pos_low, align 4
  %conv5 = zext i32 %4 to i64
  %or = or i64 %shl, %conv5
  %5 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fh, align 4
  %call = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %sb, i64 noundef 0, i32 noundef %6, i64 noundef %or)
  %call6 = tail call ptr @d_obtain_alias(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %sw.epilog ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %sw.bb1.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_fh_to_parent_nostale(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %fh_len)
  %cmp = icmp ult i32 %fh_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 114, i32 %fh_type)
  %cond = icmp eq i32 %fh_type, 114
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent_i_pos_hi = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %parent_i_pos_hi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %parent_i_pos_hi, align 2
  %conv = zext i16 %1 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %parent_i_pos_low = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 4
  %2 = ptrtoint ptr %parent_i_pos_low to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_i_pos_low, align 4
  %conv1 = zext i32 %3 to i64
  %or = or i64 %shl, %conv1
  %parent_i_gen = getelementptr inbounds %struct.fat_fid, ptr %fh, i32 0, i32 5
  %4 = ptrtoint ptr %parent_i_gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_i_gen, align 4
  %call = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %sb, i64 noundef 0, i32 noundef %5, i64 noundef %or)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %inode.0 = phi ptr [ %call, %sw.bb ], [ null, %if.end.sw.epilog_crit_edge ]
  %call2 = tail call ptr @d_obtain_alias(ptr noundef %inode.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %sw.epilog ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation, i64 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fat_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation, i64 noundef %i_pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %nfs.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 10
  %2 = ptrtoint ptr %nfs.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call ptr @fat_iget(ptr noundef %sb, i64 noundef %i_pos) #5
  br label %fat_ilookup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %ino, ptr @__sancov_gen_cov_switch_values.3)
  switch i64 %ino, label %if.end.i [
    i64 0, label %if.else.i.land.lhs.true4_crit_edge
    i64 2, label %if.else.i.land.lhs.true4_crit_edge56
  ]

if.else.i.land.lhs.true4_crit_edge56:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true4

if.else.i.land.lhs.true4_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true4

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i = trunc i64 %ino to i32
  %call9.i = tail call ptr @ilookup(ptr noundef %sb, i32 noundef %conv8.i) #5
  br label %fat_ilookup.exit

fat_ilookup.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.then.i ], [ %call9.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %fat_ilookup.exit.land.lhs.true4_crit_edge, label %land.lhs.true

fat_ilookup.exit.land.lhs.true4_crit_edge:        ; preds = %fat_ilookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true4

land.lhs.true:                                    ; preds = %fat_ilookup.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %generation)
  %tobool1.not = icmp eq i32 %generation, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup29_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

land.lhs.true2:                                   ; preds = %land.lhs.true
  %i_generation = getelementptr inbounds %struct.inode, ptr %retval.0.i, i32 0, i32 49
  %4 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %generation)
  %cmp.not = icmp eq i32 %5, %generation
  br i1 %cmp.not, label %land.lhs.true2.cleanup29_crit_edge, label %if.then

land.lhs.true2.cleanup29_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef nonnull %retval.0.i) #5
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then, %fat_ilookup.exit.land.lhs.true4_crit_edge, %if.else.i.land.lhs.true4_crit_edge, %if.else.i.land.lhs.true4_crit_edge56
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 10
  %8 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nfs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp eq i8 %9, 2
  br i1 %cmp6, label %if.then8, label %land.lhs.true4.cleanup29_crit_edge

land.lhs.true4.cleanup29_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.then8:                                         ; preds = %land.lhs.true4
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 24
  %10 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %11 to i64
  %shr.i = ashr i64 %i_pos, %sh_prom.i
  %dir_per_block.i = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 23
  %12 = ptrtoint ptr %dir_per_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir_per_block.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %shr.i, i32 noundef %17, i32 noundef 8) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %cleanup.thread, label %if.end13

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %shr.i) #8
  br label %cleanup29

if.end13:                                         ; preds = %if.then8
  %sub.i = add i32 %13, -1
  %18 = trunc i64 %i_pos to i32
  %conv1.i = and i32 %sub.i, %18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr %struct.msdos_dir_entry, ptr %20, i32 %conv1.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %22, label %if.else [
    i8 0, label %if.end13.cleanup_crit_edge
    i8 -27, label %if.end13.cleanup_crit_edge57
  ]

if.end13.cleanup_crit_edge57:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call ptr @fat_build_inode(ptr noundef %sb, ptr noundef %arrayidx, i64 noundef %i_pos) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end13.cleanup_crit_edge, %if.end13.cleanup_crit_edge57
  %inode.1 = phi ptr [ %call23, %if.else ], [ null, %if.end13.cleanup_crit_edge ], [ null, %if.end13.cleanup_crit_edge57 ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup, %cleanup.thread, %land.lhs.true4.cleanup29_crit_edge, %land.lhs.true2.cleanup29_crit_edge, %land.lhs.true.cleanup29_crit_edge
  %retval.1 = phi ptr [ null, %cleanup.thread ], [ %inode.1, %cleanup ], [ null, %land.lhs.true4.cleanup29_crit_edge ], [ %retval.0.i, %land.lhs.true2.cleanup29_crit_edge ], [ %retval.0.i, %land.lhs.true.cleanup29_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_iget(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan_logstart(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @fat_export_ops, !1, !"fat_export_ops", i1 false, i1 false}
!1 = !{!"../fs/fat/nfs.c", i32 281, i32 32}
!2 = !{ptr @fat_export_ops_nostale, !3, !"fat_export_ops_nostale", i1 false, i1 false}
!3 = !{!"../fs/fat/nfs.c", i32 287, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fat/nfs.c", i32 73, i32 16}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fat/nfs.c", i32 74, i32 5}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fat/nfs.c", i32 226, i32 4}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2153853036, i64 2153853512, i64 2153853073, i64 2153853129, i64 2153853163, i64 2153853187, i64 2153853228, i64 2153853249, i64 2153853277, i64 2153853311}
