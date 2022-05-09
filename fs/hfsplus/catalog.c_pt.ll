; ModuleID = '/llk/IR_all_yes/fs/hfsplus/catalog.c_pt.bc'
source_filename = "../fs/hfsplus/catalog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfsplus_cat_key = type <{ i16, i32, %struct.hfsplus_unistr }>
%struct.hfsplus_unistr = type { i16, [255 x i16] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
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
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.hfsplus_perm = type { i32, i32, i8, i8, i16, i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.hfsplus_cat_entry = type { %struct.hfsplus_cat_file, [272 x i8] }
%struct.hfsplus_cat_file = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.80, i32, i32, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.FInfo, %struct.FXInfo }
%struct.FInfo = type { i32, i32, i16, %struct.hfsp_point, i16 }
%struct.hfsp_point = type { i16, i16 }
%struct.FXInfo = type { i16, [8 x i8], i16, i32 }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%struct.hfsplus_cat_thread = type { i16, i16, i32, %struct.hfsplus_unistr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfsplus_cat_folder = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.hfsplus_perm, %union.anon.77, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.DInfo, %struct.DXInfo }
%struct.DInfo = type { %struct.hfsp_rect, i16, %struct.hfsp_point, i16 }
%struct.hfsp_rect = type { i16, i16, i16, i16 }
%struct.DXInfo = type { %struct.hfsp_point, i32, i16, i16, i32 }
%struct.hfsplus_readdir_data = type { %struct.list_head, ptr, %struct.hfsplus_cat_key }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@hfsplus_find_cat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013hfsplus: found bad thread record in catalog\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hfsplus_find_cat\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/hfsplus/catalog.c\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_find_cat._entry_ptr = internal global ptr @hfsplus_find_cat._entry, section ".printk_index", align 4
@hfsplus_find_cat._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: catalog name length corrupted\0A\00", [54 x i8] zeroinitializer }, align 32
@hfsplus_find_cat._entry_ptr.5 = internal global ptr @hfsplus_find_cat._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 24576, i64 32768]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 208, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [24 x i8] c"../fs/hfsplus/catalog.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 213, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @hfsplus_find_cat._entry, ptr @hfsplus_find_cat._entry.3, ptr @hfsplus_find_cat._entry_ptr, ptr @hfsplus_find_cat._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_find_cat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_find_cat._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_cat_case_cmp_key(ptr noundef %k1, ptr noundef %k2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k1, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %parent, align 1
  %parent1 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k2, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %parent1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k1, i32 0, i32 2
  %name3 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k2, i32 0, i32 2
  %call = tail call i32 @hfsplus_strcasecmp(ptr noundef %name, ptr noundef %name3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_cat_bin_cmp_key(ptr noundef %k1, ptr noundef %k2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k1, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %parent, align 1
  %parent1 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k2, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %parent1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k1, i32 0, i32 2
  %name3 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %k2, i32 0, i32 2
  %call = tail call i32 @hfsplus_strcmp(ptr noundef %name, ptr noundef %name3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_cat_build_key(ptr noundef %sb, ptr noundef %key, i32 noundef %parent, ptr nocapture noundef readonly %str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %parent, ptr %parent1, align 1
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %key, i32 0, i32 2
  %name2 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name2, align 8
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %str, align 8
  %call = tail call i32 @hfsplus_asc2uni(ptr noundef %sb, ptr noundef %name, i32 noundef 255, ptr noundef %2, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %name to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %name, align 1
  %mul = shl i16 %6, 1
  %add = add i16 %mul, 6
  %7 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %add, ptr %key, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_asc2uni(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hfsplus_cat_build_key_with_cnid(ptr nocapture readnone %sb, ptr nocapture noundef writeonly %key, i32 noundef %parent) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %parent, ptr %parent1, align 1
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %key, i32 0, i32 2
  %1 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %name, align 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 6, ptr %key, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_cat_set_perms(ptr nocapture noundef readonly %inode, ptr nocapture noundef %perms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %rootflags2 = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 2
  %2 = ptrtoint ptr %rootflags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rootflags2, align 1
  %4 = and i8 %3, -3
  %5 = trunc i32 %1 to i8
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 2
  %.sink = or i8 %4, %7
  store i8 %.sink, ptr %rootflags2, align 1
  %8 = load i32, ptr %i_flags, align 4
  %rootflags15 = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 2
  %9 = and i8 %.sink, -5
  %10 = trunc i32 %8 to i8
  %11 = and i8 %10, 4
  %.sink70 = or i8 %9, %11
  %12 = ptrtoint ptr %rootflags15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink70, ptr %rootflags15, align 1
  %userflags = getelementptr i8, ptr %inode, i32 -72
  %13 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %userflags, align 8
  %userflags20 = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 3
  %15 = ptrtoint ptr %userflags20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %userflags20, align 1
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %mode = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %mode, align 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %23 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %22, [1 x i32] %24) #6
  %25 = ptrtoint ptr %perms to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %call1.i, ptr %perms, align 1
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i66 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i.i66, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %30 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack.i67 = load i32, ptr %i_gid.i, align 8
  %31 = insertvalue [1 x i32] undef, i32 %.unpack.i67, 0
  %call1.i68 = tail call i32 @from_kgid(ptr noundef %29, [1 x i32] %31) #6
  %group = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 1
  %32 = ptrtoint ptr %group to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call1.i68, ptr %group, align 1
  %33 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %inode, align 8
  %35 = and i16 %34, -4096
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i16 %35, label %entry.if.end44_crit_edge [
    i16 -32768, label %if.then27
    i16 24576, label %entry.if.then39_crit_edge
    i16 8192, label %entry.if.then39_crit_edge71
  ]

entry.if.then39_crit_edge71:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  br label %if.end44

if.then39:                                        ; preds = %entry.if.then39_crit_edge, %entry.if.then39_crit_edge71
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %40 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_rdev, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.then27, %entry.if.end44_crit_edge
  %.sink69 = phi i32 [ %41, %if.then39 ], [ %39, %if.then27 ], [ 0, %entry.if.end44_crit_edge ]
  %dev40 = getelementptr inbounds %struct.hfsplus_perm, ptr %perms, i32 0, i32 5
  %42 = ptrtoint ptr %dev40 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %.sink69, ptr %dev40, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_find_cat(ptr nocapture noundef readnone %sb, i32 noundef %cnid, ptr noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %union.hfsplus_cat_entry, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %tmp) #6
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 520)
  %1 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fd, align 4
  %parent1.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %cnid, ptr %parent1.i, align 1
  %name.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %name.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 6, ptr %2, align 1
  %call = call i32 @hfsplus_brec_read(ptr noundef %fd, ptr noundef nonnull %tmp, i32 noundef 520) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tmp, align 2
  %.off = add i16 %7, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %nodeName = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %tmp, i32 0, i32 3
  %8 = ptrtoint ptr %nodeName to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nodeName, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %9)
  %cmp10 = icmp ugt i16 %9, 255
  br i1 %cmp10, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fd, align 4
  %parentID = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %tmp, i32 0, i32 2
  %12 = ptrtoint ptr %parentID to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %parentID, align 2
  %conv.i = zext i16 %9 to i32
  %parent1.i29 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %parent1.i29 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %parent1.i29, align 1
  %name3.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %name3.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %9, ptr %name3.i, align 1
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %unicode.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %11, i32 0, i32 2, i32 1
  %unicode6.i = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %tmp, i32 0, i32 3, i32 1
  %16 = call ptr @memcpy(ptr %unicode.i, ptr %unicode6.i, i32 %mul.i)
  %17 = trunc i32 %mul.i to i16
  %conv8.i = add nuw nsw i16 %17, 6
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %conv8.i, ptr %11, align 1
  %call21 = call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end15 ], [ %call21, %if.end18 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_rec_by_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_create_cat(i32 noundef %cnid, ptr noundef %dir, ptr nocapture noundef readonly %str, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #6
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #6
  %3 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  %call2 = call i32 @hfsplus_find_init(ptr noundef %7, ptr noundef nonnull %fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %8 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul = shl i32 %11, 1
  %call4 = call i32 @hfsplus_bmap_reserve(ptr noundef %9, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fd, align 4
  %parent1.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent1.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %cnid, ptr %parent1.i, align 1
  %name.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %name.i, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 6, ptr %13, align 1
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp = icmp eq i16 %19, 16384
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %conv.i = select i1 %cmp, i16 3, i16 4
  %22 = ptrtoint ptr %entry1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %entry1, align 2
  %reserved.i = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 1
  %23 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %reserved.i, align 2
  %parentID.i = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 2
  %24 = ptrtoint ptr %parentID.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %21, ptr %parentID.i, align 2
  %nodeName.i = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 3
  %name.i100 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %25 = ptrtoint ptr %name.i100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i100, align 8
  %27 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %str, align 8
  %call.i = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %nodeName.i, i32 noundef 255, ptr noundef %26, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup.sink.split_crit_edge, label %hfsplus_fill_cat_thread.exit, !prof !19

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

hfsplus_fill_cat_thread.exit:                     ; preds = %if.end7
  %29 = ptrtoint ptr %nodeName.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nodeName.i, align 2
  %call16 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  %31 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call16, label %hfsplus_fill_cat_thread.exit.cleanup.sink.split_crit_edge [
    i32 -2, label %if.end23
    i32 0, label %if.then21
  ]

hfsplus_fill_cat_thread.exit.cleanup.sink.split_crit_edge: ; preds = %hfsplus_fill_cat_thread.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then21:                                        ; preds = %hfsplus_fill_cat_thread.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end23:                                         ; preds = %hfsplus_fill_cat_thread.exit
  %conv5.i = zext i16 %30 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 1
  %add.i = add nuw nsw i32 %mul.i, 10
  %call24 = call i32 @hfsplus_brec_insert(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end23
  %32 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fd, align 4
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  %call30 = call i32 @hfsplus_cat_build_key(ptr noundef %1, ptr noundef %33, i32 noundef %35, ptr noundef %str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end39, label %if.end27.err1_crit_edge, !prof !20

if.end27.err1_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end39:                                         ; preds = %if.end27
  %call40 = call fastcc i32 @hfsplus_cat_build_record(ptr noundef nonnull %entry1, i32 noundef %cnid, ptr noundef %inode)
  %call41 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  %36 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call41, label %if.end39.err1_crit_edge [
    i32 -2, label %if.end48
    i32 0, label %if.then46
  ]

if.end39.err1_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end48:                                         ; preds = %if.end39
  %call49 = call i32 @hfsplus_brec_insert(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef %call40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.err1_crit_edge

if.end48.err1_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end52:                                         ; preds = %if.end48
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %i_size, align 8
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inode, align 8
  %41 = and i16 %40, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %41)
  %cmp56 = icmp eq i16 %41, 16384
  br i1 %cmp56, label %if.then58, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then58:                                        ; preds = %if.end52
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.then58.if.end59_crit_edge, label %if.then.i

if.then58.if.end59_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %subfolders.i = getelementptr i8, ptr %dir, i32 -68
  %49 = ptrtoint ptr %subfolders.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %subfolders.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %subfolders.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then.i, %if.then58.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #6
  %51 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %52 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %dir)
  br label %cleanup.sink.split

err1:                                             ; preds = %if.end48.err1_crit_edge, %if.then46, %if.end39.err1_crit_edge, %if.end27.err1_crit_edge
  %err.0 = phi i32 [ %call30, %if.end27.err1_crit_edge ], [ -17, %if.then46 ], [ %call49, %if.end48.err1_crit_edge ], [ %call41, %if.end39.err1_crit_edge ]
  %53 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fd, align 4
  %parent1.i102 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %parent1.i102 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %cnid, ptr %parent1.i102, align 1
  %name.i103 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %54, i32 0, i32 2
  %56 = ptrtoint ptr %name.i103 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 0, ptr %name.i103, align 1
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 6, ptr %54, align 1
  %call61 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %err1.cleanup.sink.split_crit_edge

err1.cleanup.sink.split_crit_edge:                ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then63:                                        ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %fd) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then63, %err1.cleanup.sink.split_crit_edge, %if.end59, %if.end23.cleanup.sink.split_crit_edge, %if.then21, %hfsplus_fill_cat_thread.exit.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end59 ], [ %call4, %if.end.cleanup.sink.split_crit_edge ], [ -17, %if.then21 ], [ %call24, %if.end23.cleanup.sink.split_crit_edge ], [ %err.0, %err1.cleanup.sink.split_crit_edge ], [ %err.0, %if.then63 ], [ %call16, %hfsplus_fill_cat_thread.exit.cleanup.sink.split_crit_edge ], [ %call.i, %if.end7.cleanup.sink.split_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_bmap_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfsplus_fill_cat_thread(ptr noundef %sb, ptr noundef %entry1, i32 noundef %type, i32 noundef %parentid, ptr nocapture noundef readonly %str) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %type to i16
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %conv, ptr %entry1, align 1
  %reserved = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 1
  %1 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %reserved, align 1
  %parentID = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %parentID to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %parentid, ptr %parentID, align 1
  %nodeName = getelementptr inbounds %struct.hfsplus_cat_thread, ptr %entry1, i32 0, i32 3
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %5 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %str, align 8
  %call = tail call i32 @hfsplus_asc2uni(ptr noundef %sb, ptr noundef %nodeName, i32 noundef 255, ptr noundef %4, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %nodeName to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %nodeName, align 1
  %conv5 = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  %add = add nuw nsw i32 %mul, 10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfsplus_cat_build_record(ptr noundef %entry1, i32 noundef %cnid, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %entry1, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 86)
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1, ptr %entry1, align 1
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %flags5 = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 1
  %13 = ptrtoint ptr %flags5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %flags5, align 1
  %15 = or i16 %14, 16
  store i16 %15, ptr %flags5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %id = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %id, align 1
  %call8 = tail call i64 @ktime_get_real_seconds() #6
  %conv.i = trunc i64 %call8 to i32
  %add.i = add i32 %conv.i, 2082844800
  %access_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 7
  %19 = ptrtoint ptr %access_date to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i, ptr %access_date, align 1
  %attribute_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 6
  %20 = ptrtoint ptr %attribute_mod_date to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add.i, ptr %attribute_mod_date, align 1
  %content_mod_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 5
  %21 = ptrtoint ptr %content_mod_date to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %add.i, ptr %content_mod_date, align 1
  %create_date = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 4
  %22 = ptrtoint ptr %create_date to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %add.i, ptr %create_date, align 1
  %create_date11 = getelementptr i8, ptr %inode, i32 -92
  %23 = ptrtoint ptr %create_date11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %create_date11, align 4
  %permissions = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 9
  tail call void @hfsplus_cat_set_perms(ptr noundef %inode, ptr noundef %permissions)
  %hidden_dir = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %hidden_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hidden_dir, align 4
  %cmp12 = icmp eq ptr %25, %inode
  br i1 %cmp12, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %frFlags = getelementptr inbounds %struct.hfsplus_cat_folder, ptr %entry1, i32 0, i32 10, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %frFlags to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 20480, ptr %frFlags, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %27 = getelementptr inbounds i8, ptr %entry1, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 244)
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 2, ptr %entry1, align 1
  %flags17 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 1
  %30 = ptrtoint ptr %flags17 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 2, ptr %flags17, align 1
  %id18 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 3
  %31 = ptrtoint ptr %id18 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %cnid, ptr %id18, align 1
  %call19 = tail call i64 @ktime_get_real_seconds() #6
  %conv.i119 = trunc i64 %call19 to i32
  %add.i120 = add i32 %conv.i119, 2082844800
  %access_date21 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 7
  %32 = ptrtoint ptr %access_date21 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %add.i120, ptr %access_date21, align 1
  %attribute_mod_date22 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 6
  %33 = ptrtoint ptr %attribute_mod_date22 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %add.i120, ptr %attribute_mod_date22, align 1
  %content_mod_date23 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 5
  %34 = ptrtoint ptr %content_mod_date23 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %add.i120, ptr %content_mod_date23, align 1
  %create_date24 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 4
  %35 = ptrtoint ptr %create_date24 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %add.i120, ptr %create_date24, align 1
  %create_date26 = getelementptr i8, ptr %inode, i32 -92
  %36 = ptrtoint ptr %create_date26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i120, ptr %create_date26, align 4
  %i_ino27 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %cnid)
  %cmp28 = icmp eq i32 %38, %cnid
  br i1 %cmp28, label %if.then30, label %if.else60

if.then30:                                        ; preds = %if.else
  %permissions31 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9
  tail call void @hfsplus_cat_set_perms(ptr noundef %inode, ptr noundef %permissions31)
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inode, align 8
  %41 = and i16 %40, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %41)
  %cmp35 = icmp eq i16 %41, -24576
  br i1 %cmp35, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %42 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 1936485995, ptr %42, align 1
  br label %if.end46

if.else40:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %type41 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 27
  %44 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type41, align 4
  %46 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %45, ptr %46, align 1
  %creator = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 26
  %48 = ptrtoint ptr %creator to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %creator, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else40, %if.then37
  %.sink = phi i32 [ 1919443312, %if.then37 ], [ %49, %if.else40 ]
  %50 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %.sink, ptr %50, align 1
  %rootflags = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %rootflags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rootflags, align 1
  %userflags = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 3
  %54 = ptrtoint ptr %userflags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %userflags, align 1
  %or51118 = or i8 %55, %53
  %56 = and i8 %or51118, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool53.not = icmp eq i8 %56, 0
  br i1 %tobool53.not, label %if.end46.cleanup_crit_edge, label %if.then54

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %flags17 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %flags17, align 1
  %59 = or i16 %58, 1
  store i16 %59, ptr %flags17, align 1
  br label %cleanup

if.else60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %60 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 1751936619, ptr %60, align 1
  %fdCreator64 = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %fdCreator64 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 1751544619, ptr %fdCreator64, align 1
  %fdFlags = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 10, i32 0, i32 0, i32 2
  %63 = ptrtoint ptr %fdFlags to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 256, ptr %fdFlags, align 1
  %hidden_dir66 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 9
  %64 = ptrtoint ptr %hidden_dir66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hidden_dir66, align 4
  %create_date68 = getelementptr i8, ptr %65, i32 -92
  %66 = ptrtoint ptr %create_date68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %create_date68, align 4
  %68 = ptrtoint ptr %create_date24 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %create_date24, align 1
  %linkid = getelementptr i8, ptr %inode, i32 -88
  %69 = ptrtoint ptr %linkid to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %linkid, align 8
  %dev = getelementptr inbounds %struct.hfsplus_cat_file, ptr %entry1, i32 0, i32 9, i32 5
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %dev, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else60, %if.then54, %if.end46.cleanup_crit_edge, %if.then14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 88, %if.then14 ], [ 88, %if.end.cleanup_crit_edge ], [ 248, %if.end46.cleanup_crit_edge ], [ 248, %if.then54 ], [ 248, %if.else60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsplus_mark_inode_dirty(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr i8, ptr %inode, i32 -84
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_delete_cat(i32 noundef %cnid, ptr noundef %dir, ptr noundef readonly %str) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %fork = alloca %struct.hfsplus_fork_raw, align 1
  %tmp87 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #6
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fork) #6
  %3 = call ptr @memset(ptr %fork, i32 255, i32 80)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  %call1 = call i32 @hfsplus_find_init(ptr noundef %7, ptr noundef nonnull %fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup101_crit_edge

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %8 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul = shl i32 %11, 1
  %sub = add i32 %mul, -2
  %call3 = call i32 @hfsplus_bmap_reserve(ptr noundef %9, i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %str, null
  %12 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fd, align 4
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %parent1.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent1.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %cnid, ptr %parent1.i, align 1
  %name.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %name.i, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 6, ptr %13, align 1
  %call9 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup.thread, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %17 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entryoffset, align 4
  %add = add i32 %18, 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %21 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fd, align 4
  %parent = getelementptr inbounds %struct.hfsplus_cat_key, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %20, ptr %parent, align 1
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %24 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnode, align 4
  %26 = load ptr, ptr %fd, align 4
  %name = getelementptr inbounds %struct.hfsplus_cat_key, ptr %26, i32 0, i32 2
  call void @hfsplus_bnode_read(ptr noundef %25, ptr noundef %name, i32 noundef %add, i32 noundef 2) #6
  %27 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fd, align 4
  %name16 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %name16 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %name16, align 1
  %conv = zext i16 %30 to i32
  %mul18 = shl nuw nsw i32 %conv, 1
  %31 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bnode, align 4
  %unicode = getelementptr inbounds %struct.hfsplus_cat_key, ptr %28, i32 0, i32 2, i32 1
  %add22 = add i32 %18, 10
  call void @hfsplus_bnode_read(ptr noundef %32, ptr noundef %unicode, i32 noundef %add22, i32 noundef %mul18) #6
  %33 = trunc i32 %mul18 to i16
  %conv24 = add i16 %33, 6
  %34 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fd, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv24, ptr %35, align 1
  br label %if.end34

if.else:                                          ; preds = %if.end6
  %i_ino27 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino27, align 8
  %parent1.i150 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 1
  %39 = ptrtoint ptr %parent1.i150 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %parent1.i150, align 1
  %name.i151 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %13, i32 0, i32 2
  %name2.i = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %40 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name2.i, align 8
  %42 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %str, align 8
  %call.i = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %name.i151, i32 noundef 255, ptr noundef %41, i32 noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else.out_crit_edge, label %hfsplus_cat_build_key.exit.thread, !prof !19

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

hfsplus_cat_build_key.exit.thread:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %name.i151 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %name.i151, align 1
  %mul.i = shl i16 %45, 1
  %add.i = add i16 %mul.i, 6
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %add.i, ptr %13, align 1
  br label %if.end34

if.end34:                                         ; preds = %hfsplus_cat_build_key.exit.thread, %cleanup.thread
  %call35 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end38:                                         ; preds = %if.end34
  %bnode39 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %47 = ptrtoint ptr %bnode39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bnode39, align 4
  %entryoffset40 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %49 = ptrtoint ptr %entryoffset40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %entryoffset40, align 4
  %call41 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %48, i32 noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call41)
  %cmp = icmp eq i16 %call41, 2
  br i1 %cmp, label %if.then44, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %entryoffset40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entryoffset40, align 4
  %add46 = add i32 %52, 168
  %53 = ptrtoint ptr %bnode39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bnode39, align 4
  call void @hfsplus_bnode_read(ptr noundef %54, ptr noundef nonnull %fork, i32 noundef %add46, i32 noundef 80) #6
  %call48 = call i32 @hfsplus_free_fork(ptr noundef %1, i32 noundef %cnid, ptr noundef nonnull %fork, i32 noundef 255) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end38.if.end49_crit_edge
  %open_dir_lock = getelementptr i8, ptr %dir, i32 -56
  call void @_raw_spin_lock(ptr noundef %open_dir_lock) #6
  %open_dir_list = getelementptr i8, ptr %dir, i32 -64
  %55 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %pos.0163 = load ptr, ptr %open_dir_list, align 4
  %cmp.i154.not164 = icmp eq ptr %pos.0163, %open_dir_list
  br i1 %cmp.i154.not164, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end64.for.body_crit_edge, %if.end49.for.body_crit_edge
  %pos.0165 = phi ptr [ %pos.0, %if.end64.for.body_crit_edge ], [ %pos.0163, %if.end49.for.body_crit_edge ]
  %56 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tree, align 4
  %keycmp = getelementptr inbounds %struct.hfs_btree, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %keycmp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %keycmp, align 4
  %60 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fd, align 4
  %key = getelementptr inbounds %struct.hfsplus_readdir_data, ptr %pos.0165, i32 0, i32 2
  %call60 = call i32 %59(ptr noundef %61, ptr noundef %key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %for.body.if.end64_crit_edge

for.body.if.end64_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %file = getelementptr inbounds %struct.hfsplus_readdir_data, ptr %pos.0165, i32 0, i32 1
  %62 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %file, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %f_pos, align 8
  %dec = add i64 %65, -1
  store i64 %dec, ptr %f_pos, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %for.body.if.end64_crit_edge
  %66 = ptrtoint ptr %pos.0165 to i32
  call void @__asan_load4_noabort(i32 %66)
  %pos.0 = load ptr, ptr %pos.0165, align 4
  %cmp.i154.not = icmp eq ptr %pos.0, %open_dir_list
  br i1 %cmp.i154.not, label %if.end64.for.end_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end64.for.end_crit_edge, %if.end49.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #6
  %call68 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end71:                                         ; preds = %for.end
  %67 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fd, align 4
  %parent1.i156 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %parent1.i156 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %cnid, ptr %parent1.i156, align 1
  %name.i157 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %68, i32 0, i32 2
  %70 = ptrtoint ptr %name.i157 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 0, ptr %name.i157, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 6, ptr %68, align 1
  %call73 = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end76:                                         ; preds = %if.end71
  %call77 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.out_crit_edge

if.end76.out_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end80:                                         ; preds = %if.end76
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %72 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %i_size, align 8
  %dec81 = add i64 %73, -1
  store i64 %dec81, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call41)
  %cmp83 = icmp eq i16 %call41, 1
  br i1 %cmp83, label %if.then85, label %if.end80.if.end86_crit_edge

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then85:                                        ; preds = %if.end80
  %74 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 33
  %76 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i, align 4
  %80 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %if.then85.if.end86_crit_edge, label %if.then.i

if.then85.if.end86_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then.i:                                        ; preds = %if.then85
  %subfolders.i = getelementptr i8, ptr %dir, i32 -68
  %81 = ptrtoint ptr %subfolders.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %subfolders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool3.not.i = icmp eq i32 %82, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end86_crit_edge, label %if.then4.i

if.then.i.if.end86_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %82, -1
  %83 = ptrtoint ptr %subfolders.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %dec.i, ptr %subfolders.i, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then4.i, %if.then.i.if.end86_crit_edge, %if.then85.if.end86_crit_edge, %if.end80.if.end86_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp87) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp87, ptr noundef %dir) #6
  %84 = call ptr @memcpy(ptr %i_ctime, ptr %tmp87, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp87) #6
  %85 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %dir)
  %call41.off = add i16 %call41, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call41.off)
  %switch149 = icmp ult i16 %call41.off, 2
  br i1 %switch149, label %if.then94, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then94:                                        ; preds = %if.end86
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %attr_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %attr_tree to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %attr_tree, align 8
  %tobool96.not = icmp eq ptr %89, null
  br i1 %tobool96.not, label %if.then94.out_crit_edge, label %if.then97

if.then94.out_crit_edge:                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then97:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = call i32 @hfsplus_delete_all_attrs(ptr noundef %dir, i32 noundef %cnid) #6
  br label %out

out:                                              ; preds = %if.then97, %if.then94.out_crit_edge, %if.end86.out_crit_edge, %if.end76.out_crit_edge, %if.end71.out_crit_edge, %for.end.out_crit_edge, %if.end34.out_crit_edge, %if.else.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call35, %if.end34.out_crit_edge ], [ %call68, %for.end.out_crit_edge ], [ %call73, %if.end71.out_crit_edge ], [ %call77, %if.end76.out_crit_edge ], [ 0, %if.then97 ], [ 0, %if.then94.out_crit_edge ], [ 0, %if.end86.out_crit_edge ], [ %call9, %if.then8.out_crit_edge ], [ %call.i, %if.else.out_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #6
  br label %cleanup101

cleanup101:                                       ; preds = %out, %entry.cleanup101_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call1, %entry.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fork) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_bnode_read_u16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_free_fork(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_delete_all_attrs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_rename_cat(i32 noundef %cnid, ptr noundef %src_dir, ptr nocapture noundef readonly %src_name, ptr noundef %dst_dir, ptr nocapture noundef readonly %dst_name) local_unnamed_addr #0 align 64 {
entry:
  %src_fd = alloca %struct.hfs_find_data, align 4
  %dst_fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfsplus_cat_entry, align 2
  %tmp = alloca %struct.timespec64, align 8
  %tmp79 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %src_fd) #6
  %2 = call ptr @memset(ptr %src_fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dst_fd) #6
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %entry1) #6
  %3 = call ptr @memset(ptr %entry1, i32 255, i32 520)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  %call2 = call i32 @hfsplus_find_init(ptr noundef %7, ptr noundef nonnull %src_fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = call ptr @memcpy(ptr %dst_fd, ptr %src_fd, i32 36)
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 2
  %9 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %depth, align 4
  %mul = shl i32 %12, 2
  %sub = add i32 %mul, -1
  %call4 = call i32 @hfsplus_bmap_reserve(ptr noundef %10, i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %src_fd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src_fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  %parent1.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %parent1.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %parent1.i, align 1
  %name.i = getelementptr inbounds %struct.hfsplus_cat_key, ptr %14, i32 0, i32 2
  %name2.i = getelementptr inbounds %struct.qstr, ptr %src_name, i32 0, i32 1
  %18 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name2.i, align 8
  %20 = ptrtoint ptr %src_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_name, align 8
  %call.i = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %name.i, i32 noundef 255, ptr noundef %19, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.out_crit_edge, label %if.end13, !prof !19

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end7
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %name.i, align 1
  %mul.i = shl i16 %23, 1
  %add.i = add i16 %mul.i, 6
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %add.i, ptr %14, align 1
  %call14 = call i32 @hfsplus_brec_find(ptr noundef nonnull %src_fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %if.end13
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 8
  %25 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %26)
  %cmp = icmp ugt i32 %26, 520
  br i1 %cmp, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %if.end17
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 3
  %27 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 7
  %29 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entryoffset, align 4
  call void @hfsplus_bnode_read(ptr noundef %28, ptr noundef nonnull %entry1, i32 noundef %30, i32 noundef %26) #6
  %31 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %entry1, align 2
  %33 = ptrtoint ptr %dst_fd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst_fd, align 4
  %i_ino24 = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino24, align 8
  %parent1.i166 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %parent1.i166 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %parent1.i166, align 1
  %name.i167 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %34, i32 0, i32 2
  %name2.i168 = getelementptr inbounds %struct.qstr, ptr %dst_name, i32 0, i32 1
  %38 = ptrtoint ptr %name2.i168 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name2.i168, align 8
  %40 = ptrtoint ptr %dst_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_name, align 8
  %call.i169 = call i32 @hfsplus_asc2uni(ptr noundef %1, ptr noundef %name.i167, i32 noundef 255, ptr noundef %39, i32 noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp.i170 = icmp slt i32 %call.i169, 0
  br i1 %cmp.i170, label %if.end21.out_crit_edge, label %if.end34, !prof !19

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %if.end21
  %42 = ptrtoint ptr %name.i167 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %name.i167, align 1
  %mul.i171 = shl i16 %43, 1
  %add.i172 = add i16 %mul.i171, 6
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %add.i172, ptr %34, align 1
  %call35 = call i32 @hfsplus_brec_find(ptr noundef nonnull %dst_fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  %45 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call35, label %if.end34.out_crit_edge [
    i32 -2, label %if.end42
    i32 0, label %if.then40
  ]

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end42:                                         ; preds = %if.end34
  %46 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %entrylength, align 4
  %call44 = call i32 @hfsplus_brec_insert(ptr noundef nonnull %dst_fd, ptr noundef nonnull %entry1, i32 noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end47:                                         ; preds = %if.end42
  %i_size = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 14
  %48 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_size, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %32)
  %cmp48 = icmp eq i16 %32, 1
  br i1 %cmp48, label %if.then50, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 8
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %if.then50.if.end51_crit_edge, label %if.then.i

if.then50.if.end51_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %subfolders.i = getelementptr i8, ptr %dst_dir, i32 -68
  %57 = ptrtoint ptr %subfolders.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %subfolders.i, align 4
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %subfolders.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then.i, %if.then50.if.end51_crit_edge, %if.end47.if.end51_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dst_dir) #6
  %59 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %60 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %61 = ptrtoint ptr %src_fd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %src_fd, align 4
  %63 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_ino, align 8
  %call54 = call i32 @hfsplus_cat_build_key(ptr noundef %1, ptr noundef %62, i32 noundef %64, ptr noundef %src_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end63, label %if.end51.out_crit_edge, !prof !20

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end63:                                         ; preds = %if.end51
  %call64 = call i32 @hfsplus_brec_find(ptr noundef nonnull %src_fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end67:                                         ; preds = %if.end63
  %call68 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %src_fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.out_crit_edge

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end71:                                         ; preds = %if.end67
  %i_size72 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 14
  %65 = ptrtoint ptr %i_size72 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_size72, align 8
  %dec = add i64 %66, -1
  store i64 %dec, ptr %i_size72, align 8
  br i1 %cmp48, label %if.then75, label %if.end71.if.end76_crit_edge

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then75:                                        ; preds = %if.end71
  %67 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i178 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i.i178 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i178, align 16
  %flags.i179 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %70, i32 0, i32 33
  %71 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags.i179, align 4
  %73 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i180 = icmp eq i32 %73, 0
  br i1 %tobool.not.i180, label %if.then75.if.end76_crit_edge, label %if.then.i182

if.then75.if.end76_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then.i182:                                     ; preds = %if.then75
  %subfolders.i181 = getelementptr i8, ptr %src_dir, i32 -68
  %74 = ptrtoint ptr %subfolders.i181 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %subfolders.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.i = icmp eq i32 %75, 0
  br i1 %tobool3.not.i, label %if.then.i182.if.end76_crit_edge, label %if.then4.i

if.then.i182.if.end76_crit_edge:                  ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then4.i:                                       ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %75, -1
  %76 = ptrtoint ptr %subfolders.i181 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %dec.i, ptr %subfolders.i181, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then4.i, %if.then.i182.if.end76_crit_edge, %if.then75.if.end76_crit_edge, %if.end71.if.end76_crit_edge
  %i_mtime77 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 16
  %i_ctime78 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp79) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp79, ptr noundef %src_dir) #6
  %77 = call ptr @memcpy(ptr %i_ctime78, ptr %tmp79, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp79) #6
  %78 = call ptr @memcpy(ptr %i_mtime77, ptr %i_ctime78, i32 16)
  %79 = ptrtoint ptr %src_fd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %src_fd, align 4
  %parent1.i183 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %parent1.i183 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %cnid, ptr %parent1.i183, align 1
  %name.i184 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %80, i32 0, i32 2
  %82 = ptrtoint ptr %name.i184 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 0, ptr %name.i184, align 1
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 6, ptr %80, align 1
  %call81 = call i32 @hfsplus_brec_find(ptr noundef nonnull %src_fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end76.out_crit_edge

if.end76.out_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end84:                                         ; preds = %if.end76
  %84 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bnode, align 4
  %86 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %entryoffset, align 4
  %call87 = call zeroext i16 @hfsplus_bnode_read_u16(ptr noundef %85, i32 noundef %87) #6
  %call89 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %src_fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end84.out_crit_edge

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end92:                                         ; preds = %if.end84
  %conv88 = zext i16 %call87 to i32
  %88 = ptrtoint ptr %dst_fd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dst_fd, align 4
  %parent1.i185 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %parent1.i185 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %cnid, ptr %parent1.i185, align 1
  %name.i186 = getelementptr inbounds %struct.hfsplus_cat_key, ptr %89, i32 0, i32 2
  %91 = ptrtoint ptr %name.i186 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 0, ptr %name.i186, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 6, ptr %89, align 1
  %93 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_ino24, align 8
  %call95 = call fastcc i32 @hfsplus_fill_cat_thread(ptr noundef %1, ptr noundef nonnull %entry1, i32 noundef %conv88, i32 noundef %94, ptr noundef %dst_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end92.out_crit_edge, label %if.end105, !prof !19

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end105:                                        ; preds = %if.end92
  %call106 = call i32 @hfsplus_brec_find(ptr noundef nonnull %dst_fd, ptr noundef nonnull @hfs_find_rec_by_key) #6
  %95 = zext i32 %call106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call106, label %if.end105.out_crit_edge [
    i32 -2, label %if.end113
    i32 0, label %if.then111
  ]

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %call114 = call i32 @hfsplus_brec_insert(ptr noundef nonnull %dst_fd, ptr noundef nonnull %entry1, i32 noundef %call95) #6
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %dst_dir)
  call fastcc void @hfsplus_mark_inode_dirty(ptr noundef %src_dir)
  br label %out

out:                                              ; preds = %if.end113, %if.then111, %if.end105.out_crit_edge, %if.end92.out_crit_edge, %if.end84.out_crit_edge, %if.end76.out_crit_edge, %if.end67.out_crit_edge, %if.end63.out_crit_edge, %if.end51.out_crit_edge, %if.end42.out_crit_edge, %if.then40, %if.end34.out_crit_edge, %if.end21.out_crit_edge, %if.end17.out_crit_edge, %if.end13.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ], [ -17, %if.then40 ], [ %call44, %if.end42.out_crit_edge ], [ %call54, %if.end51.out_crit_edge ], [ %call64, %if.end63.out_crit_edge ], [ %call68, %if.end67.out_crit_edge ], [ %call81, %if.end76.out_crit_edge ], [ %call89, %if.end84.out_crit_edge ], [ -17, %if.then111 ], [ %call114, %if.end113 ], [ -5, %if.end17.out_crit_edge ], [ %call35, %if.end34.out_crit_edge ], [ %call95, %if.end92.out_crit_edge ], [ %call106, %if.end105.out_crit_edge ], [ %call.i, %if.end7.out_crit_edge ], [ %call.i169, %if.end21.out_crit_edge ]
  %bnode115 = getelementptr inbounds %struct.hfs_find_data, ptr %dst_fd, i32 0, i32 3
  %96 = ptrtoint ptr %bnode115 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bnode115, align 4
  call void @hfsplus_bnode_put(ptr noundef %97) #6
  call void @hfsplus_find_exit(ptr noundef nonnull %src_fd) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %entry1) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dst_fd) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %src_fd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/catalog.c", i32 208, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_find_cat._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_find_cat._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/catalog.c", i32 213, i32 3}
!8 = !{ptr @hfsplus_find_cat._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hfsplus_find_cat._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
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
!20 = !{!"branch_weights", i32 2000, i32 1}
