; ModuleID = '/llk/IR_all_yes/fs/fat/cache.c_pt.bc'
source_filename = "../fs/fat/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fat_cache = type { %struct.list_head, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fat_entry = type { i32, %union.anon.70, i32, [2 x ptr], ptr }
%union.anon.70 = type { [2 x ptr] }
%struct.fat_cache_id = type { i32, i32, i32, i32 }
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
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fat_cache\00", [22 x i8] zeroinitializer }, align 32
@fat_cache_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.fat_get_cluster = private unnamed_addr constant [16 x i8] c"fat_get_cluster\00", align 1
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: invalid start cluster (i_pos %lld, start %08x)\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: detected the cluster chain loop (i_pos %lld)\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: invalid cluster chain (i_pos %lld)\00", [57 x i8] zeroinitializer }, align 32
@fat_cache_lookup.nohit = internal global { %struct.fat_cache, [44 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: request beyond EOF (i_pos %lld)\00", [60 x i8] zeroinitializer }, align 32
@__func__.fat_bmap_cluster = private unnamed_addr constant [17 x i8] c"fat_bmap_cluster\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435455]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 48, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"fat_cache_cachep\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 37, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 239, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 259, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 270, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"nohit\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 84, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [18 x i8] c"../fs/fat/cache.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 303, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @fat_cache_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fat_cache_lookup.nohit, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_cache_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_cache_lookup.nohit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_cache_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @init_once) #7
  store ptr %call, ptr @fat_cache_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %foo to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %foo, ptr %foo, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %foo, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %foo, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_cache_destroy() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_cache_inval_inode(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -208
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #7
  %cache_lru.i = getelementptr i8, ptr %inode, i32 -164
  %0 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cache_lru.i, align 4
  %cmp.i.not12.i = icmp eq ptr %1, %cache_lru.i
  br i1 %cmp.i.not12.i, label %entry.__fat_cache_inval_inode.exit_crit_edge, label %while.body.lr.ph.i

entry.__fat_cache_inval_inode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fat_cache_inval_inode.exit

while.body.lr.ph.i:                               ; preds = %entry
  %nr_caches.i = getelementptr i8, ptr %inode, i32 -156
  br label %while.body.i

while.body.i:                                     ; preds = %fat_cache_free.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %16, %fat_cache_free.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.i.not.i.i, label %fat_cache_free.exit.i, label %do.body4.i.i, !prof !25

do.body4.i.i:                                     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

fat_cache_free.exit.i:                            ; preds = %list_del_init.exit.i
  %14 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %2) #7
  %15 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cache_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %cache_lru.i
  br i1 %cmp.i.not.i, label %fat_cache_free.exit.i.__fat_cache_inval_inode.exit_crit_edge, label %fat_cache_free.exit.i.while.body.i_crit_edge

fat_cache_free.exit.i.while.body.i_crit_edge:     ; preds = %fat_cache_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

fat_cache_free.exit.i.__fat_cache_inval_inode.exit_crit_edge: ; preds = %fat_cache_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fat_cache_inval_inode.exit

__fat_cache_inval_inode.exit:                     ; preds = %fat_cache_free.exit.i.__fat_cache_inval_inode.exit_crit_edge, %entry.__fat_cache_inval_inode.exit_crit_edge
  %cache_valid_id.i = getelementptr i8, ptr %inode, i32 -152
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
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_get_cluster(ptr noundef %inode, i32 noundef %cluster, ptr nocapture noundef %fclus, ptr nocapture noundef %dclus) local_unnamed_addr #3 align 64 {
entry:
  %fatent = alloca %struct.fat_entry, align 4
  %cid = alloca %struct.fat_cache_id, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_maxbytes, align 8
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cluster_bits, align 2
  %sh_prom = zext i16 %7 to i64
  %shr = ashr i64 %5, %sh_prom
  %conv1 = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #7
  %8 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %10 = call ptr @memset(ptr %fatent, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cid) #7
  %11 = getelementptr inbounds %struct.fat_cache_id, ptr %cid, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fat_cache_id, ptr %cid, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fat_cache_id, ptr %cid, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -208
  %i_start = getelementptr i8, ptr %inode, i32 -136
  %14 = call ptr @memset(ptr %cid, i32 255, i32 16)
  %15 = ptrtoint ptr %i_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %do.body5, label %do.end10, !prof !27

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

do.end10:                                         ; preds = %entry
  %17 = ptrtoint ptr %fclus to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fclus, align 4
  %18 = ptrtoint ptr %i_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_start, align 8
  %20 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dclus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp sgt i32 %19, 1
  br i1 %cmp.i, label %fat_valid_entry.exit, label %do.end10.if.then14_crit_edge

do.end10.if.then14_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

fat_valid_entry.exit:                             ; preds = %do.end10
  %max_cluster.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %max_cluster.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp2.i = icmp ugt i32 %22, %19
  br i1 %cmp2.i, label %if.end18, label %fat_valid_entry.exit.if.then14_crit_edge

fat_valid_entry.exit.if.then14_crit_edge:         ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %fat_valid_entry.exit.if.then14_crit_edge, %do.end10.if.then14_crit_edge
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %ratelimit = getelementptr inbounds %struct.msdos_sb_info, ptr %24, i32 0, i32 30
  %call16 = tail call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %i_pos = getelementptr i8, ptr %inode, i32 -120
  %25 = ptrtoint ptr %i_pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_pos, align 8
  %27 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dclus, align 4
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef %call16, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %26, i32 noundef %28) #10
  br label %cleanup

