; ModuleID = '/llk/IR_all_yes/fs/fat/namei_vfat.c_pt.bc'
source_filename = "../fs/fat/namei_vfat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.shortname_info = type { i8 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msdos_dir_slot = type { i8, [10 x i8], i8, i8, i8, [12 x i8], i16, [4 x i8] }
%struct.anon.3 = type { i32, i32 }

@__UNIQUE_ID_alias242 = internal constant [19 x i8] c"vfat.alias=fs-vfat\00", section ".modinfo", align 1
@vfat_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 33, ptr null, ptr null, ptr @vfat_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file243 = internal constant [22 x i8] c"vfat.file=fs/fat/vfat\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [17 x i8] c"vfat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [41 x i8] c"vfat.description=VFAT filesystem support\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [27 x i8] c"vfat.author=Gordon Chaffee\00", section ".modinfo", align 1
@__initcall__kmod_vfat__247_1084_init_vfat_fs6 = internal global ptr @init_vfat_fs, section ".initcall6.init", align 4
@__exitcall_exit_vfat_fs = internal global ptr @exit_vfat_fs, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfat\00", [27 x i8] zeroinitializer }, align 32
@vfat_dir_inode_operations = internal constant %struct.inode_operations { ptr @vfat_lookup, ptr null, ptr null, ptr null, ptr null, ptr @vfat_create, ptr null, ptr @vfat_unlink, ptr null, ptr @vfat_mkdir, ptr @vfat_rmdir, ptr null, ptr @vfat_rename, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@vfat_ci_dentry_ops = internal constant %struct.dentry_operations { ptr @vfat_revalidate_ci, ptr null, ptr @vfat_hashi, ptr @vfat_cmpi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@vfat_dentry_ops = internal constant %struct.dentry_operations { ptr @vfat_revalidate, ptr null, ptr @vfat_hash, ptr @vfat_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04X\00", [27 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Filesystem corrupted (i_pos %lld)\00", [58 x i8] zeroinitializer }, align 32
@__func__.vfat_rename = private unnamed_addr constant [12 x i8] c"vfat_rename\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.3 = internal global [11 x i64] [i64 9, i64 16, i64 34, i64 42, i64 47, i64 58, i64 60, i64 62, i64 63, i64 92, i64 124]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 46]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 16, i64 32, i64 43, i64 44, i64 46, i64 59, i64 61, i64 91, i64 93]
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"vfat_fs_type\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1061, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1063, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 500, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [23 x i8] c"../fs/fat/namei_vfat.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1021, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_exit_vfat_fs, ptr @__initcall__kmod_vfat__247_1084_init_vfat_fs6, ptr @exit_vfat_fs, ptr @vfat_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfat_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_vfat_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @vfat_fs_type) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_vfat_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @vfat_fs_type) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vfat_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @vfat_fill_super) #16
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fat_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent, i32 noundef 1, ptr noundef nonnull @setup) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_super(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @setup(ptr nocapture noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %dir_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dir_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vfat_dir_inode_operations, ptr %dir_ops, align 4
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %name_check = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 8
  %4 = ptrtoint ptr %name_check to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %5)
  %cmp.not = icmp eq i8 %5, 115
  %spec.select = select i1 %cmp.not, ptr @vfat_dentry_ops, ptr @vfat_ci_dentry_ops
  %6 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vfat_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %5 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_name, align 8
  %name.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %entry
  %len.addr.0.i.i.i = phi i32 [ %6, %entry ], [ %sub.i.i.i, %land.rhs.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %len.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.out_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.out_crit_edge:                   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %sub.i.i.i = add i32 %len.addr.0.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %8, i32 %sub.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %cmp.i.i.i = icmp eq i8 %10, 46
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %vfat_find.exit

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i.i

vfat_find.exit:                                   ; preds = %land.rhs.i.i.i
  %call1.i = call i32 @fat_search_long(ptr noundef %dir, ptr noundef %8, i32 noundef %len.addr.0.i.i.i, ptr noundef nonnull %sinfo) #16
  %11 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %vfat_find.exit.error_crit_edge [
    i32 0, label %if.end3
    i32 -2, label %vfat_find.exit.out_crit_edge
  ]

vfat_find.exit.out_crit_edge:                     ; preds = %vfat_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

vfat_find.exit.error_crit_edge:                   ; preds = %vfat_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end3:                                          ; preds = %vfat_find.exit
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %12 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %de, align 4
  %14 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sinfo, align 8
  %call4 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %13, i64 noundef %15) #16
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end3.brelse.exit_crit_edge, label %if.then.i

if.end3.brelse.exit_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %17) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end3.brelse.exit_crit_edge
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %call4 to i32
  br label %error

if.end8:                                          ; preds = %brelse.exit
  %call9 = call ptr @d_find_alias(ptr noundef %call4) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent, align 8
  %d_parent11 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent11, align 8
  %cmp12 = icmp eq ptr %20, %22
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call4, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %cmp14 = icmp eq i16 %25, 16384
  br i1 %cmp14, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  call void @d_move(ptr noundef nonnull %call9, ptr noundef %dentry) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  call void @iput(ptr noundef %call4) #16
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock19 = getelementptr inbounds %struct.msdos_sb_info, ptr %27, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock19) #16
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  call void @dput(ptr noundef %call9) #16
  br label %out

out:                                              ; preds = %if.else, %vfat_find.exit.out_crit_edge, %while.cond.i.i.i.out_crit_edge
  %inode.0 = phi ptr [ %call4, %if.else ], [ null, %vfat_find.exit.out_crit_edge ], [ null, %while.cond.i.i.i.out_crit_edge ]
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock22 = getelementptr inbounds %struct.msdos_sb_info, ptr %29, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock22) #16
  %tobool23.not = icmp eq ptr %inode.0, null
  br i1 %tobool23.not, label %if.then24, label %out.if.end27_crit_edge

out.if.end27_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %out
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i63.for.cond.i_crit_edge, %if.then24
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.then24 ], [ %call.i.i, %if.end.i63.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i61 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i61, label %if.end.i63, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !37
  %extract85 = lshr i64 %cur.0.i, 1
  %extract.t86 = trunc i64 %extract85 to i32
  br label %inode_query_iversion.exit

if.end.i63:                                       ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #16
  %cmp.i62 = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i62, label %inode_query_iversion.exit.loopexit, label %if.end.i63.for.cond.i_crit_edge, !prof !38

if.end.i63.for.cond.i_crit_edge:                  ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #18
  %extract83 = lshr i64 %cur.0.i, 1
  %extract.t84 = trunc i64 %extract83 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i81.off1 = phi i32 [ %extract.t84, %inode_query_iversion.exit.loopexit ], [ %extract.t86, %do.end.i ]
  %30 = inttoptr i32 %cur.0.i81.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %31 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %d_fsdata.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %inode_query_iversion.exit, %out.if.end27_crit_edge
  %call28 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #16
  br label %cleanup

error:                                            ; preds = %if.then6, %vfat_find.exit.error_crit_edge
  %err.0 = phi i32 [ %18, %if.then6 ], [ %call1.i, %vfat_find.exit.error_crit_edge ]
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock30 = getelementptr inbounds %struct.msdos_sb_info, ptr %33, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock30) #16
  %34 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end27, %if.end17
  %retval.0 = phi ptr [ %call28, %if.end27 ], [ %34, %error ], [ %call9, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #16
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %dir) #16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = call fastcc i32 @vfat_add_entry(ptr noundef %dir, ptr noundef %d_name, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ts, ptr noundef nonnull %sinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %6 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %6, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #16
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !38

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %7 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de, align 4
  %9 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sinfo, align 8
  %call2 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %8, i64 noundef %10) #16
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %inode_inc_iversion.exit.brelse.exit_crit_edge, label %if.then.i

inode_inc_iversion.exit.brelse.exit_crit_edge:    ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %12) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %inode_inc_iversion.exit.brelse.exit_crit_edge
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %call2 to i32
  br label %out

if.end6:                                          ; preds = %brelse.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i.i21 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 38
  %call.i.i.i.i.i22 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i21, i32 noundef 8) #16
  %call.i.i1.i.i23 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i21) #16
  br label %for.cond.i.i29

for.cond.i.i29:                                   ; preds = %for.cond.i.i29.for.cond.i.i29_crit_edge, %if.end6
  %cur.0.i.i24 = phi i64 [ %call.i.i1.i.i23, %if.end6 ], [ %call.i.i.i27, %for.cond.i.i29.for.cond.i.i29_crit_edge ]
  %14 = add i64 %cur.0.i.i24, 2
  %add.i.i25 = and i64 %14, -2
  %call.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i21, i32 noundef 8) #16
  %call.i.i.i27 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i21, i64 noundef %cur.0.i.i24, i64 noundef %add.i.i25) #16
  %cmp.i.i28 = icmp eq i64 %call.i.i.i27, %cur.0.i.i24
  br i1 %cmp.i.i28, label %inode_inc_iversion.exit30, label %for.cond.i.i29.for.cond.i.i29_crit_edge, !prof !38

for.cond.i.i29.for.cond.i.i29_crit_edge:          ; preds = %for.cond.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i29

inode_inc_iversion.exit30:                        ; preds = %for.cond.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = call i32 @fat_truncate_time(ptr noundef %call2, ptr noundef nonnull %ts, i32 noundef 7) #16
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call2) #16
  br label %out

out:                                              ; preds = %inode_inc_iversion.exit30, %if.then4, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %13, %if.then4 ], [ 0, %inode_inc_iversion.exit30 ]
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock9 = getelementptr inbounds %struct.msdos_sb_info, ptr %16, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_unlink(ptr noundef %dir, ptr nocapture noundef %dentry) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %4 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %name.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %entry
  %len.addr.0.i.i.i = phi i32 [ %8, %entry ], [ %sub.i.i.i, %land.rhs.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %len.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.out_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.out_crit_edge:                   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %sub.i.i.i = add i32 %len.addr.0.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %10, i32 %sub.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i, align 1
  %cmp.i.i.i = icmp eq i8 %12, 46
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %vfat_find.exit

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i.i

vfat_find.exit:                                   ; preds = %land.rhs.i.i.i
  %call1.i = call i32 @fat_search_long(ptr noundef %dir, ptr noundef %10, i32 noundef %len.addr.0.i.i.i, ptr noundef nonnull %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %vfat_find.exit.out_crit_edge

vfat_find.exit.out_crit_edge:                     ; preds = %vfat_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %vfat_find.exit
  %call3 = call i32 @fat_remove_entries(ptr noundef %dir, ptr noundef nonnull %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %if.end
  call void @clear_nlink(ptr noundef %1) #16
  %call7 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef null, i32 noundef 3) #16
  call void @fat_detach(ptr noundef %1) #16
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i21.for.cond.i_crit_edge, %if.end6
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.end6 ], [ %call.i.i, %if.end.i21.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i21, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !37
  %extract44 = lshr i64 %cur.0.i, 1
  %extract.t45 = trunc i64 %extract44 to i32
  br label %inode_query_iversion.exit

if.end.i21:                                       ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #16
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_query_iversion.exit.loopexit, label %if.end.i21.for.cond.i_crit_edge, !prof !38

if.end.i21.for.cond.i_crit_edge:                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #18
  %extract42 = lshr i64 %cur.0.i, 1
  %extract.t43 = trunc i64 %extract42 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i40.off1 = phi i32 [ %extract.t43, %inode_query_iversion.exit.loopexit ], [ %extract.t45, %do.end.i ]
  %13 = inttoptr i32 %cur.0.i40.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %d_fsdata.i, align 4
  br label %out

out:                                              ; preds = %inode_query_iversion.exit, %if.end.out_crit_edge, %vfat_find.exit.out_crit_edge, %while.cond.i.i.i.out_crit_edge
  %err.0 = phi i32 [ %call1.i, %vfat_find.exit.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ 0, %inode_query_iversion.exit ], [ -2, %while.cond.i.i.i.out_crit_edge ]
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock10 = getelementptr inbounds %struct.msdos_sb_info, ptr %16, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #16
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %dir) #16
  %call1 = call i32 @fat_alloc_new_dir(ptr noundef %dir, ptr noundef nonnull %ts) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call fastcc i32 @vfat_add_entry(ptr noundef %dir, ptr noundef %d_name, i32 noundef 1, i32 noundef %call1, ptr noundef nonnull %ts, ptr noundef nonnull %sinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %out_free

if.end4:                                          ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end4
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end4 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %6 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %6, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #16
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !38

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @inc_nlink(ptr noundef %dir) #16
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %7 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de, align 4
  %9 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sinfo, align 8
  %call5 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %8, i64 noundef %10) #16
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %inode_inc_iversion.exit.brelse.exit_crit_edge, label %if.then.i

inode_inc_iversion.exit.brelse.exit_crit_edge:    ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %12) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %inode_inc_iversion.exit.brelse.exit_crit_edge
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %brelse.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i.i40 = getelementptr inbounds %struct.inode, ptr %call5, i32 0, i32 38
  %call.i.i.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i40, i32 noundef 8) #16
  %call.i.i1.i.i42 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i40) #16
  br label %for.cond.i.i48

for.cond.i.i48:                                   ; preds = %for.cond.i.i48.for.cond.i.i48_crit_edge, %if.end9
  %cur.0.i.i43 = phi i64 [ %call.i.i1.i.i42, %if.end9 ], [ %call.i.i.i46, %for.cond.i.i48.for.cond.i.i48_crit_edge ]
  %14 = add i64 %cur.0.i.i43, 2
  %add.i.i44 = and i64 %14, -2
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i40, i32 noundef 8) #16
  %call.i.i.i46 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i40, i64 noundef %cur.0.i.i43, i64 noundef %add.i.i44) #16
  %cmp.i.i47 = icmp eq i64 %call.i.i.i46, %cur.0.i.i43
  br i1 %cmp.i.i47, label %inode_inc_iversion.exit49, label %for.cond.i.i48.for.cond.i.i48_crit_edge, !prof !38

for.cond.i.i48.for.cond.i.i48_crit_edge:          ; preds = %for.cond.i.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i48

inode_inc_iversion.exit49:                        ; preds = %for.cond.i.i48
  call void @__sanitizer_cov_trace_pc() #18
  call void @set_nlink(ptr noundef %call5, i32 noundef 2) #16
  %call10 = call i32 @fat_truncate_time(ptr noundef %call5, ptr noundef nonnull %ts, i32 noundef 7) #16
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call5) #16
  br label %cleanup

