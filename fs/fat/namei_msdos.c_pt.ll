; ModuleID = '/llk/IR_all_yes/fs/fat/namei_msdos.c_pt.bc'
source_filename = "../fs/fat/namei_msdos.c"
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
%struct.anon.3 = type { i32, i32 }

@__UNIQUE_ID_alias240 = internal constant [21 x i8] c"msdos.alias=fs-msdos\00", section ".modinfo", align 1
@msdos_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 33, ptr null, ptr null, ptr @msdos_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file241 = internal constant [24 x i8] c"msdos.file=fs/fat/msdos\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [18 x i8] c"msdos.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [32 x i8] c"msdos.author=Werner Almesberger\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [44 x i8] c"msdos.description=MS-DOS filesystem support\00", section ".modinfo", align 1
@__initcall__kmod_msdos__245_688_init_msdos_fs6 = internal global ptr @init_msdos_fs, section ".initcall6.init", align 4
@__exitcall_exit_msdos_fs = internal global ptr @exit_msdos_fs, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdos\00", [26 x i8] zeroinitializer }, align 32
@msdos_dir_inode_operations = internal constant %struct.inode_operations { ptr @msdos_lookup, ptr null, ptr null, ptr null, ptr null, ptr @msdos_create, ptr null, ptr @msdos_unlink, ptr null, ptr @msdos_mkdir, ptr @msdos_rmdir, ptr null, ptr @msdos_rename, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@msdos_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr @msdos_hash, ptr @msdos_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@bad_chars = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"*?<>|\22\00", [25 x i8] zeroinitializer }, align 32
@bad_if_strict = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"+=,; \00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Filesystem corrupted (i_pos %lld)\00", [58 x i8] zeroinitializer }, align 32
@__func__.do_msdos_rename = private unnamed_addr constant [16 x i8] c"do_msdos_rename\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 58, i64 92]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 46, i64 58, i64 92]
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"msdos_fs_type\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 665, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 667, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"bad_chars\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 15, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"bad_if_strict\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 16, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [24 x i8] c"../fs/fat/namei_msdos.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 589, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_exit_msdos_fs, ptr @__initcall__kmod_msdos__245_688_init_msdos_fs6, ptr @exit_msdos_fs, ptr @msdos_fs_type, ptr @.str, ptr @bad_chars, ptr @bad_if_strict, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdos_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_chars to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_if_strict to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_msdos_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @msdos_fs_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_msdos_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @msdos_fs_type) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msdos_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @msdos_fill_super) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fat_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent, i32 noundef 0, ptr noundef nonnull @setup) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_super(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @setup(ptr nocapture noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %dir_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dir_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @msdos_dir_inode_operations, ptr %dir_ops, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %3 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @msdos_dentry_operations, ptr %s_d_op, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %or = or i32 %5, 1024
  store i32 %or, ptr %s_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msdos_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  %msdos_name.i = alloca [11 x i8], align 1
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #11
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %7 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_name, align 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %options.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19
  %13 = call ptr @memset(ptr %msdos_name.i, i32 255, i32 11)
  %call1.i = call fastcc i32 @msdos_format_name(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %msdos_name.i, ptr noundef %options.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.msdos_find.exit.thread_crit_edge

entry.msdos_find.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %msdos_find.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %dotsOK.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 12
  %14 = ptrtoint ptr %dotsOK.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %dotsOK.i, align 4
  %15 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.msdos_find.exit.thread20_crit_edge, label %if.then7.i

land.lhs.true.i.msdos_find.exit.thread20_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread20

if.then7.i:                                       ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %17)
  %cmp.i = icmp eq i8 %17, 46
  %de.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %18 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %de.i, align 4
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %attr.i, align 1
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not.i = icmp eq i8 %22, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end21.i

if.then9.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.then9.i.if.then23.i_crit_edge, label %if.then9.i.msdos_find.exit.thread20_crit_edge

if.then9.i.msdos_find.exit.thread20_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread20

if.then9.i.if.then23.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.end21.i.msdos_find.exit.thread20_crit_edge, label %if.end21.i.if.then23.i_crit_edge

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i.msdos_find.exit.thread20_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread20

if.then23.i:                                      ; preds = %if.end21.i.if.then23.i_crit_edge, %if.then9.i.if.then23.i_crit_edge
  %bh.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %23 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then23.i.msdos_find.exit.thread_crit_edge, label %if.then.i.i

if.then23.i.msdos_find.exit.thread_crit_edge:     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %24) #11
  br label %msdos_find.exit.thread

msdos_find.exit.thread:                           ; preds = %if.then.i.i, %if.then23.i.msdos_find.exit.thread_crit_edge, %entry.msdos_find.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  br label %sw.epilog

msdos_find.exit.thread20:                         ; preds = %if.end21.i.msdos_find.exit.thread20_crit_edge, %if.then9.i.msdos_find.exit.thread20_crit_edge, %land.lhs.true.i.msdos_find.exit.thread20_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %25 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %de, align 4
  %27 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sinfo, align 8
  %call4 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %26, i64 noundef %28) #11
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %29 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bh, align 8
  %tobool.not.i15 = icmp eq ptr %30, null
  br i1 %tobool.not.i15, label %msdos_find.exit.thread20.sw.epilog_crit_edge, label %if.then.i

msdos_find.exit.thread20.sw.epilog_crit_edge:     ; preds = %msdos_find.exit.thread20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

msdos_find.exit:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3.i)
  %cond = icmp eq i32 %call3.i, -2
  %31 = inttoptr i32 %call3.i to ptr
  %spec.select = select i1 %cond, ptr null, ptr %31
  br label %sw.epilog

if.then.i:                                        ; preds = %msdos_find.exit.thread20
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %30) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %msdos_find.exit, %msdos_find.exit.thread20.sw.epilog_crit_edge, %msdos_find.exit.thread
  %inode.0 = phi ptr [ null, %msdos_find.exit.thread ], [ %call4, %msdos_find.exit.thread20.sw.epilog_crit_edge ], [ %call4, %if.then.i ], [ %spec.select, %msdos_find.exit ]
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock7 = getelementptr inbounds %struct.msdos_sb_info, ptr %33, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock7) #11
  %call8 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #11
  ret ptr %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  %ts = alloca %struct.timespec64, align 8
  %msdos_name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #11
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name) #11
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = call ptr @memset(ptr %msdos_name, i32 255, i32 11)
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19
  %call3 = call fastcc i32 @msdos_format_name(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %msdos_name, ptr noundef %options)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp = icmp eq i8 %16, 46
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %msdos_name to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msdos_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %18)
  %cmp9 = icmp ne i8 %18, 46
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %19 = phi i32 [ 0, %if.end.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call12 = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.end
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then14.out_crit_edge, label %if.then.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %21) #11
  br label %out

if.end15:                                         ; preds = %land.end
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %dir) #11
  %call17 = call fastcc i32 @msdos_add_entry(ptr noundef %dir, ptr noundef nonnull %msdos_name, i32 noundef 0, i32 noundef %19, i32 noundef 0, ptr noundef nonnull %ts, ptr noundef nonnull %sinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %if.end15
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %22 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %de, align 4
  %24 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sinfo, align 8
  %call21 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %23, i64 noundef %25) #11
  %bh22 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %26 = ptrtoint ptr %bh22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bh22, align 8
  %tobool.not.i53 = icmp eq ptr %27, null
  br i1 %tobool.not.i53, label %if.end20.brelse.exit55_crit_edge, label %if.then.i54

if.end20.brelse.exit55_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit55

if.then.i54:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %27) #11
  br label %brelse.exit55

brelse.exit55:                                    ; preds = %if.then.i54, %if.end20.brelse.exit55_crit_edge
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %brelse.exit55
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call21 to i32
  br label %out

if.end26:                                         ; preds = %brelse.exit55
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = call i32 @fat_truncate_time(ptr noundef %call21, ptr noundef nonnull %ts, i32 noundef 7) #11
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call21) #11
  br label %out

out:                                              ; preds = %if.end26, %if.then24, %if.end15.out_crit_edge, %if.then.i, %if.then14.out_crit_edge, %entry.out_crit_edge
  %inode.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end15.out_crit_edge ], [ %call21, %if.then24 ], [ %call21, %if.end26 ], [ null, %if.then14.out_crit_edge ], [ null, %if.then.i ]
  %err.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call17, %if.end15.out_crit_edge ], [ %28, %if.then24 ], [ 0, %if.end26 ], [ -22, %if.then14.out_crit_edge ], [ -22, %if.then.i ]
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock29 = getelementptr inbounds %struct.msdos_sb_info, ptr %30, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool30.not = icmp eq i32 %err.0, 0
  br i1 %tobool30.not, label %if.then31, label %out.if.end33_crit_edge