if.end18:                                         ; preds = %fat_valid_entry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster)
  %cmp19 = icmp eq i32 %cluster, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #7
  %cache_lru.i = getelementptr i8, ptr %inode, i32 -164
  %29 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %p.068.i = load ptr, ptr %cache_lru.i, align 4
  %cmp.not69.i = icmp eq ptr %p.068.i, %cache_lru.i
  br i1 %cmp.not69.i, label %fat_cache_lookup.exit.thread, label %if.end22.for.body.i_crit_edge

if.end22.for.body.i_crit_edge:                    ; preds = %if.end22
  br label %for.body.i

fat_cache_lookup.exit.thread:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #7
  br label %if.then26

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end22.for.body.i_crit_edge
  %p.072.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.068.i, %if.end22.for.body.i_crit_edge ]
  %hit.071.i = phi ptr [ %hit.1.i, %for.inc.i.for.body.i_crit_edge ], [ @fat_cache_lookup.nohit, %if.end22.for.body.i_crit_edge ]
  %offset.070.i = phi i32 [ %offset.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.end22.for.body.i_crit_edge ]
  %fcluster.i = getelementptr inbounds %struct.fat_cache, ptr %p.072.i, i32 0, i32 2
  %30 = ptrtoint ptr %fcluster.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fcluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cluster)
  %cmp4.not.i = icmp sgt i32 %31, %cluster
  br i1 %cmp4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fcluster5.i = getelementptr inbounds %struct.fat_cache, ptr %hit.071.i, i32 0, i32 2
  %32 = ptrtoint ptr %fcluster5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fcluster5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp7.i = icmp slt i32 %33, %31
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %nr_contig.i = getelementptr inbounds %struct.fat_cache, ptr %p.072.i, i32 0, i32 1
  %34 = ptrtoint ptr %nr_contig.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_contig.i, align 4
  %add.i = add i32 %35, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cluster)
  %cmp9.i = icmp slt i32 %add.i, %cluster
  br i1 %cmp9.i, label %if.then.i.for.inc.i_crit_edge, label %if.else.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %cluster, %31
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %offset.1.i = phi i32 [ %offset.070.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %offset.070.i, %for.body.i.for.inc.i_crit_edge ], [ %35, %if.then.i.for.inc.i_crit_edge ]
  %hit.1.i = phi ptr [ %hit.071.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %hit.071.i, %for.body.i.for.inc.i_crit_edge ], [ %p.072.i, %if.then.i.for.inc.i_crit_edge ]
  %36 = ptrtoint ptr %p.072.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %p.0.i = load ptr, ptr %p.072.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %cache_lru.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i
  %offset.2.i = phi i32 [ %sub.i, %if.else.i ], [ %offset.1.i, %for.inc.i.for.end.i_crit_edge ]
  %hit.2.i = phi ptr [ %p.072.i, %if.else.i ], [ %hit.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp19.not.i = icmp eq ptr %hit.2.i, @fat_cache_lookup.nohit
  br i1 %cmp19.not.i, label %for.end.i.fat_cache_lookup.exit_crit_edge, label %if.then20.i

for.end.i.fat_cache_lookup.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_cache_lookup.exit

if.then20.i:                                      ; preds = %for.end.i
  %cmp.not.i.i = icmp eq ptr %p.068.i, %hit.2.i
  br i1 %cmp.not.i.i, label %if.then20.i.fat_cache_update_lru.exit.i_crit_edge, label %if.then.i.i

if.then20.i.fat_cache_update_lru.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_cache_update_lru.exit.i

if.then.i.i:                                      ; preds = %if.then20.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hit.2.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %hit.2.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %hit.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hit.2.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %43 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cache_lru.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hit.2.i, ptr noundef %cache_lru.i, ptr noundef %44) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.fat_cache_update_lru.exit.i_crit_edge

__list_del_entry.exit.i.i.i.fat_cache_update_lru.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_cache_update_lru.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hit.2.i, ptr %prev1.i.i2.i.i.i, align 4
  %46 = ptrtoint ptr %hit.2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %hit.2.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %hit.2.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cache_lru.i, ptr %prev3.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hit.2.i, ptr %cache_lru.i, align 4
  br label %fat_cache_update_lru.exit.i