out_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = call i32 @fat_free_clusters(ptr noundef %dir, i32 noundef %call1) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free, %inode_inc_iversion.exit49, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %inode_inc_iversion.exit49 ], [ %call2, %out_free ], [ %13, %if.then7 ], [ %call1, %entry.cleanup_crit_edge ]
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock15 = getelementptr inbounds %struct.msdos_sb_info, ptr %16, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock15) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_rmdir(ptr noundef %dir, ptr nocapture noundef %dentry) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %4 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  %call2 = tail call i32 @fat_dir_empty(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %name.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %if.end
  %len.addr.0.i.i.i = phi i32 [ %8, %if.end ], [ %sub.i.i.i, %land.rhs.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %len.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.out_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.out_crit_edge:                   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %sub.i.i.i = add i32 %len.addr.0.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %10, i32 %sub.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i, align 1
  %cmp.i.i.i = icmp eq i8 %12, 46
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %vfat_find.exit

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i.i

vfat_find.exit:                                   ; preds = %land.rhs.i.i.i
  %call1.i = call i32 @fat_search_long(ptr noundef %dir, ptr noundef %10, i32 noundef %len.addr.0.i.i.i, ptr noundef nonnull %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %if.end6, label %vfat_find.exit.out_crit_edge

vfat_find.exit.out_crit_edge:                     ; preds = %vfat_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %vfat_find.exit
  %call7 = call i32 @fat_remove_entries(ptr noundef %dir, ptr noundef nonnull %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end10:                                         ; preds = %if.end6
  call void @drop_nlink(ptr noundef %dir) #16
  call void @clear_nlink(ptr noundef %1) #16
  %call11 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef null, i32 noundef 3) #16
  call void @fat_detach(ptr noundef %1) #16
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i28.for.cond.i_crit_edge, %if.end10
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.end10 ], [ %call.i.i, %if.end.i28.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i28, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !37
  %extract51 = lshr i64 %cur.0.i, 1
  %extract.t52 = trunc i64 %extract51 to i32
  br label %inode_query_iversion.exit

if.end.i28:                                       ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #16
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_query_iversion.exit.loopexit, label %if.end.i28.for.cond.i_crit_edge, !prof !38

if.end.i28.for.cond.i_crit_edge:                  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #18
  %extract49 = lshr i64 %cur.0.i, 1
  %extract.t50 = trunc i64 %extract49 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i47.off1 = phi i32 [ %extract.t50, %inode_query_iversion.exit.loopexit ], [ %extract.t52, %do.end.i ]
  %13 = inttoptr i32 %cur.0.i47.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %d_fsdata.i, align 4
  br label %out

out:                                              ; preds = %inode_query_iversion.exit, %if.end6.out_crit_edge, %vfat_find.exit.out_crit_edge, %while.cond.i.i.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call1.i, %vfat_find.exit.out_crit_edge ], [ %call7, %if.end6.out_crit_edge ], [ 0, %inode_query_iversion.exit ], [ -2, %while.cond.i.i.i.out_crit_edge ]
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock14 = getelementptr inbounds %struct.msdos_sb_info, ptr %16, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock14) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #2 align 64 {
entry:
  %dotdot_bh = alloca ptr, align 4
  %dotdot_de = alloca ptr, align 4
  %old_sinfo = alloca %struct.fat_slot_info, align 8
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dotdot_bh) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dotdot_de) #16
  %0 = ptrtoint ptr %dotdot_de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dotdot_de, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_sinfo) #16
  %1 = call ptr @memset(ptr %old_sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #16
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #16
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dotdot_bh, align 4
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bh, align 8
  %bh1 = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo, i32 0, i32 4
  %8 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bh1, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i202 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i202 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i202, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #16
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_name, align 8
  %name.i.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %if.end
  %len.addr.0.i.i.i = phi i32 [ %16, %if.end ], [ %sub.i.i.i, %land.rhs.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %len.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.out_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.out_crit_edge:                   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %sub.i.i.i = add i32 %len.addr.0.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %18, i32 %sub.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i, align 1
  %cmp.i.i.i = icmp eq i8 %20, 46
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %vfat_find.exit

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i.i

vfat_find.exit:                                   ; preds = %land.rhs.i.i.i
  %call1.i = call i32 @fat_search_long(ptr noundef %old_dir, ptr noundef %18, i32 noundef %len.addr.0.i.i.i, ptr noundef nonnull %old_sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %if.end7, label %vfat_find.exit.out_crit_edge

vfat_find.exit.out_crit_edge:                     ; preds = %vfat_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %vfat_find.exit
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %10, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp = icmp eq i16 %23, 16384
  %conv9 = zext i1 %cmp to i32
  %cmp11 = icmp ne ptr %old_dir, %new_dir
  %spec.select = and i1 %cmp11, %cmp
  br i1 %spec.select, label %if.then14, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then14:                                        ; preds = %if.end7
  %call15 = call i32 @fat_get_dotdot_entry(ptr noundef %10, ptr noundef nonnull %dotdot_bh, ptr noundef nonnull %dotdot_de) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %old_dir) #16
  %24 = call ptr @memcpy(ptr %ts, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  br i1 %cmp, label %if.then23, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 @fat_dir_empty(ptr noundef nonnull %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.then21.if.end28_crit_edge
  %i_pos = getelementptr i8, ptr %12, i32 -120
  %25 = ptrtoint ptr %i_pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_pos, align 8
  call void @fat_detach(ptr noundef nonnull %12) #16
  br label %if.end36

if.else:                                          ; preds = %if.end19
  %d_name30 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call31 = call fastcc i32 @vfat_add_entry(ptr noundef %new_dir, ptr noundef %d_name30, i32 noundef %conv9, i32 noundef 0, ptr noundef nonnull %ts, ptr noundef nonnull %sinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sinfo, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end28
  %new_i_pos.0 = phi i64 [ %26, %if.end28 ], [ %28, %if.end34 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end36
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end36 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %29 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %29, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #16
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #16
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !38

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @fat_detach(ptr noundef %10) #16
  call void @fat_attach(ptr noundef %10, i64 noundef %new_i_pos.0) #16
  %i_sb37 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb37, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags, align 4
  %and38 = and i32 %33, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then42_crit_edge

inode_inc_iversion.exit.if.then42_crit_edge:      ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %34 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags, align 4
  %and40 = and i32 %35, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else47, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %inode_inc_iversion.exit.if.then42_crit_edge
  %call43 = call i32 @fat_sync_inode(ptr noundef %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end48_crit_edge, label %if.then42.error_inode_crit_edge

if.then42.error_inode_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_inode

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.else47:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mark_inode_dirty(ptr noundef %10, i32 noundef 7) #16
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then42.if.end48_crit_edge
  br i1 %spec.select, label %if.then50, label %if.end69.thread

if.then50:                                        ; preds = %if.end48
  %36 = ptrtoint ptr %dotdot_de to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dotdot_de, align 4
  %i_logstart = getelementptr i8, ptr %new_dir, i32 -132
  %38 = ptrtoint ptr %i_logstart to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_logstart, align 4
  %conv.i = trunc i32 %39 to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv.i) #16
  %start.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %37, i32 0, i32 10
  %41 = ptrtoint ptr %start.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %start.i, align 2
  %42 = lshr i32 %39, 16
  %conv1.i = trunc i32 %42 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv1.i) #16
  %starthi.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %37, i32 0, i32 7
  %44 = ptrtoint ptr %starthi.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %starthi.i, align 4
  %45 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dotdot_bh, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %46, ptr noundef %10) #16
  %47 = ptrtoint ptr %i_sb37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb37, align 4
  %s_flags53 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %s_flags53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_flags53, align 4
  %and54 = and i32 %50, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.then50.if.then60_crit_edge

if.then50.if.then60_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then60

lor.lhs.false56:                                  ; preds = %if.then50
  %i_flags57 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %51 = ptrtoint ptr %i_flags57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_flags57, align 4
  %and58 = and i32 %52, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %lor.lhs.false56.if.end65_crit_edge, label %lor.lhs.false56.if.then60_crit_edge

lor.lhs.false56.if.then60_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then60

lor.lhs.false56.if.end65_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then60:                                        ; preds = %lor.lhs.false56.if.then60_crit_edge, %if.then50.if.then60_crit_edge
  %53 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dotdot_bh, align 4
  %call61 = call i32 @sync_dirty_buffer(ptr noundef %54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.if.end65_crit_edge, label %if.then60.if.then100_crit_edge

if.then60.if.then100_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then100

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %lor.lhs.false56.if.end65_crit_edge
  call void @drop_nlink(ptr noundef %old_dir) #16
  br i1 %tobool20.not, label %if.then67, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  call void @inc_nlink(ptr noundef %new_dir) #16
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %call70 = call i32 @fat_remove_entries(ptr noundef %old_dir, ptr noundef nonnull %old_sinfo) #16
  %55 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %bh1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %if.end69.if.end74_crit_edge, label %if.end69.if.then100_crit_edge

if.end69.if.then100_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then100

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end69.thread:                                  ; preds = %if.end48
  %call70223 = call i32 @fat_remove_entries(ptr noundef %old_dir, ptr noundef nonnull %old_sinfo) #16
  %56 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bh1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70223)
  %tobool72.not224 = icmp eq i32 %call70223, 0
  br i1 %tobool72.not224, label %if.end69.thread.if.end74_crit_edge, label %if.end69.thread.error_inode_crit_edge

if.end69.thread.error_inode_crit_edge:            ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_inode

if.end69.thread.if.end74_crit_edge:               ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end74:                                         ; preds = %if.end69.thread.if.end74_crit_edge, %if.end69.if.end74_crit_edge
  call fastcc void @inode_inc_iversion(ptr noundef %old_dir)
  %call75 = call i32 @fat_truncate_time(ptr noundef %old_dir, ptr noundef nonnull %ts, i32 noundef 6) #16
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %s_flags77 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %s_flags77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_flags77, align 4
  %and78 = and i32 %60, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.end74.if.then84_crit_edge

if.end74.if.then84_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

lor.lhs.false80:                                  ; preds = %if.end74
  %i_flags81 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %61 = ptrtoint ptr %i_flags81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_flags81, align 4
  %and82 = and i32 %62, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else86, label %lor.lhs.false80.if.then84_crit_edge

lor.lhs.false80.if.then84_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false80.if.then84_crit_edge, %if.end74.if.then84_crit_edge
  %call85 = call i32 @fat_sync_inode(ptr noundef %old_dir) #16
  br label %if.end87

if.else86:                                        ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #16
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then84
  br i1 %tobool20.not, label %if.end87.out_crit_edge, label %if.then89

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then89:                                        ; preds = %if.end87
  call void @drop_nlink(ptr noundef nonnull %12) #16
  br i1 %cmp, label %if.then91, label %if.then89.if.end92_crit_edge

if.then89.if.end92_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #18
  call void @drop_nlink(ptr noundef nonnull %12) #16
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then89.if.end92_crit_edge
  %call93 = call i32 @fat_truncate_time(ptr noundef nonnull %12, ptr noundef nonnull %ts, i32 noundef 4) #16
  br label %out

out:                                              ; preds = %if.then123, %if.end120.out_crit_edge, %if.then107.out_crit_edge, %if.end92, %if.end87.out_crit_edge, %if.else.out_crit_edge, %if.then23.out_crit_edge, %if.then14.out_crit_edge, %vfat_find.exit.out_crit_edge, %while.cond.i.i.i.out_crit_edge
  %err.0.ph = phi i32 [ %err.2, %if.then107.out_crit_edge ], [ -5, %if.then14.out_crit_edge ], [ %call31, %if.else.out_crit_edge ], [ 0, %if.end87.out_crit_edge ], [ 0, %if.end92 ], [ %err.2, %if.end120.out_crit_edge ], [ %err.2, %if.then123 ], [ %call24, %if.then23.out_crit_edge ], [ %call1.i, %vfat_find.exit.out_crit_edge ], [ -2, %while.cond.i.i.i.out_crit_edge ]
  %63 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %.pr) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.else113.brelse.exit_crit_edge, %if.then.i, %out.brelse.exit_crit_edge
  %err.0231 = phi i32 [ %err.0.ph, %out.brelse.exit_crit_edge ], [ %err.0.ph, %if.then.i ], [ %err.2, %if.else113.brelse.exit_crit_edge ]
  %64 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dotdot_bh, align 4
  %tobool.not.i205 = icmp eq ptr %65, null
  br i1 %tobool.not.i205, label %brelse.exit.brelse.exit208_crit_edge, label %if.then.i206

brelse.exit.brelse.exit208_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit208

if.then.i206:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %65) #16
  br label %brelse.exit208

brelse.exit208:                                   ; preds = %if.then.i206, %brelse.exit.brelse.exit208_crit_edge
  %66 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bh1, align 8
  %tobool.not.i209 = icmp eq ptr %67, null
  br i1 %tobool.not.i209, label %brelse.exit208.brelse.exit212_crit_edge, label %if.then.i210

brelse.exit208.brelse.exit212_crit_edge:          ; preds = %brelse.exit208
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit212

if.then.i210:                                     ; preds = %brelse.exit208
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %67) #16
  br label %brelse.exit212

brelse.exit212:                                   ; preds = %if.then.i210, %brelse.exit208.brelse.exit212_crit_edge
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock98 = getelementptr inbounds %struct.msdos_sb_info, ptr %69, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock98) #16
  br label %cleanup

if.then100:                                       ; preds = %if.end69.if.then100_crit_edge, %if.then60.if.then100_crit_edge
  %err.1222 = phi i32 [ %call61, %if.then60.if.then100_crit_edge ], [ %call70, %if.end69.if.then100_crit_edge ]
  %70 = ptrtoint ptr %dotdot_de to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dotdot_de, align 4
  %i_logstart102 = getelementptr i8, ptr %old_dir, i32 -132
  %72 = ptrtoint ptr %i_logstart102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_logstart102, align 4
  %conv.i215 = trunc i32 %73 to i16
  %74 = call i16 @llvm.bswap.i16(i16 %conv.i215) #16
  %start.i216 = getelementptr inbounds %struct.msdos_dir_entry, ptr %71, i32 0, i32 10
  %75 = ptrtoint ptr %start.i216 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %start.i216, align 2
  %76 = lshr i32 %73, 16
  %conv1.i217 = trunc i32 %76 to i16
  %77 = call i16 @llvm.bswap.i16(i16 %conv1.i217) #16
  %starthi.i218 = getelementptr inbounds %struct.msdos_dir_entry, ptr %71, i32 0, i32 7
  %78 = ptrtoint ptr %starthi.i218 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %starthi.i218, align 4
  %79 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dotdot_bh, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %80, ptr noundef %10) #16
  %81 = ptrtoint ptr %dotdot_bh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dotdot_bh, align 4
  %call103 = call i32 @sync_dirty_buffer(ptr noundef %82) #16
  %or = or i32 %call103, 1
  br label %error_inode

error_inode:                                      ; preds = %if.then100, %if.end69.thread.error_inode_crit_edge, %if.then42.error_inode_crit_edge
  %err.2 = phi i32 [ %call43, %if.then42.error_inode_crit_edge ], [ %err.1222, %if.then100 ], [ %call70223, %if.end69.thread.error_inode_crit_edge ]
  %corrupt.0 = phi i32 [ 0, %if.then42.error_inode_crit_edge ], [ %or, %if.then100 ], [ 1, %if.end69.thread.error_inode_crit_edge ]
  call void @fat_detach(ptr noundef %10) #16
  %83 = ptrtoint ptr %old_sinfo to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %old_sinfo, align 8
  call void @fat_attach(ptr noundef %10, i64 noundef %84) #16
  br i1 %tobool20.not, label %if.else113, label %if.then107

if.then107:                                       ; preds = %error_inode
  call void @fat_attach(ptr noundef nonnull %12, i64 noundef %new_i_pos.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.0)
  %tobool108.not = icmp eq i32 %corrupt.0, 0
  br i1 %tobool108.not, label %if.then107.out_crit_edge, label %if.then109

if.then107.out_crit_edge:                         ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then109:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  %call110 = call i32 @fat_sync_inode(ptr noundef nonnull %12) #16
  br label %if.end120

if.else113:                                       ; preds = %error_inode
  %call114 = call i32 @fat_remove_entries(ptr noundef %new_dir, ptr noundef nonnull %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.0)
  %tobool115.not = icmp eq i32 %corrupt.0, 0
  %85 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %bh, align 8
  br i1 %tobool115.not, label %if.else113.brelse.exit_crit_edge, label %if.else113.if.end120_crit_edge

if.else113.if.end120_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.else113.brelse.exit_crit_edge:                 ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end120:                                        ; preds = %if.else113.if.end120_crit_edge, %if.then109
  %call110.pn = phi i32 [ %call110, %if.then109 ], [ %call114, %if.else113.if.end120_crit_edge ]
  %corrupt.2 = or i32 %call110.pn, %corrupt.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.2)
  %cmp121 = icmp slt i32 %corrupt.2, 0
  br i1 %cmp121, label %if.then123, label %if.end120.out_crit_edge

if.end120.out_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %i_sb37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb37, align 4
  %88 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sinfo, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %87, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vfat_rename, i64 noundef %89) #19
  br label %out

cleanup:                                          ; preds = %brelse.exit212, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0231, %brelse.exit212 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_sinfo) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dotdot_de) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dotdot_bh) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_search_long(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfat_add_entry(ptr noundef %dir, ptr nocapture noundef readonly %qname, i32 noundef %is_dir, i32 noundef %cluster, ptr noundef %ts, ptr noundef %sinfo) unnamed_addr #2 align 64 {
entry:
  %sinfo.i463.i.i = alloca %struct.fat_slot_info, align 8
  %sinfo.i454.i.i = alloca %struct.fat_slot_info, align 8
  %sinfo.i445.i.i = alloca %struct.fat_slot_info, align 8
  %sinfo.i.i.i = alloca %struct.fat_slot_info, align 8
  %base.i.i = alloca [9 x i8], align 1
  %ext.i.i = alloca [4 x i8], align 4
  %buf.i.i = alloca [5 x i8], align 4
  %charbuf.i.i = alloca [6 x i8], align 1
  %base_info.i.i = alloca %struct.shortname_info, align 1
  %ext_info.i.i = alloca %struct.shortname_info, align 1
  %uc.i.i = alloca [2 x i8], align 1
  %msdos_name.i = alloca [11 x i8], align 1
  %time.i = alloca i16, align 2
  %date.i = alloca i16, align 2
  %time_cs.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qname, align 8
  %name.i = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %entry
  %len.addr.0.i.i = phi i32 [ %1, %entry ], [ %sub.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.cleanup19_crit_edge, label %land.rhs.i.i

while.cond.i.i.cleanup19_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup19

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %len.addr.0.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp eq i8 %5, 46
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %if.end

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

if.end:                                           ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3136, i32 noundef 672) #20
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup19_crit_edge, label %if.end4

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup19

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name.i) #16
  %13 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 1
  %14 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 2
  %15 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 3
  %16 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 4
  %17 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 5
  %18 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 6
  %19 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 7
  %20 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 8
  %21 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 9
  %22 = getelementptr inbounds [11 x i8], ptr %msdos_name.i, i32 0, i32 10
  %23 = call ptr @memset(ptr %msdos_name.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %time.i) #16
  %24 = ptrtoint ptr %time.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %time.i, align 2, !annotation !40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %date.i) #16
  %25 = ptrtoint ptr %date.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %date.i, align 2, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %time_cs.i) #16
  %26 = ptrtoint ptr %time_cs.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %time_cs.i, align 1, !annotation !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %27 = load ptr, ptr @names_cachep, align 4
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %vfat_build_slots.exit.thread, label %if.end.i

