; ModuleID = '/llk/IR_all_yes/fs/exfat/cache.c_pt.bc'
source_filename = "../fs/exfat/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exfat_cache = type { %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exfat_cache\00", [20 x i8] zeroinitializer }, align 32
@exfat_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid access to exfat cache (entry 0x%08x)\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/exfat/cache.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"detected the cluster chain loop (i_pos %u)\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid cluster chain (i_pos %u, last_clus 0x%08x is EOF)\00", [38 x i8] zeroinitializer }, align 32
@exfat_cache_lookup.nohit = internal global { %struct.exfat_cache, [44 x i8] } zeroinitializer, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 47, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"exfat_cachep\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 36, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 248, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 272, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 284, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 299, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"nohit\00", align 1
@___asan_gen_.24 = private constant [20 x i8] c"../fs/exfat/cache.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 88, i32 28 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @exfat_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @exfat_cache_lookup.nohit], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_cache_lookup.nohit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_cache_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @exfat_cache_init_once) #5
  store ptr %call, ptr @exfat_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_cache_init_once(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %c, ptr %c, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %c, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_cache_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @exfat_cachep, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kmem_cache_destroy(ptr noundef nonnull %0) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_cache_inval_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_lru_lock = getelementptr i8, ptr %inode, i32 -192
  tail call void @_raw_spin_lock(ptr noundef %cache_lru_lock) #5
  %cache_lru.i = getelementptr i8, ptr %inode, i32 -148
  %0 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cache_lru.i, align 4
  %cmp.i.not12.i = icmp eq ptr %1, %cache_lru.i
  br i1 %cmp.i.not12.i, label %entry.__exfat_cache_inval_inode.exit_crit_edge, label %while.body.lr.ph.i

entry.__exfat_cache_inval_inode.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__exfat_cache_inval_inode.exit

while.body.lr.ph.i:                               ; preds = %entry
  %nr_caches.i = getelementptr i8, ptr %inode, i32 -140
  br label %while.body.i

while.body.i:                                     ; preds = %exfat_cache_free.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %16, %exfat_cache_free.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i.i, align 4
  %11 = ptrtoint ptr %nr_caches.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_caches.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %nr_caches.i, align 4
  %13 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %2
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.exfat_cache_free.exit.i_crit_edge, label %do.end.i.i, !prof !23

list_del_init.exit.i.exfat_cache_free.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_free.exit.i

do.end.i.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 9, ptr noundef null) #5
  br label %exfat_cache_free.exit.i

exfat_cache_free.exit.i:                          ; preds = %do.end.i.i, %list_del_init.exit.i.exfat_cache_free.exit.i_crit_edge
  %14 = load ptr, ptr @exfat_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %2) #5
  %15 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cache_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %cache_lru.i
  br i1 %cmp.i.not.i, label %exfat_cache_free.exit.i.__exfat_cache_inval_inode.exit_crit_edge, label %exfat_cache_free.exit.i.while.body.i_crit_edge

exfat_cache_free.exit.i.while.body.i_crit_edge:   ; preds = %exfat_cache_free.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

exfat_cache_free.exit.i.__exfat_cache_inval_inode.exit_crit_edge: ; preds = %exfat_cache_free.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__exfat_cache_inval_inode.exit

__exfat_cache_inval_inode.exit:                   ; preds = %exfat_cache_free.exit.i.__exfat_cache_inval_inode.exit_crit_edge, %entry.__exfat_cache_inval_inode.exit_crit_edge
  %cache_valid_id.i = getelementptr i8, ptr %inode, i32 -136
  %17 = ptrtoint ptr %cache_valid_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cache_valid_id.i, align 8
  %inc.i = add i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %19 = ptrtoint ptr %cache_valid_id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %cache_valid_id.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cache_lru_lock) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_get_cluster(ptr noundef %inode, i32 noundef %cluster, ptr nocapture noundef %fclus, ptr nocapture noundef %dclus, ptr nocapture noundef %last_dclus, i32 noundef %allow_eof) local_unnamed_addr #0 align 64 {