fat_cache_update_lru.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.fat_cache_update_lru.exit.i_crit_edge, %if.then20.i.fat_cache_update_lru.exit.i_crit_edge
  %cache_valid_id.i = getelementptr i8, ptr %inode, i32 -152
  %49 = ptrtoint ptr %cache_valid_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cache_valid_id.i, align 8
  %51 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cid, align 4
  %nr_contig22.i = getelementptr inbounds %struct.fat_cache, ptr %hit.2.i, i32 0, i32 1
  %52 = ptrtoint ptr %nr_contig22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_contig22.i, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %11, align 4
  %fcluster24.i = getelementptr inbounds %struct.fat_cache, ptr %hit.2.i, i32 0, i32 2
  %55 = ptrtoint ptr %fcluster24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fcluster24.i, align 4
  %57 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %12, align 4
  %dcluster.i = getelementptr inbounds %struct.fat_cache, ptr %hit.2.i, i32 0, i32 3
  %58 = ptrtoint ptr %dcluster.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dcluster.i, align 4
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %13, align 4
  %add28.i = add i32 %56, %offset.2.i
  %61 = ptrtoint ptr %fclus to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add28.i, ptr %fclus, align 4
  %add30.i = add i32 %59, %offset.2.i
  %62 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add30.i, ptr %dclus, align 4
  br label %fat_cache_lookup.exit

fat_cache_lookup.exit:                            ; preds = %fat_cache_update_lru.exit.i, %for.end.i.fat_cache_lookup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.2.i)
  %cmp24 = icmp slt i32 %offset.2.i, 0
  br i1 %cmp24, label %fat_cache_lookup.exit.if.then26_crit_edge, label %fat_cache_lookup.exit.if.end27_crit_edge

fat_cache_lookup.exit.if.end27_crit_edge:         ; preds = %fat_cache_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

fat_cache_lookup.exit.if.then26_crit_edge:        ; preds = %fat_cache_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %fat_cache_lookup.exit.if.then26_crit_edge, %fat_cache_lookup.exit.thread
  %63 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %cid, align 4
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %12, align 4
  %65 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %13, align 4
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %11, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %fat_cache_lookup.exit.if.end27_crit_edge
  %67 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %fatent, align 4
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %8, align 4
  %69 = call ptr @memset(ptr %9, i32 0, i32 16)
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.promoted = load i32, ptr %11, align 4
  %71 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.promoted137 = load i32, ptr %13, align 4
  %72 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %72)
  %cid.promoted = load i32, ptr %cid, align 4
  %73 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.promoted149 = load i32, ptr %12, align 4
  %74 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fclus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %cluster)
  %cmp28155 = icmp slt i32 %75, %cluster
  br i1 %cmp28155, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  br label %while.body

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %if.end27.while.body_crit_edge
  %76 = phi i32 [ %111, %if.end61.while.body_crit_edge ], [ %75, %if.end27.while.body_crit_edge ]
  %77 = phi i32 [ %109, %if.end61.while.body_crit_edge ], [ %.promoted, %if.end27.while.body_crit_edge ]
  %call39139156 = phi i32 [ %call39138, %if.end61.while.body_crit_edge ], [ %.promoted137, %if.end27.while.body_crit_edge ]
  %78 = phi i32 [ %108, %if.end61.while.body_crit_edge ], [ %cid.promoted, %if.end27.while.body_crit_edge ]
  %79 = phi i32 [ %107, %if.end61.while.body_crit_edge ], [ %.promoted149, %if.end27.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv1)
  %cmp30 = icmp sgt i32 %76, %conv1
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %11, align 4
  %81 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call39139156, ptr %13, align 4
  %82 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %cid, align 4
  %83 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i, align 16
  %ratelimit34 = getelementptr inbounds %struct.msdos_sb_info, ptr %84, i32 0, i32 30
  %call35 = call i32 @___ratelimit(ptr noundef %ratelimit34, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %i_pos37 = getelementptr i8, ptr %inode, i32 -120
  %85 = ptrtoint ptr %i_pos37 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_pos37, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef %call35, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %86) #10
  br label %out