vfat_build_slots.exit.thread:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %time_cs.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time.i) #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %unicode_xlate.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 12
  %28 = ptrtoint ptr %unicode_xlate.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %unicode_xlate.i, align 4
  %nls_io.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 21
  %29 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nls_io.i, align 4
  %31 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i37 = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i37, label %for.cond.preheader.i.i, label %if.then.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %cmp6117.i.i = icmp sgt i32 %len.addr.0.i.i, 0
  br i1 %cmp6117.i.i, label %land.rhs.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %32 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool8.not.i.i = icmp eq i16 %32, 0
  %33 = getelementptr inbounds [2 x i8], ptr %uc.i.i, i32 0, i32 1
  %sub.i.i38 = add nsw i32 %len.addr.0.i.i, -5
  %char2uni.i.i = getelementptr inbounds %struct.nls_table, ptr %30, i32 0, i32 3
  br label %land.rhs.i.i41

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call i32 @utf8s_to_utf16s(ptr noundef %8, i32 noundef %len.addr.0.i.i, i32 noundef 0, ptr noundef nonnull %call1.i, i32 noundef 257) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i39 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i39, label %if.then.i.i.vfat_build_slots.exit.thread47_crit_edge, label %if.else.i.i

if.then.i.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i.i)
  %cmp2.i.i = icmp ugt i32 %call.i.i, 255
  br i1 %cmp2.i.i, label %if.else.i.i.vfat_build_slots.exit.thread47_crit_edge, label %if.end4.i.i

if.else.i.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

if.end4.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %mul.i.i = shl nuw nsw i32 %call.i.i, 1
  %arrayidx.i.i40 = getelementptr i8, ptr %call1.i, i32 %mul.i.i
  br label %if.end44.i.i

land.rhs.i.i41:                                   ; preds = %for.inc.i.i.land.rhs.i.i41_crit_edge, %land.rhs.lr.ph.i.i
  %usize.0.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %add39.i.i, %for.inc.i.i.land.rhs.i.i41_crit_edge ]
  %i.0121.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %i.2.i.i, %for.inc.i.i.land.rhs.i.i41_crit_edge ]
  %op.0120.i.i = phi ptr [ %call1.i, %land.rhs.lr.ph.i.i ], [ %op.2.i.i, %for.inc.i.i.land.rhs.i.i41_crit_edge ]
  %ip.0119.i.i = phi ptr [ %8, %land.rhs.lr.ph.i.i ], [ %ip.2.i.i, %for.inc.i.i.land.rhs.i.i41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %usize.0.i)
  %exitcond.not.i = icmp eq i32 %usize.0.i, 255
  br i1 %exitcond.not.i, label %land.rhs.i.i41.vfat_build_slots.exit.thread47_crit_edge, label %for.body.i.i

land.rhs.i.i41.vfat_build_slots.exit.thread47_crit_edge: ; preds = %land.rhs.i.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

for.body.i.i:                                     ; preds = %land.rhs.i.i41
  br i1 %tobool8.not.i.i, label %for.body.i.i.if.else28.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.else28.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else28.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %34 = ptrtoint ptr %ip.0119.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ip.0119.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %35)
  %cmp9.i.i = icmp eq i8 %35, 58
  br i1 %cmp9.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.if.else28.i.i_crit_edge

land.lhs.true.i.i.if.else28.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else28.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %uc.i.i) #16
  %36 = ptrtoint ptr %uc.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %uc.i.i, align 1, !annotation !40
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %33, align 1, !annotation !40
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0121.i.i, i32 %sub.i.i38)
  %cmp12.i.i = icmp sgt i32 %i.0121.i.i, %sub.i.i38
  br i1 %cmp12.i.i, label %if.then11.i.i.cleanup.thread.i.i_crit_edge, label %if.end15.i.i

if.then11.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ip.0119.i.i, i32 1
  %call16.i.i = call i32 @hex2bin(ptr noundef nonnull %uc.i.i, ptr noundef %add.ptr.i.i, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.end15.i.i.cleanup.thread.i.i_crit_edge, label %cleanup.i.i

if.end15.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end15.i.i.cleanup.thread.i.i_crit_edge, %if.then11.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %uc.i.i) #16
  br label %vfat_build_slots.exit.thread47

cleanup.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %uc.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %uc.i.i, align 1
  %conv22.i.i = zext i8 %39 to i16
  %shl.i.i = shl nuw i16 %conv22.i.i, 8
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %33, align 1
  %conv24.i.i = zext i8 %41 to i16
  %or.i.i = or i16 %shl.i.i, %conv24.i.i
  %42 = ptrtoint ptr %op.0120.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or.i.i, ptr %op.0120.i.i, align 2
  %add.ptr27.i.i = getelementptr i8, ptr %ip.0119.i.i, i32 5
  %add.i.i = add i32 %i.0121.i.i, 5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %uc.i.i) #16
  br label %for.inc.i.i

if.else28.i.i:                                    ; preds = %land.lhs.true.i.i.if.else28.i.i_crit_edge, %for.body.i.i.if.else28.i.i_crit_edge
  %43 = ptrtoint ptr %char2uni.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %char2uni.i.i, align 4
  %sub29.i.i = sub i32 %len.addr.0.i.i, %i.0121.i.i
  %call30.i.i = call i32 %44(ptr noundef %ip.0119.i.i, i32 noundef %sub29.i.i, ptr noundef %op.0120.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp31.i.i = icmp slt i32 %call30.i.i, 0
  br i1 %cmp31.i.i, label %if.else28.i.i.vfat_build_slots.exit.thread47_crit_edge, label %if.end34.i.i

if.else28.i.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

if.end34.i.i:                                     ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr35.i.i = getelementptr i8, ptr %ip.0119.i.i, i32 %call30.i.i
  %add36.i.i = add i32 %call30.i.i, %i.0121.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end34.i.i, %cleanup.i.i
  %ip.2.i.i = phi ptr [ %add.ptr27.i.i, %cleanup.i.i ], [ %add.ptr35.i.i, %if.end34.i.i ]
  %i.2.i.i = phi i32 [ %add.i.i, %cleanup.i.i ], [ %add36.i.i, %if.end34.i.i ]
  %op.2.i.i = getelementptr i8, ptr %op.0120.i.i, i32 2
  %add39.i.i = add nuw nsw i32 %usize.0.i, 1
  %cmp6.i.i = icmp slt i32 %i.2.i.i, %len.addr.0.i.i
  br i1 %cmp6.i.i, label %for.inc.i.i.land.rhs.i.i41_crit_edge, label %for.inc.i.i.if.end44.i.i_crit_edge

for.inc.i.i.if.end44.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i.i

for.inc.i.i.land.rhs.i.i41_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i41

if.end44.i.i:                                     ; preds = %for.inc.i.i.if.end44.i.i_crit_edge, %if.end4.i.i
  %usize.1.i = phi i32 [ %call.i.i, %if.end4.i.i ], [ %add39.i.i, %for.inc.i.i.if.end44.i.i_crit_edge ]
  %op.3.i.i = phi ptr [ %arrayidx.i.i40, %if.end4.i.i ], [ %op.2.i.i, %for.inc.i.i.if.end44.i.i_crit_edge ]
  %rem.i.i = srem i32 %usize.1.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool45.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end44.i.i.if.end9.i_crit_edge, label %if.then46.i.i

if.end44.i.i.if.end9.i_crit_edge:                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then46.i.i:                                    ; preds = %if.end44.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %op.3.i.i, i32 1
  %45 = ptrtoint ptr %op.3.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %op.3.i.i, align 1
  %46 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %incdec.ptr.i.i, align 1
  %add48.i.i = add i32 %usize.1.i, 1
  %rem49.i.i = srem i32 %add48.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem49.i.i)
  %tobool50.not.i.i = icmp eq i32 %rem49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.then46.i.i.if.end9.i_crit_edge, label %for.end61.i.i

if.then46.i.i.if.end9.i_crit_edge:                ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

for.end61.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub53.i.i = sub nsw i32 13, %rem49.i.i
  %uglygep.i.i = getelementptr i8, ptr %op.3.i.i, i32 2
  %47 = shl nuw nsw i32 %sub53.i.i, 1
  %48 = call ptr @memset(ptr %uglygep.i.i, i32 255, i32 %47)
  %add62.i.i = add i32 %sub53.i.i, %add48.i.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end61.i.i, %if.then46.i.i.if.end9.i_crit_edge, %if.end44.i.i.if.end9.i_crit_edge
  %usize.2.i = phi i32 [ %usize.1.i, %if.end44.i.i.if.end9.i_crit_edge ], [ %add48.i.i, %if.then46.i.i.if.end9.i_crit_edge ], [ %add62.i.i, %for.end61.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usize.1.i)
  %cmp13.i.i = icmp sgt i32 %usize.1.i, 0
  br i1 %cmp13.i.i, label %if.end9.i.for.body.i106.i_crit_edge, label %if.end9.i.for.end.i.i_crit_edge

if.end9.i.for.end.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

if.end9.i.for.body.i106.i_crit_edge:              ; preds = %if.end9.i
  br label %for.body.i106.i

for.body.i106.i:                                  ; preds = %for.inc.i107.i.for.body.i106.i_crit_edge, %if.end9.i.for.body.i106.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i107.i.for.body.i106.i_crit_edge ], [ 0, %if.end9.i.for.body.i106.i_crit_edge ]
  %arrayidx.i105.i = getelementptr i16, ptr %call1.i, i32 %i.014.i.i
  %49 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i105.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %50)
  %cmp.i.i.i = icmp ult i16 %50, 32
  br i1 %cmp.i.i.i, label %for.body.i106.i.vfat_build_slots.exit.thread47_crit_edge, label %switch.early.test.i.i.i

for.body.i106.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %for.body.i106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i:                          ; preds = %for.body.i106.i
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %50, label %for.inc.i107.i [
    i16 124, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge
    i16 63, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge169
    i16 62, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge170
    i16 60, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge171
    i16 58, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge172
    i16 47, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge173
    i16 42, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge174
    i16 34, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge175
    i16 92, label %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge176
  ]

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge176: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge175: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge174: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge173: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge172: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge171: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge170: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge169: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

for.inc.i107.i:                                   ; preds = %switch.early.test.i.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %usize.1.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.inc.i107.i.for.body.i106.i_crit_edge

for.inc.i107.i.for.body.i106.i_crit_edge:         ; preds = %for.inc.i107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i106.i

for.end.loopexit.i.i:                             ; preds = %for.inc.i107.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo.i.i = add i32 %usize.1.i, -1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %if.end9.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %usize.2181.i = phi i32 [ %usize.2.i, %if.end9.i.for.end.i.i_crit_edge ], [ %usize.2.i, %for.end.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ]
  %ulen.0174.i = phi i32 [ %usize.1.i, %if.end9.i.for.end.i.i_crit_edge ], [ %usize.1.i, %for.end.loopexit.i.i ], [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ]
  %i.0.lcssa.i.i = phi i32 [ -1, %if.end9.i.for.end.i.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ], [ -1, %for.cond.preheader.i.i.for.end.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr i16, ptr %call1.i, i32 %i.0.lcssa.i.i
  %52 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %53)
  %cmp2.i108.i = icmp eq i16 %53, 32
  br i1 %cmp2.i108.i, label %for.end.i.i.vfat_build_slots.exit.thread47_crit_edge, label %if.end13.i

for.end.i.i.vfat_build_slots.exit.thread47_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_build_slots.exit.thread47

if.end13.i:                                       ; preds = %for.end.i.i
  %nls_disk.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 20
  %54 = ptrtoint ptr %nls_disk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nls_disk.i, align 4
  %56 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %base.i.i) #16
  %60 = call ptr @memset(ptr %base.i.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext.i.i) #16
  %61 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %ext.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i) #16
  %62 = call ptr @memset(ptr %buf.i.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %charbuf.i.i) #16
  %63 = call ptr @memset(ptr %charbuf.i.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %base_info.i.i) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_info.i.i) #16
  %64 = ptrtoint ptr %base_info.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %base_info.i.i, align 1
  %65 = ptrtoint ptr %ext_info.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %ext_info.i.i, align 1
  %arrayidx.i110.i = getelementptr i16, ptr %call1.i, i32 %ulen.0174.i
  br label %while.cond.i.i42

while.cond.i.i42:                                 ; preds = %while.body.i.i.while.cond.i.i42_crit_edge, %if.end13.i
  %ext_start.0.i.i = phi ptr [ %arrayidx.i110.i, %if.end13.i ], [ %incdec.ptr.i111.i, %while.body.i.i.while.cond.i.i42_crit_edge ]
  %incdec.ptr.i111.i = getelementptr i16, ptr %ext_start.0.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %incdec.ptr.i111.i, %call1.i
  br i1 %cmp.not.i.i, label %while.cond.i.i42.while.end.i.i_crit_edge, label %while.body.i.i

while.cond.i.i42.while.end.i.i_crit_edge:         ; preds = %while.cond.i.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i42
  %66 = ptrtoint ptr %incdec.ptr.i111.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %incdec.ptr.i111.i, align 2
  %cmp19.i.i = icmp eq i16 %67, 46
  br i1 %cmp19.i.i, label %if.then.i112.i, label %while.body.i.i.while.cond.i.i42_crit_edge

while.body.i.i.while.cond.i.i42_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i42

if.then.i112.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmp21.i.i = icmp eq ptr %ext_start.0.i.i, %arrayidx.i110.i
  %spec.select.i.i = select i1 %cmp21.i.i, ptr null, ptr %incdec.ptr.i111.i
  %spec.select436.i.i = select i1 %cmp21.i.i, i32 %ulen.0174.i, i32 0
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.then.i112.i, %while.cond.i.i42.while.end.i.i_crit_edge
  %ext_start.1.i.i = phi ptr [ %spec.select.i.i, %if.then.i112.i ], [ %incdec.ptr.i111.i, %while.cond.i.i42.while.end.i.i_crit_edge ]
  %sz.0.i.i = phi i32 [ %spec.select436.i.i, %if.then.i112.i ], [ 0, %while.cond.i.i42.while.end.i.i_crit_edge ]
  %add.ptr25.i.i = getelementptr i16, ptr %call1.i, i32 -1
  %cmp26.i.i = icmp eq ptr %ext_start.1.i.i, %add.ptr25.i.i
  br i1 %cmp26.i.i, label %while.end.i.i.if.end48.i.i_crit_edge, label %if.else.i114.i

while.end.i.i.if.end48.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i

if.else.i114.i:                                   ; preds = %while.end.i.i
  %tobool.not.i113.i = icmp eq ptr %ext_start.1.i.i, null
  br i1 %tobool.not.i113.i, label %if.else.i114.i.if.end48.i.i_crit_edge, label %while.cond31.preheader.i.i

if.else.i114.i.if.end48.i.i_crit_edge:            ; preds = %if.else.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i

while.cond31.preheader.i.i:                       ; preds = %if.else.i114.i
  %cmp32520.i.i = icmp ugt ptr %ext_start.1.i.i, %call1.i
  br i1 %cmp32520.i.i, label %while.cond31.preheader.i.i.while.body34.i.i_crit_edge, label %while.cond31.preheader.i.i.while.end40.i.i_crit_edge

while.cond31.preheader.i.i.while.end40.i.i_crit_edge: ; preds = %while.cond31.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end40.i.i

while.cond31.preheader.i.i.while.body34.i.i_crit_edge: ; preds = %while.cond31.preheader.i.i
  br label %while.body34.i.i

