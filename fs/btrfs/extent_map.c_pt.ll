; ModuleID = '/llk/IR_all_yes/fs/btrfs/extent_map.c_pt.bc'
source_filename = "../fs/btrfs/extent_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btrfs_extent_map\00", [47 x i8] zeroinitializer }, align 32
@extent_map_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@extent_map_tree_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tree->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/extent_map.c\00", [42 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"extent_map_in_tree(cur)\00", [40 x i8] zeroinitializer }, align 32
@btrfs_add_extent_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"unexpected error %d: merge existing(start %llu len %llu) with em(start %llu len %llu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ret == 0 || ret == -EEXIST\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"next->block_start != EXTENT_MAP_DELALLOC && prev->block_start != EXTENT_MAP_DELALLOC\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"test_bit(EXTENT_FLAG_FS_MAPPING, &prev->flags) && test_bit(EXTENT_FLAG_FS_MAPPING, &next->flags)\00", [63 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@__tracepoint_btrfs_handle_em_exist = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_handle_em_exist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 64, i64 -3, i64 -2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 16, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"extent_map_cache\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 12, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 40, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 76, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 510, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 645, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 654, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 214, i32 2 }
@___asan_gen_.43 = private constant [25 x i8] c"../fs/btrfs/extent_map.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 218, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 3491, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 332, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 108, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @extent_map_cache, ptr @extent_map_tree_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extent_map_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extent_map_tree_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extent_map_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #10
  store ptr %call, ptr @extent_map_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @extent_map_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @extent_map_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @extent_map_tree_init(ptr noundef %tree) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tree, align 4
  %.compoundliteral.sroa.2.0.map.sroa_idx = getelementptr inbounds i8, ptr %tree, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.map.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %.compoundliteral.sroa.2.0.map.sroa_idx, align 4
  %modified_extents = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 1
  %2 = ptrtoint ptr %modified_extents to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %modified_extents, ptr %modified_extents, align 4
  %prev.i = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %modified_extents, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @extent_map_tree_init.__key) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_extent_map() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @extent_map_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call.i to i32
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 8
  %flags = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 8
  %compress_type = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %compress_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %compress_type, align 4
  %generation = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %generation, align 8
  %refs = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  %6 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refs, align 8
  %list = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 15
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_extent_map(ptr noundef %em) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %em, null
  br i1 %tobool.not, label %entry.if.end95_crit_edge, label %if.end

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end:                                           ; preds = %entry
  %refs = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #10
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge, !prof !44

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 76, i32 noundef 9, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then24, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end95_crit_edge, label %if.then10.i.i.i, !prof !47

if.end5.i.i.i.if.end95_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #10
  br label %if.end95

if.then24:                                        ; preds = %if.end15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  %3 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %em, align 8
  %5 = ptrtoint ptr %em to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.i.not = icmp eq i32 %4, %5
  br i1 %cmp.i.not, label %if.then24.if.end49_crit_edge, label %do.end43, !prof !47

if.then24.if.end49_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end43:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 78, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.then24.if.end49_crit_edge
  %list = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i106.not = icmp eq ptr %7, %list
  br i1 %cmp.i106.not, label %if.end49.if.end83_crit_edge, label %do.end77, !prof !47

if.end49.if.end83_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

do.end77:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 9, ptr noundef null) #10
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end49.if.end83_crit_edge
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool92.not = icmp eq i32 %10, 0
  br i1 %tobool92.not, label %if.end83.if.end94_crit_edge, label %if.then93

if.end83.if.end94_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then93:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 12
  %11 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map_lookup, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end83.if.end94_crit_edge
  %13 = load ptr, ptr @extent_map_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %em) #10
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then10.i.i.i, %if.end5.i.i.i.if.end95_crit_edge, %entry.if.end95_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unpin_extent_cache(ptr noundef %tree, i64 noundef %start, i64 noundef %len, i64 noundef %gen) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock) #10
  %call.i = tail call fastcc ptr @__lookup_extent_mapping(ptr noundef %tree, i64 noundef %start, i64 noundef %len, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %out.critedge, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %start1 = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %start)
  %cmp.not = icmp eq i64 %1, %start
  br i1 %cmp.not, label %lor.rhs.if.end23_crit_edge, label %if.end23.critedge61, !prof !47

lor.rhs.if.end23_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23.critedge61:                              ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge61, %lor.rhs.if.end23_crit_edge
  %generation = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 10
  %2 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %gen, ptr %generation, align 8
  %flags = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %3 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start1, align 8
  %mod_start = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %mod_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %mod_start, align 8
  %len25 = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %len25 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len25, align 8
  %mod_len = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %mod_len to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %mod_len, align 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not = icmp eq i32 %11, 0
  br i1 %tobool28.not, label %if.end38.critedge, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #10
  tail call fastcc void @try_merge_map(ptr noundef %tree, ptr noundef nonnull %call.i)
  %12 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start1, align 8
  %14 = ptrtoint ptr %mod_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %mod_start, align 8
  %15 = ptrtoint ptr %len25 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len25, align 8
  %17 = ptrtoint ptr %mod_len to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %mod_len, align 8
  br label %if.end38

if.end38.critedge:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @try_merge_map(ptr noundef %tree, ptr noundef nonnull %call.i)
  br label %if.end38

if.end38:                                         ; preds = %if.end38.critedge, %if.then29
  tail call void @free_extent_map(ptr noundef nonnull %call.i)
  br label %out

out.critedge:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %out