if.end38:                                         ; preds = %while.body
  %87 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dclus, align 4
  %call39 = call i32 @fat_ent_read(ptr noundef %inode, ptr noundef nonnull %fatent, i32 noundef %88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %out.loopexit, label %if.else

if.else:                                          ; preds = %if.end38
  %89 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call39, label %if.end57 [
    i32 0, label %if.then45
    i32 268435455, label %if.then54
  ]

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %77, ptr %11, align 4
  %91 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call39139156, ptr %13, align 4
  %92 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %78, ptr %cid, align 4
  %93 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %79, ptr %12, align 4
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %ratelimit47 = getelementptr inbounds %struct.msdos_sb_info, ptr %95, i32 0, i32 30
  %call48 = call i32 @___ratelimit(ptr noundef %ratelimit47, ptr noundef nonnull @__func__.fat_get_cluster) #7
  %i_pos50 = getelementptr i8, ptr %inode, i32 -120
  %96 = ptrtoint ptr %i_pos50 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %i_pos50, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef %call48, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.fat_get_cluster, i64 noundef %97) #10
  br label %out

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %77, ptr %11, align 4
  %99 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call39139156, ptr %13, align 4
  %100 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %78, ptr %cid, align 4
  %101 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %79, ptr %12, align 4
  call fastcc void @fat_cache_add(ptr noundef %inode, ptr noundef nonnull %cid)
  br label %out

if.end57:                                         ; preds = %if.else
  %102 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fclus, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr %fclus, align 4
  %104 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call39, ptr %dclus, align 4
  %inc.i = add i32 %77, 1
  %add.i114 = add i32 %call39139156, %inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i114, i32 %call39)
  %cmp.i115.not = icmp eq i32 %add.i114, %call39
  br i1 %cmp.i115.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fclus, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57.if.end61_crit_edge
  %107 = phi i32 [ %106, %if.then60 ], [ %79, %if.end57.if.end61_crit_edge ]
  %108 = phi i32 [ 0, %if.then60 ], [ %78, %if.end57.if.end61_crit_edge ]
  %call39138 = phi i32 [ %call39, %if.then60 ], [ %call39139156, %if.end57.if.end61_crit_edge ]
  %109 = phi i32 [ 0, %if.then60 ], [ %inc.i, %if.end57.if.end61_crit_edge ]
  %110 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fclus, align 4
  %cmp28 = icmp slt i32 %111, %cluster
  br i1 %cmp28, label %if.end61.while.body_crit_edge, label %if.end61.while.end_crit_edge

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %if.end27.while.end_crit_edge
  %.lcssa150 = phi i32 [ %.promoted149, %if.end27.while.end_crit_edge ], [ %107, %if.end61.while.end_crit_edge ]
  %.lcssa144 = phi i32 [ %cid.promoted, %if.end27.while.end_crit_edge ], [ %108, %if.end61.while.end_crit_edge ]
  %call39139.lcssa = phi i32 [ %.promoted137, %if.end27.while.end_crit_edge ], [ %call39138, %if.end61.while.end_crit_edge ]
  %.lcssa132 = phi i32 [ %.promoted, %if.end27.while.end_crit_edge ], [ %109, %if.end61.while.end_crit_edge ]
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.lcssa132, ptr %11, align 4
  %113 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call39139.lcssa, ptr %13, align 4
  %114 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.lcssa144, ptr %cid, align 4
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.lcssa150, ptr %12, align 4
  call fastcc void @fat_cache_add(ptr noundef %inode, ptr noundef nonnull %cid)
  br label %out

out.loopexit:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %77, ptr %11, align 4
  %117 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call39139156, ptr %13, align 4
  %118 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %78, ptr %cid, align 4
  %119 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %79, ptr %12, align 4
  br label %out

out:                                              ; preds = %out.loopexit, %while.end, %if.then54, %if.then45, %if.then32
  %nr.0 = phi i32 [ -5, %if.then32 ], [ -5, %if.then45 ], [ 268435455, %if.then54 ], [ 0, %while.end ], [ %call39, %out.loopexit ]
  %120 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %8, align 4
  %121 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp14.i = icmp sgt i32 %122, 0
  br i1 %cmp14.i, label %out.for.body.i121_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out.for.body.i121_crit_edge:                      ; preds = %out
  br label %for.body.i121

for.body.i121:                                    ; preds = %brelse.exit.i.for.body.i121_crit_edge, %out.for.body.i121_crit_edge
  %i.015.i = phi i32 [ %inc.i123, %brelse.exit.i.for.body.i121_crit_edge ], [ 0, %out.for.body.i121_crit_edge ]
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.i, label %for.body.i121.brelse.exit.i_crit_edge, label %if.then.i.i122

for.body.i121.brelse.exit.i_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i

if.then.i.i122:                                   ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %124) #7
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i122, %for.body.i121.brelse.exit.i_crit_edge
  %inc.i123 = add nuw nsw i32 %i.015.i, 1
  %125 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %9, align 4
  %cmp.i124 = icmp slt i32 %inc.i123, %126
  br i1 %cmp.i124, label %brelse.exit.i.for.body.i121_crit_edge, label %brelse.exit.i.cleanup_crit_edge

brelse.exit.i.cleanup_crit_edge:                  ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

brelse.exit.i.for.body.i121_crit_edge:            ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i121