while.body34.i.i:                                 ; preds = %if.end38.i.i.while.body34.i.i_crit_edge, %while.cond31.preheader.i.i.while.body34.i.i_crit_edge
  %name_start.0521.i.i = phi ptr [ %incdec.ptr39.i.i, %if.end38.i.i.while.body34.i.i_crit_edge ], [ %call1.i, %while.cond31.preheader.i.i.while.body34.i.i_crit_edge ]
  %68 = ptrtoint ptr %name_start.0521.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %name_start.0521.i.i, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %69, label %while.body34.i.i.while.end40.i.i_crit_edge [
    i16 46, label %while.body34.i.i.if.end38.i.i_crit_edge
    i16 32, label %while.body34.i.i.if.end38.i.i_crit_edge177
  ]

while.body34.i.i.if.end38.i.i_crit_edge177:       ; preds = %while.body34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i.i

while.body34.i.i.if.end38.i.i_crit_edge:          ; preds = %while.body34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i.i

while.body34.i.i.while.end40.i.i_crit_edge:       ; preds = %while.body34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end40.i.i

if.end38.i.i:                                     ; preds = %while.body34.i.i.if.end38.i.i_crit_edge, %while.body34.i.i.if.end38.i.i_crit_edge177
  %incdec.ptr39.i.i = getelementptr i16, ptr %name_start.0521.i.i, i32 1
  %cmp32.i.i = icmp ult ptr %incdec.ptr39.i.i, %ext_start.1.i.i
  br i1 %cmp32.i.i, label %if.end38.i.i.while.body34.i.i_crit_edge, label %if.end38.i.i.while.end40.i.i_crit_edge

if.end38.i.i.while.end40.i.i_crit_edge:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end40.i.i

if.end38.i.i.while.body34.i.i_crit_edge:          ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body34.i.i

while.end40.i.i:                                  ; preds = %if.end38.i.i.while.end40.i.i_crit_edge, %while.body34.i.i.while.end40.i.i_crit_edge, %while.cond31.preheader.i.i.while.end40.i.i_crit_edge
  %name_start.0.lcssa.i.i = phi ptr [ %call1.i, %while.cond31.preheader.i.i.while.end40.i.i_crit_edge ], [ %name_start.0521.i.i, %while.body34.i.i.while.end40.i.i_crit_edge ], [ %incdec.ptr39.i.i, %if.end38.i.i.while.end40.i.i_crit_edge ]
  %cmp41.not.i.i = icmp eq ptr %name_start.0.lcssa.i.i, %ext_start.1.i.i
  br i1 %cmp41.not.i.i, label %while.end40.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

while.end40.i.i.if.end48.i.i_crit_edge:           ; preds = %while.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %while.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %ext_start.1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 1
  %incdec.ptr44.i.i = getelementptr i16, ptr %ext_start.1.i.i, i32 1
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %while.end40.i.i.if.end48.i.i_crit_edge, %if.else.i114.i.if.end48.i.i_crit_edge, %while.end.i.i.if.end48.i.i_crit_edge
  %ext_start.2.i.i = phi ptr [ %incdec.ptr44.i.i, %if.then43.i.i ], [ null, %if.else.i114.i.if.end48.i.i_crit_edge ], [ null, %while.end.i.i.if.end48.i.i_crit_edge ], [ null, %while.end40.i.i.if.end48.i.i_crit_edge ]
  %sz.1.i.i = phi i32 [ %sub.ptr.div.i.i, %if.then43.i.i ], [ %sz.0.i.i, %if.else.i114.i.if.end48.i.i_crit_edge ], [ %ulen.0174.i, %while.end.i.i.if.end48.i.i_crit_edge ], [ %ulen.0174.i, %while.end40.i.i.if.end48.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.1.i.i)
  %cmp49530.i.i = icmp sgt i32 %sz.1.i.i, 0
  br i1 %cmp49530.i.i, label %if.end48.i.i.for.body.i115.i_crit_edge, label %if.end48.i.i.vfat_create_shortname.exit.i_crit_edge

if.end48.i.i.vfat_create_shortname.exit.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_create_shortname.exit.i

if.end48.i.i.for.body.i115.i_crit_edge:           ; preds = %if.end48.i.i
  br label %for.body.i115.i

for.body.i115.i:                                  ; preds = %for.inc97.i.i.for.body.i115.i_crit_edge, %if.end48.i.i.for.body.i115.i_crit_edge
  %numtail2_baselen.0538.i.i = phi i32 [ %numtail2_baselen.2.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ 2, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %numtail_baselen.0537.i.i = phi i32 [ %numtail_baselen.2.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ 6, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %i.0536.i.i = phi i32 [ %inc98.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ 0, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %baselen.0535.i.i = phi i32 [ %baselen.3.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ 0, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %p.0534.i.i = phi ptr [ %p.3.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ %base.i.i, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %ip.0531.i.i = phi ptr [ %incdec.ptr99.i.i, %for.inc97.i.i.for.body.i115.i_crit_edge ], [ %call1.i, %if.end48.i.i.for.body.i115.i_crit_edge ]
  %call52.i.i = call fastcc i32 @to_shortname_char(ptr noundef %55, ptr noundef nonnull %charbuf.i.i, ptr noundef %ip.0531.i.i, ptr noundef nonnull %base_info.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %cmp53.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %cmp53.i.i, label %for.body.i115.i.for.inc97.i.i_crit_edge, label %if.end56.i.i

for.body.i115.i.for.inc97.i.i_crit_edge:          ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97.i.i

if.end56.i.i:                                     ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %baselen.0535.i.i)
  %cmp57.i.i = icmp slt i32 %baselen.0535.i.i, 2
  %add.i116.i = add i32 %call52.i.i, %baselen.0535.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i116.i)
  %cmp59.i.i = icmp sgt i32 %add.i116.i, 2
  %or.cond.i.i = select i1 %cmp57.i.i, i1 %cmp59.i.i, i1 false
  %numtail2_baselen.1.i.i = select i1 %or.cond.i.i, i32 %baselen.0535.i.i, i32 %numtail2_baselen.0538.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %baselen.0535.i.i)
  %cmp63.i.i = icmp slt i32 %baselen.0535.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add.i116.i)
  %cmp67.i.i = icmp sgt i32 %add.i116.i, 6
  %or.cond437.i.i = select i1 %cmp63.i.i, i1 %cmp67.i.i, i1 false
  %numtail_baselen.1.i.i = select i1 %or.cond437.i.i, i32 %baselen.0535.i.i, i32 %numtail_baselen.0537.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %cmp72523.i.i = icmp sgt i32 %call52.i.i, 0
  br i1 %cmp72523.i.i, label %if.end56.i.i.for.body74.i.i_crit_edge, label %for.end.i120.i

if.end56.i.i.for.body74.i.i_crit_edge:            ; preds = %if.end56.i.i
  br label %for.body74.i.i

for.body74.i.i:                                   ; preds = %for.inc.i119.i.for.body74.i.i_crit_edge, %if.end56.i.i.for.body74.i.i_crit_edge
  %baselen.1526.i.i = phi i32 [ %inc.i117.i, %for.inc.i119.i.for.body74.i.i_crit_edge ], [ %baselen.0535.i.i, %if.end56.i.i.for.body74.i.i_crit_edge ]
  %chi.0525.i.i = phi i32 [ %inc81.i.i, %for.inc.i119.i.for.body74.i.i_crit_edge ], [ 0, %if.end56.i.i.for.body74.i.i_crit_edge ]
  %p.1524.i.i = phi ptr [ %incdec.ptr76.i.i, %for.inc.i119.i.for.body74.i.i_crit_edge ], [ %p.0534.i.i, %if.end56.i.i.for.body74.i.i_crit_edge ]
  %arrayidx75.i.i = getelementptr [6 x i8], ptr %charbuf.i.i, i32 0, i32 %chi.0525.i.i
  %71 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx75.i.i, align 1
  %73 = ptrtoint ptr %p.1524.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %p.1524.i.i, align 1
  %inc.i117.i = add i32 %baselen.1526.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i117.i)
  %cmp77.i.i = icmp sgt i32 %inc.i117.i, 7
  br i1 %cmp77.i.i, label %for.body74.i.i.for.end100.thread.i.i_crit_edge, label %for.inc.i119.i

for.body74.i.i.for.end100.thread.i.i_crit_edge:   ; preds = %for.body74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end100.thread.i.i

for.inc.i119.i:                                   ; preds = %for.body74.i.i
  %incdec.ptr76.i.i = getelementptr i8, ptr %p.1524.i.i, i32 1
  %inc81.i.i = add nuw nsw i32 %chi.0525.i.i, 1
  %exitcond.not.i118.i = icmp eq i32 %inc81.i.i, %call52.i.i
  br i1 %exitcond.not.i118.i, label %for.inc.i119.i.for.inc97.i.i_crit_edge, label %for.inc.i119.i.for.body74.i.i_crit_edge

for.inc.i119.i.for.body74.i.i_crit_edge:          ; preds = %for.inc.i119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body74.i.i

for.inc.i119.i.for.inc97.i.i_crit_edge:           ; preds = %for.inc.i119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97.i.i

for.end.i120.i:                                   ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %baselen.0535.i.i)
  %cmp82.i.i = icmp sgt i32 %baselen.0535.i.i, 7
  br i1 %cmp82.i.i, label %for.end.i120.i.for.end100.thread.i.i_crit_edge, label %for.end.i120.i.for.inc97.i.i_crit_edge

for.end.i120.i.for.inc97.i.i_crit_edge:           ; preds = %for.end.i120.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97.i.i

for.end.i120.i.for.end100.thread.i.i_crit_edge:   ; preds = %for.end.i120.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end100.thread.i.i

for.end100.thread.i.i:                            ; preds = %for.end.i120.i.for.end100.thread.i.i_crit_edge, %for.body74.i.i.for.end100.thread.i.i_crit_edge
  %chi.0501.i.i = phi i32 [ %chi.0525.i.i, %for.body74.i.i.for.end100.thread.i.i_crit_edge ], [ 0, %for.end.i120.i.for.end100.thread.i.i_crit_edge ]
  %baselen.2475.i.i = phi i32 [ %inc.i117.i, %for.body74.i.i.for.end100.thread.i.i_crit_edge ], [ %baselen.0535.i.i, %for.end.i120.i.for.end100.thread.i.i_crit_edge ]
  %sub.i121.i = add i32 %call52.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %chi.0501.i.i, i32 %sub.i121.i)
  %cmp85.i.i = icmp sge i32 %chi.0501.i.i, %sub.i121.i
  %add.ptr87.i.i = getelementptr i16, ptr %ip.0531.i.i, i32 1
  %sub.ptr.lhs.cast88.i.i = ptrtoint ptr %add.ptr87.i.i to i32
  %sub.ptr.rhs.cast89.i.i = ptrtoint ptr %call1.i to i32
  %sub.ptr.sub90.i.i = sub i32 %sub.ptr.lhs.cast88.i.i, %sub.ptr.rhs.cast89.i.i
  %sub.ptr.div91.i.i = ashr exact i32 %sub.ptr.sub90.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div91.i.i, i32 %sz.1.i.i)
  %cmp92.i.i = icmp sge i32 %sub.ptr.div91.i.i, %sz.1.i.i
  %or.cond438.i.i = select i1 %cmp85.i.i, i1 %cmp92.i.i, i1 false
  %spec.select444.i.i = zext i1 %or.cond438.i.i to i32
  br label %if.end104.i.i

for.inc97.i.i:                                    ; preds = %for.end.i120.i.for.inc97.i.i_crit_edge, %for.inc.i119.i.for.inc97.i.i_crit_edge, %for.body.i115.i.for.inc97.i.i_crit_edge
  %p.3.i.i = phi ptr [ %p.0534.i.i, %for.body.i115.i.for.inc97.i.i_crit_edge ], [ %p.0534.i.i, %for.end.i120.i.for.inc97.i.i_crit_edge ], [ %incdec.ptr76.i.i, %for.inc.i119.i.for.inc97.i.i_crit_edge ]
  %baselen.3.i.i = phi i32 [ %baselen.0535.i.i, %for.body.i115.i.for.inc97.i.i_crit_edge ], [ %baselen.0535.i.i, %for.end.i120.i.for.inc97.i.i_crit_edge ], [ %inc.i117.i, %for.inc.i119.i.for.inc97.i.i_crit_edge ]
  %numtail_baselen.2.i.i = phi i32 [ %numtail_baselen.0537.i.i, %for.body.i115.i.for.inc97.i.i_crit_edge ], [ %numtail_baselen.1.i.i, %for.end.i120.i.for.inc97.i.i_crit_edge ], [ %numtail_baselen.1.i.i, %for.inc.i119.i.for.inc97.i.i_crit_edge ]
  %numtail2_baselen.2.i.i = phi i32 [ %numtail2_baselen.0538.i.i, %for.body.i115.i.for.inc97.i.i_crit_edge ], [ %numtail2_baselen.1.i.i, %for.end.i120.i.for.inc97.i.i_crit_edge ], [ %numtail2_baselen.1.i.i, %for.inc.i119.i.for.inc97.i.i_crit_edge ]
  %inc98.i.i = add nuw nsw i32 %i.0536.i.i, 1
  %incdec.ptr99.i.i = getelementptr i16, ptr %ip.0531.i.i, i32 1
  %exitcond580.not.i.i = icmp eq i32 %inc98.i.i, %sz.1.i.i
  br i1 %exitcond580.not.i.i, label %for.end100.i.i, label %for.inc97.i.i.for.body.i115.i_crit_edge

for.inc97.i.i.for.body.i115.i_crit_edge:          ; preds = %for.inc97.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i115.i

for.end100.i.i:                                   ; preds = %for.inc97.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baselen.3.i.i)
  %cmp101.i.i = icmp eq i32 %baselen.3.i.i, 0
  br i1 %cmp101.i.i, label %for.end100.i.i.vfat_create_shortname.exit.i_crit_edge, label %for.end100.i.i.if.end104.i.i_crit_edge

for.end100.i.i.if.end104.i.i_crit_edge:           ; preds = %for.end100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104.i.i

for.end100.i.i.vfat_create_shortname.exit.i_crit_edge: ; preds = %for.end100.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_create_shortname.exit.i

if.end104.i.i:                                    ; preds = %for.end100.i.i.if.end104.i.i_crit_edge, %for.end100.thread.i.i
  %is_shortname.0484.i.i = phi i32 [ %spec.select444.i.i, %for.end100.thread.i.i ], [ 1, %for.end100.i.i.if.end104.i.i_crit_edge ]
  %numtail2_baselen.3483.i.i = phi i32 [ %numtail2_baselen.1.i.i, %for.end100.thread.i.i ], [ %numtail2_baselen.2.i.i, %for.end100.i.i.if.end104.i.i_crit_edge ]
  %numtail_baselen.3482.i.i = phi i32 [ %numtail_baselen.1.i.i, %for.end100.thread.i.i ], [ %numtail_baselen.2.i.i, %for.end100.i.i.if.end104.i.i_crit_edge ]
  %baselen.4481.i.i = phi i32 [ %baselen.2475.i.i, %for.end100.thread.i.i ], [ %baselen.3.i.i, %for.end100.i.i.if.end104.i.i_crit_edge ]
  %tobool105.not.i.i = icmp ne ptr %ext_start.2.i.i, null
  %cmp111548.i.i = icmp ult ptr %ext_start.2.i.i, %arrayidx.i110.i
  %or.cond563.i.i = and i1 %tobool105.not.i.i, %cmp111548.i.i
  br i1 %or.cond563.i.i, label %if.end104.i.i.for.body113.i.i_crit_edge, label %if.end104.i.i.if.end147.i.i_crit_edge

if.end104.i.i.if.end147.i.i_crit_edge:            ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147.i.i

if.end104.i.i.for.body113.i.i_crit_edge:          ; preds = %if.end104.i.i
  br label %for.body113.i.i

for.body113.i.i:                                  ; preds = %for.inc144.i.i.for.body113.i.i_crit_edge, %if.end104.i.i.for.body113.i.i_crit_edge
  %extlen.0552.i.i = phi i32 [ %extlen.2.i.i, %for.inc144.i.i.for.body113.i.i_crit_edge ], [ 0, %if.end104.i.i.for.body113.i.i_crit_edge ]
  %p.4551.i.i = phi ptr [ %p.6.i.i, %for.inc144.i.i.for.body113.i.i_crit_edge ], [ %ext.i.i, %if.end104.i.i.for.body113.i.i_crit_edge ]
  %ip.1549.i.i = phi ptr [ %incdec.ptr145.i.i, %for.inc144.i.i.for.body113.i.i_crit_edge ], [ %ext_start.2.i.i, %if.end104.i.i.for.body113.i.i_crit_edge ]
  %call115.i.i = call fastcc i32 @to_shortname_char(ptr noundef %55, ptr noundef nonnull %charbuf.i.i, ptr noundef %ip.1549.i.i, ptr noundef nonnull %ext_info.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i)
  %cmp116.i.i = icmp eq i32 %call115.i.i, 0
  br i1 %cmp116.i.i, label %for.body113.i.i.for.inc144.i.i_crit_edge, label %if.end119.i.i