out.if.end33_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = call i32 @fat_flush_inodes(ptr noundef %1, ptr noundef %dir, ptr noundef %inode.0) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %out.if.end33_crit_edge
  %err.1 = phi i32 [ %err.0, %out.if.end33_crit_edge ], [ %call32, %if.then31 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_unlink(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #2 align 64 {
entry:
  %msdos_name.i = alloca [11 x i8], align 1
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #11
  %4 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %options.i = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 19
  %15 = call ptr @memset(ptr %msdos_name.i, i32 255, i32 11)
  %call1.i = call fastcc i32 @msdos_format_name(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %msdos_name.i, ptr noundef %options.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.msdos_find.exit.thread_crit_edge

entry.msdos_find.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.msdos_find.exit.thread_crit_edge

if.end.i.msdos_find.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

land.lhs.true.i:                                  ; preds = %if.end.i
  %dotsOK.i = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 19, i32 12
  %16 = ptrtoint ptr %dotsOK.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %dotsOK.i, align 4
  %17 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i = icmp eq i16 %17, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then7.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %19)
  %cmp.i = icmp eq i8 %19, 46
  %de.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %20 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %de.i, align 4
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %attr.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not.i = icmp eq i8 %24, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end21.i

if.then9.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.then9.i.if.then23.i_crit_edge, label %if.then9.i.if.end_crit_edge

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9.i.if.then23.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.end21.i.if.end_crit_edge, label %if.end21.i.if.then23.i_crit_edge

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then23.i:                                      ; preds = %if.end21.i.if.then23.i_crit_edge, %if.then9.i.if.then23.i_crit_edge
  %bh.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %25 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then23.i.msdos_find.exit.thread_crit_edge, label %if.then.i.i

if.then23.i.msdos_find.exit.thread_crit_edge:     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %26) #11
  br label %msdos_find.exit.thread

msdos_find.exit.thread:                           ; preds = %if.then.i.i, %if.then23.i.msdos_find.exit.thread_crit_edge, %if.end.i.msdos_find.exit.thread_crit_edge, %entry.msdos_find.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.then.i.i ], [ -2, %if.then23.i.msdos_find.exit.thread_crit_edge ], [ %call3.i, %if.end.i.msdos_find.exit.thread_crit_edge ], [ -2, %entry.msdos_find.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  br label %out

if.end:                                           ; preds = %if.end21.i.if.end_crit_edge, %if.then9.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %call4 = call i32 @fat_remove_entries(ptr noundef %dir, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @clear_nlink(ptr noundef %1) #11
  %call8 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef null, i32 noundef 4) #11
  call void @fat_detach(ptr noundef %1) #11
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %msdos_find.exit.thread
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ 0, %if.end7 ], [ %retval.0.i.ph, %msdos_find.exit.thread ]
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock10 = getelementptr inbounds %struct.msdos_sb_info, ptr %28, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool11.not = icmp eq i32 %err.0, 0
  br i1 %tobool11.not, label %if.then12, label %out.if.end14_crit_edge

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 @fat_flush_inodes(ptr noundef %3, ptr noundef %dir, ptr noundef %1) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %out.if.end14_crit_edge
  %err.1 = phi i32 [ %err.0, %out.if.end14_crit_edge ], [ %call13, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #2 align 64 {
entry:
  %sinfo = alloca %struct.fat_slot_info, align 8
  %msdos_name = alloca [11 x i8], align 1
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #11
  %2 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name) #11
  %3 = call ptr @memset(ptr %msdos_name, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19
  %call3 = call fastcc i32 @msdos_format_name(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %msdos_name, ptr noundef %options)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp = icmp eq i8 %16, 46
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %msdos_name to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msdos_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %18)
  %cmp9 = icmp ne i8 %18, 46
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %19 = phi i32 [ 0, %if.end.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call12 = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.end
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then14.out_crit_edge, label %if.then.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %21) #11
  br label %out

if.end15:                                         ; preds = %land.end
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %dir) #11
  %call16 = call i32 @fat_alloc_new_dir(ptr noundef %dir, ptr noundef nonnull %ts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %if.end15
  %call22 = call fastcc i32 @msdos_add_entry(ptr noundef %dir, ptr noundef nonnull %msdos_name, i32 noundef 1, i32 noundef %19, i32 noundef %call16, ptr noundef nonnull %ts, ptr noundef nonnull %sinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %out_free

if.end25:                                         ; preds = %if.end20
  call void @inc_nlink(ptr noundef %dir) #11
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %22 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %de, align 4
  %24 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sinfo, align 8
  %call26 = call ptr @fat_build_inode(ptr noundef %1, ptr noundef %23, i64 noundef %25) #11
  %bh27 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %26 = ptrtoint ptr %bh27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bh27, align 8
  %tobool.not.i72 = icmp eq ptr %27, null
  br i1 %tobool.not.i72, label %if.end25.brelse.exit74_crit_edge, label %if.then.i73

if.end25.brelse.exit74_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit74

if.then.i73:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %27) #11
  br label %brelse.exit74

brelse.exit74:                                    ; preds = %if.then.i73, %if.end25.brelse.exit74_crit_edge
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %brelse.exit74
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call26 to i32
  br label %out

if.end31:                                         ; preds = %brelse.exit74
  call void @__sanitizer_cov_trace_pc() #13
  call void @set_nlink(ptr noundef %call26, i32 noundef 2) #11
  %call32 = call i32 @fat_truncate_time(ptr noundef %call26, ptr noundef nonnull %ts, i32 noundef 7) #11
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call26) #11
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock34 = getelementptr inbounds %struct.msdos_sb_info, ptr %30, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock34) #11
  %call35 = call i32 @fat_flush_inodes(ptr noundef %1, ptr noundef %dir, ptr noundef %call26) #11
  br label %cleanup

out_free:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = call i32 @fat_free_clusters(ptr noundef %dir, i32 noundef %call16) #11
  br label %out

out:                                              ; preds = %out_free, %if.then29, %if.end15.out_crit_edge, %if.then.i, %if.then14.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call22, %out_free ], [ %28, %if.then29 ], [ %call16, %if.end15.out_crit_edge ], [ -22, %if.then14.out_crit_edge ], [ -22, %if.then.i ]
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock38 = getelementptr inbounds %struct.msdos_sb_info, ptr %32, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock38) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end31
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #2 align 64 {
entry:
  %msdos_name.i = alloca [11 x i8], align 1
  %sinfo = alloca %struct.fat_slot_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #11
  %4 = call ptr @memset(ptr %sinfo, i32 255, i32 32)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %call2 = tail call i32 @fat_dir_empty(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %options.i = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 19
  %15 = call ptr @memset(ptr %msdos_name.i, i32 255, i32 11)
  %call1.i = call fastcc i32 @msdos_format_name(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %msdos_name.i, ptr noundef %options.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.msdos_find.exit.thread_crit_edge

if.end.msdos_find.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.end.i:                                         ; preds = %if.end
  %call3.i = call i32 @fat_scan(ptr noundef %dir, ptr noundef nonnull %msdos_name.i, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.msdos_find.exit.thread_crit_edge

if.end.i.msdos_find.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

land.lhs.true.i:                                  ; preds = %if.end.i
  %dotsOK.i = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 19, i32 12
  %16 = ptrtoint ptr %dotsOK.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %dotsOK.i, align 4
  %17 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i = icmp eq i16 %17, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %if.then7.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then7.i:                                       ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %19)
  %cmp.i = icmp eq i8 %19, 46
  %de.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %20 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %de.i, align 4
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %attr.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not.i = icmp eq i8 %24, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end21.i

if.then9.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.then9.i.if.then23.i_crit_edge, label %if.then9.i.if.end7_crit_edge

if.then9.i.if.end7_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then9.i.if.then23.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i:                                       ; preds = %if.then7.i
  br i1 %tobool11.not.i, label %if.end21.i.if.end7_crit_edge, label %if.end21.i.if.then23.i_crit_edge

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.end21.i.if.end7_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then23.i:                                      ; preds = %if.end21.i.if.then23.i_crit_edge, %if.then9.i.if.then23.i_crit_edge
  %bh.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %25 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then23.i.msdos_find.exit.thread_crit_edge, label %if.then.i.i

if.then23.i.msdos_find.exit.thread_crit_edge:     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msdos_find.exit.thread

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %26) #11
  br label %msdos_find.exit.thread

msdos_find.exit.thread:                           ; preds = %if.then.i.i, %if.then23.i.msdos_find.exit.thread_crit_edge, %if.end.i.msdos_find.exit.thread_crit_edge, %if.end.msdos_find.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.then.i.i ], [ -2, %if.then23.i.msdos_find.exit.thread_crit_edge ], [ %call3.i, %if.end.i.msdos_find.exit.thread_crit_edge ], [ -2, %if.end.msdos_find.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  br label %out

if.end7:                                          ; preds = %if.end21.i.if.end7_crit_edge, %if.then9.i.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name.i) #11
  %call8 = call i32 @fat_remove_entries(ptr noundef %dir, ptr noundef nonnull %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @drop_nlink(ptr noundef %dir) #11
  call void @clear_nlink(ptr noundef %3) #11
  %call12 = call i32 @fat_truncate_time(ptr noundef %3, ptr noundef null, i32 noundef 4) #11
  call void @fat_detach(ptr noundef %3) #11
  br label %out

out:                                              ; preds = %if.end11, %if.end7.out_crit_edge, %msdos_find.exit.thread, %entry.out_crit_edge
  %err.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ 0, %if.end11 ], [ %retval.0.i.ph, %msdos_find.exit.thread ]
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock14 = getelementptr inbounds %struct.msdos_sb_info, ptr %28, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool15.not = icmp eq i32 %err.0, 0
  br i1 %tobool15.not, label %if.then16, label %out.if.end18_crit_edge

