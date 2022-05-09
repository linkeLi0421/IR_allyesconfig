; ModuleID = '/llk/IR_all_yes/fs/hfs/catalog.c_pt.bc'
source_filename = "../fs/hfs/catalog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.hfs_cat_key = type <{ i8, i8, i32, %struct.hfs_name }>
%struct.hfs_name = type { i8, [31 x i8] }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfs_cat_rec = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_extent = type { i16, i16 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfs_cat_thread = type <{ i8, [9 x i8], i32, %struct.hfs_name }>
%struct.hfs_cat_dir = type <{ i8, i8, i16, i16, i32, i32, i32, i32, %struct.hfs_dinfo, %struct.hfs_dxinfo, [16 x i8] }>
%struct.hfs_dinfo = type { %struct.hfs_rect, i16, %struct.hfs_point, i16 }
%struct.hfs_rect = type { i16, i16, i16, i16 }
%struct.hfs_dxinfo = type { %struct.hfs_point, i32, i16, i16, i32 }
%struct.hfs_readdir_data = type { %struct.list_head, ptr, %struct.hfs_cat_key }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@hfs_cat_find_brec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfs: found bad thread record in catalog\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfs_cat_find_brec\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/hfs/catalog.c\00", [47 x i8] zeroinitializer }, align 32
@hfs_cat_find_brec._entry_ptr = internal global ptr @hfs_cat_find_brec._entry, section ".printk_index", align 4
@hfs_cat_find_brec._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013hfs: bad catalog namelength\0A\00", [33 x i8] zeroinitializer }, align 32
@hfs_cat_find_brec._entry_ptr.5 = internal global ptr @hfs_cat_find_brec._entry.3, section ".printk_index", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 200, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [20 x i8] c"../fs/hfs/catalog.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 207, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @hfs_cat_find_brec._entry, ptr @hfs_cat_find_brec._entry.3, ptr @hfs_cat_find_brec._entry_ptr, ptr @hfs_cat_find_brec._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_cat_find_brec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_cat_find_brec._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_cat_build_key(ptr noundef %sb, ptr noundef %key, i32 noundef %parent, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.hfs_cat_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reserved, align 1
  %ParID = getelementptr inbounds %struct.hfs_cat_key, ptr %key, i32 0, i32 2
  %1 = ptrtoint ptr %ParID to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %parent, ptr %ParID, align 1
  %tobool.not = icmp eq ptr %name, null
  %CName3 = getelementptr inbounds %struct.hfs_cat_key, ptr %key, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hfs_asc2mac(ptr noundef %sb, ptr noundef %CName3, ptr noundef nonnull %name) #4
  %2 = ptrtoint ptr %CName3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CName3, align 1
  %add = add i8 %3, 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = call ptr @memset(ptr %CName3, i32 0, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i8 [ 6, %if.else ], [ %add, %if.then ]
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %key, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_asc2mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_cat_create(i32 noundef %cnid, ptr noundef %dir, ptr noundef %str, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfs_cat_rec, align 1
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #4
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %entry1) #4
  %1 = call ptr @memset(ptr %entry1, i32 255, i32 102)
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 32766, i64 %3)
  %cmp = icmp sgt i64 %3, 32766
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cat_tree, align 4
  %call = call i32 @hfs_find_init(ptr noundef %9, ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %10 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  %mul = shl i32 %13, 1
  %call5 = call i32 @hfs_bmap_reserve(ptr noundef %11, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end3
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %14 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %search_key, align 4
  %reserved.i = getelementptr inbounds %struct.hfs_cat_key, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %reserved.i, align 1
  %ParID.i = getelementptr inbounds %struct.hfs_cat_key, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %ParID.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %cnid, ptr %ParID.i, align 1
  %CName3.i = getelementptr inbounds %struct.hfs_cat_key, ptr %15, i32 0, i32 3
  %18 = call ptr @memset(ptr %CName3.i, i32 0, i32 32)
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %15, align 1
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %22)
  %cmp9 = icmp eq i16 %22, 16384
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  %conv.i = select i1 %cmp9, i8 3, i8 4
  %25 = ptrtoint ptr %entry1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %entry1, align 1
  %reserved.i76 = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 1
  %26 = call ptr @memset(ptr %reserved.i76, i32 0, i32 9)
  %ParID.i77 = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 2
  %27 = ptrtoint ptr %ParID.i77 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %24, ptr %ParID.i77, align 1
  %CName.i = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 3
  call void @hfs_asc2mac(ptr noundef %5, ptr noundef %CName.i, ptr noundef %str) #4
  %call12 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #4
  %28 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %if.end8.cleanup.sink.split_crit_edge [
    i32 -2, label %if.end19
    i32 0, label %if.then17
  ]

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8
  %call20 = call i32 @hfs_brec_insert(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef 46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end19
  %29 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %search_key, align 4
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  %reserved.i78 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %reserved.i78 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %reserved.i78, align 1
  %ParID.i79 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 2
  %34 = ptrtoint ptr %ParID.i79 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %32, ptr %ParID.i79, align 1
  %tobool.not.i = icmp eq ptr %str, null
  %CName3.i80 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void @hfs_asc2mac(ptr noundef %5, ptr noundef %CName3.i80, ptr noundef nonnull %str) #4
  %35 = ptrtoint ptr %CName3.i80 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %CName3.i80, align 1
  %add.i = add i8 %36, 6
  br label %hfs_cat_build_key.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %37 = call ptr @memset(ptr %CName3.i80, i32 0, i32 32)
  br label %hfs_cat_build_key.exit

hfs_cat_build_key.exit:                           ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i8 [ 6, %if.else.i ], [ %add.i, %if.then.i ]
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %storemerge.i, ptr %30, align 1
  %call26 = call fastcc i32 @hfs_cat_build_record(ptr noundef nonnull %entry1, i32 noundef %cnid, ptr noundef %inode)
  %call27 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #4
  %39 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call27, label %hfs_cat_build_key.exit.err1_crit_edge [
    i32 -2, label %if.end34
    i32 0, label %if.then32
  ]

hfs_cat_build_key.exit.err1_crit_edge:            ; preds = %hfs_cat_build_key.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

if.then32:                                        ; preds = %hfs_cat_build_key.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

if.end34:                                         ; preds = %hfs_cat_build_key.exit
  %call35 = call i32 @hfs_brec_insert(ptr noundef nonnull %fd, ptr noundef nonnull %entry1, i32 noundef %call26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err1_crit_edge

if.end34.err1_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size, align 8
  %inc = add i64 %41, 1
  store i64 %inc, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #4
  %42 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #4
  %43 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #4
  br label %cleanup.sink.split

err1:                                             ; preds = %if.end34.err1_crit_edge, %if.then32, %hfs_cat_build_key.exit.err1_crit_edge
  %err.0 = phi i32 [ -17, %if.then32 ], [ %call35, %if.end34.err1_crit_edge ], [ %call27, %hfs_cat_build_key.exit.err1_crit_edge ]
  %44 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %search_key, align 4
  %reserved.i81 = getelementptr inbounds %struct.hfs_cat_key, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %reserved.i81 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %reserved.i81, align 1
  %ParID.i82 = getelementptr inbounds %struct.hfs_cat_key, ptr %45, i32 0, i32 2
  %47 = ptrtoint ptr %ParID.i82 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %cnid, ptr %ParID.i82, align 1
  %CName3.i83 = getelementptr inbounds %struct.hfs_cat_key, ptr %45, i32 0, i32 3
  %48 = call ptr @memset(ptr %CName3.i83, i32 0, i32 32)
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 6, ptr %45, align 1
  %call41 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %err1.cleanup.sink.split_crit_edge

err1.cleanup.sink.split_crit_edge:                ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then43:                                        ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = call i32 @hfs_brec_remove(ptr noundef nonnull %fd) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then43, %err1.cleanup.sink.split_crit_edge, %if.end38, %if.end19.cleanup.sink.split_crit_edge, %if.then17, %if.end8.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end38 ], [ %call5, %if.end3.cleanup.sink.split_crit_edge ], [ -17, %if.then17 ], [ %call20, %if.end19.cleanup.sink.split_crit_edge ], [ %err.0, %err1.cleanup.sink.split_crit_edge ], [ %err.0, %if.then43 ], [ %call12, %if.end8.cleanup.sink.split_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %entry1) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_bmap_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfs_cat_build_record(ptr nocapture noundef writeonly %rec, i32 noundef %cnid, ptr nocapture noundef readonly %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %0 = load i32, ptr @sys_tz, align 4
  %mul.neg.i = mul i32 %0, -60
  %1 = trunc i64 %call to i32
  %conv1.i = add i32 %1, 2082844800
  %add.i = add i32 %conv1.i, %mul.neg.i
  %2 = call ptr @memset(ptr %rec, i32 0, i32 102)
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %rec to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rec, align 1
  %DirID = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 4
  %7 = ptrtoint ptr %DirID to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %cnid, ptr %DirID, align 1
  %CrDat = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 5
  %8 = ptrtoint ptr %CrDat to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %add.i, ptr %CrDat, align 1
  %MdDat = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 6
  %9 = ptrtoint ptr %MdDat to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %add.i, ptr %MdDat, align 1
  %BkDat = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 7
  %10 = ptrtoint ptr %BkDat to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %BkDat, align 1
  %frView = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %frView to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 255, ptr %frView, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rec to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %rec, align 1
  %Flags = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 2
  %13 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -126, ptr %Flags, align 1
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  %spec.store.select = select i1 %tobool.not, i8 -125, i8 -126
  %17 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.store.select, ptr %Flags, align 1
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 5
  %18 = ptrtoint ptr %FlNum to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %cnid, ptr %FlNum, align 1
  %CrDat10 = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 12
  %19 = ptrtoint ptr %CrDat10 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i, ptr %CrDat10, align 1
  %MdDat11 = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 13
  %20 = ptrtoint ptr %MdDat11 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add.i, ptr %MdDat11, align 1
  %BkDat12 = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 14
  %21 = ptrtoint ptr %BkDat12 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %BkDat12, align 1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info, align 16
  %s_type = getelementptr inbounds %struct.hfs_sb_info, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_type, align 4
  %UsrWds = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 4
  %28 = ptrtoint ptr %UsrWds to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %UsrWds, align 1
  %29 = load ptr, ptr %i_sb, align 4
  %s_fs_info14 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info14, align 16
  %s_creator = getelementptr inbounds %struct.hfs_sb_info, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %s_creator to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_creator, align 4
  %fdCreator = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %fdCreator to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %fdCreator, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 70, %if.then ], [ 102, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_cat_keycmp(ptr noundef %key1, ptr noundef %key2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ParID = getelementptr inbounds %struct.hfs_cat_key, ptr %key1, i32 0, i32 2
  %0 = ptrtoint ptr %ParID to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ParID, align 1
  %ParID1 = getelementptr inbounds %struct.hfs_cat_key, ptr %key2, i32 0, i32 2
  %2 = ptrtoint ptr %ParID1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ParID1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %CName = getelementptr inbounds %struct.hfs_cat_key, ptr %key1, i32 0, i32 3
  %name = getelementptr inbounds %struct.hfs_cat_key, ptr %key1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %CName to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CName, align 1
  %conv = zext i8 %5 to i32
  %CName4 = getelementptr inbounds %struct.hfs_cat_key, ptr %key2, i32 0, i32 3
  %name5 = getelementptr inbounds %struct.hfs_cat_key, ptr %key2, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %CName4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %CName4, align 1
  %conv9 = zext i8 %7 to i32
  %call = tail call i32 @hfs_strcmp(ptr noundef %name, i32 noundef %conv, ptr noundef %name5, i32 noundef %conv9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_strcmp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_cat_find_brec(ptr nocapture noundef readnone %sb, i32 noundef %cnid, ptr noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca %union.hfs_cat_rec, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec) #4
  %0 = call ptr @memset(ptr %rec, i32 255, i32 102)
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %1 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %search_key, align 4
  %reserved.i = getelementptr inbounds %struct.hfs_cat_key, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reserved.i, align 1
  %ParID.i = getelementptr inbounds %struct.hfs_cat_key, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %ParID.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %cnid, ptr %ParID.i, align 1
  %CName3.i = getelementptr inbounds %struct.hfs_cat_key, ptr %2, i32 0, i32 3
  %5 = call ptr @memset(ptr %CName3.i, i32 0, i32 32)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %2, align 1
  %call = call i32 @hfs_brec_read(ptr noundef %fd, ptr noundef nonnull %rec, i32 noundef 102) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rec to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rec, align 1
  %.off = add i8 %8, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ParID = getelementptr inbounds %struct.hfs_cat_thread, ptr %rec, i32 0, i32 2
  %9 = ptrtoint ptr %ParID to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ParID, align 1
  %11 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %search_key, align 4
  %ParID8 = getelementptr inbounds %struct.hfs_cat_key, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ParID8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %10, ptr %ParID8, align 1
  %CName = getelementptr inbounds %struct.hfs_cat_thread, ptr %rec, i32 0, i32 3
  %14 = ptrtoint ptr %CName to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %CName, align 1
  %16 = load ptr, ptr %search_key, align 4
  %CName11 = getelementptr inbounds %struct.hfs_cat_key, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %CName11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %CName11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %15)
  %cmp14 = icmp ugt i8 %15, 31
  br i1 %cmp14, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %conv13 = zext i8 %15 to i32
  %18 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %search_key, align 4
  %name = getelementptr inbounds %struct.hfs_cat_key, ptr %19, i32 0, i32 3, i32 1
  %name26 = getelementptr inbounds %struct.hfs_cat_thread, ptr %rec, i32 0, i32 3, i32 1
  %20 = call ptr @memcpy(ptr %name, ptr %name26, i32 %conv13)
  %call28 = call i32 @hfs_brec_find(ptr noundef %fd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end19 ], [ %call28, %if.end22 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_cat_delete(i32 noundef %cnid, ptr noundef %dir, ptr noundef %str) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %file = alloca %struct.hfs_cat_file, align 1
  %tmp58 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #4
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cat_tree, align 4
  %call = call i32 @hfs_find_init(ptr noundef %6, ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %7 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %search_key, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %reserved.i = getelementptr inbounds %struct.hfs_cat_key, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %reserved.i, align 1
  %ParID.i = getelementptr inbounds %struct.hfs_cat_key, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %ParID.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %10, ptr %ParID.i, align 1
  %tobool.not.i = icmp eq ptr %str, null
  %CName3.i = getelementptr inbounds %struct.hfs_cat_key, ptr %8, i32 0, i32 3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @hfs_asc2mac(ptr noundef %2, ptr noundef %CName3.i, ptr noundef nonnull %str) #4
  %13 = ptrtoint ptr %CName3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %CName3.i, align 1
  %add.i = add i8 %14, 6
  br label %hfs_cat_build_key.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = call ptr @memset(ptr %CName3.i, i32 0, i32 32)
  br label %hfs_cat_build_key.exit

hfs_cat_build_key.exit:                           ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i8 [ 6, %if.else.i ], [ %add.i, %if.then.i ]
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge.i, ptr %8, align 1
  %call1 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %hfs_cat_build_key.exit.out_crit_edge

hfs_cat_build_key.exit.out_crit_edge:             ; preds = %hfs_cat_build_key.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %hfs_cat_build_key.exit
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %17 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %19 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entryoffset, align 4
  %call5 = call zeroext i8 @hfs_bnode_read_u8(ptr noundef %18, i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call5)
  %cmp = icmp eq i8 %call5, 2
  br i1 %cmp, label %if.then7, label %if.end4.if.end15_crit_edge

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %file) #4
  %21 = call ptr @memset(ptr %file, i32 255, i32 102)
  %22 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bnode, align 4
  %24 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %23, ptr noundef nonnull %file, i32 noundef %25, i32 noundef 102) #4
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 5
  %26 = ptrtoint ptr %FlNum to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %FlNum, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cnid)
  %cmp10 = icmp eq i32 %27, %cnid
  br i1 %cmp10, label %if.then12, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = call i32 @hfs_free_fork(ptr noundef %2, ptr noundef nonnull %file, i32 noundef 255) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then7.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %file) #4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end4.if.end15_crit_edge
  %open_dir_lock = getelementptr i8, ptr %dir, i32 -196
  call void @_raw_spin_lock(ptr noundef %open_dir_lock) #4
  %open_dir_list = getelementptr i8, ptr %dir, i32 -204
  %28 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %rd.091 = load ptr, ptr %open_dir_list, align 4
  %cmp26.not92 = icmp eq ptr %rd.091, %open_dir_list
  br i1 %cmp26.not92, label %if.end15.for.end_crit_edge, label %for.body.lr.ph

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rd.093 = phi ptr [ %rd.091, %for.body.lr.ph ], [ %rd.0, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tree, align 4
  %keycmp = getelementptr inbounds %struct.hfs_btree, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %keycmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %keycmp, align 4
  %33 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %search_key, align 4
  %key = getelementptr inbounds %struct.hfs_readdir_data, ptr %rd.093, i32 0, i32 2
  %call29 = call i32 %32(ptr noundef %34, ptr noundef %key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %file33 = getelementptr inbounds %struct.hfs_readdir_data, ptr %rd.093, i32 0, i32 1
  %35 = ptrtoint ptr %file33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file33, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %f_pos, align 8
  %dec = add i64 %38, -1
  store i64 %dec, ptr %f_pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body.for.inc_crit_edge
  %39 = ptrtoint ptr %rd.093 to i32
  call void @__asan_load4_noabort(i32 %39)
  %rd.0 = load ptr, ptr %rd.093, align 4
  %cmp26.not = icmp eq ptr %rd.0, %open_dir_list
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_dir_lock) #4
  %call44 = call i32 @hfs_brec_remove(ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end47:                                         ; preds = %for.end
  %40 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %search_key, align 4
  %reserved.i86 = getelementptr inbounds %struct.hfs_cat_key, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %reserved.i86 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %reserved.i86, align 1
  %ParID.i87 = getelementptr inbounds %struct.hfs_cat_key, ptr %41, i32 0, i32 2
  %43 = ptrtoint ptr %ParID.i87 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %cnid, ptr %ParID.i87, align 1
  %CName3.i88 = getelementptr inbounds %struct.hfs_cat_key, ptr %41, i32 0, i32 3
  %44 = call ptr @memset(ptr %CName3.i88, i32 0, i32 32)
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %41, align 1
  %call49 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then51:                                        ; preds = %if.end47
  %call52 = call i32 @hfs_brec_remove(ptr noundef nonnull %fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.if.end56_crit_edge, label %if.then51.out_crit_edge

if.then51.out_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then51.if.end56_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.end56:                                         ; preds = %if.then51.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_size, align 8
  %dec57 = add i64 %47, -1
  store i64 %dec57, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp58) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp58, ptr noundef %dir) #4
  %48 = call ptr @memcpy(ptr %i_ctime, ptr %tmp58, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp58) #4
  %49 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #4
  br label %out

out:                                              ; preds = %if.end56, %if.then51.out_crit_edge, %for.end.out_crit_edge, %hfs_cat_build_key.exit.out_crit_edge
  %res.0 = phi i32 [ %call1, %hfs_cat_build_key.exit.out_crit_edge ], [ %call44, %for.end.out_crit_edge ], [ 0, %if.end56 ], [ %call52, %if.then51.out_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hfs_bnode_read_u8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_free_fork(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_cat_move(i32 noundef %cnid, ptr noundef %src_dir, ptr noundef %src_name, ptr noundef %dst_dir, ptr noundef %dst_name) local_unnamed_addr #0 align 64 {
entry:
  %src_fd = alloca %struct.hfs_find_data, align 4
  %dst_fd = alloca %struct.hfs_find_data, align 4
  %entry1 = alloca %union.hfs_cat_rec, align 1
  %tmp = alloca %struct.timespec64, align 8
  %tmp43 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %src_fd) #4
  %0 = call ptr @memset(ptr %src_fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dst_fd) #4
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %entry1) #4
  %1 = call ptr @memset(ptr %entry1, i32 255, i32 102)
  %i_sb = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  %call = call i32 @hfs_find_init(ptr noundef %7, ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %mul = shl i32 %12, 1
  %call3 = call i32 @hfs_bmap_reserve(ptr noundef %10, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 1
  %13 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %search_key, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  %reserved.i = getelementptr inbounds %struct.hfs_cat_key, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reserved.i, align 1
  %ParID.i = getelementptr inbounds %struct.hfs_cat_key, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %ParID.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %16, ptr %ParID.i, align 1
  %tobool.not.i = icmp eq ptr %src_name, null
  %CName3.i = getelementptr inbounds %struct.hfs_cat_key, ptr %14, i32 0, i32 3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  call void @hfs_asc2mac(ptr noundef %3, ptr noundef %CName3.i, ptr noundef nonnull %src_name) #4
  %19 = ptrtoint ptr %CName3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %CName3.i, align 1
  %add.i = add i8 %20, 6
  br label %hfs_cat_build_key.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %21 = call ptr @memset(ptr %CName3.i, i32 0, i32 32)
  br label %hfs_cat_build_key.exit

hfs_cat_build_key.exit:                           ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i8 [ 6, %if.else.i ], [ %add.i, %if.then.i ]
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge.i, ptr %14, align 1
  %call7 = call i32 @hfs_brec_find(ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %hfs_cat_build_key.exit.out_crit_edge

hfs_cat_build_key.exit.out_crit_edge:             ; preds = %hfs_cat_build_key.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end10:                                         ; preds = %hfs_cat_build_key.exit
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 8
  %23 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %24)
  %cmp = icmp ugt i32 %24, 102
  br i1 %cmp, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end14:                                         ; preds = %if.end10
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 3
  %25 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %src_fd, i32 0, i32 7
  %27 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %26, ptr noundef nonnull %entry1, i32 noundef %28, i32 noundef %24) #4
  %search_key16 = getelementptr inbounds %struct.hfs_find_data, ptr %dst_fd, i32 0, i32 1
  %29 = ptrtoint ptr %search_key16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %search_key16, align 4
  %i_ino17 = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino17, align 8
  %reserved.i116 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %reserved.i116 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %reserved.i116, align 1
  %ParID.i117 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 2
  %34 = ptrtoint ptr %ParID.i117 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %32, ptr %ParID.i117, align 1
  %tobool.not.i118 = icmp eq ptr %dst_name, null
  %CName3.i119 = getelementptr inbounds %struct.hfs_cat_key, ptr %30, i32 0, i32 3
  br i1 %tobool.not.i118, label %if.else.i122, label %if.then.i121

if.then.i121:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call void @hfs_asc2mac(ptr noundef %3, ptr noundef %CName3.i119, ptr noundef nonnull %dst_name) #4
  %35 = ptrtoint ptr %CName3.i119 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %CName3.i119, align 1
  %add.i120 = add i8 %36, 6
  br label %hfs_cat_build_key.exit124

if.else.i122:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %37 = call ptr @memset(ptr %CName3.i119, i32 0, i32 32)
  br label %hfs_cat_build_key.exit124

hfs_cat_build_key.exit124:                        ; preds = %if.else.i122, %if.then.i121
  %storemerge.i123 = phi i8 [ 6, %if.else.i122 ], [ %add.i120, %if.then.i121 ]
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %storemerge.i123, ptr %30, align 1
  %call18 = call i32 @hfs_brec_find(ptr noundef nonnull %dst_fd) #4
  %39 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call18, label %hfs_cat_build_key.exit124.out_crit_edge [
    i32 -2, label %if.end24
    i32 0, label %if.then22
  ]

hfs_cat_build_key.exit124.out_crit_edge:          ; preds = %hfs_cat_build_key.exit124
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then22:                                        ; preds = %hfs_cat_build_key.exit124
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end24:                                         ; preds = %hfs_cat_build_key.exit124
  %40 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %entrylength, align 4
  %call26 = call i32 @hfs_brec_insert(ptr noundef nonnull %dst_fd, ptr noundef nonnull %entry1, i32 noundef %41) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end29:                                         ; preds = %if.end24
  %i_size = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 14
  %42 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size, align 8
  %inc = add i64 %43, 1
  store i64 %inc, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dst_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dst_dir) #4
  %44 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #4
  %45 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dst_dir, i32 noundef 7) #4
  %46 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %search_key, align 4
  %48 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino, align 8
  %reserved.i125 = getelementptr inbounds %struct.hfs_cat_key, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %reserved.i125 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %reserved.i125, align 1
  %ParID.i126 = getelementptr inbounds %struct.hfs_cat_key, ptr %47, i32 0, i32 2
  %51 = ptrtoint ptr %ParID.i126 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %49, ptr %ParID.i126, align 1
  %CName3.i128 = getelementptr inbounds %struct.hfs_cat_key, ptr %47, i32 0, i32 3
  br i1 %tobool.not.i, label %if.else.i131, label %if.then.i130

if.then.i130:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  call void @hfs_asc2mac(ptr noundef %3, ptr noundef %CName3.i128, ptr noundef nonnull %src_name) #4
  %52 = ptrtoint ptr %CName3.i128 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %CName3.i128, align 1
  %add.i129 = add i8 %53, 6
  br label %hfs_cat_build_key.exit133

if.else.i131:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %54 = call ptr @memset(ptr %CName3.i128, i32 0, i32 32)
  br label %hfs_cat_build_key.exit133

hfs_cat_build_key.exit133:                        ; preds = %if.else.i131, %if.then.i130
  %storemerge.i132 = phi i8 [ 6, %if.else.i131 ], [ %add.i129, %if.then.i130 ]
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %storemerge.i132, ptr %47, align 1
  %call32 = call i32 @hfs_brec_find(ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %hfs_cat_build_key.exit133.out_crit_edge

hfs_cat_build_key.exit133.out_crit_edge:          ; preds = %hfs_cat_build_key.exit133
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end35:                                         ; preds = %hfs_cat_build_key.exit133
  %call36 = call i32 @hfs_brec_remove(ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end39:                                         ; preds = %if.end35
  %i_size40 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 14
  %56 = ptrtoint ptr %i_size40 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_size40, align 8
  %dec = add i64 %57, -1
  store i64 %dec, ptr %i_size40, align 8
  %i_mtime41 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 16
  %i_ctime42 = getelementptr inbounds %struct.inode, ptr %src_dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp43) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp43, ptr noundef %src_dir) #4
  %58 = call ptr @memcpy(ptr %i_ctime42, ptr %tmp43, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp43) #4
  %59 = call ptr @memcpy(ptr %i_mtime41, ptr %i_ctime42, i32 16)
  call void @__mark_inode_dirty(ptr noundef %src_dir, i32 noundef 7) #4
  %60 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %entry1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp44 = icmp eq i8 %61, 2
  br i1 %cmp44, label %land.lhs.true, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end39
  %Flags = getelementptr inbounds %struct.hfs_cat_file, ptr %entry1, i32 0, i32 2
  %62 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %Flags, align 1
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool47.not = icmp eq i8 %64, 0
  br i1 %tobool47.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %65 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %search_key, align 4
  %reserved.i134 = getelementptr inbounds %struct.hfs_cat_key, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %reserved.i134 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %reserved.i134, align 1
  %ParID.i135 = getelementptr inbounds %struct.hfs_cat_key, ptr %66, i32 0, i32 2
  %68 = ptrtoint ptr %ParID.i135 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %cnid, ptr %ParID.i135, align 1
  %CName3.i136 = getelementptr inbounds %struct.hfs_cat_key, ptr %66, i32 0, i32 3
  %69 = call ptr @memset(ptr %CName3.i136, i32 0, i32 32)
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %66, align 1
  %call51 = call i32 @hfs_brec_find(ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end54:                                         ; preds = %if.end49
  %call55 = call i32 @hfs_brec_remove(ptr noundef nonnull %src_fd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.out_crit_edge

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end58:                                         ; preds = %if.end54
  %71 = ptrtoint ptr %search_key16 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %search_key16, align 4
  %reserved.i139 = getelementptr inbounds %struct.hfs_cat_key, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %reserved.i139 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %reserved.i139, align 1
  %ParID.i140 = getelementptr inbounds %struct.hfs_cat_key, ptr %72, i32 0, i32 2
  %74 = ptrtoint ptr %ParID.i140 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %cnid, ptr %ParID.i140, align 1
  %CName3.i141 = getelementptr inbounds %struct.hfs_cat_key, ptr %72, i32 0, i32 3
  %75 = call ptr @memset(ptr %CName3.i141, i32 0, i32 32)
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 6, ptr %72, align 1
  %77 = ptrtoint ptr %i_ino17 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_ino17, align 8
  %conv.i = select i1 %cmp44, i8 4, i8 3
  %79 = ptrtoint ptr %entry1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i, ptr %entry1, align 1
  %reserved.i144 = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 1
  %80 = call ptr @memset(ptr %reserved.i144, i32 0, i32 9)
  %ParID.i145 = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 2
  %81 = ptrtoint ptr %ParID.i145 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %78, ptr %ParID.i145, align 1
  %CName.i = getelementptr inbounds %struct.hfs_cat_thread, ptr %entry1, i32 0, i32 3
  call void @hfs_asc2mac(ptr noundef %3, ptr noundef %CName.i, ptr noundef %dst_name) #4
  %call64 = call i32 @hfs_brec_find(ptr noundef nonnull %dst_fd) #4
  %82 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call64, label %if.end58.out_crit_edge [
    i32 -2, label %if.end71
    i32 0, label %if.then69
  ]

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then69:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end71:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = call i32 @hfs_brec_insert(ptr noundef nonnull %dst_fd, ptr noundef nonnull %entry1, i32 noundef 46) #4
  br label %out

out:                                              ; preds = %if.end71, %if.then69, %if.end58.out_crit_edge, %if.end54.out_crit_edge, %if.end49.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end35.out_crit_edge, %hfs_cat_build_key.exit133.out_crit_edge, %if.end24.out_crit_edge, %if.then22, %hfs_cat_build_key.exit124.out_crit_edge, %if.end10.out_crit_edge, %hfs_cat_build_key.exit.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call7, %hfs_cat_build_key.exit.out_crit_edge ], [ -17, %if.then22 ], [ %call26, %if.end24.out_crit_edge ], [ %call32, %hfs_cat_build_key.exit133.out_crit_edge ], [ %call36, %if.end35.out_crit_edge ], [ %call51, %if.end49.out_crit_edge ], [ %call55, %if.end54.out_crit_edge ], [ -17, %if.then69 ], [ %call72, %if.end71 ], [ 0, %land.lhs.true.out_crit_edge ], [ -5, %if.end10.out_crit_edge ], [ %call18, %hfs_cat_build_key.exit124.out_crit_edge ], [ %call64, %if.end58.out_crit_edge ]
  %bnode73 = getelementptr inbounds %struct.hfs_find_data, ptr %dst_fd, i32 0, i32 3
  %83 = ptrtoint ptr %bnode73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bnode73, align 4
  call void @hfs_bnode_put(ptr noundef %84) #4
  call void @hfs_find_exit(ptr noundef nonnull %src_fd) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %entry1) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dst_fd) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %src_fd) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/catalog.c", i32 200, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfs_cat_find_brec._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfs_cat_find_brec._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfs/catalog.c", i32 207, i32 3}
!8 = !{ptr @hfs_cat_find_brec._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hfs_cat_find_brec._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