for.body113.i.i.for.inc144.i.i_crit_edge:         ; preds = %for.body113.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc144.i.i

if.end119.i.i:                                    ; preds = %for.body113.i.i
  %add120.i.i = add i32 %call115.i.i, %extlen.0552.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add120.i.i)
  %cmp121.i.i = icmp sgt i32 %add120.i.i, 3
  br i1 %cmp121.i.i, label %if.end119.i.i.if.end147.i.i_crit_edge, label %for.cond125.preheader.i.i

if.end119.i.i.if.end147.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147.i.i

for.cond125.preheader.i.i:                        ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i)
  %cmp126542.i.i = icmp sgt i32 %call115.i.i, 0
  br i1 %cmp126542.i.i, label %for.cond125.preheader.i.i.for.body128.i.i_crit_edge, label %for.cond125.preheader.i.i.for.end134.i.i_crit_edge

for.cond125.preheader.i.i.for.end134.i.i_crit_edge: ; preds = %for.cond125.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end134.i.i

for.cond125.preheader.i.i.for.body128.i.i_crit_edge: ; preds = %for.cond125.preheader.i.i
  br label %for.body128.i.i

for.body128.i.i:                                  ; preds = %for.body128.i.i.for.body128.i.i_crit_edge, %for.cond125.preheader.i.i.for.body128.i.i_crit_edge
  %chi.1544.i.i = phi i32 [ %inc133.i.i, %for.body128.i.i.for.body128.i.i_crit_edge ], [ 0, %for.cond125.preheader.i.i.for.body128.i.i_crit_edge ]
  %p.5543.i.i = phi ptr [ %incdec.ptr130.i.i, %for.body128.i.i.for.body128.i.i_crit_edge ], [ %p.4551.i.i, %for.cond125.preheader.i.i.for.body128.i.i_crit_edge ]
  %arrayidx129.i.i = getelementptr [6 x i8], ptr %charbuf.i.i, i32 0, i32 %chi.1544.i.i
  %74 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx129.i.i, align 1
  %incdec.ptr130.i.i = getelementptr i8, ptr %p.5543.i.i, i32 1
  %76 = ptrtoint ptr %p.5543.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %p.5543.i.i, align 1
  %inc133.i.i = add nuw nsw i32 %chi.1544.i.i, 1
  %exitcond581.not.i.i = icmp eq i32 %inc133.i.i, %call115.i.i
  br i1 %exitcond581.not.i.i, label %for.body128.i.i.for.end134.i.i_crit_edge, label %for.body128.i.i.for.body128.i.i_crit_edge

for.body128.i.i.for.body128.i.i_crit_edge:        ; preds = %for.body128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body128.i.i

for.body128.i.i.for.end134.i.i_crit_edge:         ; preds = %for.body128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end134.i.i

for.end134.i.i:                                   ; preds = %for.body128.i.i.for.end134.i.i_crit_edge, %for.cond125.preheader.i.i.for.end134.i.i_crit_edge
  %p.5.lcssa.i.i = phi ptr [ %p.4551.i.i, %for.cond125.preheader.i.i.for.end134.i.i_crit_edge ], [ %incdec.ptr130.i.i, %for.body128.i.i.for.end134.i.i_crit_edge ]
  %extlen.1.lcssa.i.i = phi i32 [ %extlen.0552.i.i, %for.cond125.preheader.i.i.for.end134.i.i_crit_edge ], [ %add120.i.i, %for.body128.i.i.for.end134.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %extlen.1.lcssa.i.i)
  %cmp135.i.i = icmp sgt i32 %extlen.1.lcssa.i.i, 2
  br i1 %cmp135.i.i, label %if.then137.i.i, label %for.end134.i.i.for.inc144.i.i_crit_edge

for.end134.i.i.for.inc144.i.i_crit_edge:          ; preds = %for.end134.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc144.i.i

if.then137.i.i:                                   ; preds = %for.end134.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr138.i.i = getelementptr i16, ptr %ip.1549.i.i, i32 1
  %cmp139.not.i.i = icmp eq ptr %add.ptr138.i.i, %arrayidx.i110.i
  %spec.select = select i1 %cmp139.not.i.i, i32 %is_shortname.0484.i.i, i32 0
  br label %if.end147.i.i

for.inc144.i.i:                                   ; preds = %for.end134.i.i.for.inc144.i.i_crit_edge, %for.body113.i.i.for.inc144.i.i_crit_edge
  %p.6.i.i = phi ptr [ %p.4551.i.i, %for.body113.i.i.for.inc144.i.i_crit_edge ], [ %p.5.lcssa.i.i, %for.end134.i.i.for.inc144.i.i_crit_edge ]
  %extlen.2.i.i = phi i32 [ %extlen.0552.i.i, %for.body113.i.i.for.inc144.i.i_crit_edge ], [ %extlen.1.lcssa.i.i, %for.end134.i.i.for.inc144.i.i_crit_edge ]
  %incdec.ptr145.i.i = getelementptr i16, ptr %ip.1549.i.i, i32 1
  %cmp111.i.i = icmp ult ptr %incdec.ptr145.i.i, %arrayidx.i110.i
  br i1 %cmp111.i.i, label %for.inc144.i.i.for.body113.i.i_crit_edge, label %for.inc144.i.i.if.end147.i.i_crit_edge

for.inc144.i.i.if.end147.i.i_crit_edge:           ; preds = %for.inc144.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147.i.i

for.inc144.i.i.for.body113.i.i_crit_edge:         ; preds = %for.inc144.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body113.i.i

if.end147.i.i:                                    ; preds = %for.inc144.i.i.if.end147.i.i_crit_edge, %if.then137.i.i, %if.end119.i.i.if.end147.i.i_crit_edge, %if.end104.i.i.if.end147.i.i_crit_edge
  %extlen.3.i.i = phi i32 [ 0, %if.end104.i.i.if.end147.i.i_crit_edge ], [ %extlen.1.lcssa.i.i, %if.then137.i.i ], [ %extlen.2.i.i, %for.inc144.i.i.if.end147.i.i_crit_edge ], [ %extlen.0552.i.i, %if.end119.i.i.if.end147.i.i_crit_edge ]
  %is_shortname.1.i.i = phi i32 [ %is_shortname.0484.i.i, %if.end104.i.i.if.end147.i.i_crit_edge ], [ %spec.select, %if.then137.i.i ], [ %is_shortname.0484.i.i, %for.inc144.i.i.if.end147.i.i_crit_edge ], [ 0, %if.end119.i.i.if.end147.i.i_crit_edge ]
  %arrayidx148.i.i = getelementptr [4 x i8], ptr %ext.i.i, i32 0, i32 %extlen.3.i.i
  %77 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx148.i.i, align 1
  %arrayidx149.i.i = getelementptr [9 x i8], ptr %base.i.i, i32 0, i32 %baselen.4481.i.i
  %78 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx149.i.i, align 1
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %base.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %80)
  %cmp152.i.i = icmp eq i8 %80, -27
  %spec.store.select.i.i = select i1 %cmp152.i.i, i8 5, i8 %80
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.store.select.i.i, ptr %base.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %baselen.4481.i.i)
  %82 = icmp ugt i32 %baselen.4481.i.i, 10
  %83 = sub i32 11, %baselen.4481.i.i
  %84 = select i1 %82, i32 0, i32 %83
  %85 = getelementptr i8, ptr %msdos_name.i, i32 %baselen.4481.i.i
  %86 = call ptr @memset(ptr %85, i32 32, i32 %84)
  %87 = call ptr @memcpy(ptr %msdos_name.i, ptr %base.i.i, i32 %baselen.4481.i.i)
  %88 = call ptr @memcpy(ptr %20, ptr %ext.i.i, i32 %extlen.3.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_shortname.1.i.i)
  %tobool160.not.i.i = icmp eq i32 %is_shortname.1.i.i, 0
  br i1 %tobool160.not.i.i, label %if.end147.i.i.if.end258.i.i_crit_edge, label %land.lhs.true161.i.i

if.end147.i.i.if.end258.i.i_crit_edge:            ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258.i.i

land.lhs.true161.i.i:                             ; preds = %if.end147.i.i
  %89 = ptrtoint ptr %base_info.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load162.i.i = load i8, ptr %base_info.i.i, align 1
  %90 = and i8 %bf.load162.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool165.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool165.not.i.i, label %land.lhs.true161.i.i.if.end258.i.i_crit_edge, label %land.lhs.true166.i.i

land.lhs.true161.i.i.if.end258.i.i_crit_edge:     ; preds = %land.lhs.true161.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258.i.i

land.lhs.true166.i.i:                             ; preds = %land.lhs.true161.i.i
  %91 = ptrtoint ptr %ext_info.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load167.i.i = load i8, ptr %ext_info.i.i, align 1
  %92 = and i8 %bf.load167.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool171.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool171.not.i.i, label %land.lhs.true166.i.i.if.end258.i.i_crit_edge, label %if.then172.i.i

land.lhs.true166.i.i.if.end258.i.i_crit_edge:     ; preds = %land.lhs.true166.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258.i.i

if.then172.i.i:                                   ; preds = %land.lhs.true166.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i.i.i) #16
  %93 = call ptr @memset(ptr %sinfo.i.i.i, i32 255, i32 32)
  %call.i.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end177.i.i

if.end.i.i.i:                                     ; preds = %if.then172.i.i
  %bh.i.i.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bh.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.vfat_find_form.exit.thread.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.vfat_find_form.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit.thread.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %95) #16
  br label %vfat_find_form.exit.thread.i.i

vfat_find_form.exit.thread.i.i:                   ; preds = %if.then.i.i.i.i, %if.end.i.i.i.vfat_find_form.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i.i.i) #16
  br label %vfat_create_shortname.exit.i

if.end177.i.i:                                    ; preds = %if.then172.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i.i.i) #16
  %shortname.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 19, i32 7
  %96 = ptrtoint ptr %shortname.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %shortname.i.i, align 4
  %conv178.i.i = zext i16 %97 to i32
  %and.i.i = and i32 %conv178.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool179.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool179.not.i.i, label %if.else193.i.i, label %if.then180.i.i

if.then180.i.i:                                   ; preds = %if.end177.i.i
  %98 = and i8 %bf.load162.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool185.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool185.not.i.i, label %if.then180.i.i.if.else.thread.i_crit_edge, label %if.else.i

if.then180.i.i.if.else.thread.i_crit_edge:        ; preds = %if.then180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.thread.i

if.else193.i.i:                                   ; preds = %if.end177.i.i
  %and196.i.i = and i32 %conv178.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i.i)
  %tobool197.not.i.i = icmp eq i32 %and196.i.i, 0
  br i1 %tobool197.not.i.i, label %do.body250.i.i, label %if.then198.i.i

if.then198.i.i:                                   ; preds = %if.else193.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load162.i.i)
  %99 = icmp ult i8 %bf.load162.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load167.i.i)
  %100 = icmp ult i8 %bf.load167.i.i, 64
  %or.cond495.i.i = select i1 %99, i1 true, i1 %100
  br i1 %or.cond495.i.i, label %if.then198.i.i.if.else.thread.i_crit_edge, label %if.then220.i.i

if.then198.i.i.if.else.thread.i_crit_edge:        ; preds = %if.then198.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.thread.i

if.then220.i.i:                                   ; preds = %if.then198.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %101 = and i8 %bf.load162.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %101)
  %.not.i.i = icmp eq i8 %101, -128
  %spec.select203.i = select i1 %.not.i.i, i8 8, i8 0
  %102 = and i8 %bf.load167.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %102)
  %.not494.i.i = icmp eq i8 %102, -128
  %103 = or i8 %spec.select203.i, 16
  %lcase.1.ph.ph.i = select i1 %.not494.i.i, i8 %103, i8 %spec.select203.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %charbuf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext.i.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %base.i.i) #16
  br label %if.end7

do.body250.i.i:                                   ; preds = %if.else193.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/namei_vfat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 464, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

if.end258.i.i:                                    ; preds = %land.lhs.true166.i.i.if.end258.i.i_crit_edge, %land.lhs.true161.i.i.if.end258.i.i_crit_edge, %if.end147.i.i.if.end258.i.i_crit_edge
  %numtail.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 19, i32 12
  %104 = ptrtoint ptr %numtail.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load259.i.i = load i16, ptr %numtail.i.i, align 4
  %105 = and i16 %bf.load259.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp262.i.i = icmp eq i16 %105, 0
  br i1 %cmp262.i.i, label %if.then264.i.i, label %if.end258.i.i.if.end270.i.i_crit_edge

if.end258.i.i.if.end270.i.i_crit_edge:            ; preds = %if.end258.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end270.i.i

if.then264.i.i:                                   ; preds = %if.end258.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i445.i.i) #16
  %106 = call ptr @memset(ptr %sinfo.i445.i.i, i32 255, i32 32)
  %call.i446.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i445.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i446.i.i)
  %tobool.not.i447.i.i = icmp eq i32 %call.i446.i.i, 0
  br i1 %tobool.not.i447.i.i, label %if.end.i450.i.i, label %vfat_find_form.exit453.i.i

if.end.i450.i.i:                                  ; preds = %if.then264.i.i
  %bh.i448.i.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i445.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %bh.i448.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bh.i448.i.i, align 8
  %tobool.not.i.i449.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i449.i.i, label %if.end.i450.i.i.vfat_find_form.exit453.thread.i.i_crit_edge, label %if.then.i.i451.i.i

if.end.i450.i.i.vfat_find_form.exit453.thread.i.i_crit_edge: ; preds = %if.end.i450.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit453.thread.i.i

if.then.i.i451.i.i:                               ; preds = %if.end.i450.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %108) #16
  br label %vfat_find_form.exit453.thread.i.i

vfat_find_form.exit453.thread.i.i:                ; preds = %if.then.i.i451.i.i, %if.end.i450.i.i.vfat_find_form.exit453.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i445.i.i) #16
  br label %if.end270.i.i

vfat_find_form.exit453.i.i:                       ; preds = %if.then264.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i445.i.i) #16
  br label %if.else.thread.i

if.end270.i.i:                                    ; preds = %vfat_find_form.exit453.thread.i.i, %if.end258.i.i.if.end270.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %baselen.4481.i.i)
  %cmp271.i.i = icmp sgt i32 %baselen.4481.i.i, 6
  br i1 %cmp271.i.i, label %if.then273.i.i, label %if.end270.i.i.if.end275.i.i_crit_edge

if.end270.i.i.if.end275.i.i_crit_edge:            ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275.i.i

if.then273.i.i:                                   ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 32, ptr %19, align 1
  br label %if.end275.i.i

if.end275.i.i:                                    ; preds = %if.then273.i.i, %if.end270.i.i.if.end275.i.i_crit_edge
  %baselen.5.i.i = phi i32 [ %numtail_baselen.3482.i.i, %if.then273.i.i ], [ %baselen.4481.i.i, %if.end270.i.i.if.end275.i.i_crit_edge ]
  %arrayidx276.i.i = getelementptr i8, ptr %msdos_name.i, i32 %baselen.5.i.i
  %110 = ptrtoint ptr %arrayidx276.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 126, ptr %arrayidx276.i.i, align 1
  %add283.i.i = add i32 %baselen.5.i.i, 1
  %arrayidx284.i.i = getelementptr i8, ptr %msdos_name.i, i32 %add283.i.i
  %bh.i457.i.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i454.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 49, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %112 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.i.i)
  %tobool.not.i456.i.i = icmp eq i32 %call.i455.i.i, 0
  br i1 %tobool.not.i456.i.i, label %if.end.i459.i.i, label %if.end275.i.i.vfat_find_form.exit462.i.i_crit_edge

if.end275.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %if.end275.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.i.i:                                  ; preds = %if.end275.i.i
  %113 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i458.i.i, label %if.end.i459.i.i.for.inc290.i.i_crit_edge, label %if.then.i.i460.i.i