out.if.end18_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 @fat_flush_inodes(ptr noundef %1, ptr noundef %dir, ptr noundef %3) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %out.if.end18_crit_edge
  %err.1 = phi i32 [ %err.0, %out.if.end18_crit_edge ], [ %call17, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #2 align 64 {
entry:
  %dotdot_bh.i = alloca ptr, align 4
  %dotdot_de.i = alloca ptr, align 4
  %old_sinfo.i = alloca %struct.fat_slot_info, align 8
  %sinfo.i = alloca %struct.fat_slot_info, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %old_msdos_name = alloca [11 x i8], align 1
  %new_msdos_name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %old_msdos_name) #11
  %2 = call ptr @memset(ptr %old_msdos_name, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %new_msdos_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  %3 = call ptr @memset(ptr %new_msdos_name, i32 255, i32 11)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name, align 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i55 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i55, align 16
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 19
  %call4 = call fastcc i32 @msdos_format_name(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %old_msdos_name, ptr noundef %options)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  %d_name8 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %name9 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name9, align 8
  %16 = ptrtoint ptr %d_name8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_name8, align 8
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb13, align 4
  %s_fs_info.i56 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i56, align 16
  %options15 = getelementptr inbounds %struct.msdos_sb_info, ptr %21, i32 0, i32 19
  %call16 = call fastcc i32 @msdos_format_name(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %new_msdos_name, ptr noundef %options15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end19:                                         ; preds = %if.end7
  %22 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name9, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %25)
  %cmp = icmp eq i8 %25, 46
  br i1 %cmp, label %land.rhs, label %if.end19.land.end_crit_edge

if.end19.land.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %new_msdos_name to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %new_msdos_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %27)
  %cmp25 = icmp ne i8 %27, 46
  %phi.cast = zext i1 %cmp25 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end19.land.end_crit_edge
  %28 = phi i32 [ 0, %if.end19.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dotdot_bh.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dotdot_de.i) #11
  %29 = ptrtoint ptr %dotdot_de.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %dotdot_de.i, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_sinfo.i) #11
  %30 = call ptr @memset(ptr %old_sinfo.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo.i) #11
  %31 = call ptr @memset(ptr %sinfo.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #11
  %32 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %33 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %dotdot_bh.i, align 4
  %bh.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i, i32 0, i32 4
  %34 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bh.i, align 8
  %bh1.i = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo.i, i32 0, i32 4
  %35 = ptrtoint ptr %bh1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %bh1.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i.i, align 8
  %d_inode.i271.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i271.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i271.i, align 8
  %call3.i = call i32 @fat_scan(ptr noundef %old_dir, ptr noundef nonnull %old_msdos_name, ptr noundef nonnull %old_sinfo.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.end.out.i_crit_edge

land.end.out.i_crit_edge:                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i:                                         ; preds = %land.end
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %37, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %42)
  %cmp.i = icmp eq i16 %42, 16384
  %conv4.i = zext i1 %cmp.i to i32
  %cmp6.i = icmp ne ptr %old_dir, %new_dir
  %spec.select.i = and i1 %cmp6.i, %cmp.i
  br i1 %spec.select.i, label %if.then9.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  %call10.i = call i32 @fat_get_dotdot_entry(ptr noundef %37, ptr noundef nonnull %dotdot_bh.i, ptr noundef nonnull %dotdot_de.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end14.i_crit_edge, label %if.then9.i.out.i_crit_edge

if.then9.i.out.i_crit_edge:                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %i_attrs.i = getelementptr i8, ptr %37, i32 -128
  %43 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_attrs.i, align 8
  %call16.i = call i32 @fat_scan(ptr noundef %new_dir, ptr noundef nonnull %new_msdos_name, ptr noundef nonnull %sinfo.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  %tobool19.not.i = icmp eq ptr %39, null
  %or.cond.i = select i1 %tobool17.not.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond.i, label %if.then20.i, label %if.end61.i

if.then20.i:                                      ; preds = %if.end14.i
  %de.i = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo.i, i32 0, i32 3
  %45 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %de.i, align 4
  %de21.i = getelementptr inbounds %struct.fat_slot_info, ptr %old_sinfo.i, i32 0, i32 3
  %47 = ptrtoint ptr %de21.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %de21.i, align 4
  %cmp22.not.i = icmp eq ptr %46, %48
  br i1 %cmp22.not.i, label %if.end25.i, label %if.then20.i.out.i_crit_edge

if.then20.i.out.i_crit_edge:                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end25.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not.i = icmp eq i32 %28, 0
  %49 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_attrs.i, align 8
  %and32.i = and i32 %50, -3
  %masksel313.i = select i1 %tobool26.not.i, i32 0, i32 2
  %storemerge312.i = or i32 %and32.i, %masksel313.i
  store i32 %storemerge312.i, ptr %i_attrs.i, align 8
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags.i, align 4
  %and34.i = and i32 %54, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false.i, label %if.end25.i.if.then38.i_crit_edge

if.end25.i.if.then38.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

lor.lhs.false.i:                                  ; preds = %if.end25.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %55 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_flags.i, align 4
  %and36.i = and i32 %56, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else45.i, label %lor.lhs.false.i.if.then38.i_crit_edge

lor.lhs.false.i.if.then38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %lor.lhs.false.i.if.then38.i_crit_edge, %if.end25.i.if.then38.i_crit_edge
  %call39.i = call i32 @fat_sync_inode(ptr noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.if.end46.i_crit_edge, label %if.then41.i

if.then38.i.if.end46.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then41.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %44, ptr %i_attrs.i, align 8
  br label %out.i

if.else45.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %37, i32 noundef 7) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else45.i, %if.then38.i.if.end46.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 38
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #11
  %call.i.i1.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #11
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end46.i
  %cur.0.i.i.i = phi i64 [ %call.i.i1.i.i.i, %if.end46.i ], [ %call.i.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %58 = add i64 %cur.0.i.i.i, 2
  %add.i.i.i = and i64 %58, -2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #11
  %call.i.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i.i, i64 noundef %cur.0.i.i.i, i64 noundef %add.i.i.i) #11
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, %cur.0.i.i.i
  br i1 %cmp.i.i.i, label %inode_inc_iversion.exit.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, !prof !39

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

inode_inc_iversion.exit.i:                        ; preds = %for.cond.i.i.i
  %call47.i = call i32 @fat_truncate_time(ptr noundef %old_dir, ptr noundef null, i32 noundef 6) #11
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_flags49.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags49.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags49.i, align 4
  %and50.i = and i32 %62, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %lor.lhs.false52.i, label %inode_inc_iversion.exit.i.if.then56.i_crit_edge

inode_inc_iversion.exit.i.if.then56.i_crit_edge:  ; preds = %inode_inc_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56.i

lor.lhs.false52.i:                                ; preds = %inode_inc_iversion.exit.i
  %i_flags53.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %63 = ptrtoint ptr %i_flags53.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_flags53.i, align 4
  %and54.i = and i32 %64, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.else58.i, label %lor.lhs.false52.i.if.then56.i_crit_edge

lor.lhs.false52.i.if.then56.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56.i

if.then56.i:                                      ; preds = %lor.lhs.false52.i.if.then56.i_crit_edge, %inode_inc_iversion.exit.i.if.then56.i_crit_edge
  %call57.i = call i32 @fat_sync_inode(ptr noundef %old_dir) #11
  br label %out.i

if.else58.i:                                      ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #11
  br label %out.i

if.end61.i:                                       ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %37) #11
  %65 = call ptr @memcpy(ptr %ts.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  br i1 %tobool19.not.i, label %if.else75.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  br i1 %tobool17.not.i, label %if.end66.i, label %if.then63.i.out.i_crit_edge

if.then63.i.out.i_crit_edge:                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end66.i:                                       ; preds = %if.then63.i
  br i1 %cmp.i, label %if.then68.i, label %if.end66.i.if.end73.i_crit_edge

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.then68.i:                                      ; preds = %if.end66.i
  %call69.i = call i32 @fat_dir_empty(ptr noundef nonnull %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then68.i.if.end73.i_crit_edge, label %if.then68.i.out.i_crit_edge

if.then68.i.out.i_crit_edge:                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then68.i.if.end73.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then68.i.if.end73.i_crit_edge, %if.end66.i.if.end73.i_crit_edge
  %i_pos.i = getelementptr i8, ptr %39, i32 -120
  %66 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_pos.i, align 8
  call void @fat_detach(ptr noundef nonnull %39) #11
  br label %if.end81.i

if.else75.i:                                      ; preds = %if.end61.i
  %call76.i = call fastcc i32 @msdos_add_entry(ptr noundef %new_dir, ptr noundef nonnull %new_msdos_name, i32 noundef %conv4.i, i32 noundef %28, i32 noundef 0, ptr noundef nonnull %ts.i, ptr noundef nonnull %sinfo.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %if.else75.i.out.i_crit_edge

if.else75.i.out.i_crit_edge:                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end79.i:                                       ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sinfo.i, align 8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end79.i, %if.end73.i
  %new_i_pos.0.i = phi i64 [ %67, %if.end73.i ], [ %69, %if.end79.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  %i_version.i.i.i276.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 38
  %call.i.i.i.i.i277.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i276.i, i32 noundef 8) #11
  %call.i.i1.i.i278.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i276.i) #11
  br label %for.cond.i.i284.i

for.cond.i.i284.i:                                ; preds = %for.cond.i.i284.i.for.cond.i.i284.i_crit_edge, %if.end81.i
  %cur.0.i.i279.i = phi i64 [ %call.i.i1.i.i278.i, %if.end81.i ], [ %call.i.i.i282.i, %for.cond.i.i284.i.for.cond.i.i284.i_crit_edge ]
  %70 = add i64 %cur.0.i.i279.i, 2
  %add.i.i280.i = and i64 %70, -2
  %call.i.i.i.i281.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i276.i, i32 noundef 8) #11
  %call.i.i.i282.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i276.i, i64 noundef %cur.0.i.i279.i, i64 noundef %add.i.i280.i) #11
  %cmp.i.i283.i = icmp eq i64 %call.i.i.i282.i, %cur.0.i.i279.i
  br i1 %cmp.i.i283.i, label %inode_inc_iversion.exit285.i, label %for.cond.i.i284.i.for.cond.i.i284.i_crit_edge, !prof !39

for.cond.i.i284.i.for.cond.i.i284.i_crit_edge:    ; preds = %for.cond.i.i284.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i284.i

inode_inc_iversion.exit285.i:                     ; preds = %for.cond.i.i284.i
  call void @fat_detach(ptr noundef %37) #11
  call void @fat_attach(ptr noundef %37, i64 noundef %new_i_pos.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool82.not.i = icmp eq i32 %28, 0
  %71 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_attrs.i, align 8
  %and90.i = and i32 %72, -3
  %masksel.i = select i1 %tobool82.not.i, i32 0, i32 2
  %storemerge.i = or i32 %and90.i, %masksel.i
  store i32 %storemerge.i, ptr %i_attrs.i, align 8
  %73 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb13, align 4
  %s_flags93.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %s_flags93.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_flags93.i, align 4
  %and94.i = and i32 %76, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %lor.lhs.false96.i, label %inode_inc_iversion.exit285.i.if.then100.i_crit_edge

inode_inc_iversion.exit285.i.if.then100.i_crit_edge: ; preds = %inode_inc_iversion.exit285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100.i

lor.lhs.false96.i:                                ; preds = %inode_inc_iversion.exit285.i
  %i_flags97.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %77 = ptrtoint ptr %i_flags97.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_flags97.i, align 4
  %and98.i = and i32 %78, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.else105.i, label %lor.lhs.false96.i.if.then100.i_crit_edge

lor.lhs.false96.i.if.then100.i_crit_edge:         ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100.i

if.then100.i:                                     ; preds = %lor.lhs.false96.i.if.then100.i_crit_edge, %inode_inc_iversion.exit285.i.if.then100.i_crit_edge
  %call101.i = call i32 @fat_sync_inode(ptr noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.then100.i.if.end106.i_crit_edge, label %if.then100.i.error_inode.i_crit_edge

if.then100.i.error_inode.i_crit_edge:             ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_inode.i

if.then100.i.if.end106.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.else105.i:                                     ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %37, i32 noundef 7) #11
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else105.i, %if.then100.i.if.end106.i_crit_edge
  br i1 %spec.select.i, label %if.then108.i, label %if.end127.thread.i

if.then108.i:                                     ; preds = %if.end106.i
  %79 = ptrtoint ptr %dotdot_de.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dotdot_de.i, align 4
  %i_logstart.i = getelementptr i8, ptr %new_dir, i32 -132
  %81 = ptrtoint ptr %i_logstart.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_logstart.i, align 4
  %conv.i.i = trunc i32 %82 to i16
  %83 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %start.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %80, i32 0, i32 10
  %84 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %start.i.i, align 2
  %85 = lshr i32 %82, 16
  %conv1.i.i = trunc i32 %85 to i16
  %86 = call i16 @llvm.bswap.i16(i16 %conv1.i.i) #11
  %starthi.i.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %80, i32 0, i32 7
  %87 = ptrtoint ptr %starthi.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %starthi.i.i, align 4
  %88 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dotdot_bh.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %89, ptr noundef %37) #11
  %90 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb13, align 4
  %s_flags111.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %s_flags111.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_flags111.i, align 4
  %and112.i = and i32 %93, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %lor.lhs.false114.i, label %if.then108.i.if.then118.i_crit_edge

if.then108.i.if.then118.i_crit_edge:              ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118.i

lor.lhs.false114.i:                               ; preds = %if.then108.i
  %i_flags115.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %94 = ptrtoint ptr %i_flags115.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_flags115.i, align 4
  %and116.i = and i32 %95, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %lor.lhs.false114.i.if.end123.i_crit_edge, label %lor.lhs.false114.i.if.then118.i_crit_edge

lor.lhs.false114.i.if.then118.i_crit_edge:        ; preds = %lor.lhs.false114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118.i

lor.lhs.false114.i.if.end123.i_crit_edge:         ; preds = %lor.lhs.false114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

if.then118.i:                                     ; preds = %lor.lhs.false114.i.if.then118.i_crit_edge, %if.then108.i.if.then118.i_crit_edge
  %96 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dotdot_bh.i, align 4
  %call119.i = call i32 @sync_dirty_buffer(ptr noundef %97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.then118.i.if.end123.i_crit_edge, label %if.then118.i.if.then156.i_crit_edge

if.then118.i.if.then156.i_crit_edge:              ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then156.i

if.then118.i.if.end123.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then118.i.if.end123.i_crit_edge, %lor.lhs.false114.i.if.end123.i_crit_edge
  call void @drop_nlink(ptr noundef %old_dir) #11
  br i1 %tobool19.not.i, label %if.then125.i, label %if.end123.i.if.end127.i_crit_edge

if.end123.i.if.end127.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.then125.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @inc_nlink(ptr noundef %new_dir) #11
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %if.end123.i.if.end127.i_crit_edge
  %call128.i = call i32 @fat_remove_entries(ptr noundef %old_dir, ptr noundef nonnull %old_sinfo.i) #11
  %98 = ptrtoint ptr %bh1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %bh1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool130.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool130.not.i, label %if.end127.i.if.end132.i_crit_edge, label %if.end127.i.if.then156.i_crit_edge

if.end127.i.if.then156.i_crit_edge:               ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then156.i

if.end127.i.if.end132.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.end127.thread.i:                               ; preds = %if.end106.i
  %call128303.i = call i32 @fat_remove_entries(ptr noundef %old_dir, ptr noundef nonnull %old_sinfo.i) #11
  %99 = ptrtoint ptr %bh1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %bh1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128303.i)
  %tobool130.not304.i = icmp eq i32 %call128303.i, 0
  br i1 %tobool130.not304.i, label %if.end127.thread.i.if.end132.i_crit_edge, label %if.end127.thread.i.error_inode.i_crit_edge

if.end127.thread.i.error_inode.i_crit_edge:       ; preds = %if.end127.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_inode.i

if.end127.thread.i.if.end132.i_crit_edge:         ; preds = %if.end127.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.end127.thread.i.if.end132.i_crit_edge, %if.end127.i.if.end132.i_crit_edge
  call fastcc void @inode_inc_iversion(ptr noundef %old_dir) #11
  %call133.i = call i32 @fat_truncate_time(ptr noundef %old_dir, ptr noundef nonnull %ts.i, i32 noundef 6) #11
  %100 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb, align 4
  %s_flags135.i = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %s_flags135.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_flags135.i, align 4
  %and136.i = and i32 %103, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %lor.lhs.false138.i, label %if.end132.i.if.then142.i_crit_edge

if.end132.i.if.then142.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142.i

lor.lhs.false138.i:                               ; preds = %if.end132.i
  %i_flags139.i = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %104 = ptrtoint ptr %i_flags139.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_flags139.i, align 4
  %and140.i = and i32 %105, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %if.else144.i, label %lor.lhs.false138.i.if.then142.i_crit_edge

lor.lhs.false138.i.if.then142.i_crit_edge:        ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142.i

if.then142.i:                                     ; preds = %lor.lhs.false138.i.if.then142.i_crit_edge, %if.end132.i.if.then142.i_crit_edge
  %call143.i = call i32 @fat_sync_inode(ptr noundef %old_dir) #11
  br label %if.end145.i

if.else144.i:                                     ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #11
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else144.i, %if.then142.i
  br i1 %tobool19.not.i, label %if.end145.i.out.i_crit_edge, label %if.then147.i

if.end145.i.out.i_crit_edge:                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then147.i:                                     ; preds = %if.end145.i
  call void @drop_nlink(ptr noundef nonnull %39) #11
  br i1 %cmp.i, label %if.then149.i, label %if.then147.i.if.end150.i_crit_edge

if.then147.i.if.end150.i_crit_edge:               ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150.i

if.then149.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @drop_nlink(ptr noundef nonnull %39) #11
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then149.i, %if.then147.i.if.end150.i_crit_edge
  %call151.i = call i32 @fat_truncate_time(ptr noundef nonnull %39, ptr noundef nonnull %ts.i, i32 noundef 4) #11
  br label %out.i

out.i:                                            ; preds = %if.then182.i, %if.end179.i.out.i_crit_edge, %if.then166.i.out.i_crit_edge, %if.end150.i, %if.end145.i.out.i_crit_edge, %if.else75.i.out.i_crit_edge, %if.then68.i.out.i_crit_edge, %if.then63.i.out.i_crit_edge, %if.else58.i, %if.then56.i, %if.then41.i, %if.then20.i.out.i_crit_edge, %if.then9.i.out.i_crit_edge, %land.end.out.i_crit_edge
  %err.1.ph.i = phi i32 [ %err.3.i, %if.then166.i.out.i_crit_edge ], [ -22, %if.then20.i.out.i_crit_edge ], [ -5, %if.then9.i.out.i_crit_edge ], [ -5, %land.end.out.i_crit_edge ], [ 0, %if.else58.i ], [ 0, %if.then56.i ], [ %call39.i, %if.then41.i ], [ %call76.i, %if.else75.i.out.i_crit_edge ], [ 0, %if.end145.i.out.i_crit_edge ], [ 0, %if.end150.i ], [ %err.3.i, %if.end179.i.out.i_crit_edge ], [ %err.3.i, %if.then182.i ], [ %call69.i, %if.then68.i.out.i_crit_edge ], [ %call16.i, %if.then63.i.out.i_crit_edge ]
  %106 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr.i = load ptr, ptr %bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i, label %out.i.brelse.exit.i_crit_edge, label %if.then.i.i

out.i.brelse.exit.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %.pr.i) #11
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.else172.i.brelse.exit.i_crit_edge, %if.then.i.i, %out.i.brelse.exit.i_crit_edge
  %err.1311.i = phi i32 [ %err.1.ph.i, %out.i.brelse.exit.i_crit_edge ], [ %err.1.ph.i, %if.then.i.i ], [ %err.3.i, %if.else172.i.brelse.exit.i_crit_edge ]
  %107 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dotdot_bh.i, align 4
  %tobool.not.i289.i = icmp eq ptr %108, null
  br i1 %tobool.not.i289.i, label %brelse.exit.i.brelse.exit291.i_crit_edge, label %if.then.i290.i

brelse.exit.i.brelse.exit291.i_crit_edge:         ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit291.i

if.then.i290.i:                                   ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %108) #11
  br label %brelse.exit291.i