entry:
  %content = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clusters, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %content) #5
  %6 = ptrtoint ptr %content to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %content, align 4, !annotation !24
  %start_clu = getelementptr i8, ptr %inode, i32 -240
  %7 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_clu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %fclus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fclus, align 4
  %10 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_clu, align 8
  %12 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dclus, align 4
  %13 = ptrtoint ptr %last_dclus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %last_dclus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster)
  %cmp4 = icmp eq i32 %cluster, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dclus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp5 = icmp eq i32 %15, -1
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %cache_lru_lock.i = getelementptr i8, ptr %inode, i32 -192
  tail call void @_raw_spin_lock(ptr noundef %cache_lru_lock.i) #5
  %cache_lru.i = getelementptr i8, ptr %inode, i32 -148
  %16 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.060.i = load ptr, ptr %cache_lru.i, align 4
  %cmp.not61.i = icmp eq ptr %p.060.i, %cache_lru.i
  br i1 %cmp.not61.i, label %lor.rhs.thread, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

lor.rhs.thread:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %cache_lru_lock.i) #5
  br label %if.end37

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %p.064.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.060.i, %if.end7.for.body.i_crit_edge ]
  %hit.063.i = phi ptr [ %hit.1.i, %for.inc.i.for.body.i_crit_edge ], [ @exfat_cache_lookup.nohit, %if.end7.for.body.i_crit_edge ]
  %offset.062.i = phi i32 [ %offset.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.end7.for.body.i_crit_edge ]
  %fcluster.i98 = getelementptr inbounds %struct.exfat_cache, ptr %p.064.i, i32 0, i32 2
  %17 = ptrtoint ptr %fcluster.i98 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fcluster.i98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %cluster)
  %cmp2.not.i = icmp ugt i32 %18, %cluster
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fcluster3.i = getelementptr inbounds %struct.exfat_cache, ptr %hit.063.i, i32 0, i32 2
  %19 = ptrtoint ptr %fcluster3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fcluster3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp5.i = icmp ult i32 %20, %18
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %nr_contig.i99 = getelementptr inbounds %struct.exfat_cache, ptr %p.064.i, i32 0, i32 1
  %21 = ptrtoint ptr %nr_contig.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_contig.i99, align 4
  %add.i = add i32 %22, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cluster)
  %cmp7.i = icmp ult i32 %add.i, %cluster
  br i1 %cmp7.i, label %if.then.i.for.inc.i_crit_edge, label %if.else.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 %cluster, %18
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %offset.1.i = phi i32 [ %offset.062.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %offset.062.i, %for.body.i.for.inc.i_crit_edge ], [ %22, %if.then.i.for.inc.i_crit_edge ]
  %hit.1.i = phi ptr [ %hit.063.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %hit.063.i, %for.body.i.for.inc.i_crit_edge ], [ %p.064.i, %if.then.i.for.inc.i_crit_edge ]
  %23 = ptrtoint ptr %p.064.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %p.0.i = load ptr, ptr %p.064.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %cache_lru.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i
  %offset.2.i = phi i32 [ %sub.i, %if.else.i ], [ %offset.1.i, %for.inc.i.for.end.i_crit_edge ]
  %hit.2.i = phi ptr [ %p.064.i, %if.else.i ], [ %hit.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp17.not.i = icmp eq ptr %hit.2.i, @exfat_cache_lookup.nohit
  br i1 %cmp17.not.i, label %for.end.i.exfat_cache_lookup.exit_crit_edge, label %if.then18.i

for.end.i.exfat_cache_lookup.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_lookup.exit

if.then18.i:                                      ; preds = %for.end.i
  %cmp.not.i.i = icmp eq ptr %p.060.i, %hit.2.i
  br i1 %cmp.not.i.i, label %if.then18.i.exfat_cache_update_lru.exit.i_crit_edge, label %if.then.i.i

if.then18.i.exfat_cache_update_lru.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_update_lru.exit.i

if.then.i.i:                                      ; preds = %if.then18.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hit.2.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %hit.2.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %hit.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hit.2.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %30 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cache_lru.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hit.2.i, ptr noundef %cache_lru.i, ptr noundef %31) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.exfat_cache_update_lru.exit.i_crit_edge