if.end.i459.i.i.for.inc290.i.i_crit_edge:         ; preds = %if.end.i459.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.i.i

if.then.i.i460.i.i:                               ; preds = %if.end.i459.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %114) #16
  br label %for.inc290.i.i

vfat_find_form.exit462.i.i:                       ; preds = %for.inc290.7.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.6.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.5.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.4.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.3.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.2.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.1.i.i.vfat_find_form.exit462.i.i_crit_edge, %for.inc290.i.i.vfat_find_form.exit462.i.i_crit_edge, %if.end275.i.i.vfat_find_form.exit462.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  br label %if.else.thread.i

for.inc290.i.i:                                   ; preds = %if.then.i.i460.i.i, %if.end.i459.i.i.for.inc290.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %115 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 50, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %116 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.1.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.1.i.i)
  %tobool.not.i456.1.i.i = icmp eq i32 %call.i455.1.i.i, 0
  br i1 %tobool.not.i456.1.i.i, label %if.end.i459.1.i.i, label %for.inc290.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.1.i.i:                                ; preds = %for.inc290.i.i
  %117 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.1.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i458.1.i.i, label %if.end.i459.1.i.i.for.inc290.1.i.i_crit_edge, label %if.then.i.i460.1.i.i

if.end.i459.1.i.i.for.inc290.1.i.i_crit_edge:     ; preds = %if.end.i459.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.1.i.i

if.then.i.i460.1.i.i:                             ; preds = %if.end.i459.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %118) #16
  br label %for.inc290.1.i.i

for.inc290.1.i.i:                                 ; preds = %if.then.i.i460.1.i.i, %if.end.i459.1.i.i.for.inc290.1.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %119 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 51, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %120 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.2.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.2.i.i)
  %tobool.not.i456.2.i.i = icmp eq i32 %call.i455.2.i.i, 0
  br i1 %tobool.not.i456.2.i.i, label %if.end.i459.2.i.i, label %for.inc290.1.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.1.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.2.i.i:                                ; preds = %for.inc290.1.i.i
  %121 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.2.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i458.2.i.i, label %if.end.i459.2.i.i.for.inc290.2.i.i_crit_edge, label %if.then.i.i460.2.i.i

if.end.i459.2.i.i.for.inc290.2.i.i_crit_edge:     ; preds = %if.end.i459.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.2.i.i

if.then.i.i460.2.i.i:                             ; preds = %if.end.i459.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %122) #16
  br label %for.inc290.2.i.i

for.inc290.2.i.i:                                 ; preds = %if.then.i.i460.2.i.i, %if.end.i459.2.i.i.for.inc290.2.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %123 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 52, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %124 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.3.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.3.i.i)
  %tobool.not.i456.3.i.i = icmp eq i32 %call.i455.3.i.i, 0
  br i1 %tobool.not.i456.3.i.i, label %if.end.i459.3.i.i, label %for.inc290.2.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.2.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.3.i.i:                                ; preds = %for.inc290.2.i.i
  %125 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.3.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i458.3.i.i, label %if.end.i459.3.i.i.for.inc290.3.i.i_crit_edge, label %if.then.i.i460.3.i.i

if.end.i459.3.i.i.for.inc290.3.i.i_crit_edge:     ; preds = %if.end.i459.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.3.i.i

if.then.i.i460.3.i.i:                             ; preds = %if.end.i459.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %126) #16
  br label %for.inc290.3.i.i

for.inc290.3.i.i:                                 ; preds = %if.then.i.i460.3.i.i, %if.end.i459.3.i.i.for.inc290.3.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %127 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 53, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %128 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.4.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.4.i.i)
  %tobool.not.i456.4.i.i = icmp eq i32 %call.i455.4.i.i, 0
  br i1 %tobool.not.i456.4.i.i, label %if.end.i459.4.i.i, label %for.inc290.3.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.3.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.4.i.i:                                ; preds = %for.inc290.3.i.i
  %129 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.4.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i458.4.i.i, label %if.end.i459.4.i.i.for.inc290.4.i.i_crit_edge, label %if.then.i.i460.4.i.i

if.end.i459.4.i.i.for.inc290.4.i.i_crit_edge:     ; preds = %if.end.i459.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.4.i.i

if.then.i.i460.4.i.i:                             ; preds = %if.end.i459.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %130) #16
  br label %for.inc290.4.i.i

for.inc290.4.i.i:                                 ; preds = %if.then.i.i460.4.i.i, %if.end.i459.4.i.i.for.inc290.4.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %131 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 54, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %132 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.5.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.5.i.i)
  %tobool.not.i456.5.i.i = icmp eq i32 %call.i455.5.i.i, 0
  br i1 %tobool.not.i456.5.i.i, label %if.end.i459.5.i.i, label %for.inc290.4.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.4.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.5.i.i:                                ; preds = %for.inc290.4.i.i
  %133 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.5.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i458.5.i.i, label %if.end.i459.5.i.i.for.inc290.5.i.i_crit_edge, label %if.then.i.i460.5.i.i

if.end.i459.5.i.i.for.inc290.5.i.i_crit_edge:     ; preds = %if.end.i459.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.5.i.i

if.then.i.i460.5.i.i:                             ; preds = %if.end.i459.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %134) #16
  br label %for.inc290.5.i.i

for.inc290.5.i.i:                                 ; preds = %if.then.i.i460.5.i.i, %if.end.i459.5.i.i.for.inc290.5.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %135 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 55, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %136 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.6.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.6.i.i)
  %tobool.not.i456.6.i.i = icmp eq i32 %call.i455.6.i.i, 0
  br i1 %tobool.not.i456.6.i.i, label %if.end.i459.6.i.i, label %for.inc290.5.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.5.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.6.i.i:                                ; preds = %for.inc290.5.i.i
  %137 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.6.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i458.6.i.i, label %if.end.i459.6.i.i.for.inc290.6.i.i_crit_edge, label %if.then.i.i460.6.i.i

if.end.i459.6.i.i.for.inc290.6.i.i_crit_edge:     ; preds = %if.end.i459.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.6.i.i

if.then.i.i460.6.i.i:                             ; preds = %if.end.i459.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %138) #16
  br label %for.inc290.6.i.i

for.inc290.6.i.i:                                 ; preds = %if.then.i.i460.6.i.i, %if.end.i459.6.i.i.for.inc290.6.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %139 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 56, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %140 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.7.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.7.i.i)
  %tobool.not.i456.7.i.i = icmp eq i32 %call.i455.7.i.i, 0
  br i1 %tobool.not.i456.7.i.i, label %if.end.i459.7.i.i, label %for.inc290.6.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.6.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.7.i.i:                                ; preds = %for.inc290.6.i.i
  %141 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.7.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i458.7.i.i, label %if.end.i459.7.i.i.for.inc290.7.i.i_crit_edge, label %if.then.i.i460.7.i.i

if.end.i459.7.i.i.for.inc290.7.i.i_crit_edge:     ; preds = %if.end.i459.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.7.i.i

if.then.i.i460.7.i.i:                             ; preds = %if.end.i459.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %142) #16
  br label %for.inc290.7.i.i

for.inc290.7.i.i:                                 ; preds = %if.then.i.i460.7.i.i, %if.end.i459.7.i.i.for.inc290.7.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %143 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 57, ptr %arrayidx284.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  %144 = call ptr @memset(ptr %sinfo.i454.i.i, i32 255, i32 32)
  %call.i455.8.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i454.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455.8.i.i)
  %tobool.not.i456.8.i.i = icmp eq i32 %call.i455.8.i.i, 0
  br i1 %tobool.not.i456.8.i.i, label %if.end.i459.8.i.i, label %for.inc290.7.i.i.vfat_find_form.exit462.i.i_crit_edge

for.inc290.7.i.i.vfat_find_form.exit462.i.i_crit_edge: ; preds = %for.inc290.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit462.i.i

if.end.i459.8.i.i:                                ; preds = %for.inc290.7.i.i
  %145 = ptrtoint ptr %bh.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bh.i457.i.i, align 8
  %tobool.not.i.i458.8.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i458.8.i.i, label %if.end.i459.8.i.i.for.inc290.8.i.i_crit_edge, label %if.then.i.i460.8.i.i

if.end.i459.8.i.i.for.inc290.8.i.i_crit_edge:     ; preds = %if.end.i459.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc290.8.i.i

if.then.i.i460.8.i.i:                             ; preds = %if.end.i459.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %146) #16
  br label %for.inc290.8.i.i

for.inc290.8.i.i:                                 ; preds = %if.then.i.i460.8.i.i, %if.end.i459.8.i.i.for.inc290.8.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i454.i.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %147 = load volatile i32, ptr @jiffies, align 128
  %148 = load volatile i32, ptr @jiffies, align 128
  %shr.i.i = lshr i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %baselen.5.i.i)
  %cmp294.i.i = icmp sgt i32 %baselen.5.i.i, 2
  br i1 %cmp294.i.i, label %if.then296.i.i, label %for.inc290.8.i.i.if.end298.i.i_crit_edge

for.inc290.8.i.i.if.end298.i.i_crit_edge:         ; preds = %for.inc290.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end298.i.i

if.then296.i.i:                                   ; preds = %for.inc290.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %149 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 32, ptr %19, align 1
  br label %if.end298.i.i

if.end298.i.i:                                    ; preds = %if.then296.i.i, %for.inc290.8.i.i.if.end298.i.i_crit_edge
  %baselen.6.i.i = phi i32 [ %numtail2_baselen.3483.i.i, %if.then296.i.i ], [ %baselen.5.i.i, %for.inc290.8.i.i.if.end298.i.i_crit_edge ]
  %add299.i.i = add i32 %baselen.6.i.i, 4
  %arrayidx300.i.i = getelementptr i8, ptr %msdos_name.i, i32 %add299.i.i
  %150 = ptrtoint ptr %arrayidx300.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 126, ptr %arrayidx300.i.i, align 1
  %151 = trunc i32 %shr.i.i to i8
  %152 = and i8 %151, 7
  %conv302.i.i = add nuw nsw i8 %152, 49
  %add303.i.i = add i32 %baselen.6.i.i, 5
  %arrayidx304.i.i = getelementptr i8, ptr %msdos_name.i, i32 %add303.i.i
  %153 = ptrtoint ptr %arrayidx304.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv302.i.i, ptr %arrayidx304.i.i, align 1
  %and308558.i.i = and i32 %147, 65535
  %call309559.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %and308558.i.i) #16
  %arrayidx310.i.i = getelementptr i8, ptr %msdos_name.i, i32 %baselen.6.i.i
  %154 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %buf.i.i, align 4
  %156 = ptrtoint ptr %arrayidx310.i.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %155, ptr %arrayidx310.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i463.i.i) #16
  %157 = call ptr @memset(ptr %sinfo.i463.i.i, i32 255, i32 32)
  %call.i464560.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i463.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464560.i.i)
  %tobool.not.i465561.i.i = icmp eq i32 %call.i464560.i.i, 0
  br i1 %tobool.not.i465561.i.i, label %if.end.i468.lr.ph.i.i, label %if.end298.i.i.vfat_find_form.exit471.i.i_crit_edge

if.end298.i.i.vfat_find_form.exit471.i.i_crit_edge: ; preds = %if.end298.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit471.i.i

if.end.i468.lr.ph.i.i:                            ; preds = %if.end298.i.i
  %bh.i466.i.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i463.i.i, i32 0, i32 4
  br label %if.end.i468.i.i

if.end.i468.i.i:                                  ; preds = %if.end316.i.i.if.end.i468.i.i_crit_edge, %if.end.i468.lr.ph.i.i
  %i.2562.i.i = phi i32 [ %147, %if.end.i468.lr.ph.i.i ], [ %sub317.i.i, %if.end316.i.i.if.end.i468.i.i_crit_edge ]
  %158 = ptrtoint ptr %bh.i466.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bh.i466.i.i, align 8
  %tobool.not.i.i467.i.i = icmp eq ptr %159, null
  br i1 %tobool.not.i.i467.i.i, label %if.end.i468.i.i.if.end316.i.i_crit_edge, label %if.then.i.i469.i.i

if.end.i468.i.i.if.end316.i.i_crit_edge:          ; preds = %if.end.i468.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end316.i.i

if.then.i.i469.i.i:                               ; preds = %if.end.i468.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %159) #16
  br label %if.end316.i.i

vfat_find_form.exit471.i.i:                       ; preds = %if.end316.i.i.vfat_find_form.exit471.i.i_crit_edge, %if.end298.i.i.vfat_find_form.exit471.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i463.i.i) #16
  br label %if.else.thread.i

if.end316.i.i:                                    ; preds = %if.then.i.i469.i.i, %if.end.i468.i.i.if.end316.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i463.i.i) #16
  %sub317.i.i = add i32 %i.2562.i.i, -11
  %and308.i.i = and i32 %sub317.i.i, 65535
  %call309.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %and308.i.i) #16
  %160 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %buf.i.i, align 4
  %162 = ptrtoint ptr %arrayidx310.i.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %arrayidx310.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i463.i.i) #16
  %163 = call ptr @memset(ptr %sinfo.i463.i.i, i32 255, i32 32)
  %call.i464.i.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo.i463.i.i) #16
  %tobool.not.i465.i.i = icmp eq i32 %call.i464.i.i, 0
  br i1 %tobool.not.i465.i.i, label %if.end316.i.i.if.end.i468.i.i_crit_edge, label %if.end316.i.i.vfat_find_form.exit471.i.i_crit_edge

if.end316.i.i.vfat_find_form.exit471.i.i_crit_edge: ; preds = %if.end316.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_find_form.exit471.i.i

if.end316.i.i.if.end.i468.i.i_crit_edge:          ; preds = %if.end316.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i468.i.i

vfat_create_shortname.exit.i:                     ; preds = %vfat_find_form.exit.thread.i.i, %for.end100.i.i.vfat_create_shortname.exit.i_crit_edge, %if.end48.i.i.vfat_create_shortname.exit.i_crit_edge
  %retval.0.i122.i = phi i32 [ -22, %for.end100.i.i.vfat_create_shortname.exit.i_crit_edge ], [ -17, %vfat_find_form.exit.thread.i.i ], [ -22, %if.end48.i.i.vfat_create_shortname.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %charbuf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext.i.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %base.i.i) #16
  br label %vfat_build_slots.exit.thread47

if.else.thread.i:                                 ; preds = %vfat_find_form.exit471.i.i, %vfat_find_form.exit462.i.i, %vfat_find_form.exit453.i.i, %if.then198.i.i.if.else.thread.i_crit_edge, %if.then180.i.i.if.else.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %charbuf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext.i.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %base.i.i) #16
  br label %if.end19.i