cleanup:                                          ; preds = %brelse.exit.i.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then14
  %retval.0 = phi i32 [ -5, %if.then14 ], [ 0, %if.end18.cleanup_crit_edge ], [ %nr.0, %out.cleanup_crit_edge ], [ %nr.0, %brelse.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cid) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fat_cache_add(ptr noundef %inode, ptr nocapture noundef readonly %new) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcluster = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 2
  %0 = ptrtoint ptr %fcluster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -208
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #7
  %2 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %cache_valid_id = getelementptr i8, ptr %inode, i32 -152
  %4 = ptrtoint ptr %cache_valid_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_valid_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp eq i32 %3, %5
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %cache_lru.i = getelementptr i8, ptr %inode, i32 -164
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end6
  %p.0.in.i = phi ptr [ %cache_lru.i, %if.end6 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %cache_lru.i
  br i1 %cmp.not.i, label %for.cond.i.if.then9_crit_edge, label %for.body.i

for.cond.i.if.then9_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

for.body.i:                                       ; preds = %for.cond.i
  %fcluster.i = getelementptr inbounds %struct.fat_cache, ptr %p.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %fcluster.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fcluster.i, align 4
  %9 = ptrtoint ptr %fcluster to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fcluster, align 4
  %cmp4.i = icmp eq i32 %8, %10
  br i1 %cmp4.i, label %do.body.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  %dcluster.i = getelementptr inbounds %struct.fat_cache, ptr %p.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %dcluster.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcluster.i, align 4
  %dcluster5.i = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 3
  %13 = ptrtoint ptr %dcluster5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dcluster5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6.not.i = icmp eq i32 %12, %14
  br i1 %cmp6.not.i, label %do.end15.i, label %do.body10.i, !prof !25

do.body10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  %nr_contig.i = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 1
  %15 = ptrtoint ptr %nr_contig.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_contig.i, align 4
  %nr_contig16.i = getelementptr inbounds %struct.fat_cache, ptr %p.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %nr_contig16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_contig16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp17.i = icmp sgt i32 %16, %18
  br i1 %cmp17.i, label %if.then18.i, label %do.end15.i.fat_cache_merge.exit_crit_edge

do.end15.i.fat_cache_merge.exit_crit_edge:        ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_cache_merge.exit

if.then18.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %nr_contig16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %nr_contig16.i, align 4
  br label %fat_cache_merge.exit

fat_cache_merge.exit:                             ; preds = %if.then18.i, %do.end15.i.fat_cache_merge.exit_crit_edge
  %cmp8 = icmp eq ptr %p.0.i, null
  br i1 %cmp8, label %fat_cache_merge.exit.if.then9_crit_edge, label %fat_cache_merge.exit.out_update_lru_crit_edge

fat_cache_merge.exit.out_update_lru_crit_edge:    ; preds = %fat_cache_merge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_update_lru

fat_cache_merge.exit.if.then9_crit_edge:          ; preds = %fat_cache_merge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %fat_cache_merge.exit.if.then9_crit_edge, %for.cond.i.if.then9_crit_edge
  %nr_caches = getelementptr i8, ptr %inode, i32 -156
  %20 = ptrtoint ptr %nr_caches to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_caches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp12 = icmp slt i32 %21, 8
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  %inc = add nsw i32 %21, 1
  %22 = ptrtoint ptr %nr_caches to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %nr_caches, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #7
  %23 = load ptr, ptr @fat_cache_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %23, i32 noundef 3136) #7
  %tobool.not = icmp eq ptr %call.i, null
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #7
  br i1 %tobool.not, label %if.then19, label %if.then13.for.cond.i90_crit_edge

if.then13.for.cond.i90_crit_edge:                 ; preds = %if.then13
  br label %for.cond.i90

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %nr_caches to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_caches, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %nr_caches, align 4
  br label %cleanup.sink.split

for.cond.i90:                                     ; preds = %for.body.i93.for.cond.i90_crit_edge, %if.then13.for.cond.i90_crit_edge
  %p.0.in.i87 = phi ptr [ %p.0.i88, %for.body.i93.for.cond.i90_crit_edge ], [ %cache_lru.i, %if.then13.for.cond.i90_crit_edge ]
  %26 = ptrtoint ptr %p.0.in.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %p.0.i88 = load ptr, ptr %p.0.in.i87, align 4
  %cmp.not.i89 = icmp eq ptr %p.0.i88, %cache_lru.i
  br i1 %cmp.not.i89, label %for.cond.i90.if.end38_crit_edge, label %for.body.i93

for.cond.i90.if.end38_crit_edge:                  ; preds = %for.cond.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

for.body.i93:                                     ; preds = %for.cond.i90
  %fcluster.i91 = getelementptr inbounds %struct.fat_cache, ptr %p.0.i88, i32 0, i32 2
  %27 = ptrtoint ptr %fcluster.i91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fcluster.i91, align 4
  %29 = ptrtoint ptr %fcluster to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fcluster, align 4
  %cmp4.i92 = icmp eq i32 %28, %30
  br i1 %cmp4.i92, label %do.body.i97, label %for.body.i93.for.cond.i90_crit_edge