__list_del_entry.exit.i.i.i.exfat_cache_update_lru.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_update_lru.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hit.2.i, ptr %prev1.i.i2.i.i.i, align 4
  %33 = ptrtoint ptr %hit.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %hit.2.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %hit.2.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cache_lru.i, ptr %prev3.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %hit.2.i, ptr %cache_lru.i, align 4
  br label %exfat_cache_update_lru.exit.i

exfat_cache_update_lru.exit.i:                    ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.exfat_cache_update_lru.exit.i_crit_edge, %if.then18.i.exfat_cache_update_lru.exit.i_crit_edge
  %cache_valid_id.i = getelementptr i8, ptr %inode, i32 -136
  %36 = ptrtoint ptr %cache_valid_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cache_valid_id.i, align 8
  %nr_contig19.i = getelementptr inbounds %struct.exfat_cache, ptr %hit.2.i, i32 0, i32 1
  %38 = ptrtoint ptr %nr_contig19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_contig19.i, align 4
  %fcluster21.i = getelementptr inbounds %struct.exfat_cache, ptr %hit.2.i, i32 0, i32 2
  %40 = ptrtoint ptr %fcluster21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fcluster21.i, align 4
  %dcluster.i100 = getelementptr inbounds %struct.exfat_cache, ptr %hit.2.i, i32 0, i32 3
  %42 = ptrtoint ptr %dcluster.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dcluster.i100, align 4
  %add25.i = add i32 %41, %offset.2.i
  %44 = ptrtoint ptr %fclus to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add25.i, ptr %fclus, align 4
  %add27.i = add i32 %43, %offset.2.i
  %45 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add27.i, ptr %dclus, align 4
  br label %exfat_cache_lookup.exit

exfat_cache_lookup.exit:                          ; preds = %exfat_cache_update_lru.exit.i, %for.end.i.exfat_cache_lookup.exit_crit_edge
  %cid.sroa.27.0 = phi i32 [ -1, %for.end.i.exfat_cache_lookup.exit_crit_edge ], [ %43, %exfat_cache_update_lru.exit.i ]
  %cid.sroa.18.0 = phi i32 [ -1, %for.end.i.exfat_cache_lookup.exit_crit_edge ], [ %41, %exfat_cache_update_lru.exit.i ]
  %cid.sroa.8.0 = phi i32 [ 0, %for.end.i.exfat_cache_lookup.exit_crit_edge ], [ %39, %exfat_cache_update_lru.exit.i ]
  %cid.sroa.0.0 = phi i32 [ 0, %for.end.i.exfat_cache_lookup.exit_crit_edge ], [ %37, %exfat_cache_update_lru.exit.i ]
  tail call void @_raw_spin_unlock(ptr noundef %cache_lru_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.2.i)
  %cmp9 = icmp eq i32 %offset.2.i, -1
  br i1 %cmp9, label %if.then10, label %exfat_cache_lookup.exit.if.end37_crit_edge

exfat_cache_lookup.exit.if.end37_crit_edge:       ; preds = %exfat_cache_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then10:                                        ; preds = %exfat_cache_lookup.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.sroa.0.0)
  %cmp11.not = icmp eq i32 %cid.sroa.0.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cid.sroa.18.0)
  %cmp13.not = icmp eq i32 %cid.sroa.18.0, -1
  %or.cond = select i1 %cmp11.not, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %lor.lhs.false14, label %if.then10.do.end_crit_edge

if.then10.do.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false14:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cid.sroa.27.0)
  %cmp15.not = icmp eq i32 %cid.sroa.27.0, -1
  br i1 %cmp15.not, label %lor.rhs, label %lor.lhs.false14.do.end_crit_edge