if.else.i:                                        ; preds = %if.then180.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %charbuf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext.i.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %base.i.i) #16
  %164 = and i8 %bf.load167.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp16.not.i = icmp eq i8 %164, 0
  br i1 %cmp16.not.i, label %if.else.i.if.end19.i_crit_edge, label %if.else.i.if.end7_crit_edge

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i.if.end19.i_crit_edge, %if.else.thread.i
  %165 = ptrtoint ptr %msdos_name.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %msdos_name.i, align 1
  %add.i124.i = call i8 @llvm.fshl.i8(i8 %166, i8 %166, i8 7) #16
  %167 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %13, align 1
  %add4.i.i = add i8 %add.i124.i, %168
  %add10.i.i = call i8 @llvm.fshl.i8(i8 %add4.i.i, i8 %add4.i.i, i8 7) #16
  %169 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %14, align 1
  %add13.i.i = add i8 %add10.i.i, %170
  %add19.i.i = call i8 @llvm.fshl.i8(i8 %add13.i.i, i8 %add13.i.i, i8 7) #16
  %171 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %15, align 1
  %add22.i.i = add i8 %add19.i.i, %172
  %add28.i.i = call i8 @llvm.fshl.i8(i8 %add22.i.i, i8 %add22.i.i, i8 7) #16
  %173 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %16, align 1
  %add31.i.i = add i8 %add28.i.i, %174
  %add37.i.i = call i8 @llvm.fshl.i8(i8 %add31.i.i, i8 %add31.i.i, i8 7) #16
  %175 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %17, align 1
  %add40.i.i = add i8 %add37.i.i, %176
  %add46.i.i = call i8 @llvm.fshl.i8(i8 %add40.i.i, i8 %add40.i.i, i8 7) #16
  %177 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %18, align 1
  %add49.i.i = add i8 %add46.i.i, %178
  %add55.i.i = call i8 @llvm.fshl.i8(i8 %add49.i.i, i8 %add49.i.i, i8 7) #16
  %179 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %19, align 1
  %add58.i.i = add i8 %add55.i.i, %180
  %add64.i.i = call i8 @llvm.fshl.i8(i8 %add58.i.i, i8 %add58.i.i, i8 7) #16
  %181 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %20, align 1
  %add67.i.i = add i8 %add64.i.i, %182
  %add73.i.i = call i8 @llvm.fshl.i8(i8 %add67.i.i, i8 %add67.i.i, i8 7) #16
  %183 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %21, align 1
  %add76.i.i = add i8 %add73.i.i, %184
  %add82.i.i = call i8 @llvm.fshl.i8(i8 %add76.i.i, i8 %add76.i.i, i8 7) #16
  %185 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %22, align 1
  %add85.i.i = add i8 %add82.i.i, %186
  %div.i = sdiv i32 %usize.2181.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %usize.2181.i)
  %cmp22223.i = icmp sgt i32 %usize.2181.i, 12
  br i1 %cmp22223.i, label %if.end19.i.for.body.i_crit_edge, label %if.end19.i.for.end.i_crit_edge

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %i.0225.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div.i, %if.end19.i.for.body.i_crit_edge ]
  %ps.0224.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call7.i.i, %if.end19.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.0225.i to i8
  %187 = ptrtoint ptr %ps.0224.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv.i, ptr %ps.0224.i, align 2
  %attr.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 2
  %188 = ptrtoint ptr %attr.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 15, ptr %attr.i, align 1
  %reserved.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 3
  %189 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %reserved.i, align 2
  %alias_checksum.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 4
  %190 = ptrtoint ptr %alias_checksum.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %add85.i.i, ptr %alias_checksum.i, align 1
  %start.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 6
  %191 = ptrtoint ptr %start.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %start.i, align 2
  %192 = mul i32 %i.0225.i, 13
  %mul.i = add i32 %192, -13
  %name0_4.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1
  %add.ptr.i = getelementptr i16, ptr %call1.i, i32 %mul.i
  %193 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr.i, align 2
  %conv1.i.i = trunc i16 %194 to i8
  %195 = ptrtoint ptr %name0_4.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv1.i.i, ptr %name0_4.i, align 1
  %196 = lshr i16 %194, 8
  %conv4.i.i = trunc i16 %196 to i8
  %arrayidx5.i.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 1
  %197 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %add.ptr.i125.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 2
  %incdec.ptr.i126.i = getelementptr i16, ptr %add.ptr.i, i32 1
  %198 = ptrtoint ptr %incdec.ptr.i126.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %incdec.ptr.i126.i, align 2
  %conv1.i.1.i = trunc i16 %199 to i8
  %200 = ptrtoint ptr %add.ptr.i125.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv1.i.1.i, ptr %add.ptr.i125.i, align 1
  %201 = lshr i16 %199, 8
  %conv4.i.1.i = trunc i16 %201 to i8
  %arrayidx5.i.1.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 3
  %202 = ptrtoint ptr %arrayidx5.i.1.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv4.i.1.i, ptr %arrayidx5.i.1.i, align 1
  %add.ptr.i125.1.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 4
  %incdec.ptr.i126.1.i = getelementptr i16, ptr %incdec.ptr.i126.i, i32 1
  %203 = ptrtoint ptr %incdec.ptr.i126.1.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %incdec.ptr.i126.1.i, align 2
  %conv1.i.2.i = trunc i16 %204 to i8
  %205 = ptrtoint ptr %add.ptr.i125.1.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv1.i.2.i, ptr %add.ptr.i125.1.i, align 1
  %206 = lshr i16 %204, 8
  %conv4.i.2.i = trunc i16 %206 to i8
  %arrayidx5.i.2.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 5
  %207 = ptrtoint ptr %arrayidx5.i.2.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv4.i.2.i, ptr %arrayidx5.i.2.i, align 1
  %add.ptr.i125.2.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 6
  %incdec.ptr.i126.2.i = getelementptr i16, ptr %incdec.ptr.i126.1.i, i32 1
  %208 = ptrtoint ptr %incdec.ptr.i126.2.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %incdec.ptr.i126.2.i, align 2
  %conv1.i.3.i = trunc i16 %209 to i8
  %210 = ptrtoint ptr %add.ptr.i125.2.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv1.i.3.i, ptr %add.ptr.i125.2.i, align 1
  %211 = lshr i16 %209, 8
  %conv4.i.3.i = trunc i16 %211 to i8
  %arrayidx5.i.3.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 7
  %212 = ptrtoint ptr %arrayidx5.i.3.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv4.i.3.i, ptr %arrayidx5.i.3.i, align 1
  %add.ptr.i125.3.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 8
  %incdec.ptr.i126.3.i = getelementptr i16, ptr %incdec.ptr.i126.2.i, i32 1
  %213 = ptrtoint ptr %incdec.ptr.i126.3.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %incdec.ptr.i126.3.i, align 2
  %conv1.i.4.i = trunc i16 %214 to i8
  %215 = ptrtoint ptr %add.ptr.i125.3.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv1.i.4.i, ptr %add.ptr.i125.3.i, align 1
  %216 = lshr i16 %214, 8
  %conv4.i.4.i = trunc i16 %216 to i8
  %arrayidx5.i.4.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 1, i32 9
  %217 = ptrtoint ptr %arrayidx5.i.4.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv4.i.4.i, ptr %arrayidx5.i.4.i, align 1
  %name5_10.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5
  %add.ptr28.i = getelementptr i16, ptr %add.ptr.i, i32 5
  %218 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %add.ptr28.i, align 2
  %conv1.i134.i = trunc i16 %219 to i8
  %220 = ptrtoint ptr %name5_10.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv1.i134.i, ptr %name5_10.i, align 1
  %221 = lshr i16 %219, 8
  %conv4.i135.i = trunc i16 %221 to i8
  %arrayidx5.i136.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 1
  %222 = ptrtoint ptr %arrayidx5.i136.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv4.i135.i, ptr %arrayidx5.i136.i, align 1
  %add.ptr.i137.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 2
  %incdec.ptr.i138.i = getelementptr i16, ptr %add.ptr28.i, i32 1
  %223 = ptrtoint ptr %incdec.ptr.i138.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %incdec.ptr.i138.i, align 2
  %conv1.i134.1.i = trunc i16 %224 to i8
  %225 = ptrtoint ptr %add.ptr.i137.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv1.i134.1.i, ptr %add.ptr.i137.i, align 1
  %226 = lshr i16 %224, 8
  %conv4.i135.1.i = trunc i16 %226 to i8
  %arrayidx5.i136.1.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 3
  %227 = ptrtoint ptr %arrayidx5.i136.1.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv4.i135.1.i, ptr %arrayidx5.i136.1.i, align 1
  %add.ptr.i137.1.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 4
  %incdec.ptr.i138.1.i = getelementptr i16, ptr %incdec.ptr.i138.i, i32 1
  %228 = ptrtoint ptr %incdec.ptr.i138.1.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %incdec.ptr.i138.1.i, align 2
  %conv1.i134.2.i = trunc i16 %229 to i8
  %230 = ptrtoint ptr %add.ptr.i137.1.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv1.i134.2.i, ptr %add.ptr.i137.1.i, align 1
  %231 = lshr i16 %229, 8
  %conv4.i135.2.i = trunc i16 %231 to i8
  %arrayidx5.i136.2.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 5
  %232 = ptrtoint ptr %arrayidx5.i136.2.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv4.i135.2.i, ptr %arrayidx5.i136.2.i, align 1
  %add.ptr.i137.2.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 6
  %incdec.ptr.i138.2.i = getelementptr i16, ptr %incdec.ptr.i138.1.i, i32 1
  %233 = ptrtoint ptr %incdec.ptr.i138.2.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %incdec.ptr.i138.2.i, align 2
  %conv1.i134.3.i = trunc i16 %234 to i8
  %235 = ptrtoint ptr %add.ptr.i137.2.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv1.i134.3.i, ptr %add.ptr.i137.2.i, align 1
  %236 = lshr i16 %234, 8
  %conv4.i135.3.i = trunc i16 %236 to i8
  %arrayidx5.i136.3.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 7
  %237 = ptrtoint ptr %arrayidx5.i136.3.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv4.i135.3.i, ptr %arrayidx5.i136.3.i, align 1
  %add.ptr.i137.3.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 8
  %incdec.ptr.i138.3.i = getelementptr i16, ptr %incdec.ptr.i138.2.i, i32 1
  %238 = ptrtoint ptr %incdec.ptr.i138.3.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %incdec.ptr.i138.3.i, align 2
  %conv1.i134.4.i = trunc i16 %239 to i8
  %240 = ptrtoint ptr %add.ptr.i137.3.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv1.i134.4.i, ptr %add.ptr.i137.3.i, align 1
  %241 = lshr i16 %239, 8
  %conv4.i135.4.i = trunc i16 %241 to i8
  %arrayidx5.i136.4.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 9
  %242 = ptrtoint ptr %arrayidx5.i136.4.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv4.i135.4.i, ptr %arrayidx5.i136.4.i, align 1
  %add.ptr.i137.4.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 10
  %incdec.ptr.i138.4.i = getelementptr i16, ptr %incdec.ptr.i138.3.i, i32 1
  %243 = ptrtoint ptr %incdec.ptr.i138.4.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %incdec.ptr.i138.4.i, align 2
  %conv1.i134.5.i = trunc i16 %244 to i8
  %245 = ptrtoint ptr %add.ptr.i137.4.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv1.i134.5.i, ptr %add.ptr.i137.4.i, align 1
  %246 = lshr i16 %244, 8
  %conv4.i135.5.i = trunc i16 %246 to i8
  %arrayidx5.i136.5.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 5, i32 11
  %247 = ptrtoint ptr %arrayidx5.i136.5.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv4.i135.5.i, ptr %arrayidx5.i136.5.i, align 1
  %name11_12.i = getelementptr inbounds %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 7
  %add.ptr32.i = getelementptr i16, ptr %add.ptr.i, i32 11
  %248 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %add.ptr32.i, align 2
  %conv1.i147.i = trunc i16 %249 to i8
  %250 = ptrtoint ptr %name11_12.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv1.i147.i, ptr %name11_12.i, align 1
  %251 = lshr i16 %249, 8
  %conv4.i148.i = trunc i16 %251 to i8
  %arrayidx5.i149.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 7, i32 1
  %252 = ptrtoint ptr %arrayidx5.i149.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv4.i148.i, ptr %arrayidx5.i149.i, align 1
  %add.ptr.i150.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 7, i32 2
  %incdec.ptr.i151.i = getelementptr i16, ptr %add.ptr32.i, i32 1
  %253 = ptrtoint ptr %incdec.ptr.i151.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %incdec.ptr.i151.i, align 2
  %conv1.i147.1.i = trunc i16 %254 to i8
  %255 = ptrtoint ptr %add.ptr.i150.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv1.i147.1.i, ptr %add.ptr.i150.i, align 1
  %256 = lshr i16 %254, 8
  %conv4.i148.1.i = trunc i16 %256 to i8
  %arrayidx5.i149.1.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 0, i32 7, i32 3
  %257 = ptrtoint ptr %arrayidx5.i149.1.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv4.i148.1.i, ptr %arrayidx5.i149.1.i, align 1
  %dec.i = add nsw i32 %i.0225.i, -1
  %incdec.ptr.i = getelementptr %struct.msdos_dir_slot, ptr %ps.0224.i, i32 1
  %cmp22.i = icmp sgt i32 %i.0225.i, 1
  br i1 %cmp22.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  %ps.0.lcssa.i = phi ptr [ %call7.i.i, %if.end19.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body.i.for.end.i_crit_edge ]
  %258 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %call7.i.i, align 8
  %260 = or i8 %259, 64
  store i8 %260, ptr %call7.i.i, align 8
  %phi.bo = add nsw i32 %div.i, 1
  br label %if.end7

vfat_build_slots.exit.thread47:                   ; preds = %vfat_create_shortname.exit.i, %for.end.i.i.vfat_build_slots.exit.thread47_crit_edge, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge169, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge170, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge171, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge172, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge173, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge174, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge175, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge176, %for.body.i106.i.vfat_build_slots.exit.thread47_crit_edge, %if.else28.i.i.vfat_build_slots.exit.thread47_crit_edge, %cleanup.thread.i.i, %land.rhs.i.i41.vfat_build_slots.exit.thread47_crit_edge, %if.else.i.i.vfat_build_slots.exit.thread47_crit_edge, %if.then.i.i.vfat_build_slots.exit.thread47_crit_edge
  %err.1.i.ph = phi i32 [ -22, %for.end.i.i.vfat_build_slots.exit.thread47_crit_edge ], [ %call.i.i, %if.then.i.i.vfat_build_slots.exit.thread47_crit_edge ], [ -36, %if.else.i.i.vfat_build_slots.exit.thread47_crit_edge ], [ -22, %cleanup.thread.i.i ], [ %retval.0.i122.i, %vfat_create_shortname.exit.i ], [ -22, %for.body.i106.i.vfat_build_slots.exit.thread47_crit_edge ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge169 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge170 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge171 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge172 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge173 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge174 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge175 ], [ -22, %switch.early.test.i.i.i.vfat_build_slots.exit.thread47_crit_edge176 ], [ -36, %land.rhs.i.i41.vfat_build_slots.exit.thread47_crit_edge ], [ -22, %if.else28.i.i.vfat_build_slots.exit.thread47_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %261 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %261, ptr noundef nonnull %call1.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %time_cs.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time.i) #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #16
  br label %cleanup