out:                                              ; preds = %out.critedge, %if.end38
  tail call void @_raw_write_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_extent_mapping(ptr nocapture noundef readonly %tree, i64 noundef %start, i64 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__lookup_extent_mapping(ptr noundef %tree, i64 noundef %start, i64 noundef %len, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_merge_map(ptr noundef %tree, ptr noundef %em) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #10
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not = icmp eq i64 %3, 0
  br i1 %cmp1.not, label %if.end.if.end31_crit_edge, label %if.then2

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @rb_prev(ptr noundef %em) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then2.if.end31_crit_edge, label %land.lhs.true

if.then2.if.end31_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then2
  %call7 = tail call fastcc i32 @mergable_maps(ptr noundef nonnull %call3, ptr noundef %em)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end31_crit_edge, label %if.then9

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then9:                                         ; preds = %land.lhs.true
  %start10 = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start10, align 8
  %6 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %start, align 8
  %orig_start = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %orig_start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %orig_start, align 8
  %orig_start12 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 5
  %9 = ptrtoint ptr %orig_start12 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %orig_start12, align 8
  %len = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len, align 8
  %len13 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %12 = ptrtoint ptr %len13 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len13, align 8
  %add = add i64 %13, %11
  store i64 %add, ptr %len13, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 9
  %14 = ptrtoint ptr %block_len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %block_len, align 8
  %block_len14 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %16 = ptrtoint ptr %block_len14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %block_len14, align 8
  %add15 = add i64 %17, %15
  store i64 %add15, ptr %block_len14, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 8
  %18 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %block_start, align 8
  %block_start16 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %20 = ptrtoint ptr %block_start16 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %block_start16, align 8
  %mod_len = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 4
  %21 = ptrtoint ptr %mod_len to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mod_len, align 8
  %mod_start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 3
  %23 = ptrtoint ptr %mod_start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mod_start, align 8
  %add17 = add i64 %24, %22
  %mod_start18 = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 3
  %25 = ptrtoint ptr %mod_start18 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mod_start18, align 8
  %sub = sub i64 %add17, %26
  store i64 %sub, ptr %mod_len, align 8
  %27 = load i64, ptr %mod_start18, align 8
  store i64 %27, ptr %mod_start, align 8
  %generation = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 10
  %28 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %generation, align 8
  %generation22 = getelementptr inbounds %struct.extent_map, ptr %call3, i32 0, i32 10
  %30 = ptrtoint ptr %generation22 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %generation22, align 8
  %32 = tail call i64 @llvm.umax.i64(i64 %29, i64 %31)
  %33 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %generation, align 8
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %tree, i32 0, i32 1
  %34 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %35, %call3
  br i1 %cmp.i, label %if.then.i, label %if.then9.rb_erase_cached.exit_crit_edge

if.then9.rb_erase_cached.exit_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %call3) #10
  %36 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.then9.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %call3, ptr noundef %tree) #10
  %37 = ptrtoint ptr %call3 to i32
  %38 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %call3, align 8
  tail call void @free_extent_map(ptr noundef nonnull %call3)
  br label %if.end31

if.end31:                                         ; preds = %rb_erase_cached.exit, %land.lhs.true.if.end31_crit_edge, %if.then2.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %merge.1 = phi ptr [ %call3, %rb_erase_cached.exit ], [ %call3, %land.lhs.true.if.end31_crit_edge ], [ null, %if.then2.if.end31_crit_edge ], [ null, %if.end.if.end31_crit_edge ]
  %call33 = tail call ptr @rb_next(ptr noundef %em) #10
  %tobool34.not = icmp eq ptr %call33, null
  %spec.select134 = select i1 %tobool34.not, ptr %merge.1, ptr %call33
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %land.lhs.true41

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true41:                                  ; preds = %if.end31
  %call42 = tail call fastcc i32 @mergable_maps(ptr noundef %em, ptr noundef %spec.select134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.cleanup_crit_edge, label %if.then44

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true41
  %len45 = getelementptr inbounds %struct.extent_map, ptr %spec.select134, i32 0, i32 2
  %39 = ptrtoint ptr %len45 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %len45, align 8
  %len46 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %41 = ptrtoint ptr %len46 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %len46, align 8
  %add47 = add i64 %42, %40
  store i64 %add47, ptr %len46, align 8
  %block_len48 = getelementptr inbounds %struct.extent_map, ptr %spec.select134, i32 0, i32 9
  %43 = ptrtoint ptr %block_len48 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %block_len48, align 8
  %block_len49 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %45 = ptrtoint ptr %block_len49 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %block_len49, align 8
  %add50 = add i64 %46, %44
  store i64 %add50, ptr %block_len49, align 8
  %rb_leftmost.i136 = getelementptr inbounds %struct.rb_root_cached, ptr %tree, i32 0, i32 1
  %47 = ptrtoint ptr %rb_leftmost.i136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rb_leftmost.i136, align 4
  %cmp.i137 = icmp eq ptr %48, %spec.select134
  br i1 %cmp.i137, label %if.then.i139, label %if.then44.rb_erase_cached.exit140_crit_edge

if.then44.rb_erase_cached.exit140_crit_edge:      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %rb_erase_cached.exit140

if.then.i139:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %call.i138 = tail call ptr @rb_next(ptr noundef %spec.select134) #10
  %49 = ptrtoint ptr %rb_leftmost.i136 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i138, ptr %rb_leftmost.i136, align 4
  br label %rb_erase_cached.exit140

rb_erase_cached.exit140:                          ; preds = %if.then.i139, %if.then44.rb_erase_cached.exit140_crit_edge
  tail call void @rb_erase(ptr noundef %spec.select134, ptr noundef %tree) #10
  %50 = ptrtoint ptr %spec.select134 to i32
  %51 = ptrtoint ptr %spec.select134 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %spec.select134, align 8
  %mod_start57 = getelementptr inbounds %struct.extent_map, ptr %spec.select134, i32 0, i32 3
  %52 = ptrtoint ptr %mod_start57 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %mod_start57, align 8
  %mod_len58 = getelementptr inbounds %struct.extent_map, ptr %spec.select134, i32 0, i32 4
  %54 = ptrtoint ptr %mod_len58 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mod_len58, align 8
  %add59 = add i64 %55, %53
  %mod_start60 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 3
  %56 = ptrtoint ptr %mod_start60 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %mod_start60, align 8
  %sub61 = sub i64 %add59, %57
  %mod_len62 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 4
  %58 = ptrtoint ptr %mod_len62 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %sub61, ptr %mod_len62, align 8
  %generation63 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 10
  %59 = ptrtoint ptr %generation63 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %generation63, align 8
  %generation64 = getelementptr inbounds %struct.extent_map, ptr %spec.select134, i32 0, i32 10
  %61 = ptrtoint ptr %generation64 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %generation64, align 8
  %63 = tail call i64 @llvm.umax.i64(i64 %60, i64 %62)
  %64 = ptrtoint ptr %generation63 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %generation63, align 8
  %flags72 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags72) #10
  tail call void @free_extent_map(ptr noundef %spec.select134)
  br label %cleanup

cleanup:                                          ; preds = %rb_erase_cached.exit140, %land.lhs.true41.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_em_logging(ptr noundef %tree, ptr noundef %em) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  %0 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %em, align 8
  %2 = ptrtoint ptr %em to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.i.not = icmp eq i32 %1, %2
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @try_merge_map(ptr noundef %tree, ptr noundef %em)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_extent_mapping(ptr noundef %tree, ptr noundef %em, i32 noundef %modified) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 2, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !44

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 407, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %start.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 1
  %1 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %len.i, align 8
  %5 = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 %4) #10
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree, align 4
  %tobool.not113.i = icmp eq ptr %7, null
  br i1 %tobool.not113.i, label %if.end57.thread.i, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end57.thread.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %em, align 4
  %rb_right.i139.i = getelementptr inbounds %struct.rb_node, ptr %em, i32 0, i32 1
  %9 = ptrtoint ptr %rb_right.i139.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rb_right.i139.i, align 4
  %rb_left.i140.i = getelementptr inbounds %struct.rb_node, ptr %em, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left.i140.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rb_left.i140.i, align 4
  %11 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %em, ptr %tree, align 4
  br label %if.then.i.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %12 = phi ptr [ %19, %if.end9.i.while.body.i_crit_edge ], [ %7, %if.end.while.body.i_crit_edge ]
  %leftmost.0.off0114.i = phi i1 [ %leftmost.1.off0.i, %if.end9.i.while.body.i_crit_edge ], [ true, %if.end.while.body.i_crit_edge ]
  %start3.i = getelementptr inbounds %struct.extent_map, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %start3.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %14)
  %cmp.i = icmp ult i64 %2, %14
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  br label %if.end9.i