lor.lhs.false14.do.end_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.sroa.8.0)
  %cmp16.not = icmp eq i32 %cid.sroa.8.0, 0
  br i1 %cmp16.not, label %lor.rhs.if.end37_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !23

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs.if.end37_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false14.do.end_crit_edge, %if.then10.do.end_crit_edge
  %cid.sroa.18.0151 = phi i32 [ %cid.sroa.18.0, %if.then10.do.end_crit_edge ], [ -1, %lor.lhs.false14.do.end_crit_edge ], [ -1, %lor.rhs.do.end_crit_edge ]
  %cid.sroa.27.0148 = phi i32 [ %cid.sroa.27.0, %if.then10.do.end_crit_edge ], [ %cid.sroa.27.0, %lor.lhs.false14.do.end_crit_edge ], [ -1, %lor.rhs.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 275, i32 noundef 9, ptr noundef null) #5
  br label %if.end37

if.end37:                                         ; preds = %do.end, %lor.rhs.if.end37_crit_edge, %exfat_cache_lookup.exit.if.end37_crit_edge, %lor.rhs.thread
  %cid.sroa.0.0156 = phi i32 [ 0, %lor.rhs.if.end37_crit_edge ], [ %cid.sroa.0.0, %do.end ], [ %cid.sroa.0.0, %exfat_cache_lookup.exit.if.end37_crit_edge ], [ 0, %lor.rhs.thread ]
  %cid.sroa.8.0153 = phi i32 [ 0, %lor.rhs.if.end37_crit_edge ], [ %cid.sroa.8.0, %do.end ], [ %cid.sroa.8.0, %exfat_cache_lookup.exit.if.end37_crit_edge ], [ 0, %lor.rhs.thread ]
  %cid.sroa.18.0150 = phi i32 [ -1, %lor.rhs.if.end37_crit_edge ], [ %cid.sroa.18.0151, %do.end ], [ %cid.sroa.18.0, %exfat_cache_lookup.exit.if.end37_crit_edge ], [ -1, %lor.rhs.thread ]
  %cid.sroa.27.0147 = phi i32 [ -1, %lor.rhs.if.end37_crit_edge ], [ %cid.sroa.27.0148, %do.end ], [ %cid.sroa.27.0, %exfat_cache_lookup.exit.if.end37_crit_edge ], [ -1, %lor.rhs.thread ]
  %46 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fclus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %cluster)
  %cmp38 = icmp eq i32 %47, %cluster
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %while.cond.preheader

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end37
  %48 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fclus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %cluster)
  %cmp41219 = icmp ult i32 %49, %cluster
  br i1 %cmp41219, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %50 = phi i32 [ %65, %if.end58.while.body_crit_edge ], [ %49, %while.cond.preheader.while.body_crit_edge ]
  %cid.sroa.0.1223 = phi i32 [ %cid.sroa.0.2, %if.end58.while.body_crit_edge ], [ %cid.sroa.0.0156, %while.cond.preheader.while.body_crit_edge ]
  %cid.sroa.8.1222 = phi i32 [ %cid.sroa.8.2, %if.end58.while.body_crit_edge ], [ %cid.sroa.8.0153, %while.cond.preheader.while.body_crit_edge ]
  %cid.sroa.18.1221 = phi i32 [ %cid.sroa.18.2, %if.end58.while.body_crit_edge ], [ %cid.sroa.18.0150, %while.cond.preheader.while.body_crit_edge ]
  %cid.sroa.27.1220 = phi i32 [ %cid.sroa.27.2, %if.end58.while.body_crit_edge ], [ %cid.sroa.27.0147, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %5)
  %cmp42 = icmp ugt i32 %50, %5
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %50) #8
  br label %cleanup

if.end44:                                         ; preds = %while.body
  %51 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dclus, align 4
  %call45 = call i32 @exfat_ent_get(ptr noundef %1, i32 noundef %52, ptr noundef nonnull %content) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %53 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dclus, align 4
  %55 = ptrtoint ptr %last_dclus to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %last_dclus, align 4
  %56 = ptrtoint ptr %content to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %content, align 4
  store i32 %57, ptr %dclus, align 4
  %58 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fclus, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %fclus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp49 = icmp eq i32 %57, -1
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_eof)
  %tobool51.not = icmp eq i32 %allow_eof, 0
  br i1 %tobool51.not, label %if.then52, label %if.then50.while.end_crit_edge