brelse.exit291.i:                                 ; preds = %if.then.i290.i, %brelse.exit.i.brelse.exit291.i_crit_edge
  %109 = ptrtoint ptr %bh1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bh1.i, align 8
  %tobool.not.i292.i = icmp eq ptr %110, null
  br i1 %tobool.not.i292.i, label %brelse.exit291.i.do_msdos_rename.exit_crit_edge, label %if.then.i293.i

brelse.exit291.i.do_msdos_rename.exit_crit_edge:  ; preds = %brelse.exit291.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_msdos_rename.exit

if.then.i293.i:                                   ; preds = %brelse.exit291.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %110) #11
  br label %do_msdos_rename.exit

if.then156.i:                                     ; preds = %if.end127.i.if.then156.i_crit_edge, %if.then118.i.if.then156.i_crit_edge
  %err.2302.i = phi i32 [ %call119.i, %if.then118.i.if.then156.i_crit_edge ], [ %call128.i, %if.end127.i.if.then156.i_crit_edge ]
  %111 = ptrtoint ptr %dotdot_de.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dotdot_de.i, align 4
  %i_logstart158.i = getelementptr i8, ptr %old_dir, i32 -132
  %113 = ptrtoint ptr %i_logstart158.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_logstart158.i, align 4
  %conv.i296.i = trunc i32 %114 to i16
  %115 = call i16 @llvm.bswap.i16(i16 %conv.i296.i) #11
  %start.i297.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %112, i32 0, i32 10
  %116 = ptrtoint ptr %start.i297.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %start.i297.i, align 2
  %117 = lshr i32 %114, 16
  %conv1.i298.i = trunc i32 %117 to i16
  %118 = call i16 @llvm.bswap.i16(i16 %conv1.i298.i) #11
  %starthi.i299.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %112, i32 0, i32 7
  %119 = ptrtoint ptr %starthi.i299.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %starthi.i299.i, align 4
  %120 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dotdot_bh.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %121, ptr noundef %37) #11
  %122 = ptrtoint ptr %dotdot_bh.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dotdot_bh.i, align 4
  %call159.i = call i32 @sync_dirty_buffer(ptr noundef %123) #11
  %or160.i = or i32 %call159.i, 1
  br label %error_inode.i