if.else.i:                                        ; preds = %while.body.i
  %len.i.i = getelementptr inbounds %struct.extent_map, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len.i.i, align 8
  %17 = tail call i64 @llvm.uadd.sat.i64(i64 %14, i64 %16) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %17)
  %cmp6.not.i = icmp ult i64 %2, %17
  br i1 %cmp6.not.i, label %if.else.i.out_crit_edge, label %if.then7.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then.i
  %leftmost.1.off0.i = phi i1 [ %leftmost.0.off0114.i, %if.then.i ], [ false, %if.then7.i ]
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then7.i ]
  %18 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end9.i.land.rhs.i_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end9.i.land.rhs.i_crit_edge:                   ; preds = %if.end9.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body15.i.land.rhs.i_crit_edge, %if.end9.i.land.rhs.i_crit_edge
  %parent.1118.i = phi ptr [ %call16.i, %while.body15.i.land.rhs.i_crit_edge ], [ %12, %if.end9.i.land.rhs.i_crit_edge ]
  %20 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start.i, align 8
  %start.i101.i = getelementptr inbounds %struct.extent_map, ptr %parent.1118.i, i32 0, i32 1
  %22 = ptrtoint ptr %start.i101.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start.i101.i, align 8
  %len.i102.i = getelementptr inbounds %struct.extent_map, ptr %parent.1118.i, i32 0, i32 2
  %24 = ptrtoint ptr %len.i102.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %len.i102.i, align 8
  %26 = tail call i64 @llvm.uadd.sat.i64(i64 %23, i64 %25) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %26)
  %cmp14.not.i = icmp ult i64 %21, %26
  br i1 %cmp14.not.i, label %if.then22.critedge.i, label %while.body15.i

while.body15.i:                                   ; preds = %land.rhs.i
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %parent.1118.i) #10
  %tobool11.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool11.not.i, label %while.body15.i.land.rhs36.i.preheader_crit_edge, label %while.body15.i.land.rhs.i_crit_edge

while.body15.i.land.rhs.i_crit_edge:              ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body15.i.land.rhs36.i.preheader_crit_edge:  ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs36.i.preheader

if.then22.critedge.i:                             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %23)
  %cmp24.i = icmp ugt i64 %5, %23
  br i1 %cmp24.i, label %if.then22.critedge.i.out_crit_edge, label %if.then22.critedge.i.land.rhs36.i.preheader_crit_edge

if.then22.critedge.i.land.rhs36.i.preheader_crit_edge: ; preds = %if.then22.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs36.i.preheader

if.then22.critedge.i.out_crit_edge:               ; preds = %if.then22.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs36.i.preheader:                           ; preds = %if.then22.critedge.i.land.rhs36.i.preheader_crit_edge, %while.body15.i.land.rhs36.i.preheader_crit_edge
  br label %land.rhs36.i

land.rhs36.i:                                     ; preds = %while.body41.i.land.rhs36.i_crit_edge, %land.rhs36.i.preheader
  %parent.2120.i = phi ptr [ %call42.i, %while.body41.i.land.rhs36.i_crit_edge ], [ %12, %land.rhs36.i.preheader ]
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  %start38.i = getelementptr inbounds %struct.extent_map, ptr %parent.2120.i, i32 0, i32 1
  %29 = ptrtoint ptr %start38.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start38.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp39.i = icmp ult i64 %28, %30
  br i1 %cmp39.i, label %while.body41.i, label %if.then48.critedge.i

while.body41.i:                                   ; preds = %land.rhs36.i
  %call42.i = tail call ptr @rb_prev(ptr noundef nonnull %parent.2120.i) #10
  %tobool35.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool35.not.i, label %while.body41.i.if.end57.i_crit_edge, label %while.body41.i.land.rhs36.i_crit_edge

while.body41.i.land.rhs36.i_crit_edge:            ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs36.i

while.body41.i.if.end57.i_crit_edge:              ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.then48.critedge.i:                             ; preds = %land.rhs36.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %30)
  %cmp50.i = icmp ugt i64 %5, %30
  br i1 %cmp50.i, label %land.lhs.true51.i, label %if.then48.critedge.i.if.end57.i_crit_edge

if.then48.critedge.i.if.end57.i_crit_edge:        ; preds = %if.then48.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

land.lhs.true51.i:                                ; preds = %if.then48.critedge.i
  %len.i106.i = getelementptr inbounds %struct.extent_map, ptr %parent.2120.i, i32 0, i32 2
  %31 = ptrtoint ptr %len.i106.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len.i106.i, align 8
  %33 = tail call i64 @llvm.uadd.sat.i64(i64 %30, i64 %32) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %33)
  %cmp54.i = icmp ult i64 %28, %33
  br i1 %cmp54.i, label %land.lhs.true51.i.out_crit_edge, label %land.lhs.true51.i.if.end57.i_crit_edge

land.lhs.true51.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

land.lhs.true51.i.out_crit_edge:                  ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end57.i:                                       ; preds = %land.lhs.true51.i.if.end57.i_crit_edge, %if.then48.critedge.i.if.end57.i_crit_edge, %while.body41.i.if.end57.i_crit_edge
  %34 = ptrtoint ptr %12 to i32
  %35 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %em, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %em, i32 0, i32 1
  %36 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %em, i32 0, i32 2
  %37 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_left.i.i, align 4
  %38 = ptrtoint ptr %p.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %em, ptr %p.1.i, align 4
  br i1 %leftmost.1.off0.i, label %if.end57.i.if.then.i.i_crit_edge, label %if.end57.i.if.end28_crit_edge

if.end57.i.if.end28_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end57.i.if.then.i.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end57.i.if.then.i.i_crit_edge, %if.end57.thread.i
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %tree, i32 0, i32 1
  %39 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %em, ptr %rb_leftmost.i.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then.i.i, %if.end57.i.if.end28_crit_edge
  tail call void @rb_insert_color(ptr noundef %em, ptr noundef %tree) #10
  %refs.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #10, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end28.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !44