if.then50.while.end_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %last_dclus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_dclus, align 4
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %inc, i32 noundef %61) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %62 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dclus, align 4
  %inc.i = add i32 %cid.sroa.8.1222, 1
  %add.i103 = add i32 %inc.i, %cid.sroa.27.1220
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i103, i32 %63)
  %cmp.i.not = icmp eq i32 %add.i103, %63
  br i1 %cmp.i.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %cid.sroa.27.2 = phi i32 [ %63, %if.then57 ], [ %cid.sroa.27.1220, %if.end54.if.end58_crit_edge ]
  %cid.sroa.18.2 = phi i32 [ %inc, %if.then57 ], [ %cid.sroa.18.1221, %if.end54.if.end58_crit_edge ]
  %cid.sroa.8.2 = phi i32 [ 0, %if.then57 ], [ %inc.i, %if.end54.if.end58_crit_edge ]
  %cid.sroa.0.2 = phi i32 [ 0, %if.then57 ], [ %cid.sroa.0.1223, %if.end54.if.end58_crit_edge ]
  %64 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fclus, align 4
  %cmp41 = icmp ult i32 %65, %cluster
  br i1 %cmp41, label %if.end58.while.body_crit_edge, label %if.end58.while.end_crit_edge

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %if.then50.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cid.sroa.27.1216 = phi i32 [ %cid.sroa.27.1220, %if.then50.while.end_crit_edge ], [ %cid.sroa.27.0147, %while.cond.preheader.while.end_crit_edge ], [ %cid.sroa.27.2, %if.end58.while.end_crit_edge ]
  %cid.sroa.18.1210 = phi i32 [ %cid.sroa.18.1221, %if.then50.while.end_crit_edge ], [ %cid.sroa.18.0150, %while.cond.preheader.while.end_crit_edge ], [ %cid.sroa.18.2, %if.end58.while.end_crit_edge ]
  %cid.sroa.8.1202 = phi i32 [ %cid.sroa.8.1222, %if.then50.while.end_crit_edge ], [ %cid.sroa.8.0153, %while.cond.preheader.while.end_crit_edge ], [ %cid.sroa.8.2, %if.end58.while.end_crit_edge ]
  %cid.sroa.0.1198 = phi i32 [ %cid.sroa.0.1223, %if.then50.while.end_crit_edge ], [ %cid.sroa.0.0156, %while.cond.preheader.while.end_crit_edge ], [ %cid.sroa.0.2, %if.end58.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cid.sroa.18.1210)
  %cmp.i108 = icmp eq i32 %cid.sroa.18.1210, -1
  br i1 %cmp.i108, label %while.end.cleanup_crit_edge, label %if.end.i

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %while.end
  call void @_raw_spin_lock(ptr noundef %cache_lru_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.sroa.0.1198)
  %cmp1.not.i = icmp eq i32 %cid.sroa.0.1198, 0
  br i1 %cmp1.not.i, label %if.end.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true.i111

if.end.i.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.preheader

land.lhs.true.i111:                               ; preds = %if.end.i
  %cache_valid_id.i110 = getelementptr i8, ptr %inode, i32 -136
  %66 = ptrtoint ptr %cache_valid_id.i110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cache_valid_id.i110, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cid.sroa.0.1198, i32 %67)
  %cmp3.not.i = icmp eq i32 %cid.sroa.0.1198, %67
  br i1 %cmp3.not.i, label %land.lhs.true.i111.for.cond.i.i.preheader_crit_edge, label %land.lhs.true.i111.cleanup.sink.split.i_crit_edge

land.lhs.true.i111.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