error_inode.i:                                    ; preds = %if.then156.i, %if.end127.thread.i.error_inode.i_crit_edge, %if.then100.i.error_inode.i_crit_edge
  %err.3.i = phi i32 [ %call101.i, %if.then100.i.error_inode.i_crit_edge ], [ %err.2302.i, %if.then156.i ], [ %call128303.i, %if.end127.thread.i.error_inode.i_crit_edge ]
  %corrupt.0.i = phi i32 [ 0, %if.then100.i.error_inode.i_crit_edge ], [ %or160.i, %if.then156.i ], [ 1, %if.end127.thread.i.error_inode.i_crit_edge ]
  call void @fat_detach(ptr noundef %37) #11
  %124 = ptrtoint ptr %old_sinfo.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %old_sinfo.i, align 8
  call void @fat_attach(ptr noundef %37, i64 noundef %125) #11
  %126 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %44, ptr %i_attrs.i, align 8
  br i1 %tobool19.not.i, label %if.else172.i, label %if.then166.i

if.then166.i:                                     ; preds = %error_inode.i
  call void @fat_attach(ptr noundef nonnull %39, i64 noundef %new_i_pos.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.0.i)
  %tobool167.not.i = icmp eq i32 %corrupt.0.i, 0
  br i1 %tobool167.not.i, label %if.then166.i.out.i_crit_edge, label %if.then168.i

if.then166.i.out.i_crit_edge:                     ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then168.i:                                     ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #13
  %call169.i = call i32 @fat_sync_inode(ptr noundef nonnull %39) #11
  br label %if.end179.i

if.else172.i:                                     ; preds = %error_inode.i
  %call173.i = call i32 @fat_remove_entries(ptr noundef %new_dir, ptr noundef nonnull %sinfo.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.0.i)
  %tobool174.not.i = icmp eq i32 %corrupt.0.i, 0
  %127 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %bh.i, align 8
  br i1 %tobool174.not.i, label %if.else172.i.brelse.exit.i_crit_edge, label %if.else172.i.if.end179.i_crit_edge

if.else172.i.if.end179.i_crit_edge:               ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.i

if.else172.i.brelse.exit.i_crit_edge:             ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i

if.end179.i:                                      ; preds = %if.else172.i.if.end179.i_crit_edge, %if.then168.i
  %call169.pn.i = phi i32 [ %call169.i, %if.then168.i ], [ %call173.i, %if.else172.i.if.end179.i_crit_edge ]
  %corrupt.2.i = or i32 %call169.pn.i, %corrupt.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %corrupt.2.i)
  %cmp180.i = icmp slt i32 %corrupt.2.i, 0
  br i1 %cmp180.i, label %if.then182.i, label %if.end179.i.out.i_crit_edge

if.end179.i.out.i_crit_edge:                      ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then182.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i_sb13, align 4
  %130 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %sinfo.i, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %129, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.do_msdos_rename, i64 noundef %131) #14
  br label %out.i

do_msdos_rename.exit:                             ; preds = %if.then.i293.i, %brelse.exit291.i.do_msdos_rename.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_sinfo.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dotdot_de.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dotdot_bh.i) #11
  br label %out

out:                                              ; preds = %do_msdos_rename.exit, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call16, %if.end7.out_crit_edge ], [ %err.1311.i, %do_msdos_rename.exit ]
  %132 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock31 = getelementptr inbounds %struct.msdos_sb_info, ptr %133, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %s_lock31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool32.not = icmp eq i32 %err.0, 0
  br i1 %tobool32.not, label %if.then33, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = call i32 @fat_flush_inodes(ptr noundef %1, ptr noundef %old_dir, ptr noundef %new_dir) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.0, %out.cleanup_crit_edge ], [ %call34, %if.then33 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %new_msdos_name) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %old_msdos_name) #11
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdos_format_name(ptr nocapture noundef readonly %name, i32 noundef %len, ptr noundef %res, ptr nocapture noundef readonly %opts) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp = icmp eq i8 %1, 46
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %dotsOK = getelementptr inbounds %struct.fat_mount_options, ptr %opts, i32 0, i32 12
  %2 = ptrtoint ptr %dotsOK to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %dotsOK, align 4
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %name, i32 1
  %dec = add i32 %len, -1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry.if.end3_crit_edge
  %len.addr.0 = phi i32 [ %dec, %if.then2 ], [ %len, %entry.if.end3_crit_edge ]
  %name.addr.0 = phi ptr [ %incdec.ptr, %if.then2 ], [ %name, %entry.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool4.not350 = icmp eq i32 %len.addr.0, 0
  br i1 %tobool4.not350, label %if.end3.cleanup_crit_edge, label %land.rhs.lr.ph

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end3
  %sub.ptr.rhs.cast = ptrtoint ptr %res to i32
  %name_check = getelementptr inbounds %struct.fat_mount_options, ptr %opts, i32 0, i32 8
  %nocase = getelementptr inbounds %struct.fat_mount_options, ptr %opts, i32 0, i32 12
  %4 = add i32 %len.addr.0, -8
  br label %for.body

land.rhs:                                         ; preds = %if.end64
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr84 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp slt i32 %sub.ptr.sub, 8
  br i1 %cmp5, label %land.rhs.for.body_crit_edge, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.lr.ph
  %len.addr.1351440 = phi i32 [ %len.addr.0, %land.rhs.lr.ph ], [ %dec8, %land.rhs.for.body_crit_edge ]
  %name.addr.1352439 = phi ptr [ %name.addr.0, %land.rhs.lr.ph ], [ %incdec.ptr7, %land.rhs.for.body_crit_edge ]
  %walk.0353438 = phi ptr [ %res, %land.rhs.lr.ph ], [ %incdec.ptr84, %land.rhs.for.body_crit_edge ]
  %space.0355437 = phi i32 [ 1, %land.rhs.lr.ph ], [ %conv67, %land.rhs.for.body_crit_edge ]
  %incdec.ptr7 = getelementptr i8, ptr %name.addr.1352439, i32 1
  %5 = ptrtoint ptr %name.addr.1352439 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name.addr.1352439, align 1
  %dec8 = add i32 %len.addr.1351440, -1
  %7 = ptrtoint ptr %name_check to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %8)
  %cmp10.not = icmp eq i8 %8, 114
  br i1 %cmp10.not, label %for.body.if.end25_crit_edge, label %land.lhs.true

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %conv12 = zext i8 %6 to i32
  %call = tail call ptr @strchr(ptr noundef nonnull @bad_chars, i32 noundef %conv12)
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.end15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %8)
  %cmp18 = icmp eq i8 %8, 115
  br i1 %cmp18, label %land.lhs.true20, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true20:                                  ; preds = %if.end15
  %call22 = tail call ptr @strchr(ptr noundef nonnull @bad_if_strict, i32 noundef %conv12)
  %tobool23.not = icmp ne ptr %call22, null
  %9 = add i8 %6, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %9)
  %10 = icmp ult i8 %9, 26
  %or.cond = select i1 %tobool23.not, i1 true, i1 %10
  %.fr336 = freeze i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr336)
  %cmp41 = icmp ult i8 %.fr336, 32
  %or.cond428 = or i1 %or.cond, %cmp41
  br i1 %or.cond428, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.switch.early.test_crit_edge