if.end28.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end28
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !47

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #10
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start.i, align 8
  %mod_start.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 3
  %44 = ptrtoint ptr %mod_start.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %mod_start.i, align 8
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %len.i, align 8
  %mod_len.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 4
  %47 = ptrtoint ptr %mod_len.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %mod_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified)
  %tobool.not.i43 = icmp eq i32 %modified, 0
  br i1 %tobool.not.i43, label %if.else.i45, label %if.then.i44

if.then.i44:                                      ; preds = %refcount_inc.exit.i
  %list.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15
  %modified_extents.i = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i44.__list_del_entry.exit.i.i_crit_edge

if.then.i44.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i44.__list_del_entry.exit.i.i_crit_edge
  %54 = ptrtoint ptr %modified_extents.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %modified_extents.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %modified_extents.i, ptr noundef %55) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge

__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setup_extent_mapping.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list.i, ptr %prev1.i.i2.i.i, align 4
  %57 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %modified_extents.i, ptr %prev3.i.i.i.i, align 4
  %59 = ptrtoint ptr %modified_extents.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list.i, ptr %modified_extents.i, align 4
  br label %setup_extent_mapping.exit

if.else.i45:                                      ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @try_merge_map(ptr noundef %tree, ptr noundef %em) #10
  br label %setup_extent_mapping.exit

setup_extent_mapping.exit:                        ; preds = %if.else.i45, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags, align 4
  %62 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool30.not = icmp eq i32 %62, 0
  br i1 %tobool30.not, label %setup_extent_mapping.exit.out_crit_edge, label %if.then31

setup_extent_mapping.exit.out_crit_edge:          ; preds = %setup_extent_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then31:                                        ; preds = %setup_extent_mapping.exit
  %map_lookup.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 12
  %63 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map_lookup.i, align 4
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_stripes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp1.i = icmp sgt i32 %66, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.then31.extent_map_device_set_bits.exit_crit_edge

if.then31.extent_map_device_set_bits.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %extent_map_device_set_bits.exit

for.body.lr.ph.i:                                 ; preds = %if.then31
  %orig_block_len.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 6
  %67 = ptrtoint ptr %orig_block_len.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %orig_block_len.i, align 8
  %add.i = add i64 %68, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.map_lookup, ptr %64, i32 0, i32 7, i32 %i.02.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 8
  %alloc_state.i = getelementptr inbounds %struct.btrfs_device, ptr %70, i32 0, i32 30
  %physical.i = getelementptr %struct.map_lookup, ptr %64, i32 0, i32 7, i32 %i.02.i, i32 1
  %71 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %physical.i, align 8
  %sub.i = add i64 %add.i, %72
  %call.i = tail call i32 @set_extent_bits_nowait(ptr noundef %alloc_state.i, i64 noundef %72, i64 noundef %sub.i, i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %73 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_stripes.i, align 8
  %cmp.i46 = icmp slt i32 %inc.i, %74
  br i1 %cmp.i46, label %for.body.i.for.body.i_crit_edge, label %for.body.i.extent_map_device_set_bits.exit_crit_edge

for.body.i.extent_map_device_set_bits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %extent_map_device_set_bits.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

extent_map_device_set_bits.exit:                  ; preds = %for.body.i.extent_map_device_set_bits.exit_crit_edge, %if.then31.extent_map_device_set_bits.exit_crit_edge
  %75 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map_lookup.i, align 4
  %num_stripes.i48 = getelementptr inbounds %struct.map_lookup, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %num_stripes.i48 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_stripes.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp8.i = icmp sgt i32 %78, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i51, label %extent_map_device_set_bits.exit.out_crit_edge

extent_map_device_set_bits.exit.out_crit_edge:    ; preds = %extent_map_device_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph.i51:                               ; preds = %extent_map_device_set_bits.exit
  %orig_block_len.i49 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 6
  %79 = ptrtoint ptr %orig_block_len.i49 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %orig_block_len.i49, align 8
  %add.i50 = add i64 %80, -1
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %for.body.lr.ph.i51
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i51 ], [ %inc.i57, %for.body.i59.for.body.i59_crit_edge ]
  %arrayidx.i52 = getelementptr %struct.map_lookup, ptr %76, i32 0, i32 7, i32 %i.09.i
  %81 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i52, align 8
  %alloc_state.i53 = getelementptr inbounds %struct.btrfs_device, ptr %82, i32 0, i32 30
  %physical.i54 = getelementptr %struct.map_lookup, ptr %76, i32 0, i32 7, i32 %i.09.i, i32 1
  %83 = ptrtoint ptr %physical.i54 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %physical.i54, align 8
  %sub.i55 = add i64 %add.i50, %84
  %call.i56 = tail call i32 @__clear_extent_bit(ptr noundef %alloc_state.i53, i64 noundef %84, i64 noundef %sub.i55, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 2048, ptr noundef null) #10
  %inc.i57 = add nuw nsw i32 %i.09.i, 1
  %85 = ptrtoint ptr %num_stripes.i48 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_stripes.i48, align 8
  %cmp.i58 = icmp slt i32 %inc.i57, %86
  br i1 %cmp.i58, label %for.body.i59.for.body.i59_crit_edge, label %for.body.i59.out_crit_edge

for.body.i59.out_crit_edge:                       ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i59

out:                                              ; preds = %for.body.i59.out_crit_edge, %extent_map_device_set_bits.exit.out_crit_edge, %setup_extent_mapping.exit.out_crit_edge, %land.lhs.true51.i.out_crit_edge, %if.then22.critedge.i.out_crit_edge, %if.else.i.out_crit_edge
  %retval.0.i62 = phi i32 [ 0, %setup_extent_mapping.exit.out_crit_edge ], [ 0, %extent_map_device_set_bits.exit.out_crit_edge ], [ -17, %land.lhs.true51.i.out_crit_edge ], [ -17, %if.then22.critedge.i.out_crit_edge ], [ 0, %for.body.i59.out_crit_edge ], [ -17, %if.else.i.out_crit_edge ]
  ret i32 %retval.0.i62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lookup_extent_mapping(ptr nocapture noundef readonly %tree, i64 noundef %start, i64 noundef %len, i32 noundef %strict) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.uadd.sat.i64(i64 %start, i64 %len) #10
  %1 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.068.i = load ptr, ptr %tree, align 4
  %tobool.not69.i = icmp eq ptr %n.068.i, null
  br i1 %tobool.not69.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.070.i = phi ptr [ %n.0.i, %if.end5.i.while.body.i_crit_edge ], [ %n.068.i, %entry.while.body.i_crit_edge ]
  %start.i = getelementptr inbounds %struct.extent_map, ptr %n.070.i, i32 0, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %start)
  %cmp.i = icmp ugt i64 %3, %start
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.070.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  %len.i.i = getelementptr inbounds %struct.extent_map, ptr %n.070.i, i32 0, i32 2
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len.i.i, align 8
  %6 = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 %5) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %start)
  %cmp2.not.i = icmp ugt i64 %6, %start
  br i1 %cmp2.not.i, label %if.else.i.if.end8_crit_edge, label %if.then3.i