land.lhs.true.i111.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %land.lhs.true.i111.for.cond.i.i.preheader_crit_edge, %if.end.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %p.0.in.i.i = phi ptr [ %p.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %cache_lru.i, %for.cond.i.i.preheader ]
  %68 = ptrtoint ptr %p.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 4
  %cmp.not.i.i112 = icmp eq ptr %p.0.i.i, %cache_lru.i
  br i1 %cmp.not.i.i112, label %for.cond.i.i.if.then8.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then8.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %fcluster.i.i = getelementptr inbounds %struct.exfat_cache, ptr %p.0.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %fcluster.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fcluster.i.i, align 4
  %cmp3.i.i = icmp eq i32 %70, %cid.sroa.18.1210
  br i1 %cmp3.i.i, label %if.then.i.i113, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

if.then.i.i113:                                   ; preds = %for.body.i.i
  %nr_contig4.i.i = getelementptr inbounds %struct.exfat_cache, ptr %p.0.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %nr_contig4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_contig4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cid.sroa.8.1202, i32 %72)
  %cmp5.i.i = icmp ugt i32 %cid.sroa.8.1202, %72
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.then.i.i113.exfat_cache_merge.exit.i_crit_edge

if.then.i.i113.exfat_cache_merge.exit.i_crit_edge: ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_merge.exit.i

if.then6.i.i:                                     ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %nr_contig4.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cid.sroa.8.1202, ptr %nr_contig4.i.i, align 4
  br label %exfat_cache_merge.exit.i

exfat_cache_merge.exit.i:                         ; preds = %if.then6.i.i, %if.then.i.i113.exfat_cache_merge.exit.i_crit_edge
  %cmp7.i114 = icmp eq ptr %p.0.i.i, null
  br i1 %cmp7.i114, label %exfat_cache_merge.exit.i.if.then8.i_crit_edge, label %exfat_cache_merge.exit.i.out_update_lru.i_crit_edge

exfat_cache_merge.exit.i.out_update_lru.i_crit_edge: ; preds = %exfat_cache_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_update_lru.i

exfat_cache_merge.exit.i.if.then8.i_crit_edge:    ; preds = %exfat_cache_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.then8.i:                                       ; preds = %exfat_cache_merge.exit.i.if.then8.i_crit_edge, %for.cond.i.i.if.then8.i_crit_edge
  %nr_caches.i = getelementptr i8, ptr %inode, i32 -140
  %74 = ptrtoint ptr %nr_caches.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_caches.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %75)
  %cmp9.i = icmp slt i32 %75, 16
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i116

if.then10.i:                                      ; preds = %if.then8.i
  %inc.i115 = add nsw i32 %75, 1
  %76 = ptrtoint ptr %nr_caches.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc.i115, ptr %nr_caches.i, align 4
  call void @_raw_spin_unlock(ptr noundef %cache_lru_lock.i) #5
  %77 = load ptr, ptr @exfat_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %77, i32 noundef 3136) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  call void @_raw_spin_lock(ptr noundef %cache_lru_lock.i) #5
  br i1 %tobool.not.i, label %if.then14.i, label %if.then10.i.for.cond.i70.i_crit_edge

if.then10.i.for.cond.i70.i_crit_edge:             ; preds = %if.then10.i
  br label %for.cond.i70.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %nr_caches.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_caches.i, align 4
  %dec.i = add i32 %79, -1
  store i32 %dec.i, ptr %nr_caches.i, align 4
  br label %cleanup.sink.split.i

for.cond.i70.i:                                   ; preds = %for.body.i73.i.for.cond.i70.i_crit_edge, %if.then10.i.for.cond.i70.i_crit_edge
  %p.0.in.i67.i = phi ptr [ %p.0.i68.i, %for.body.i73.i.for.cond.i70.i_crit_edge ], [ %cache_lru.i, %if.then10.i.for.cond.i70.i_crit_edge ]
  %80 = ptrtoint ptr %p.0.in.i67.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %p.0.i68.i = load ptr, ptr %p.0.in.i67.i, align 4
  %cmp.not.i69.i = icmp eq ptr %p.0.i68.i, %cache_lru.i
  br i1 %cmp.not.i69.i, label %for.cond.i70.i.if.end27.i_crit_edge, label %for.body.i73.i

for.cond.i70.i.if.end27.i_crit_edge:              ; preds = %for.cond.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