if.end7:                                          ; preds = %for.end.i, %if.else.i.if.end7_crit_edge, %if.then220.i.i
  %nr_slots.0 = phi i32 [ %phi.bo, %for.end.i ], [ 1, %if.then220.i.i ], [ 1, %if.else.i.if.end7_crit_edge ]
  %lcase.1.ph196.i = phi i8 [ 0, %for.end.i ], [ %lcase.1.ph.ph.i, %if.then220.i.i ], [ 0, %if.else.i.if.end7_crit_edge ]
  %de.0.i = phi ptr [ %ps.0.lcssa.i, %for.end.i ], [ %call7.i.i, %if.then220.i.i ], [ %call7.i.i, %if.else.i.if.end7_crit_edge ]
  %262 = call ptr @memcpy(ptr %de.0.i, ptr %msdos_name.i, i32 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dir)
  %tobool39.not.i = icmp eq i32 %is_dir, 0
  %conv40.i = select i1 %tobool39.not.i, i8 32, i8 16
  %attr41.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 1
  %263 = ptrtoint ptr %attr41.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv40.i, ptr %attr41.i, align 1
  %lcase42.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 2
  %264 = ptrtoint ptr %lcase42.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %lcase.1.ph196.i, ptr %lcase42.i, align 4
  call void @fat_time_unix2fat(ptr noundef %12, ptr noundef %ts, ptr noundef nonnull %time.i, ptr noundef nonnull %date.i, ptr noundef nonnull %time_cs.i) #16
  %265 = ptrtoint ptr %time.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %time.i, align 2
  %ctime.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 4
  %267 = ptrtoint ptr %ctime.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %266, ptr %ctime.i, align 2
  %time43.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 8
  %268 = ptrtoint ptr %time43.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %266, ptr %time43.i, align 2
  %269 = ptrtoint ptr %date.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %date.i, align 2
  %adate.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 6
  %271 = ptrtoint ptr %adate.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %adate.i, align 2
  %cdate.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 5
  %272 = ptrtoint ptr %cdate.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %270, ptr %cdate.i, align 4
  %date44.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 9
  %273 = ptrtoint ptr %date44.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %270, ptr %date44.i, align 4
  %274 = ptrtoint ptr %time_cs.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %time_cs.i, align 1
  %ctime_cs.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 3
  %276 = ptrtoint ptr %ctime_cs.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %275, ptr %ctime_cs.i, align 1
  %conv.i.i = trunc i32 %cluster to i16
  %277 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #16
  %start.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 10
  %278 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %start.i.i, align 2
  %279 = lshr i32 %cluster, 16
  %conv1.i156.i = trunc i32 %279 to i16
  %280 = call i16 @llvm.bswap.i16(i16 %conv1.i156.i) #16
  %starthi.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 7
  %281 = ptrtoint ptr %starthi.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %280, ptr %starthi.i.i, align 4
  %size.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de.0.i, i32 0, i32 11
  %282 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %283 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %283, ptr noundef nonnull %call1.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %time_cs.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time.i) #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #16
  %call8 = call i32 @fat_add_entries(ptr noundef %dir, ptr noundef nonnull %call7.i.i, i32 noundef %nr_slots.0, ptr noundef %sinfo) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @fat_truncate_time(ptr noundef %dir, ptr noundef %ts, i32 noundef 6) #16
  %284 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %i_sb.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %285, i32 0, i32 10
  %286 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %s_flags, align 4
  %and = and i32 %287, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end11.if.then16_crit_edge

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end11
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %288 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %i_flags, align 4
  %and14 = and i32 %289, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  %call17 = call i32 @fat_sync_inode(ptr noundef %dir) #16
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.end7.cleanup_crit_edge, %vfat_build_slots.exit.thread47, %vfat_build_slots.exit.thread
  %err.0 = phi i32 [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.else ], [ -12, %vfat_build_slots.exit.thread ], [ %err.1.i.ph, %vfat_build_slots.exit.thread47 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup, %if.end.cleanup19_crit_edge, %while.cond.i.i.cleanup19_crit_edge
  %retval.0 = phi i32 [ %err.0, %cleanup ], [ -12, %if.end.cleanup19_crit_edge ], [ -2, %while.cond.i.i.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !39
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %cur.0.i = phi i64 [ %call.i.i1.i, %entry ], [ %call.i.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = add i64 %cur.0.i, 2
  %add.i = and i64 %0, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #16
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_maybe_inc_iversion.exit, label %for.cond.i.for.cond.i_crit_edge, !prof !38

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

inode_maybe_inc_iversion.exit:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @to_shortname_char(ptr nocapture noundef readonly %nls, ptr noundef %buf, ptr nocapture noundef readonly %src, ptr nocapture noundef %info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %src, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %1, label %if.end7 [
    i16 46, label %entry.if.then_crit_edge
    i16 32, label %entry.if.then_crit_edge6
    i16 91, label %entry.if.then3_crit_edge
    i16 93, label %entry.if.then3_crit_edge7
    i16 59, label %entry.if.then3_crit_edge8
    i16 44, label %entry.if.then3_crit_edge9
    i16 43, label %entry.if.then3_crit_edge10
    i16 61, label %entry.if.then3_crit_edge11
  ]

entry.if.then3_crit_edge11:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then3_crit_edge10:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then3_crit_edge9:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then3_crit_edge8:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then3_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge6
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %info, align 1
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %info, align 1
  br label %cleanup

if.then3:                                         ; preds = %entry.if.then3_crit_edge, %entry.if.then3_crit_edge7, %entry.if.then3_crit_edge8, %entry.if.then3_crit_edge9, %entry.if.then3_crit_edge10, %entry.if.then3_crit_edge11
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4 = load i8, ptr %info, align 1
  %bf.clear5 = and i8 %bf.load4, -33
  store i8 %bf.clear5, ptr %info, align 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 95, ptr %buf, align 1
  br label %cleanup

if.end7:                                          ; preds = %entry
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 2
  %6 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni2char, align 4
  %call8 = tail call i32 %7(i16 noundef zeroext %1, ptr noundef %buf, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load10 = load i8, ptr %info, align 1
  %bf.clear11 = and i8 %bf.load10, -33
  store i8 %bf.clear11, ptr %info, align 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 95, ptr %buf, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp14 = icmp eq i32 %call8, 1
  br i1 %cmp14, label %if.then15, label %if.else53

if.then15:                                        ; preds = %if.else
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %11)
  %cmp18 = icmp ugt i8 %11, 126
  br i1 %cmp18, label %if.then20, label %if.then15.if.end27_crit_edge

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load21 = load i8, ptr %info, align 1
  %bf.clear25 = and i8 %bf.load21, 63
  store i8 %bf.clear25, ptr %info, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then15.if.end27_crit_edge
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 1
  %charset2upper.i = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 5
  %15 = ptrtoint ptr %charset2upper.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %charset2upper.i, align 4
  %idxprom.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr i8, ptr %16, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %c..i = select i1 %tobool.not.i, i8 %14, i8 %18
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %c..i, ptr %buf, align 1
  %conv32 = zext i8 %c..i to i32
  %arrayidx33 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp35.not = icmp eq i8 %22, 0
  br i1 %cmp35.not, label %if.end27.cleanup_crit_edge, label %if.then37

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp1(i8 %c..i, i8 %11)
  %cmp41 = icmp eq i8 %c..i, %11
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load44 = load i8, ptr %info, align 1
  br i1 %cmp41, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear45 = and i8 %bf.load44, 127
  %24 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.clear45, ptr %info, align 1
  br label %cleanup

if.else47:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear49 = and i8 %bf.load44, -65
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.clear49, ptr %info, align 1
  br label %cleanup

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load54 = load i8, ptr %info, align 1
  %bf.clear58 = and i8 %bf.load54, 63
  store i8 %bf.clear58, ptr %info, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else53, %if.else47, %if.then43, %if.end27.cleanup_crit_edge, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then3 ], [ 1, %if.then9 ], [ %call8, %if.else53 ], [ 1, %if.then43 ], [ 1, %if.else47 ], [ 1, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_dir_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_attach(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_revalidate_ci(ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool3.not = icmp ne i32 %flags, 0
  %and6 = and i32 %flags, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = and i1 %tobool3.not, %tobool7.not
  br i1 %or.cond, label %if.end9, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end9:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %conv.i = zext i32 %8 to i64
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #16
  %call.i.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #16
  %shr.i.i.i = lshr i64 %call.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i, i64 %conv.i)
  %cmp.i.i = icmp eq i64 %shr.i.i.i, %conv.i
  %spec.select.i = zext i1 %cmp.i.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #16
  br label %return

return:                                           ; preds = %if.end9, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end9 ], [ -10, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 0, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_hashi(ptr noundef %dentry, ptr nocapture noundef %qstr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nls_io = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 8
  %8 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qstr, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %entry
  %len.addr.0.i.i = phi i32 [ %9, %entry ], [ %sub.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %vfat_striptail_len.exit.thread, label %land.rhs.i.i

vfat_striptail_len.exit.thread:                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %dentry to i32
  br label %while.end

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %len.addr.0.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 %sub.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp eq i8 %12, 46
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %while.body.lr.ph

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

while.body.lr.ph:                                 ; preds = %land.rhs.i.i
  %13 = ptrtoint ptr %dentry to i32
  %charset2lower.i = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %charset2lower.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %charset2lower.i, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %hash.014 = phi i32 [ %13, %while.body.lr.ph ], [ %mul.i, %while.body.while.body_crit_edge ]
  %len.013 = phi i32 [ %len.addr.0.i.i, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %name.012 = phi ptr [ %7, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %dec = add i32 %len.013, -1
  %incdec.ptr = getelementptr i8, ptr %name.012, i32 1
  %16 = ptrtoint ptr %name.012 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %name.012, align 1
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr i8, ptr %15, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %c..i = select i1 %tobool.not.i, i8 %17, i8 %19
  %conv = zext i8 %c..i to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i = add i32 %shl.i, %hash.014
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %vfat_striptail_len.exit.thread
  %hash.0.lcssa = phi i32 [ %10, %vfat_striptail_len.exit.thread ], [ %mul.i, %while.body.while.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash6 = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %20 = ptrtoint ptr %hash6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i.i.i, ptr %hash6, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_cmpi(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nls_io = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io, align 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name, align 8
  %name.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %entry
  %len.addr.0.i.i = phi i32 [ %7, %entry ], [ %sub.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.cond.i.preheader_crit_edge, label %land.rhs.i.i

while.cond.i.i.while.cond.i.preheader_crit_edge:  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %len.addr.0.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp eq i8 %11, 46
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %land.rhs.i.i.while.cond.i.preheader_crit_edge

land.rhs.i.i.while.cond.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

while.cond.i.preheader:                           ; preds = %land.rhs.i.i.while.cond.i.preheader_crit_edge, %while.cond.i.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %len.addr.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %len, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.__vfat_striptail_len.exit_crit_edge, label %land.rhs.i

while.cond.i.__vfat_striptail_len.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vfat_striptail_len.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %str, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %13, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.__vfat_striptail_len.exit_crit_edge

land.rhs.i.__vfat_striptail_len.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vfat_striptail_len.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

__vfat_striptail_len.exit:                        ; preds = %land.rhs.i.__vfat_striptail_len.exit_crit_edge, %while.cond.i.__vfat_striptail_len.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i.i, i32 %len.addr.0.i)
  %cmp = icmp eq i32 %len.addr.0.i.i, %len.addr.0.i
  br i1 %cmp, label %if.then, label %__vfat_striptail_len.exit.cleanup_crit_edge

__vfat_striptail_len.exit.cleanup_crit_edge:      ; preds = %__vfat_striptail_len.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %__vfat_striptail_len.exit
  %charset2lower.i.i = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 4
  br label %while.cond.i15

while.cond.i15:                                   ; preds = %while.body.i.while.cond.i15_crit_edge, %if.then
  %s1.addr.0.i = phi ptr [ %9, %if.then ], [ %incdec.ptr.i, %while.body.i.while.cond.i15_crit_edge ]
  %s2.addr.0.i = phi ptr [ %str, %if.then ], [ %incdec.ptr1.i, %while.body.i.while.cond.i15_crit_edge ]
  %len.addr.0.i13 = phi i32 [ %len.addr.0.i.i, %if.then ], [ %dec.i, %while.body.i.while.cond.i15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i13)
  %tobool.not.i14 = icmp eq i32 %len.addr.0.i13, 0
  br i1 %tobool.not.i14, label %while.cond.i15.cleanup_crit_edge, label %while.body.i

while.cond.i15.cleanup_crit_edge:                 ; preds = %while.cond.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i15
  %dec.i = add i32 %len.addr.0.i13, -1
  %incdec.ptr.i = getelementptr i8, ptr %s1.addr.0.i, i32 1
  %14 = ptrtoint ptr %s1.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s1.addr.0.i, align 1
  %16 = ptrtoint ptr %charset2lower.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %charset2lower.i.i, align 4
  %idxprom.i.i = zext i8 %15 to i32
  %arrayidx.i.i16 = getelementptr i8, ptr %17, i32 %idxprom.i.i
  %18 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i17 = icmp eq i8 %19, 0
  %c..i.i = select i1 %tobool.not.i.i17, i8 %15, i8 %19
  %incdec.ptr1.i = getelementptr i8, ptr %s2.addr.0.i, i32 1
  %20 = ptrtoint ptr %s2.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s2.addr.0.i, align 1
  %idxprom.i7.i = zext i8 %21 to i32
  %arrayidx.i8.i = getelementptr i8, ptr %17, i32 %idxprom.i7.i
  %22 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i9.i = icmp eq i8 %23, 0
  %c..i10.i = select i1 %tobool.not.i9.i, i8 %21, i8 %23
  %cmp.not.i = icmp eq i8 %c..i.i, %c..i10.i
  br i1 %cmp.not.i, label %while.body.i.while.cond.i15_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i.while.cond.i15_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i15

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %while.cond.i15.cleanup_crit_edge, %__vfat_striptail_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %__vfat_striptail_len.exit.cleanup_crit_edge ], [ 0, %while.cond.i15.cleanup_crit_edge ], [ 1, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_revalidate(ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %conv.i = zext i32 %8 to i64
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #16
  %call.i.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #16
  %shr.i.i.i = lshr i64 %call.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i, i64 %conv.i)
  %cmp.i.i = icmp eq i64 %shr.i.i.i, %conv.i
  %spec.select.i = zext i1 %cmp.i.i to i32
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #16
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end2 ], [ -10, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_hash(ptr noundef %dentry, ptr nocapture noundef %qstr) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %entry
  %len.addr.0.i.i = phi i32 [ %3, %entry ], [ %sub.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.vfat_striptail_len.exit_crit_edge, label %land.rhs.i.i

while.cond.i.i.vfat_striptail_len.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_striptail_len.exit

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %len.addr.0.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp eq i8 %5, 46
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %land.rhs.i.i.vfat_striptail_len.exit_crit_edge

land.rhs.i.i.vfat_striptail_len.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vfat_striptail_len.exit

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

vfat_striptail_len.exit:                          ; preds = %land.rhs.i.i.vfat_striptail_len.exit_crit_edge, %while.cond.i.i.vfat_striptail_len.exit_crit_edge
  %call1 = tail call i32 @full_name_hash(ptr noundef %dentry, ptr noundef %1, i32 noundef %len.addr.0.i.i) #21
  %hash = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %hash, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @vfat_cmp(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  %name.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %entry
  %len.addr.0.i.i = phi i32 [ %1, %entry ], [ %sub.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.cond.i.preheader_crit_edge, label %land.rhs.i.i

while.cond.i.i.while.cond.i.preheader_crit_edge:  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %len.addr.0.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp eq i8 %5, 46
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %land.rhs.i.i.while.cond.i.preheader_crit_edge

land.rhs.i.i.while.cond.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.preheader

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

while.cond.i.preheader:                           ; preds = %land.rhs.i.i.while.cond.i.preheader_crit_edge, %while.cond.i.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %len.addr.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %len, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.__vfat_striptail_len.exit_crit_edge, label %land.rhs.i

while.cond.i.__vfat_striptail_len.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vfat_striptail_len.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %str, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %7, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.__vfat_striptail_len.exit_crit_edge

land.rhs.i.__vfat_striptail_len.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vfat_striptail_len.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

__vfat_striptail_len.exit:                        ; preds = %land.rhs.i.__vfat_striptail_len.exit_crit_edge, %while.cond.i.__vfat_striptail_len.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i.i, i32 %len.addr.0.i)
  %cmp = icmp eq i32 %len.addr.0.i.i, %len.addr.0.i
  br i1 %cmp, label %if.then, label %__vfat_striptail_len.exit.if.end6_crit_edge

__vfat_striptail_len.exit.if.end6_crit_edge:      ; preds = %__vfat_striptail_len.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %__vfat_striptail_len.exit
  %call3 = tail call i32 @strncmp(ptr noundef %3, ptr noundef %str, i32 noundef %len.addr.0.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %__vfat_striptail_len.exit.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_alias242, !1, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!1 = !{!"../fs/fat/namei_vfat.c", i32 1068, i32 1}
!2 = !{ptr @__UNIQUE_ID_file243, !3, !"__UNIQUE_ID_file243", i1 false, i1 false}
!3 = !{!"../fs/fat/namei_vfat.c", i32 1080, i32 1}
!4 = !{ptr @__UNIQUE_ID_license244, !3, !"__UNIQUE_ID_license244", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../fs/fat/namei_vfat.c", i32 1081, i32 1}
!7 = !{ptr @__UNIQUE_ID_author246, !8, !"__UNIQUE_ID_author246", i1 false, i1 false}
!8 = !{!"../fs/fat/namei_vfat.c", i32 1082, i32 1}
!9 = !{ptr @__initcall__kmod_vfat__247_1084_init_vfat_fs6, !10, !"__initcall__kmod_vfat__247_1084_init_vfat_fs6", i1 false, i1 false}
!10 = !{!"../fs/fat/namei_vfat.c", i32 1084, i32 1}
!11 = !{ptr @__exitcall_exit_vfat_fs, !12, !"__exitcall_exit_vfat_fs", i1 false, i1 false}
!12 = !{!"../fs/fat/namei_vfat.c", i32 1085, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/fat/namei_vfat.c", i32 1063, i32 11}
!15 = !{ptr @vfat_fs_type, !16, !"vfat_fs_type", i1 false, i1 false}
!16 = !{!"../fs/fat/namei_vfat.c", i32 1061, i32 32}
!17 = !{ptr @vfat_dir_inode_operations, !18, !"vfat_dir_inode_operations", i1 false, i1 false}
!18 = !{!"../fs/fat/namei_vfat.c", i32 1028, i32 38}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/fat/namei_vfat.c", i32 500, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/fat/namei_vfat.c", i32 1021, i32 3}
!23 = !{ptr @__func__.vfat_rename, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vfat_ci_dentry_ops, !25, !"vfat_ci_dentry_ops", i1 false, i1 false}
!25 = !{!"../fs/fat/namei_vfat.c", i32 189, i32 39}
!26 = !{ptr @vfat_dentry_ops, !27, !"vfat_dentry_ops", i1 false, i1 false}
!27 = !{!"../fs/fat/namei_vfat.c", i32 195, i32 39}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2153195296}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2153194043}
!40 = !{!"auto-init"}
!41 = !{i64 2154008099, i64 2154008583, i64 2154008136, i64 2154008192, i64 2154008226, i64 2154008250, i64 2154008291, i64 2154008312, i64 2154008340, i64 2154008374}