if.else.i.if.end8_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.070.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %7 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.land.rhs.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end5.i.land.rhs.i_crit_edge:                   ; preds = %if.end5.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body12.i.land.rhs.i_crit_edge, %if.end5.i.land.rhs.i_crit_edge
  %prev.172.i = phi ptr [ %call13.i, %while.body12.i.land.rhs.i_crit_edge ], [ %n.070.i, %if.end5.i.land.rhs.i_crit_edge ]
  %start.i63.i = getelementptr inbounds %struct.extent_map, ptr %prev.172.i, i32 0, i32 1
  %8 = ptrtoint ptr %start.i63.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start.i63.i, align 8
  %len.i64.i = getelementptr inbounds %struct.extent_map, ptr %prev.172.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i64.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len.i64.i, align 8
  %12 = tail call i64 @llvm.uadd.sat.i64(i64 %9, i64 %11) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %start)
  %cmp11.not.i = icmp ugt i64 %12, %start
  br i1 %cmp11.not.i, label %land.rhs.i.while.end17.i_crit_edge, label %while.body12.i

land.rhs.i.while.end17.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end17.i

while.body12.i:                                   ; preds = %land.rhs.i
  %call13.i = tail call ptr @rb_next(ptr noundef nonnull %prev.172.i) #10
  %tobool9.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool9.not.i, label %while.body12.i.while.end17.i_crit_edge, label %while.body12.i.land.rhs.i_crit_edge

while.body12.i.land.rhs.i_crit_edge:              ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body12.i.while.end17.i_crit_edge:           ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end17.i

while.end17.i:                                    ; preds = %while.body12.i.while.end17.i_crit_edge, %land.rhs.i.while.end17.i_crit_edge
  %prev.1.lcssa.i = phi ptr [ null, %while.body12.i.while.end17.i_crit_edge ], [ %prev.172.i, %land.rhs.i.while.end17.i_crit_edge ]
  %tobool25.not75.i = icmp eq ptr %n.070.i, null
  br i1 %tobool25.not75.i, label %while.end17.i.if.then_crit_edge, label %while.end17.i.land.rhs26.i_crit_edge

while.end17.i.land.rhs26.i_crit_edge:             ; preds = %while.end17.i
  br label %land.rhs26.i

while.end17.i.if.then_crit_edge:                  ; preds = %while.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.rhs26.i:                                     ; preds = %while.body30.i.land.rhs26.i_crit_edge, %while.end17.i.land.rhs26.i_crit_edge
  %prev.376.i = phi ptr [ %call31.i, %while.body30.i.land.rhs26.i_crit_edge ], [ %n.070.i, %while.end17.i.land.rhs26.i_crit_edge ]
  %start27.i = getelementptr inbounds %struct.extent_map, ptr %prev.376.i, i32 0, i32 1
  %13 = ptrtoint ptr %start27.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start27.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %start)
  %cmp28.i = icmp ugt i64 %14, %start
  br i1 %cmp28.i, label %while.body30.i, label %land.rhs26.i.if.then_crit_edge

land.rhs26.i.if.then_crit_edge:                   ; preds = %land.rhs26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body30.i:                                   ; preds = %land.rhs26.i
  %call31.i = tail call ptr @rb_prev(ptr noundef nonnull %prev.376.i) #10
  %tobool25.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool25.not.i, label %while.body30.i.if.then_crit_edge, label %while.body30.i.land.rhs26.i_crit_edge

while.body30.i.land.rhs26.i_crit_edge:            ; preds = %while.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs26.i

while.body30.i.if.then_crit_edge:                 ; preds = %while.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %while.body30.i.if.then_crit_edge, %land.rhs26.i.if.then_crit_edge, %while.end17.i.if.then_crit_edge
  %next.0.ph = phi ptr [ null, %while.end17.i.if.then_crit_edge ], [ null, %while.body30.i.if.then_crit_edge ], [ %prev.376.i, %land.rhs26.i.if.then_crit_edge ]
  %tobool2.not = icmp eq ptr %prev.1.lcssa.i, null
  br i1 %tobool2.not, label %if.else, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else:                                          ; preds = %if.then
  %tobool4.not = icmp eq ptr %next.0.ph, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge, %if.else.i.if.end8_crit_edge
  %rb_node.0 = phi ptr [ %prev.1.lcssa.i, %if.then.if.end8_crit_edge ], [ %next.0.ph, %if.else.if.end8_crit_edge ], [ %n.070.i, %if.else.i.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strict)
  %tobool9.not = icmp eq i32 %strict, 0
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %start10 = getelementptr inbounds %struct.extent_map, ptr %rb_node.0, i32 0, i32 1
  %15 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %0, i64 %16)
  %cmp = icmp ugt i64 %0, %16
  br i1 %cmp, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %len.i = getelementptr inbounds %struct.extent_map, ptr %rb_node.0, i32 0, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len.i, align 8
  %19 = tail call i64 @llvm.uadd.sat.i64(i64 %16, i64 %18) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %start)
  %cmp13 = icmp ugt i64 %19, %start
  br i1 %cmp13, label %land.lhs.true11.if.end15_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %refs = getelementptr inbounds %struct.extent_map, ptr %rb_node.0, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end15.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !44