for.body.i73.i:                                   ; preds = %for.cond.i70.i
  %fcluster.i71.i = getelementptr inbounds %struct.exfat_cache, ptr %p.0.i68.i, i32 0, i32 2
  %81 = ptrtoint ptr %fcluster.i71.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fcluster.i71.i, align 4
  %cmp3.i72.i = icmp eq i32 %82, %cid.sroa.18.1210
  br i1 %cmp3.i72.i, label %if.then.i77.i, label %for.body.i73.i.for.cond.i70.i_crit_edge

for.body.i73.i.for.cond.i70.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i70.i

if.then.i77.i:                                    ; preds = %for.body.i73.i
  %nr_contig4.i75.i = getelementptr inbounds %struct.exfat_cache, ptr %p.0.i68.i, i32 0, i32 1
  %83 = ptrtoint ptr %nr_contig4.i75.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_contig4.i75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cid.sroa.8.1202, i32 %84)
  %cmp5.i76.i = icmp ugt i32 %cid.sroa.8.1202, %84
  br i1 %cmp5.i76.i, label %if.then6.i78.i, label %if.then.i77.i.exfat_cache_merge.exit80.i_crit_edge

if.then.i77.i.exfat_cache_merge.exit80.i_crit_edge: ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_merge.exit80.i

if.then6.i78.i:                                   ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %nr_contig4.i75.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cid.sroa.8.1202, ptr %nr_contig4.i75.i, align 4
  br label %exfat_cache_merge.exit80.i

exfat_cache_merge.exit80.i:                       ; preds = %if.then6.i78.i, %if.then.i77.i.exfat_cache_merge.exit80.i_crit_edge
  %cmp21.not.i = icmp eq ptr %p.0.i68.i, null
  br i1 %cmp21.not.i, label %exfat_cache_merge.exit80.i.if.end27.i_crit_edge, label %if.then22.i

exfat_cache_merge.exit80.i.if.end27.i_crit_edge:  ; preds = %exfat_cache_merge.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then22.i:                                      ; preds = %exfat_cache_merge.exit80.i
  %86 = ptrtoint ptr %nr_caches.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_caches.i, align 4
  %dec24.i = add i32 %87, -1
  store i32 %dec24.i, ptr %nr_caches.i, align 4
  %88 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %call.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %89, %call.i.i
  br i1 %cmp.i.not.i.i, label %if.then22.i.exfat_cache_free.exit.i_crit_edge, label %do.end.i.i, !prof !23

if.then22.i.exfat_cache_free.exit.i_crit_edge:    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exfat_cache_free.exit.i

do.end.i.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef 9, ptr noundef null) #5
  br label %exfat_cache_free.exit.i

exfat_cache_free.exit.i:                          ; preds = %do.end.i.i, %if.then22.i.exfat_cache_free.exit.i_crit_edge
  %90 = load ptr, ptr @exfat_cachep, align 4
  call void @kmem_cache_free(ptr noundef %90, ptr noundef nonnull %call.i.i) #5
  br label %out_update_lru.i

if.else.i116:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i = getelementptr i8, ptr %inode, i32 -144
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i116, %exfat_cache_merge.exit80.i.if.end27.i_crit_edge, %for.cond.i70.i.if.end27.i_crit_edge
  %cache.0.i = phi ptr [ %92, %if.else.i116 ], [ %call.i.i, %exfat_cache_merge.exit80.i.if.end27.i_crit_edge ], [ %call.i.i, %for.cond.i70.i.if.end27.i_crit_edge ]
  %fcluster29.i = getelementptr inbounds %struct.exfat_cache, ptr %cache.0.i, i32 0, i32 2
  %93 = ptrtoint ptr %fcluster29.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cid.sroa.18.1210, ptr %fcluster29.i, align 4
  %dcluster30.i = getelementptr inbounds %struct.exfat_cache, ptr %cache.0.i, i32 0, i32 3
  %94 = ptrtoint ptr %dcluster30.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cid.sroa.27.1216, ptr %dcluster30.i, align 4
  %nr_contig31.i = getelementptr inbounds %struct.exfat_cache, ptr %cache.0.i, i32 0, i32 1
  %95 = ptrtoint ptr %nr_contig31.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cid.sroa.8.1202, ptr %nr_contig31.i, align 4
  br label %out_update_lru.i