for.body.i93.for.cond.i90_crit_edge:              ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i90

do.body.i97:                                      ; preds = %for.body.i93
  %dcluster.i94 = getelementptr inbounds %struct.fat_cache, ptr %p.0.i88, i32 0, i32 3
  %31 = ptrtoint ptr %dcluster.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dcluster.i94, align 4
  %dcluster5.i95 = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 3
  %33 = ptrtoint ptr %dcluster5.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dcluster5.i95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp6.not.i96 = icmp eq i32 %32, %34
  br i1 %cmp6.not.i96, label %do.end15.i102, label %do.body10.i98, !prof !25

do.body10.i98:                                    ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

do.end15.i102:                                    ; preds = %do.body.i97
  %nr_contig.i99 = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 1
  %35 = ptrtoint ptr %nr_contig.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_contig.i99, align 4
  %nr_contig16.i100 = getelementptr inbounds %struct.fat_cache, ptr %p.0.i88, i32 0, i32 1
  %37 = ptrtoint ptr %nr_contig16.i100 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_contig16.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp17.i101 = icmp sgt i32 %36, %38
  br i1 %cmp17.i101, label %if.then18.i103, label %do.end15.i102.fat_cache_merge.exit105_crit_edge

do.end15.i102.fat_cache_merge.exit105_crit_edge:  ; preds = %do.end15.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_cache_merge.exit105

if.then18.i103:                                   ; preds = %do.end15.i102
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %nr_contig16.i100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %nr_contig16.i100, align 4
  br label %fat_cache_merge.exit105

fat_cache_merge.exit105:                          ; preds = %if.then18.i103, %do.end15.i102.fat_cache_merge.exit105_crit_edge
  %cmp30.not = icmp eq ptr %p.0.i88, null
  br i1 %cmp30.not, label %fat_cache_merge.exit105.if.end38_crit_edge, label %if.then31

fat_cache_merge.exit105.if.end38_crit_edge:       ; preds = %fat_cache_merge.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then31:                                        ; preds = %fat_cache_merge.exit105
  %40 = ptrtoint ptr %nr_caches to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_caches, align 4
  %dec34 = add i32 %41, -1
  store i32 %dec34, ptr %nr_caches, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %call.i, align 8
  %cmp.i.not.i = icmp eq ptr %43, %call.i
  br i1 %cmp.i.not.i, label %fat_cache_free.exit, label %do.body4.i, !prof !25

do.body4.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/cache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

fat_cache_free.exit:                              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %44 = load ptr, ptr @fat_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %call.i) #7
  br label %out_update_lru

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %prev = getelementptr i8, ptr %inode, i32 -160
  %45 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %fat_cache_merge.exit105.if.end38_crit_edge, %for.cond.i90.if.end38_crit_edge
  %cache.0 = phi ptr [ %46, %if.else ], [ %call.i, %fat_cache_merge.exit105.if.end38_crit_edge ], [ %call.i, %for.cond.i90.if.end38_crit_edge ]
  %47 = ptrtoint ptr %fcluster to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fcluster, align 4
  %fcluster40 = getelementptr inbounds %struct.fat_cache, ptr %cache.0, i32 0, i32 2
  %49 = ptrtoint ptr %fcluster40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fcluster40, align 4
  %dcluster = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 3
  %50 = ptrtoint ptr %dcluster to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dcluster, align 4
  %dcluster41 = getelementptr inbounds %struct.fat_cache, ptr %cache.0, i32 0, i32 3
  %52 = ptrtoint ptr %dcluster41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dcluster41, align 4
  %nr_contig = getelementptr inbounds %struct.fat_cache_id, ptr %new, i32 0, i32 1
  %53 = ptrtoint ptr %nr_contig to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_contig, align 4
  %nr_contig42 = getelementptr inbounds %struct.fat_cache, ptr %cache.0, i32 0, i32 1
  %55 = ptrtoint ptr %nr_contig42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %nr_contig42, align 4
  br label %out_update_lru

out_update_lru:                                   ; preds = %if.end38, %fat_cache_free.exit, %fat_cache_merge.exit.out_update_lru_crit_edge
  %cache.1 = phi ptr [ %p.0.i88, %fat_cache_free.exit ], [ %cache.0, %if.end38 ], [ %p.0.i, %fat_cache_merge.exit.out_update_lru_crit_edge ]
  %56 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cache_lru.i, align 4
  %cmp.not.i109 = icmp eq ptr %57, %cache.1
  br i1 %cmp.not.i109, label %out_update_lru.cleanup.sink.split_crit_edge, label %if.then.i