if.end15.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !47

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup_crit_edge ], [ null, %land.lhs.true11.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %rb_node.0, %if.else.i.i.i.cleanup_crit_edge ], [ %rb_node.0, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_extent_mapping(ptr nocapture noundef readonly %tree, i64 noundef %start, i64 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__lookup_extent_mapping(ptr noundef %tree, i64 noundef %start, i64 noundef %len, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @remove_extent_mapping(ptr noundef %tree, ptr noundef %em) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 495, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %tree, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %3, %em
  br i1 %cmp.i, label %if.then.i, label %if.end.rb_erase_cached.exit_crit_edge

if.end.rb_erase_cached.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @rb_next(ptr noundef %em) #10
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %em, ptr noundef %tree) #10
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool23.not = icmp eq i32 %7, 0
  br i1 %tobool23.not, label %if.then24, label %rb_erase_cached.exit.if.end25_crit_edge

rb_erase_cached.exit.if.end25_crit_edge:          ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %rb_erase_cached.exit
  %list = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then24.list_del_init.exit_crit_edge

if.then24.list_del_init.exit_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then24.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %list_del_init.exit, %rb_erase_cached.exit.if.end25_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not = icmp eq i32 %18, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  %map_lookup.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 12
  %19 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map_lookup.i, align 4
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_stripes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp8.i = icmp sgt i32 %22, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %if.then29.if.end30_crit_edge

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.body.lr.ph.i:                                 ; preds = %if.then29
  %orig_block_len.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 6
  %23 = ptrtoint ptr %orig_block_len.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %orig_block_len.i, align 8
  %add.i = add i64 %24, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.map_lookup, ptr %20, i32 0, i32 7, i32 %i.09.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 8
  %alloc_state.i = getelementptr inbounds %struct.btrfs_device, ptr %26, i32 0, i32 30
  %physical.i = getelementptr %struct.map_lookup, ptr %20, i32 0, i32 7, i32 %i.09.i, i32 1
  %27 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %physical.i, align 8
  %sub.i = add i64 %add.i, %28
  %call.i44 = tail call i32 @__clear_extent_bit(ptr noundef %alloc_state.i, i64 noundef %28, i64 noundef %sub.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 2048, ptr noundef null) #10
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %29 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_stripes.i, align 8
  %cmp.i45 = icmp slt i32 %inc.i, %30
  br i1 %cmp.i45, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end30_crit_edge

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end30:                                         ; preds = %for.body.i.if.end30_crit_edge, %if.then29.if.end30_crit_edge, %if.end25.if.end30_crit_edge
  %31 = ptrtoint ptr %em to i32
  %32 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %em, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @replace_extent_mapping(ptr noundef %tree, ptr noundef %cur, ptr noundef %new, i32 noundef %modified) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.extent_map, ptr %cur, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 509, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 8
  %4 = ptrtoint ptr %cur to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.i.not = icmp eq i32 %3, %4
  br i1 %cmp.i.not, label %cond.false, label %cond.end, !prof !44

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 510) #13
  unreachable

cond.end:                                         ; preds = %if.end
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool30.not = icmp eq i32 %7, 0
  br i1 %tobool30.not, label %if.then31, label %cond.end.if.end32_crit_edge

cond.end.if.end32_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %cond.end
  %list = getelementptr inbounds %struct.extent_map, ptr %cur, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.list_del_init.exit_crit_edge

if.then31.list_del_init.exit_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.extent_map, ptr %cur, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then31.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.extent_map, ptr %cur, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %list_del_init.exit, %cond.end.if.end32_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %tree, i32 0, i32 1
  %16 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i46 = icmp eq ptr %17, %cur
  br i1 %cmp.i46, label %if.then.i, label %if.end32.rb_replace_node_cached.exit_crit_edge

if.end32.rb_replace_node_cached.exit_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rb_replace_node_cached.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %new, ptr %rb_leftmost.i, align 4
  br label %rb_replace_node_cached.exit

rb_replace_node_cached.exit:                      ; preds = %if.then.i, %if.end32.rb_replace_node_cached.exit_crit_edge
  tail call void @rb_replace_node(ptr noundef %cur, ptr noundef %new, ptr noundef %tree) #10
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %4, ptr %cur, align 8
  %refs.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #10, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %rb_replace_node_cached.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !44

rb_replace_node_cached.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %rb_replace_node_cached.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rb_replace_node_cached.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !47

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %rb_replace_node_cached.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %rb_replace_node_cached.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #10
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %start.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 1
  %22 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start.i, align 8
  %mod_start.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 3
  %24 = ptrtoint ptr %mod_start.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %mod_start.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %len.i, align 8
  %mod_len.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 4
  %27 = ptrtoint ptr %mod_len.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %mod_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified)
  %tobool.not.i = icmp eq i32 %modified, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i47

if.then.i47:                                      ; preds = %refcount_inc.exit.i
  %list.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 15
  %modified_extents.i = getelementptr inbounds %struct.extent_map_tree, ptr %tree, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i47.__list_del_entry.exit.i.i_crit_edge

if.then.i47.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i47.__list_del_entry.exit.i.i_crit_edge
  %34 = ptrtoint ptr %modified_extents.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %modified_extents.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %modified_extents.i, ptr noundef %35) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge

__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setup_extent_mapping.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i, ptr %prev1.i.i2.i.i, align 4
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.extent_map, ptr %new, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %modified_extents.i, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %modified_extents.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i, ptr %modified_extents.i, align 4
  br label %setup_extent_mapping.exit

if.else.i:                                        ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @try_merge_map(ptr noundef %tree, ptr noundef %new) #10
  br label %setup_extent_mapping.exit

setup_extent_mapping.exit:                        ; preds = %if.else.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.setup_extent_mapping.exit_crit_edge
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %expr, ptr noundef nonnull @.str.2, i32 noundef %line) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #10, !srcloc !50
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_extent_mapping(ptr noundef %fs_info, ptr noundef %em_tree, ptr nocapture noundef %em_in, i64 noundef %start, i64 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %em_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %em_in, align 4
  %call = tail call i32 @add_extent_mapping(ptr noundef %em_tree, ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call)
  %cmp = icmp eq i32 %call, -17
  br i1 %cmp, label %if.then, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc ptr @__lookup_extent_mapping(ptr noundef %em_tree, i64 noundef %start, i64 noundef %len, i32 noundef 0) #10
  tail call fastcc void @trace_btrfs_handle_em_exist(ptr noundef %fs_info, ptr noundef %call.i, ptr noundef %1, i64 noundef %start, i64 noundef %len)
  %start2 = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %start)
  %cmp3.not = icmp ugt i64 %3, %start
  br i1 %cmp3.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len.i, align 8
  %6 = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 %5) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %start)
  %cmp5 = icmp ugt i64 %6, %start
  br i1 %cmp5, label %if.end52.thread, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end52.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_extent_map(ptr noundef %1)
  %7 = ptrtoint ptr %em_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %em_in, align 4
  br label %cond.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %start7 = getelementptr inbounds %struct.extent_map, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %start7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start7, align 8
  %len8 = getelementptr inbounds %struct.extent_map, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len8, align 8
  %call9 = tail call fastcc i32 @merge_extent_mapping(ptr noundef %em_tree, ptr noundef %call.i, ptr noundef %1, i64 noundef %start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else.if.end50_crit_edge, label %if.then10

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then10:                                        ; preds = %if.else
  tail call void @free_extent_map(ptr noundef %1)
  %12 = ptrtoint ptr %em_in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %em_in, align 4
  %.b91 = load i1, ptr @btrfs_add_extent_mapping.__already_done, align 1
  br i1 %.b91, label %if.then10.if.end50_crit_edge, label %if.then19, !prof !47

if.then10.if.end50_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @btrfs_add_extent_mapping.__already_done, align 1
  %13 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start2, align 8
  %len30 = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %len30 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len30, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 648, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %call9, i64 noundef %14, i64 noundef %16, i64 noundef %9, i64 noundef %11) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then19, %if.then10.if.end50_crit_edge, %if.else.if.end50_crit_edge
  tail call void @free_extent_map(ptr noundef %call.i)
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %entry.if.end52_crit_edge
  %ret.1 = phi i32 [ %call, %entry.if.end52_crit_edge ], [ %call9, %if.end50 ]
  %17 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.1, label %cond.false [
    i32 -17, label %if.end52.cond.end_crit_edge
    i32 0, label %if.end52.cond.end_crit_edge94
  ]