out_update_lru.i:                                 ; preds = %if.end27.i, %exfat_cache_free.exit.i, %exfat_cache_merge.exit.i.out_update_lru.i_crit_edge
  %cache.1.i = phi ptr [ %p.0.i68.i, %exfat_cache_free.exit.i ], [ %cache.0.i, %if.end27.i ], [ %p.0.i.i, %exfat_cache_merge.exit.i.out_update_lru.i_crit_edge ]
  %96 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cache_lru.i, align 4
  %cmp.not.i82.i = icmp eq ptr %97, %cache.1.i
  br i1 %cmp.not.i82.i, label %out_update_lru.i.cleanup.sink.split.i_crit_edge, label %if.then.i83.i

out_update_lru.i.cleanup.sink.split.i_crit_edge:  ; preds = %out_update_lru.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then.i83.i:                                    ; preds = %out_update_lru.i
  %call.i.i.i.i119 = call zeroext i1 @__list_del_entry_valid(ptr noundef %cache.1.i) #5
  br i1 %call.i.i.i.i119, label %if.end.i.i.i.i122, label %if.then.i83.i.__list_del_entry.exit.i.i.i124_crit_edge

if.then.i83.i.__list_del_entry.exit.i.i.i124_crit_edge: ; preds = %if.then.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i.i124

if.end.i.i.i.i122:                                ; preds = %if.then.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %cache.1.i, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i.i120, align 4
  %100 = ptrtoint ptr %cache.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cache.1.i, align 4
  %prev1.i.i.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i.i121, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %__list_del_entry.exit.i.i.i124

__list_del_entry.exit.i.i.i124:                   ; preds = %if.end.i.i.i.i122, %if.then.i83.i.__list_del_entry.exit.i.i.i124_crit_edge
  %104 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cache_lru.i, align 4
  %call.i.i.i.i.i123 = call zeroext i1 @__list_add_valid(ptr noundef %cache.1.i, ptr noundef %cache_lru.i, ptr noundef %105) #5
  br i1 %call.i.i.i.i.i123, label %if.end.i.i.i.i.i127, label %__list_del_entry.exit.i.i.i124.cleanup.sink.split.i_crit_edge

__list_del_entry.exit.i.i.i124.cleanup.sink.split.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i.i.i.i127:                              ; preds = %__list_del_entry.exit.i.i.i124
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i.i125 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i2.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %cache.1.i, ptr %prev1.i.i2.i.i.i125, align 4
  %107 = ptrtoint ptr %cache.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %cache.1.i, align 4
  %prev3.i.i.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %cache.1.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %cache_lru.i, ptr %prev3.i.i.i.i.i126, align 4
  %109 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %cache.1.i, ptr %cache_lru.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.i.i.i.i127, %__list_del_entry.exit.i.i.i124.cleanup.sink.split.i_crit_edge, %out_update_lru.i.cleanup.sink.split.i_crit_edge, %if.then14.i, %land.lhs.true.i111.cleanup.sink.split.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %cache_lru_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %while.end.cleanup_crit_edge, %if.then52, %if.end44.cleanup_crit_edge, %if.then43, %if.end37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then43 ], [ -5, %if.then52 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -5, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %content) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/cache.c", i32 47, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/cache.c", i32 248, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/exfat/cache.c", i32 272, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/exfat/cache.c", i32 284, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/exfat/cache.c", i32 299, i32 5}
!10 = !{ptr @exfat_cachep, !11, !"exfat_cachep", i1 false, i1 false}
!11 = !{!"../fs/exfat/cache.c", i32 36, i32 27}
!12 = !{ptr @exfat_cache_lookup.nohit, !13, !"nohit", i1 false, i1 false}
!13 = !{!"../fs/exfat/cache.c", i32 88, i32 28}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"auto-init"}