land.lhs.true20.switch.early.test_crit_edge:      ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %switch.early.test

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end15.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %11 = add i8 %6, -91
  call void @__sanitizer_cov_trace_const_cmp1(i8 -26, i8 %11)
  %12 = icmp ult i8 %11, -26
  %.fr336.old = freeze i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr336.old)
  %cmp41.old = icmp ult i8 %.fr336.old, 32
  %or.cond429 = and i1 %12, %cmp41.old
  br i1 %or.cond429, label %if.end25.cleanup_crit_edge, label %if.end25.switch.early.test_crit_edge

if.end25.switch.early.test_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %switch.early.test

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test:                                ; preds = %if.end25.switch.early.test_crit_edge, %land.lhs.true20.switch.early.test_crit_edge
  %13 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end51 [
    i8 92, label %switch.early.test.cleanup_crit_edge
    i8 58, label %switch.early.test.cleanup_crit_edge456
  ]

switch.early.test.cleanup_crit_edge456:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end51:                                         ; preds = %switch.early.test
  %cmp52 = icmp eq ptr %walk.0353438, %res
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %6)
  %cmp56 = icmp eq i8 %6, -27
  %or.cond320 = select i1 %cmp52, i1 %cmp56, i1 false
  %c.1 = select i1 %or.cond320, i8 5, i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.1)
  %cmp61 = icmp eq i8 %c.1, 46
  br i1 %cmp61, label %if.end51.for.end_crit_edge, label %if.end64

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end64:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %c.1)
  %cmp66 = icmp eq i8 %c.1, 32
  %conv67 = zext i1 %cmp66 to i32
  %14 = ptrtoint ptr %nocase to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load68 = load i16, ptr %nocase, align 4
  %15 = and i16 %bf.load68, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool72.not = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %c.1)
  %cmp75 = icmp ugt i8 %c.1, 96
  %or.cond321 = select i1 %tobool72.not, i1 %cmp75, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %c.1)
  %cmp79 = icmp ult i8 %c.1, 123
  %or.cond322 = select i1 %or.cond321, i1 %cmp79, i1 false
  %sub = add i8 %c.1, -32
  %cond = select i1 %or.cond322, i8 %sub, i8 %c.1
  %16 = ptrtoint ptr %walk.0353438 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cond, ptr %walk.0353438, align 1
  %incdec.ptr84 = getelementptr i8, ptr %walk.0353438, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec8)
  %tobool4.not = icmp eq i32 %dec8, 0
  br i1 %tobool4.not, label %if.end64.for.end_crit_edge, label %land.rhs

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end64.for.end_crit_edge, %if.end51.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %walk.0.lcssa = phi ptr [ %incdec.ptr84, %land.rhs.for.end_crit_edge ], [ %walk.0353438, %if.end51.for.end_crit_edge ], [ %incdec.ptr84, %if.end64.for.end_crit_edge ]
  %space.0.lcssa = phi i32 [ %conv67, %land.rhs.for.end_crit_edge ], [ %space.0355437, %if.end51.for.end_crit_edge ], [ %conv67, %if.end64.for.end_crit_edge ]
  %len.addr.2 = phi i32 [ %4, %land.rhs.for.end_crit_edge ], [ %dec8, %if.end51.for.end_crit_edge ], [ 0, %if.end64.for.end_crit_edge ]
  %c.2 = phi i8 [ %c.1, %land.rhs.for.end_crit_edge ], [ 46, %if.end51.for.end_crit_edge ], [ %c.1, %if.end64.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space.0.lcssa)
  %tobool85.not = icmp eq i32 %space.0.lcssa, 0
  br i1 %tobool85.not, label %if.end87, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end87:                                         ; preds = %for.end
  %name_check88 = getelementptr inbounds %struct.fat_mount_options, ptr %opts, i32 0, i32 8
  %17 = ptrtoint ptr %name_check88 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_check88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %18)
  %cmp90 = icmp eq i8 %18, 115
  br i1 %cmp90, label %land.lhs.true92, label %if.end87.if.end106_crit_edge

if.end87.if.end106_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

land.lhs.true92:                                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2)
  %tobool93.not = icmp eq i32 %len.addr.2, 0
  br i1 %tobool93.not, label %land.lhs.true92.if.end106_crit_edge, label %land.lhs.true94

land.lhs.true92.if.end106_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

land.lhs.true94:                                  ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.2)
  %cmp96.not = icmp eq i8 %c.2, 46
  br i1 %cmp96.not, label %land.lhs.true94.while.cond119.preheader_crit_edge, label %if.then98

land.lhs.true94.while.cond119.preheader_crit_edge: ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond119.preheader

if.then98:                                        ; preds = %land.lhs.true94
  %incdec.ptr99 = getelementptr i8, ptr %name.addr.1352439, i32 2
  %19 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr7, align 1
  %dec100 = add i32 %len.addr.2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %20)
  %cmp102.not = icmp eq i8 %20, 46
  br i1 %cmp102.not, label %if.then98.while.cond119.preheader_crit_edge, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then98.while.cond119.preheader_crit_edge:      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond119.preheader

if.end106:                                        ; preds = %land.lhs.true92.if.end106_crit_edge, %if.end87.if.end106_crit_edge
  %len.addr.3 = phi i32 [ 0, %land.lhs.true92.if.end106_crit_edge ], [ %len.addr.2, %if.end87.if.end106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.2)
  %cmp108.not370 = icmp eq i8 %c.2, 46
  br i1 %cmp108.not370, label %if.end106.while.cond119.preheader_crit_edge, label %if.end106.land.rhs110_crit_edge

if.end106.land.rhs110_crit_edge:                  ; preds = %if.end106
  br label %land.rhs110

if.end106.while.cond119.preheader_crit_edge:      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond119.preheader

while.cond119.preheader:                          ; preds = %while.body.while.cond119.preheader_crit_edge, %if.end106.while.cond119.preheader_crit_edge, %if.then98.while.cond119.preheader_crit_edge, %land.lhs.true94.while.cond119.preheader_crit_edge
  %len.addr.4.lcssa = phi i32 [ %len.addr.3, %if.end106.while.cond119.preheader_crit_edge ], [ %len.addr.2, %land.lhs.true94.while.cond119.preheader_crit_edge ], [ %dec100, %if.then98.while.cond119.preheader_crit_edge ], [ %dec111, %while.body.while.cond119.preheader_crit_edge ]
  %name.addr.4.lcssa = phi ptr [ %incdec.ptr7, %if.end106.while.cond119.preheader_crit_edge ], [ %incdec.ptr7, %land.lhs.true94.while.cond119.preheader_crit_edge ], [ %incdec.ptr99, %if.then98.while.cond119.preheader_crit_edge ], [ %incdec.ptr114, %while.body.while.cond119.preheader_crit_edge ]
  %sub.ptr.rhs.cast121 = ptrtoint ptr %res to i32
  %sub.ptr.lhs.cast120375 = ptrtoint ptr %walk.0.lcssa to i32
  %sub.ptr.sub122376 = sub i32 %sub.ptr.lhs.cast120375, %sub.ptr.rhs.cast121
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub122376)
  %cmp123377 = icmp slt i32 %sub.ptr.sub122376, 8
  br i1 %cmp123377, label %while.body125.preheader, label %while.cond119.preheader.while.cond128.preheader_crit_edge

while.cond119.preheader.while.cond128.preheader_crit_edge: ; preds = %while.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond128.preheader

while.body125.preheader:                          ; preds = %while.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %21 = add i32 %sub.ptr.rhs.cast121, 8
  %22 = sub i32 %21, %sub.ptr.lhs.cast120375
  %23 = call ptr @memset(ptr %walk.0.lcssa, i32 32, i32 %22)
  %uglygep = getelementptr i8, ptr %walk.0.lcssa, i32 %22
  br label %while.cond128.preheader

land.rhs110:                                      ; preds = %while.body.land.rhs110_crit_edge, %if.end106.land.rhs110_crit_edge
  %name.addr.4372 = phi ptr [ %incdec.ptr114, %while.body.land.rhs110_crit_edge ], [ %incdec.ptr7, %if.end106.land.rhs110_crit_edge ]
  %len.addr.4371 = phi i32 [ %dec111, %while.body.land.rhs110_crit_edge ], [ %len.addr.3, %if.end106.land.rhs110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.4371)
  %tobool112.not = icmp eq i32 %len.addr.4371, 0
  br i1 %tobool112.not, label %if.end236.loopexit, label %while.body