out_update_lru.cleanup.sink.split_crit_edge:      ; preds = %out_update_lru
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %out_update_lru
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cache.1) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cache.1, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %cache.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cache.1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %64 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cache_lru.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cache.1, ptr noundef %cache_lru.i, ptr noundef %65) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup.sink.split_crit_edge

__list_del_entry.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cache.1, ptr %prev1.i.i2.i.i, align 4
  %67 = ptrtoint ptr %cache.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %cache.1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cache.1, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cache_lru.i, ptr %prev3.i.i.i.i, align 4
  %69 = ptrtoint ptr %cache_lru.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %cache.1, ptr %cache_lru.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup.sink.split_crit_edge, %out_update_lru.cleanup.sink.split_crit_edge, %if.then19, %land.lhs.true.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_get_mapped_cluster(ptr noundef %inode, i64 noundef %sector, i64 noundef %last_block, ptr nocapture noundef writeonly %mapped_blocks, ptr nocapture noundef writeonly %bmap) local_unnamed_addr #3 align 64 {
entry:
  %fclus.i = alloca i32, align 4
  %dclus.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cluster_bits, align 2
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  %conv3 = zext i16 %9 to i32
  %sub4 = add nsw i32 %conv3, -1
  %10 = trunc i64 %sector to i32
  %conv6 = and i32 %sub4, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus.i) #7
  %11 = ptrtoint ptr %fclus.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %fclus.i, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclus.i) #7
  %12 = ptrtoint ptr %dclus.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %dclus.i, align 4, !annotation !30
  %i_start.i = getelementptr i8, ptr %inode, i32 -136
  %13 = ptrtoint ptr %i_start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.else.thread, label %if.end.i

if.else.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv = zext i16 %5 to i32
  %conv1 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv1
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %sector, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %call1.i = call i32 @fat_get_cluster(ptr noundef %inode, i32 noundef %conv2, ptr noundef nonnull %fclus.i, ptr noundef nonnull %dclus.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.fat_bmap_cluster.exit.thread_crit_edge, label %if.else.i

if.end.i.fat_bmap_cluster.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_bmap_cluster.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %call1.i)
  %cmp4.i = icmp eq i32 %call1.i, 268435455
  br i1 %cmp4.i, label %if.then5.i, label %fat_bmap_cluster.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_pos.i = getelementptr i8, ptr %inode, i32 -120
  %15 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_pos.i, align 8
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fat_bmap_cluster, i64 noundef %16) #10
  br label %fat_bmap_cluster.exit.thread

fat_bmap_cluster.exit.thread:                     ; preds = %if.then5.i, %if.end.i.fat_bmap_cluster.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.fat_bmap_cluster.exit.thread_crit_edge ], [ -5, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #7
  br label %cleanup

fat_bmap_cluster.exit:                            ; preds = %if.else.i
  %17 = ptrtoint ptr %dclus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dclus.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %fat_bmap_cluster.exit.cleanup_crit_edge, label %if.else

fat_bmap_cluster.exit.cleanup_crit_edge:          ; preds = %fat_bmap_cluster.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %fat_bmap_cluster.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.else
  %conv.i52 = zext i32 %18 to i64
  %sub.i = add nsw i64 %conv.i52, -2
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 4
  %conv1.i = zext i16 %20 to i64
  %mul.i = mul nsw i64 %sub.i, %conv1.i
  %data_start.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_start.i, align 4
  %conv2.i = zext i32 %22 to i64
  %conv11 = sext i32 %conv6 to i64
  %add.i = add nsw i64 %conv2.i, %conv11
  %add = add nsw i64 %add.i, %mul.i
  %23 = ptrtoint ptr %bmap to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add, ptr %bmap, align 8
  %24 = load i16, ptr %3, align 4
  %conv13 = zext i16 %24 to i32
  %sub14 = sub i32 %conv13, %conv6
  %25 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub14, ptr %mapped_blocks, align 4
  %conv15 = zext i32 %sub14 to i64
  %sub16 = sub i64 %last_block, %sector
  call void @__sanitizer_cov_trace_cmp8(i64 %sub16, i64 %conv15)
  %cmp17 = icmp ult i64 %sub16, %conv15
  br i1 %cmp17, label %if.then19, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = trunc i64 %sub16 to i32
  %26 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv21, ptr %mapped_blocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %fat_bmap_cluster.exit.cleanup_crit_edge, %fat_bmap_cluster.exit.thread, %if.else.thread
  %retval.0 = phi i32 [ %18, %fat_bmap_cluster.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.then9.cleanup_crit_edge ], [ %retval.0.i.ph, %fat_bmap_cluster.exit.thread ], [ 0, %if.else.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_bmap(ptr noundef %inode, i64 noundef %sector, ptr nocapture noundef writeonly %phys, ptr nocapture noundef writeonly %mapped_blocks, i32 noundef %create, i1 noundef zeroext %from_bmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %phys, align 8
  %5 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mapped_blocks, align 4
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fat_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp.i = icmp eq i8 %7, 32
  br i1 %cmp.i, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %dir_entries = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dir_entries, align 4
  %conv = zext i16 %11 to i32
  %dir_per_block_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 24
  %12 = ptrtoint ptr %dir_per_block_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir_per_block_bits, align 4
  %shr = lshr i32 %conv, %13
  %14 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %sector)
  %cmp3 = icmp ugt i64 %14, %sector
  br i1 %cmp3, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dir_start = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %dir_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir_start, align 4
  %conv6 = zext i32 %16 to i64
  %add = add i64 %conv6, %sector
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %phys, align 8
  %18 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mapped_blocks, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  br i1 %from_bmap, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits.i, align 4
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.then8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !31
  %and.i.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %26 = tail call ptr @llvm.returnaddress(i32 0) #7
  %27 = ptrtoint ptr %26 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %27) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %27) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call ptr @llvm.returnaddress(i32 0) #7
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %29) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %29) #7
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !32
  %and.i.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !27

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #7, !srcloc !33
  %31 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !35
  %33 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %34, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %32, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %34, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %35 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %37 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %38, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  %sub.i = add i32 %22, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %36, %conv.i
  %sh_prom.i = zext i8 %24 to i64
  %shr.i = ashr i64 %add.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %sector)
  %cmp.not.i = icmp ugt i64 %shr.i, %sector
  br i1 %cmp.not.i, label %i_size_read.exit.i.if.end20_crit_edge, label %if.then.i