if.end52.cond.end_crit_edge94:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end52.cond.end_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 654) #13
  unreachable

cond.end:                                         ; preds = %if.end52.cond.end_crit_edge, %if.end52.cond.end_crit_edge94, %if.end52.thread
  %ret.193 = phi i32 [ 0, %if.end52.thread ], [ %ret.1, %if.end52.cond.end_crit_edge ], [ %ret.1, %if.end52.cond.end_crit_edge94 ]
  ret i32 %ret.193
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_handle_em_exist(ptr noundef %fs_info, ptr noundef %existing, ptr noundef %map, i64 noundef %start, i64 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_handle_em_exist, i32 0, i32 1), ptr blockaddress(@trace_btrfs_handle_em_exist, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %call42 = tail call i32 @__traceiter_btrfs_handle_em_exist(ptr noundef null, ptr noundef %fs_info, ptr noundef %existing, ptr noundef %map, i64 noundef %start, i64 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_handle_em_exist, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_handle_em_exist, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_handle_em_exist.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_handle_em_exist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 367, ptr noundef nonnull @.str.12) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @merge_extent_mapping(ptr noundef %em_tree, ptr noundef %existing, ptr noundef %em, i64 noundef %map_start) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start1 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %map_start)
  %cmp = icmp ugt i64 %1, %map_start
  br i1 %cmp, label %entry.do.body4_crit_edge, label %lor.rhs, !prof !44

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.rhs:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len.i, align 8
  %4 = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %3) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %map_start)
  %cmp2.not = icmp ugt i64 %4, %map_start
  br i1 %cmp2.not, label %do.end9, label %lor.rhs.do.body4_crit_edge, !prof !47

lor.rhs.do.body4_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.body4:                                         ; preds = %lor.rhs.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/extent_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end9:                                          ; preds = %lor.rhs
  %start10 = getelementptr inbounds %struct.extent_map, ptr %existing, i32 0, i32 1
  %5 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %map_start)
  %cmp11 = icmp ugt i64 %6, %map_start
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @rb_prev(ptr noundef %existing) #10
  br label %if.end15

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i80 = tail call ptr @rb_next(ptr noundef %existing) #10
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %next.0 = phi ptr [ %existing, %if.then12 ], [ %call.i80, %if.else ]
  %prev.0 = phi ptr [ %call.i, %if.then12 ], [ %existing, %if.else ]
  %tobool16.not = icmp eq ptr %prev.0, null
  br i1 %tobool16.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %start.i81 = getelementptr inbounds %struct.extent_map, ptr %prev.0, i32 0, i32 1
  %7 = ptrtoint ptr %start.i81 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start.i81, align 8
  %len.i82 = getelementptr inbounds %struct.extent_map, ptr %prev.0, i32 0, i32 2
  %9 = ptrtoint ptr %len.i82 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len.i82, align 8
  %11 = tail call i64 @llvm.uadd.sat.i64(i64 %8, i64 %10) #10
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %13, %cond.false ]
  %14 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start1, align 8
  %16 = tail call i64 @llvm.umax.i64(i64 %cond, i64 %15)
  %tobool25.not = icmp eq ptr %next.0, null
  br i1 %tobool25.not, label %cond.false28, label %cond.true26

cond.true26:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %start27 = getelementptr inbounds %struct.extent_map, ptr %next.0, i32 0, i32 1
  %17 = ptrtoint ptr %start27 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start27, align 8
  br label %cond.end30

cond.false28:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %len.i, align 8
  %21 = tail call i64 @llvm.uadd.sat.i64(i64 %15, i64 %20) #10
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false28, %cond.true26
  %cond31 = phi i64 [ %18, %cond.true26 ], [ %21, %cond.false28 ]
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %len.i, align 8
  %24 = tail call i64 @llvm.uadd.sat.i64(i64 %15, i64 %23) #10
  %25 = tail call i64 @llvm.umin.i64(i64 %cond31, i64 %24)
  %sub = sub i64 %16, %15
  %26 = ptrtoint ptr %start1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %16, ptr %start1, align 8
  %sub41 = sub i64 %25, %16
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub41, ptr %len.i, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %28 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %block_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %29)
  %cmp42 = icmp ult i64 %29, -4
  br i1 %cmp42, label %land.lhs.true, label %cond.end30.if.end48_crit_edge

cond.end30.if.end48_crit_edge:                    ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true:                                    ; preds = %cond.end30
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool44.not = icmp eq i32 %32, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i64 %sub, %29
  %33 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add, ptr %block_start, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %34 = ptrtoint ptr %block_len to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %sub41, ptr %block_len, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true.if.end48_crit_edge, %cond.end30.if.end48_crit_edge
  %call49 = tail call i32 @add_extent_mapping(ptr noundef %em_tree, ptr noundef %em, i32 noundef 0)
  ret i32 %call49
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mergable_maps(ptr noundef %prev, ptr noundef %next) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %if.end5
  %flags9 = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 11
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags9, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %list = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 15
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %12, %list
  br i1 %cmp.i.not, label %lor.lhs.false16, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false16:                                  ; preds = %if.end13
  %list17 = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 15
  %13 = ptrtoint ptr %list17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %list17, align 4
  %cmp.i111.not = icmp eq ptr %14, %list17
  br i1 %cmp.i111.not, label %if.end21, label %lor.lhs.false16.return_crit_edge

lor.lhs.false16.return_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end21:                                         ; preds = %lor.lhs.false16
  %block_start = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 8
  %15 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %block_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp.not = icmp eq i64 %16, -1
  br i1 %cmp.not, label %if.end21.cond.false_crit_edge, label %land.rhs, !prof !44

if.end21.cond.false_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.rhs:                                         ; preds = %if.end21
  %block_start22 = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 8
  %17 = ptrtoint ptr %block_start22 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %block_start22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp23.not = icmp eq i64 %18, -1
  br i1 %cmp23.not, label %land.rhs.cond.false_crit_edge, label %cond.end, !prof !44

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %if.end21.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 215) #13
  unreachable