while.body:                                       ; preds = %land.rhs110
  %dec111 = add i32 %len.addr.4371, -1
  %incdec.ptr114 = getelementptr i8, ptr %name.addr.4372, i32 1
  %24 = ptrtoint ptr %name.addr.4372 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %name.addr.4372, align 1
  %cmp108.not = icmp eq i8 %25, 46
  br i1 %cmp108.not, label %while.body.while.cond119.preheader_crit_edge, label %while.body.land.rhs110_crit_edge

while.body.land.rhs110_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs110

while.body.while.cond119.preheader_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond119.preheader

while.cond128.preheader:                          ; preds = %while.body125.preheader, %while.cond119.preheader.while.cond128.preheader_crit_edge
  %walk.1.lcssa = phi ptr [ %walk.0.lcssa, %while.cond119.preheader.while.cond128.preheader_crit_edge ], [ %uglygep, %while.body125.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.4.lcssa)
  %cmp129380 = icmp sgt i32 %len.addr.4.lcssa, 0
  br i1 %cmp129380, label %land.rhs131.lr.ph, label %while.cond128.preheader.if.end227_crit_edge

while.cond128.preheader.if.end227_crit_edge:      ; preds = %while.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

land.rhs131.lr.ph:                                ; preds = %while.cond128.preheader
  %nocase202 = getelementptr inbounds %struct.fat_mount_options, ptr %opts, i32 0, i32 12
  br label %land.rhs131

land.rhs131:                                      ; preds = %if.end198.land.rhs131_crit_edge, %land.rhs131.lr.ph
  %space.1384 = phi i32 [ 0, %land.rhs131.lr.ph ], [ %conv201, %if.end198.land.rhs131_crit_edge ]
  %walk.2383 = phi ptr [ %walk.1.lcssa, %land.rhs131.lr.ph ], [ %walk.3, %if.end198.land.rhs131_crit_edge ]
  %name.addr.5382 = phi ptr [ %name.addr.4.lcssa, %land.rhs131.lr.ph ], [ %incdec.ptr139, %if.end198.land.rhs131_crit_edge ]
  %len.addr.6381 = phi i32 [ %len.addr.4.lcssa, %land.rhs131.lr.ph ], [ %dec140, %if.end198.land.rhs131_crit_edge ]
  %sub.ptr.lhs.cast132 = ptrtoint ptr %walk.2383 to i32
  %sub.ptr.sub134 = sub i32 %sub.ptr.lhs.cast132, %sub.ptr.rhs.cast121
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub134)
  %cmp135 = icmp slt i32 %sub.ptr.sub134, 11
  br i1 %cmp135, label %while.body138, label %land.rhs131.while.end224_crit_edge

land.rhs131.while.end224_crit_edge:               ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end224

while.body138:                                    ; preds = %land.rhs131
  %incdec.ptr139 = getelementptr i8, ptr %name.addr.5382, i32 1
  %26 = ptrtoint ptr %name.addr.5382 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name.addr.5382, align 1
  %dec140 = add nsw i32 %len.addr.6381, -1
  %28 = ptrtoint ptr %name_check88 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %name_check88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %29)
  %cmp143.not = icmp eq i8 %29, 114
  br i1 %cmp143.not, label %while.body138.if.end160_crit_edge, label %land.lhs.true145

while.body138.if.end160_crit_edge:                ; preds = %while.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

land.lhs.true145:                                 ; preds = %while.body138
  %conv146 = zext i8 %27 to i32
  %call147 = tail call ptr @strchr(ptr noundef nonnull @bad_chars, i32 noundef %conv146)
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %if.end150, label %land.lhs.true145.cleanup_crit_edge

land.lhs.true145.cleanup_crit_edge:               ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end150:                                        ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %29)
  %cmp153 = icmp eq i8 %29, 115
  br i1 %cmp153, label %land.lhs.true155, label %if.end150.if.end160_crit_edge

if.end150.if.end160_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

land.lhs.true155:                                 ; preds = %if.end150
  %call157 = tail call ptr @strchr(ptr noundef nonnull @bad_if_strict, i32 noundef %conv146)
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %land.lhs.true155.if.end160_crit_edge, label %land.lhs.true155.cleanup_crit_edge

land.lhs.true155.cleanup_crit_edge:               ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true155.if.end160_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.end160:                                        ; preds = %land.lhs.true155.if.end160_crit_edge, %if.end150.if.end160_crit_edge, %while.body138.if.end160_crit_edge
  %cmp153335 = phi i1 [ true, %land.lhs.true155.if.end160_crit_edge ], [ false, %if.end150.if.end160_crit_edge ], [ false, %while.body138.if.end160_crit_edge ]
  %.fr = freeze i8 %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr)
  %cmp162 = icmp ult i8 %.fr, 32
  br i1 %cmp162, label %if.end160.cleanup_crit_edge, label %switch.early.test329

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test329:                             ; preds = %if.end160
  %30 = zext i8 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %.fr, label %if.end184 [
    i8 92, label %switch.early.test329.cleanup_crit_edge
    i8 58, label %switch.early.test329.cleanup_crit_edge457
    i8 46, label %if.then177
  ]

switch.early.test329.cleanup_crit_edge457:        ; preds = %switch.early.test329
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test329.cleanup_crit_edge:           ; preds = %switch.early.test329
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then177:                                       ; preds = %switch.early.test329
  br i1 %cmp153335, label %if.then177.cleanup_crit_edge, label %if.then177.while.end224_crit_edge

if.then177.while.end224_crit_edge:                ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end224

if.then177.cleanup_crit_edge:                     ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end184:                                        ; preds = %switch.early.test329
  %31 = add i8 %.fr, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %31)
  %32 = icmp ult i8 %31, 26
  %33 = and i1 %32, %cmp153335
  br i1 %33, label %if.end184.cleanup_crit_edge, label %if.end198

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end198:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr)
  %cmp200 = icmp eq i8 %.fr, 32
  %conv201 = zext i1 %cmp200 to i32
  %34 = ptrtoint ptr %nocase202 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load203 = load i16, ptr %nocase202, align 4
  %35 = and i16 %bf.load203, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool207.not = icmp eq i16 %35, 0
  %36 = add i8 %.fr, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %36)
  %37 = icmp ult i8 %36, 26
  %38 = and i1 %37, %tobool207.not
  %sub218 = add i8 %.fr, -32
  %storemerge = select i1 %38, i8 %sub218, i8 %.fr
  %walk.3 = getelementptr i8, ptr %walk.2383, i32 1
  %39 = ptrtoint ptr %walk.2383 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %walk.2383, align 1
  %cmp129 = icmp ugt i32 %len.addr.6381, 1
  br i1 %cmp129, label %if.end198.land.rhs131_crit_edge, label %if.end198.while.end224_crit_edge

if.end198.while.end224_crit_edge:                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end224

if.end198.land.rhs131_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs131

while.end224:                                     ; preds = %if.end198.while.end224_crit_edge, %if.then177.while.end224_crit_edge, %land.rhs131.while.end224_crit_edge
  %walk.2344 = phi ptr [ %walk.2383, %if.then177.while.end224_crit_edge ], [ %walk.2383, %land.rhs131.while.end224_crit_edge ], [ %walk.3, %if.end198.while.end224_crit_edge ]
  %space.1341 = phi i32 [ %space.1384, %if.then177.while.end224_crit_edge ], [ %space.1384, %land.rhs131.while.end224_crit_edge ], [ %conv201, %if.end198.while.end224_crit_edge ]
  %len.addr.7 = phi i32 [ %dec140, %if.then177.while.end224_crit_edge ], [ 1, %land.rhs131.while.end224_crit_edge ], [ 0, %if.end198.while.end224_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space.1341)
  %tobool225.not = icmp eq i32 %space.1341, 0
  br i1 %tobool225.not, label %while.end224.if.end227_crit_edge, label %while.end224.cleanup_crit_edge

while.end224.cleanup_crit_edge:                   ; preds = %while.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end224.if.end227_crit_edge:                 ; preds = %while.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

if.end227:                                        ; preds = %while.end224.if.end227_crit_edge, %while.cond128.preheader.if.end227_crit_edge
  %len.addr.7420 = phi i32 [ %len.addr.7, %while.end224.if.end227_crit_edge ], [ %len.addr.4.lcssa, %while.cond128.preheader.if.end227_crit_edge ]
  %walk.2344419 = phi ptr [ %walk.2344, %while.end224.if.end227_crit_edge ], [ %walk.1.lcssa, %while.cond128.preheader.if.end227_crit_edge ]
  %40 = ptrtoint ptr %name_check88 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %name_check88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %41)
  %cmp230 = icmp ne i8 %41, 115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.7420)
  %tobool233.not = icmp eq i32 %len.addr.7420, 0
  %or.cond328 = select i1 %cmp230, i1 true, i1 %tobool233.not
  br i1 %or.cond328, label %if.end227.if.end236_crit_edge, label %if.end227.cleanup_crit_edge

if.end227.cleanup_crit_edge:                      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end227.if.end236_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236

if.end236.loopexit:                               ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = ptrtoint ptr %res to i32
  br label %if.end236