i_size_read.exit.i.if.end20_crit_edge:            ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then.i:                                        ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not.i = icmp eq i32 %create, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %mmu_private.i = getelementptr i8, ptr %inode, i32 -144
  %39 = ptrtoint ptr %mmu_private.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mmu_private.i, align 8
  %add7.i = add i64 %40, %conv.i
  %shr10.i = ashr i64 %add7.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr10.i, i64 %sector)
  %cmp11.not.i = icmp ugt i64 %shr10.i, %sector
  br i1 %cmp11.not.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else:                                          ; preds = %if.end7
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %41 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_blocks, align 8
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %s_blocksize_bits, align 4
  %conv14 = zext i8 %46 to i32
  %sub = add nsw i32 %conv14, -9
  %sh_prom = zext i32 %sub to i64
  %shr15 = lshr i64 %42, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr15, i64 %sector)
  %cmp16.not = icmp ugt i64 %shr15, %sector
  br i1 %cmp16.not, label %if.else.if.end20_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.end.i.if.end20_crit_edge, %i_size_read.exit.i.if.end20_crit_edge
  %last_block.2 = phi i64 [ %shr15, %if.else.if.end20_crit_edge ], [ %shr.i, %i_size_read.exit.i.if.end20_crit_edge ], [ %shr10.i, %if.end.i.if.end20_crit_edge ]
  %call21 = tail call i32 @fat_get_mapped_cluster(ptr noundef %inode, i64 noundef %sector, i64 noundef %last_block.2, ptr noundef %mapped_blocks, ptr noundef %phys)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.else.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ 0, %if.then5 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fat/cache.c", i32 48, i32 39}
!2 = !{ptr @__func__.fat_get_cluster, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fat/cache.c", i32 239, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/fat/cache.c", i32 259, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/fat/cache.c", i32 270, i32 4}
!9 = !{ptr @fat_cache_cachep, !10, !"fat_cache_cachep", i1 false, i1 false}
!10 = !{!"../fs/fat/cache.c", i32 37, i32 27}
!11 = !{ptr @fat_cache_lookup.nohit, !12, !"nohit", i1 false, i1 false}
!12 = !{!"../fs/fat/cache.c", i32 84, i32 26}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/fat/cache.c", i32 303, i32 3}
!15 = !{ptr @__func__.fat_bmap_cluster, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2153844483, i64 2153844961, i64 2153844520, i64 2153844576, i64 2153844610, i64 2153844634, i64 2153844675, i64 2153844696, i64 2153844724, i64 2153844758}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153857973, i64 2153858452, i64 2153858010, i64 2153858066, i64 2153858100, i64 2153858124, i64 2153858165, i64 2153858186, i64 2153858214, i64 2153858248}
!29 = !{i64 2153853354, i64 2153853833, i64 2153853391, i64 2153853447, i64 2153853481, i64 2153853505, i64 2153853546, i64 2153853567, i64 2153853595, i64 2153853629}
!30 = !{!"auto-init"}
!31 = !{i64 992840, i64 992901}
!32 = !{i64 995572}
!33 = !{i64 995857}
!34 = !{i64 2152937025}
!35 = !{i64 2152936867}
!36 = !{i64 2152937195}
!37 = !{i64 2149767559}