cond.end:                                         ; preds = %land.rhs
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 12
  %19 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map_lookup, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %lor.lhs.false27, label %cond.end.if.then30_crit_edge

cond.end.if.then30_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false27:                                  ; preds = %cond.end
  %map_lookup28 = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 12
  %21 = ptrtoint ptr %map_lookup28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map_lookup28, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %lor.lhs.false27.if.end48_crit_edge, label %lor.lhs.false27.if.then30_crit_edge

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lor.lhs.false27.if.end48_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %cond.end.if.then30_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool33.not = icmp eq i32 %25, 0
  br i1 %tobool33.not, label %if.then30.cond.false46_crit_edge, label %land.rhs34, !prof !44

if.then30.cond.false46_crit_edge:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false46

land.rhs34:                                       ; preds = %if.then30
  %26 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags9, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool37.not = icmp eq i32 %28, 0
  br i1 %tobool37.not, label %land.rhs34.cond.false46_crit_edge, label %land.rhs34.if.end48_crit_edge, !prof !44

land.rhs34.if.end48_crit_edge:                    ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.rhs34.cond.false46_crit_edge:                ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false46

cond.false46:                                     ; preds = %land.rhs34.cond.false46_crit_edge, %if.then30.cond.false46_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 219) #13
  unreachable

if.end48:                                         ; preds = %land.rhs34.if.end48_crit_edge, %lor.lhs.false27.if.end48_crit_edge
  %start.i = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 1
  %29 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 2
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len.i, align 8
  %33 = tail call i64 @llvm.uadd.sat.i64(i64 %30, i64 %32) #10
  %start = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 1
  %34 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp50 = icmp eq i64 %33, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp53 = icmp eq i32 %6, %9
  %or.cond = select i1 %cmp50, i1 %cmp53, i1 false
  br i1 %or.cond, label %land.lhs.true54, label %if.end48.if.end78_crit_edge

if.end48.if.end78_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true54:                                  ; preds = %if.end48
  %map_lookup56 = getelementptr inbounds %struct.extent_map, ptr %next, i32 0, i32 12
  %36 = ptrtoint ptr %map_lookup56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map_lookup56, align 4
  %cmp57 = icmp eq ptr %20, %37
  br i1 %cmp57, label %land.lhs.true58, label %land.lhs.true54.if.end78_crit_edge

land.lhs.true54.if.end78_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true58:                                  ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.14)
  switch i64 %16, label %lor.lhs.false70 [
    i64 -3, label %land.lhs.true61
    i64 -2, label %land.lhs.true67
  ]

land.lhs.true61:                                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %18)
  %cmp63 = icmp eq i64 %18, -3
  br i1 %cmp63, label %land.lhs.true61.return_crit_edge, label %land.lhs.true61.if.end78_crit_edge

land.lhs.true61.if.end78_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true61.return_crit_edge:                 ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true67:                                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %18)
  %cmp69 = icmp eq i64 %18, -2
  br i1 %cmp69, label %land.lhs.true67.return_crit_edge, label %land.lhs.true67.if.end78_crit_edge

land.lhs.true67.if.end78_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true67.return_crit_edge:                 ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false70:                                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %16)
  %cmp72 = icmp ult i64 %16, -5
  br i1 %cmp72, label %land.lhs.true73, label %lor.lhs.false70.if.end78_crit_edge

lor.lhs.false70.if.end78_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true73:                                  ; preds = %lor.lhs.false70
  %block_len.i = getelementptr inbounds %struct.extent_map, ptr %prev, i32 0, i32 9
  %38 = ptrtoint ptr %block_len.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %block_len.i, align 8
  %40 = tail call i64 @llvm.uadd.sat.i64(i64 %18, i64 %39) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %40)
  %cmp76 = icmp eq i64 %16, %40
  br i1 %cmp76, label %land.lhs.true73.return_crit_edge, label %land.lhs.true73.if.end78_crit_edge

land.lhs.true73.if.end78_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true73.return_crit_edge:                 ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end78:                                         ; preds = %land.lhs.true73.if.end78_crit_edge, %lor.lhs.false70.if.end78_crit_edge, %land.lhs.true67.if.end78_crit_edge, %land.lhs.true61.if.end78_crit_edge, %land.lhs.true54.if.end78_crit_edge, %if.end48.if.end78_crit_edge
  br label %return

return:                                           ; preds = %if.end78, %land.lhs.true73.return_crit_edge, %land.lhs.true67.return_crit_edge, %land.lhs.true61.return_crit_edge, %lor.lhs.false16.return_crit_edge, %if.end13.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end5.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.end5.return_crit_edge ], [ 0, %lor.lhs.false16.return_crit_edge ], [ 0, %if.end13.return_crit_edge ], [ 1, %land.lhs.true73.return_crit_edge ], [ 1, %land.lhs.true67.return_crit_edge ], [ 1, %land.lhs.true61.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bits_nowait(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_handle_em_exist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold noreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/extent_map.c", i32 16, i32 39}
!2 = !{ptr @extent_map_tree_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/btrfs/extent_map.c", i32 40, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/extent_map.c", i32 76, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/extent_map.c", i32 510, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/btrfs/extent_map.c", i32 645, i32 5}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/extent_map.c", i32 654, i32 2}
!14 = !{ptr @extent_map_cache, !15, !"extent_map_cache", i1 false, i1 false}
!15 = !{!"../fs/btrfs/extent_map.c", i32 12, i32 27}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/extent_map.c", i32 214, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/extent_map.c", i32 218, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @assertfail._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @assertfail._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/btrfs.h", i32 332, i32 1}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2148685938}
!46 = !{i64 2148600378, i64 2148600410, i64 2148600439, i64 2148600473, i64 2148600504, i64 2148600527}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2149883711}
!49 = !{i64 2148597913, i64 2148597945, i64 2148597974, i64 2148598008, i64 2148598039, i64 2148598062}
!50 = !{i64 2158196052, i64 2158196534, i64 2158196089, i64 2158196145, i64 2158196179, i64 2158196203, i64 2158196244, i64 2158196265, i64 2158196293, i64 2158196327}
!51 = !{i64 2148227593, i64 2148227598, i64 2148227611, i64 2148227655, i64 2148227689, i64 2148227710}
!52 = !{i64 2154943433}
!53 = !{i64 2154943706}
!54 = !{i64 2149941813}
!55 = !{i64 2149942849}
!56 = !{i64 2158337309, i64 2158337795, i64 2158337346, i64 2158337402, i64 2158337436, i64 2158337460, i64 2158337501, i64 2158337522, i64 2158337550, i64 2158337584}