if.end236:                                        ; preds = %if.end236.loopexit, %if.end227.if.end236_crit_edge
  %sub.ptr.rhs.cast239.pre-phi = phi i32 [ %.pre, %if.end236.loopexit ], [ %sub.ptr.rhs.cast121, %if.end227.if.end236_crit_edge ]
  %walk.4 = phi ptr [ %walk.0.lcssa, %if.end236.loopexit ], [ %walk.2344419, %if.end227.if.end236_crit_edge ]
  %sub.ptr.lhs.cast238391 = ptrtoint ptr %walk.4 to i32
  %sub.ptr.sub240392 = sub i32 %sub.ptr.lhs.cast238391, %sub.ptr.rhs.cast239.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub240392)
  %cmp241393 = icmp slt i32 %sub.ptr.sub240392, 11
  br i1 %cmp241393, label %while.body243.preheader, label %if.end236.cleanup_crit_edge

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body243.preheader:                          ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #13
  %42 = add i32 %sub.ptr.rhs.cast239.pre-phi, 11
  %43 = sub i32 %42, %sub.ptr.lhs.cast238391
  %44 = call ptr @memset(ptr %walk.4, i32 32, i32 %43)
  br label %cleanup

cleanup:                                          ; preds = %while.body243.preheader, %if.end236.cleanup_crit_edge, %if.end227.cleanup_crit_edge, %while.end224.cleanup_crit_edge, %if.end184.cleanup_crit_edge, %if.then177.cleanup_crit_edge, %switch.early.test329.cleanup_crit_edge, %switch.early.test329.cleanup_crit_edge457, %if.end160.cleanup_crit_edge, %land.lhs.true155.cleanup_crit_edge, %land.lhs.true145.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %for.end.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge456, %if.end25.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.then98.cleanup_crit_edge ], [ -22, %if.then177.cleanup_crit_edge ], [ -22, %while.end224.cleanup_crit_edge ], [ -22, %if.end227.cleanup_crit_edge ], [ 0, %if.end236.cleanup_crit_edge ], [ 0, %while.body243.preheader ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %land.lhs.true145.cleanup_crit_edge ], [ -22, %land.lhs.true155.cleanup_crit_edge ], [ -22, %if.end160.cleanup_crit_edge ], [ -22, %switch.early.test329.cleanup_crit_edge ], [ -22, %switch.early.test329.cleanup_crit_edge457 ], [ -22, %if.end184.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge456 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdos_add_entry(ptr noundef %dir, ptr nocapture noundef readonly %name, i32 noundef %is_dir, i32 noundef %is_hid, i32 noundef %cluster, ptr noundef %ts, ptr noundef %sinfo) unnamed_addr #2 align 64 {
entry:
  %de = alloca %struct.msdos_dir_entry, align 4
  %time = alloca i16, align 2
  %date = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %de) #11
  %4 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 1
  %5 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 2
  %6 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 3
  %7 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 7
  %8 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 8
  %9 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 9
  %10 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 10
  %11 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %time) #11
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %time, align 2, !annotation !37
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %date) #11
  %13 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %date, align 2, !annotation !37
  %14 = getelementptr inbounds i8, ptr %de, i32 13
  %15 = call ptr @memset(ptr %14, i32 255, i32 19)
  %16 = call ptr @memcpy(ptr %de, ptr %name, i32 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dir)
  %tobool.not = icmp eq i32 %is_dir, 0
  %conv = select i1 %tobool.not, i8 32, i8 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_hid)
  %tobool2.not = icmp eq i32 %is_hid, 0
  %17 = or i8 %conv, 2
  %spec.select = select i1 %tobool2.not, i8 %conv, i8 %17
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %5, align 4
  call void @fat_time_unix2fat(ptr noundef %3, ptr noundef %ts, ptr noundef nonnull %time, ptr noundef nonnull %date, ptr noundef null) #11
  %20 = call ptr @memset(ptr %6, i32 0, i32 7)
  %21 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %time, align 2
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %8, align 2
  %24 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %date, align 2
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %9, align 4
  %conv.i = trunc i32 %cluster to i16
  %27 = call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %10, align 2
  %29 = lshr i32 %cluster, 16
  %conv1.i = trunc i32 %29 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv1.i) #11
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %7, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %11, align 4
  %call8 = call i32 @fat_add_entries(ptr noundef %dir, ptr noundef nonnull %de, i32 noundef 1, ptr noundef %sinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call12 = call i32 @fat_truncate_time(ptr noundef %dir, ptr noundef %ts, i32 noundef 6) #11
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %and = and i32 %36, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end11.if.then17_crit_edge

if.end11.if.then17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end11
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %37 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags, align 4
  %and15 = and i32 %38, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end11.if.then17_crit_edge
  %call18 = call i32 @fat_sync_inode(ptr noundef %dir) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %de) #11
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #11
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %cur.0.i = phi i64 [ %call.i.i1.i, %entry ], [ %call.i.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = add i64 %cur.0.i, 2
  %add.i = and i64 %0, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #11
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #11
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_maybe_inc_iversion.exit, label %for.cond.i.for.cond.i_crit_edge, !prof !39

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

inode_maybe_inc_iversion.exit:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_attach(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_hash(ptr noundef %dentry, ptr nocapture noundef %qstr) #5 align 64 {
entry:
  %msdos_name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %options1 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msdos_name) #11
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %4 = call ptr @memset(ptr %msdos_name, i32 255, i32 11)
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %7 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qstr, align 8
  %call2 = call fastcc i32 @msdos_format_name(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %msdos_name, ptr noundef %options1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 @full_name_hash(ptr noundef %dentry, ptr noundef nonnull %msdos_name, i32 noundef 11) #15
  %hash = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %9 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msdos_name) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdos_cmp(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #5 align 64 {
entry:
  %a_msdos_name = alloca [11 x i8], align 1
  %b_msdos_name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %options1 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %a_msdos_name) #11
  %4 = call ptr @memset(ptr %a_msdos_name, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %b_msdos_name) #11
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %5 = call ptr @memset(ptr %b_msdos_name, i32 255, i32 11)
  %6 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name2, align 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %name, align 8
  %call4 = call fastcc i32 @msdos_format_name(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %a_msdos_name, ptr noundef %options1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.old_compare_crit_edge

entry.old_compare_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %old_compare

if.end:                                           ; preds = %entry
  %call6 = call fastcc i32 @msdos_format_name(ptr noundef %str, i32 noundef %len, ptr noundef nonnull %b_msdos_name, ptr noundef %options1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.old_compare_crit_edge

if.end.old_compare_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %old_compare

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 @memcmp(ptr noundef nonnull dereferenceable(11) %a_msdos_name, ptr noundef nonnull dereferenceable(11) %b_msdos_name, i32 noundef 11) #16
  br label %out

out:                                              ; preds = %if.then14, %old_compare.out_crit_edge, %if.end9
  %error.0 = phi i32 [ %call16, %if.then14 ], [ 1, %old_compare.out_crit_edge ], [ %call12, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %b_msdos_name) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %a_msdos_name) #11
  ret i32 %error.0

old_compare:                                      ; preds = %if.end.old_compare_crit_edge, %entry.old_compare_crit_edge
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %len)
  %cmp = icmp eq i32 %11, %len
  br i1 %cmp, label %if.then14, label %old_compare.out_crit_edge

old_compare.out_crit_edge:                        ; preds = %old_compare
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14:                                        ; preds = %old_compare
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name2, align 8
  %call16 = call i32 @memcmp(ptr noundef %13, ptr noundef %str, i32 noundef %len) #16
  br label %out
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_alias240, !1, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!1 = !{!"../fs/fat/namei_msdos.c", i32 672, i32 1}
!2 = !{ptr @__UNIQUE_ID_file241, !3, !"__UNIQUE_ID_file241", i1 false, i1 false}
!3 = !{!"../fs/fat/namei_msdos.c", i32 684, i32 1}
!4 = !{ptr @__UNIQUE_ID_license242, !3, !"__UNIQUE_ID_license242", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../fs/fat/namei_msdos.c", i32 685, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../fs/fat/namei_msdos.c", i32 686, i32 1}
!9 = !{ptr @__initcall__kmod_msdos__245_688_init_msdos_fs6, !10, !"__initcall__kmod_msdos__245_688_init_msdos_fs6", i1 false, i1 false}
!10 = !{!"../fs/fat/namei_msdos.c", i32 688, i32 1}
!11 = !{ptr @__exitcall_exit_msdos_fs, !12, !"__exitcall_exit_msdos_fs", i1 false, i1 false}
!12 = !{!"../fs/fat/namei_msdos.c", i32 689, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/fat/namei_msdos.c", i32 667, i32 11}
!15 = !{ptr @msdos_fs_type, !16, !"msdos_fs_type", i1 false, i1 false}
!16 = !{!"../fs/fat/namei_msdos.c", i32 665, i32 32}
!17 = !{ptr @msdos_dir_inode_operations, !18, !"msdos_dir_inode_operations", i1 false, i1 false}
!18 = !{!"../fs/fat/namei_msdos.c", i32 634, i32 38}
!19 = !{ptr @bad_chars, !20, !"bad_chars", i1 false, i1 false}
!20 = !{!"../fs/fat/namei_msdos.c", i32 15, i32 22}
!21 = !{ptr @bad_if_strict, !22, !"bad_if_strict", i1 false, i1 false}
!22 = !{!"../fs/fat/namei_msdos.c", i32 16, i32 22}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/fat/namei_msdos.c", i32 589, i32 3}
!25 = !{ptr @__func__.do_msdos_rename, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @msdos_dentry_operations, !27, !"msdos_dentry_operations", i1 false, i1 false}
!27 = !{!"../fs/fat/namei_msdos.c", i32 191, i32 39}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 2152775564}
!39 = !{!"branch_weights", i32 2000, i32 1}
