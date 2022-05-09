; ModuleID = '/llk/IR_all_yes/fs/ocfs2/uptodate.c_pt.bc'
source_filename = "../fs/ocfs2/uptodate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ocfs2_caching_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocfs2_caching_info = type { ptr, i32, i32, i32, i32, %union.anon.77 }
%union.anon.77 = type { [2 x i64] }
%struct.rb_root = type { ptr }
%struct.ocfs2_meta_cache_item = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.87, ptr }
%union.anon.87 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__func__.ocfs2_metadata_cache_purge = private unnamed_addr constant [27 x i8] c"ocfs2_metadata_cache_purge\00", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Owner %llu, count = %u, purged = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocfs2_uptodate\00", [17 x i8] zeroinitializer }, align 32
@ocfs2_uptodate_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__tracepoint_ocfs2_metadata_cache_purge = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_metadata_cache_purge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_purge_copied_metadata_tree = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_purge_copied_metadata_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_buffer_cached_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_buffer_cached_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_buffer_cached_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_buffer_cached_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_set_buffer_uptodate_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_set_buffer_uptodate_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_append_cache_array = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_append_cache_array.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__ocfs2_set_buffer_uptodate = private unnamed_addr constant [28 x i8] c"__ocfs2_set_buffer_uptodate\00", align 1
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_set_buffer_uptodate = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_set_buffer_uptodate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_expand_cache = private unnamed_addr constant [19 x i8] c"ocfs2_expand_cache\00", align 1
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"bug expression: ci->ci_num_cached != OCFS2_CACHE_INFO_MAX_ARRAY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Owner %llu, num cached = %u, should be %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bug expression: !(ci->ci_flags & OCFS2_CACHE_FL_INLINE)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Owner %llu not marked as inline anymore!\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_expand_cache = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_expand_cache.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__ocfs2_insert_cache_tree = private unnamed_addr constant [26 x i8] c"__ocfs2_insert_cache_tree\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Duplicate block %llu cached!\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_insert_cache_tree = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_insert_cache_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_remove_block_from_cache = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_remove_block_from_cache.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_remove_metadata_array = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_remove_metadata_array.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_remove_metadata_tree = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_remove_metadata_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 184, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 609, i32 44 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"ocfs2_uptodate_cachep\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 54, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 2726, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 108, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 399, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 354, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 358, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [23 x i8] c"../fs/ocfs2/uptodate.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 326, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @ocfs2_uptodate_cachep, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_uptodate_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ocfs2_metadata_cache_owner(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !71

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end8, !prof !71

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

do.end8:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i64 %3(ptr noundef nonnull %ci) #6
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !71

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end8, !prof !71

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end8:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %co_get_super = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %co_get_super to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_get_super, align 4
  %call = tail call ptr %3(ptr noundef nonnull %ci) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_metadata_cache_io_lock(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !71

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end8, !prof !71

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.end8:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %co_io_lock = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %co_io_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_io_lock, align 4
  tail call void %3(ptr noundef nonnull %ci) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_metadata_cache_io_unlock(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !71

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end8, !prof !71

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

do.end8:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %co_io_unlock = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %co_io_unlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_io_unlock, align 4
  tail call void %3(ptr noundef nonnull %ci) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_metadata_cache_init(ptr nocapture noundef %ci, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !71

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %ci, align 8
  %ci_flags.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %1 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ci_flags.i, align 4
  %or.i = or i32 %2, 2
  store i32 %or.i, ptr %ci_flags.i, align 4
  %ci_num_cached.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %3 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci_num_cached.i, align 8
  %ci_created_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 1
  %4 = ptrtoint ptr %ci_created_trans.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci_created_trans.i, align 4
  %ci_last_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 2
  %5 = ptrtoint ptr %ci_last_trans.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ci_last_trans.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_metadata_cache_exit(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocfs2_metadata_cache_purge(ptr noundef %ci)
  %ci_flags.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %0 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ci_flags.i, align 4
  %or.i = or i32 %1, 2
  store i32 %or.i, ptr %ci_flags.i, align 4
  %ci_num_cached.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %2 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci_num_cached.i, align 8
  %ci_created_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 1
  %3 = ptrtoint ptr %ci_created_trans.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci_created_trans.i, align 4
  %ci_last_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 2
  %4 = ptrtoint ptr %ci_last_trans.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci_last_trans.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_metadata_cache_purge(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  %root = alloca %struct.rb_root, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #6
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %root, align 4
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !71

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %lor.rhs.i45, !prof !71

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #6, !srcloc !77
  unreachable

lor.rhs.i45:                                      ; preds = %lor.rhs
  %co_cache_lock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %co_cache_lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %co_cache_lock.i, align 4
  tail call void %4(ptr noundef nonnull %ci) #6
  %ci_flags = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %5 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ci_flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %ci_num_cached = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %7 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ci_num_cached, align 8
  %9 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci, align 8
  %tobool1.not.i44 = icmp eq ptr %10, null
  br i1 %tobool1.not.i44, label %do.body5.i46, label %ocfs2_metadata_cache_owner.exit, !prof !71

do.body5.i46:                                     ; preds = %lor.rhs.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit:                  ; preds = %lor.rhs.i45
  %and.lobit = lshr exact i32 %and, 1
  %11 = xor i32 %and.lobit, 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %call.i = tail call i64 %13(ptr noundef nonnull %ci) #6
  tail call fastcc void @trace_ocfs2_metadata_cache_purge(i64 noundef %call.i, i32 noundef %8, i32 noundef %11)
  br i1 %tobool11.not, label %if.then15, label %ocfs2_metadata_cache_owner.exit.lor.rhs.i49_crit_edge

ocfs2_metadata_cache_owner.exit.lor.rhs.i49_crit_edge: ; preds = %ocfs2_metadata_cache_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i49

if.then15:                                        ; preds = %ocfs2_metadata_cache_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ci_cache = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  %14 = ptrtoint ptr %ci_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ci_cache, align 8
  %16 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %root, align 4
  br label %lor.rhs.i49

lor.rhs.i49:                                      ; preds = %if.then15, %ocfs2_metadata_cache_owner.exit.lor.rhs.i49_crit_edge
  %17 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ci_flags, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %ci_flags, align 4
  %19 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ci_num_cached, align 8
  %20 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ci, align 8
  %tobool1.not.i48 = icmp eq ptr %21, null
  br i1 %tobool1.not.i48, label %do.body5.i50, label %ocfs2_metadata_cache_unlock.exit, !prof !71

do.body5.i50:                                     ; preds = %lor.rhs.i49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

ocfs2_metadata_cache_unlock.exit:                 ; preds = %lor.rhs.i49
  %co_cache_unlock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %co_cache_unlock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %co_cache_unlock.i, align 4
  tail call void %23(ptr noundef nonnull %ci) #6
  %call5.i = call ptr @rb_last(ptr noundef nonnull %root) #6
  %cmp.not6.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not6.i, label %ocfs2_metadata_cache_unlock.exit.ocfs2_purge_copied_metadata_tree.exit_crit_edge, label %ocfs2_metadata_cache_unlock.exit.while.body.i_crit_edge

ocfs2_metadata_cache_unlock.exit.while.body.i_crit_edge: ; preds = %ocfs2_metadata_cache_unlock.exit
  br label %while.body.i

ocfs2_metadata_cache_unlock.exit.ocfs2_purge_copied_metadata_tree.exit_crit_edge: ; preds = %ocfs2_metadata_cache_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_purge_copied_metadata_tree.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %ocfs2_metadata_cache_unlock.exit.while.body.i_crit_edge
  %call8.i = phi ptr [ %call.i51, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %ocfs2_metadata_cache_unlock.exit.while.body.i_crit_edge ]
  %purged.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %ocfs2_metadata_cache_unlock.exit.while.body.i_crit_edge ]
  %c_block.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %call8.i, i32 0, i32 1
  %24 = ptrtoint ptr %c_block.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %c_block.i, align 8
  call fastcc void @trace_ocfs2_purge_copied_metadata_tree(i64 noundef %25) #6
  call void @rb_erase(ptr noundef nonnull %call8.i, ptr noundef nonnull %root) #6
  %26 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %call8.i) #6
  %inc.i = add i32 %purged.07.i, 1
  %call.i51 = call ptr @rb_last(ptr noundef nonnull %root) #6
  %cmp.not.i = icmp eq ptr %call.i51, null
  br i1 %cmp.not.i, label %while.body.i.ocfs2_purge_copied_metadata_tree.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.ocfs2_purge_copied_metadata_tree.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_purge_copied_metadata_tree.exit

ocfs2_purge_copied_metadata_tree.exit:            ; preds = %while.body.i.ocfs2_purge_copied_metadata_tree.exit_crit_edge, %ocfs2_metadata_cache_unlock.exit.ocfs2_purge_copied_metadata_tree.exit_crit_edge
  %purged.0.lcssa.i = phi i32 [ 0, %ocfs2_metadata_cache_unlock.exit.ocfs2_purge_copied_metadata_tree.exit_crit_edge ], [ %inc.i, %while.body.i.ocfs2_purge_copied_metadata_tree.exit_crit_edge ]
  %tobool11.not.not = xor i1 %tobool11.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %purged.0.lcssa.i, i32 %8)
  %cmp.not = icmp eq i32 %purged.0.lcssa.i, %8
  %or.cond = select i1 %tobool11.not.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %ocfs2_purge_copied_metadata_tree.exit.if.end28_crit_edge, label %lor.rhs.i54

ocfs2_purge_copied_metadata_tree.exit.if.end28_crit_edge: ; preds = %ocfs2_purge_copied_metadata_tree.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.rhs.i54:                                      ; preds = %ocfs2_purge_copied_metadata_tree.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %27 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m, align 8
  %28 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ci, align 8
  %tobool1.not.i53 = icmp eq ptr %29, null
  br i1 %tobool1.not.i53, label %do.body5.i55, label %ocfs2_metadata_cache_owner.exit57, !prof !71

do.body5.i55:                                     ; preds = %lor.rhs.i54
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit57:                ; preds = %lor.rhs.i54
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i56 = call i64 %31(ptr noundef nonnull %ci) #6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_metadata_cache_purge, i32 noundef 186, ptr noundef nonnull @.str, i64 noundef %call.i56, i32 noundef %8, i32 noundef %purged.0.lcssa.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %if.end28

if.end28:                                         ; preds = %ocfs2_metadata_cache_owner.exit57, %ocfs2_purge_copied_metadata_tree.exit.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_metadata_cache_purge(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_metadata_cache_purge, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_metadata_cache_purge, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !81
  %call42 = tail call i32 @__traceiter_ocfs2_metadata_cache_purge(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_metadata_cache_purge, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_metadata_cache_purge, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_metadata_cache_purge.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_metadata_cache_purge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2726, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_buffer_uptodate(ptr noundef %ci, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @ocfs2_buffer_cached(ptr noundef %ci, ptr noundef %bh)
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_buffer_cached(ptr noundef %ci, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ci, null
  br i1 %tobool.not.i, label %entry.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %lor.rhs.i22, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

lor.rhs.i22:                                      ; preds = %lor.rhs.i
  %co_cache_lock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %co_cache_lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_cache_lock.i, align 4
  tail call void %3(ptr noundef nonnull %ci) #6
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 8
  %tobool1.not.i21 = icmp eq ptr %5, null
  br i1 %tobool1.not.i21, label %do.body5.i23, label %ocfs2_metadata_cache_owner.exit, !prof !71

do.body5.i23:                                     ; preds = %lor.rhs.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit:                  ; preds = %lor.rhs.i22
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i64 %7(ptr noundef nonnull %ci) #6
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b_blocknr, align 8
  %ci_flags = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %10 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci_flags, align 4
  %and = lshr i32 %11, 1
  %and.lobit = and i32 %and, 1
  tail call fastcc void @trace_ocfs2_buffer_cached_begin(i64 noundef %call.i, i64 noundef %9, i32 noundef %and.lobit)
  %12 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ci_flags, align 4
  %and3 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %14 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %b_blocknr, align 8
  %ci_cache.i24 = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %ocfs2_metadata_cache_owner.exit
  %ci_num_cached.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %16 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ci_num_cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.not.i = icmp eq i32 %17, 0
  br i1 %cmp6.not.i, label %if.then.lor.rhs.i28_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.lor.rhs.i28_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i64], ptr %ci_cache.i24, i32 0, i32 %i.07.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %15)
  %cmp1.i = icmp eq i64 %19, %15
  br i1 %cmp1.i, label %for.body.i.lor.rhs.i28_crit_edge, label %for.inc.i

for.body.i.lor.rhs.i28_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.lor.rhs.i28_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.lor.rhs.i28_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

if.else:                                          ; preds = %ocfs2_metadata_cache_owner.exit
  %20 = ptrtoint ptr %ci_cache.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %n.013.i = load ptr, ptr %ci_cache.i24, align 4
  %tobool.not14.i = icmp eq ptr %n.013.i, null
  br i1 %tobool.not14.i, label %if.else.lor.rhs.i28_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.lor.rhs.i28_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %n.015.i = phi ptr [ %n.0.i, %if.end5.i.while.body.i_crit_edge ], [ %n.013.i, %if.else.while.body.i_crit_edge ]
  %c_block.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %n.015.i, i32 0, i32 1
  %21 = ptrtoint ptr %c_block.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %c_block.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %15)
  %cmp.i = icmp ugt i64 %22, %15
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.015.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %15)
  %cmp2.i = icmp ult i64 %22, %15
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.lor.rhs.i28_crit_edge

if.else.i.lor.rhs.i28_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.015.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %23 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i25 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i25, label %if.end5.i.lor.rhs.i28_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end5.i.lor.rhs.i28_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i28

lor.rhs.i28:                                      ; preds = %if.end5.i.lor.rhs.i28_crit_edge, %if.else.i.lor.rhs.i28_crit_edge, %if.else.lor.rhs.i28_crit_edge, %for.inc.i.lor.rhs.i28_crit_edge, %for.body.i.lor.rhs.i28_crit_edge, %if.then.lor.rhs.i28_crit_edge
  %index.0 = phi i32 [ -1, %if.then.lor.rhs.i28_crit_edge ], [ -1, %if.else.lor.rhs.i28_crit_edge ], [ -1, %if.end5.i.lor.rhs.i28_crit_edge ], [ -1, %if.else.i.lor.rhs.i28_crit_edge ], [ %i.07.i, %for.body.i.lor.rhs.i28_crit_edge ], [ -1, %for.inc.i.lor.rhs.i28_crit_edge ]
  %item.0 = phi ptr [ null, %if.then.lor.rhs.i28_crit_edge ], [ null, %if.else.lor.rhs.i28_crit_edge ], [ %n.015.i, %if.else.i.lor.rhs.i28_crit_edge ], [ null, %if.end5.i.lor.rhs.i28_crit_edge ], [ null, %for.inc.i.lor.rhs.i28_crit_edge ], [ null, %for.body.i.lor.rhs.i28_crit_edge ]
  %24 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ci, align 8
  %tobool1.not.i27 = icmp eq ptr %25, null
  br i1 %tobool1.not.i27, label %do.body5.i29, label %ocfs2_metadata_cache_unlock.exit, !prof !71

do.body5.i29:                                     ; preds = %lor.rhs.i28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

ocfs2_metadata_cache_unlock.exit:                 ; preds = %lor.rhs.i28
  call void @__sanitizer_cov_trace_pc() #8
  %co_cache_unlock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %co_cache_unlock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %co_cache_unlock.i, align 4
  tail call void %27(ptr noundef nonnull %ci) #6
  tail call fastcc void @trace_ocfs2_buffer_cached_end(i32 noundef %index.0, ptr noundef %item.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.0)
  %cmp.not = icmp ne i32 %index.0, -1
  %cmp9 = icmp ne ptr %item.0, null
  %narrow = select i1 %cmp.not, i1 true, i1 %cmp9
  %28 = zext i1 %narrow to i32
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_buffer_read_ahead(ptr noundef %ci, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @ocfs2_buffer_cached(ptr noundef %ci, ptr noundef %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %3 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_set_buffer_uptodate(ptr noundef %ci, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i = alloca i64, align 8
  %_m4.i.i = alloca i64, align 8
  %_m26.i.i = alloca i64, align 8
  %_m34.i.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m45.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ocfs2_buffer_cached(ptr noundef %ci, ptr noundef %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %ci, null
  br i1 %tobool.not.i, label %if.end.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %if.end
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %lor.rhs.i24, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %if.end.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

lor.rhs.i24:                                      ; preds = %lor.rhs.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %3(ptr noundef nonnull %ci) #6
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_set_buffer_uptodate_begin(i64 noundef %call.i, i64 noundef %5)
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 8
  %tobool1.not.i23 = icmp eq ptr %7, null
  br i1 %tobool1.not.i23, label %do.body5.i25, label %ocfs2_metadata_cache_lock.exit, !prof !71

do.body5.i25:                                     ; preds = %lor.rhs.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

ocfs2_metadata_cache_lock.exit:                   ; preds = %lor.rhs.i24
  %co_cache_lock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %co_cache_lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %co_cache_lock.i, align 4
  tail call void %9(ptr noundef nonnull %ci) #6
  %ci_flags.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %10 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci_flags.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i26 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i26, label %ocfs2_metadata_cache_lock.exit.lor.rhs.i35_crit_edge, label %ocfs2_insert_can_use_array.exit

ocfs2_metadata_cache_lock.exit.lor.rhs.i35_crit_edge: ; preds = %ocfs2_metadata_cache_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i35

ocfs2_insert_can_use_array.exit:                  ; preds = %ocfs2_metadata_cache_lock.exit
  %ci_num_cached.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %12 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ci_num_cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp ugt i32 %13, 1
  br i1 %cmp.i, label %ocfs2_insert_can_use_array.exit.lor.rhs.i35_crit_edge, label %if.then4

ocfs2_insert_can_use_array.exit.lor.rhs.i35_crit_edge: ; preds = %ocfs2_insert_can_use_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i35

if.then4:                                         ; preds = %ocfs2_insert_can_use_array.exit
  %14 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %b_blocknr, align 8
  %16 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ci_num_cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i28 = icmp ugt i32 %17, 1
  br i1 %cmp.i28, label %do.body2.i, label %lor.rhs.i.i, !prof !71

do.body2.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

lor.rhs.i.i:                                      ; preds = %if.then4
  %18 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %do.body5.i.i, label %lor.rhs.i31, !prof !71

do.body5.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

lor.rhs.i31:                                      ; preds = %lor.rhs.i.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i.i = tail call i64 %21(ptr noundef nonnull %ci) #6
  %22 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ci_num_cached.i, align 8
  tail call fastcc void @trace_ocfs2_append_cache_array(i64 noundef %call.i.i, i64 noundef %15, i32 noundef %23) #6
  %ci_cache.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  %24 = ptrtoint ptr %ci_num_cached.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ci_num_cached.i, align 8
  %arrayidx.i = getelementptr [2 x i64], ptr %ci_cache.i, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %15, ptr %arrayidx.i, align 8
  %27 = load i32, ptr %ci_num_cached.i, align 8
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %ci_num_cached.i, align 8
  %28 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ci, align 8
  %tobool1.not.i30 = icmp eq ptr %29, null
  br i1 %tobool1.not.i30, label %do.body5.i32, label %ocfs2_metadata_cache_unlock.exit, !prof !71

do.body5.i32:                                     ; preds = %lor.rhs.i31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

ocfs2_metadata_cache_unlock.exit:                 ; preds = %lor.rhs.i31
  call void @__sanitizer_cov_trace_pc() #8
  %co_cache_unlock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %co_cache_unlock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %co_cache_unlock.i, align 4
  tail call void %31(ptr noundef nonnull %ci) #6
  br label %cleanup

lor.rhs.i35:                                      ; preds = %ocfs2_insert_can_use_array.exit.lor.rhs.i35_crit_edge, %ocfs2_metadata_cache_lock.exit.lor.rhs.i35_crit_edge
  %and = lshr i32 %11, 1
  %and.lobit = and i32 %and, 1
  %32 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ci, align 8
  %tobool1.not.i34 = icmp eq ptr %33, null
  br i1 %tobool1.not.i34, label %do.body5.i36, label %lor.rhs.i.i41, !prof !71

do.body5.i36:                                     ; preds = %lor.rhs.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

lor.rhs.i.i41:                                    ; preds = %lor.rhs.i35
  %co_cache_unlock.i37 = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %co_cache_unlock.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %co_cache_unlock.i37, align 4
  tail call void %35(ptr noundef nonnull %ci) #6
  %36 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %b_blocknr, align 8
  %38 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i40 = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i40, label %do.body5.i.i42, label %ocfs2_metadata_cache_owner.exit.i, !prof !71

do.body5.i.i42:                                   ; preds = %lor.rhs.i.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit.i:                ; preds = %lor.rhs.i.i41
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i.i43 = tail call i64 %41(ptr noundef nonnull %ci) #6
  %conv.i = trunc i64 %37 to i32
  tail call fastcc void @trace_ocfs2_set_buffer_uptodate(i64 noundef %call.i.i43, i32 noundef %conv.i, i32 noundef %and.lobit) #6
  %42 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef 3136) #6
  %tobool.not.i44 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i44, label %do.body.i, label %if.end19.i

do.body.i:                                        ; preds = %ocfs2_metadata_cache_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #6
  %43 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.__ocfs2_set_buffer_uptodate, i32 noundef 399, ptr noundef nonnull @.str.5, i64 noundef -12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #6
  br label %cleanup

if.end19.i:                                       ; preds = %ocfs2_metadata_cache_owner.exit.i
  %c_block.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %call1.i, i32 0, i32 1
  %44 = ptrtoint ptr %c_block.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %37, ptr %c_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit)
  %tobool20.not.i = icmp eq i32 %and.lobit, 0
  br i1 %tobool20.not.i, label %if.end19.i.lor.rhs.i121.i_crit_edge, label %for.body.preheader.i

if.end19.i.lor.rhs.i121.i_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i121.i

for.body.preheader.i:                             ; preds = %if.end19.i
  %45 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  %call24.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %45, i32 noundef 3136) #6
  %tobool26.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool26.not.i, label %for.body.preheader.i.do.body44.i_crit_edge, label %for.cond.i

for.body.preheader.i.do.body44.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %46 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  %call24.1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %46, i32 noundef 3136) #6
  %tobool26.not.1.i = icmp eq ptr %call24.1.i, null
  br i1 %tobool26.not.1.i, label %for.cond.i.do.body44.i_crit_edge, label %for.cond.i.lor.rhs.i121.i_crit_edge

for.cond.i.lor.rhs.i121.i_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i121.i

for.cond.i.do.body44.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44.i

do.body44.i:                                      ; preds = %for.cond.i.do.body44.i_crit_edge, %for.body.preheader.i.do.body44.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45.i) #6
  %47 = ptrtoint ptr %_m45.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m45.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45.i, ptr noundef nonnull @__func__.__ocfs2_set_buffer_uptodate, i32 noundef 411, ptr noundef nonnull @.str.5, i64 noundef -12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45.i) #6
  br label %if.then65.i

lor.rhs.i121.i:                                   ; preds = %for.cond.i.lor.rhs.i121.i_crit_edge, %if.end19.i.lor.rhs.i121.i_crit_edge
  %tree.sroa.8.1.i = phi ptr [ null, %if.end19.i.lor.rhs.i121.i_crit_edge ], [ %call24.1.i, %for.cond.i.lor.rhs.i121.i_crit_edge ]
  %tree.sroa.0.0.i = phi ptr [ null, %if.end19.i.lor.rhs.i121.i_crit_edge ], [ %call24.i, %for.cond.i.lor.rhs.i121.i_crit_edge ]
  %48 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ci, align 8
  %tobool1.not.i120.i = icmp eq ptr %49, null
  br i1 %tobool1.not.i120.i, label %do.body5.i122.i, label %ocfs2_metadata_cache_lock.exit.i, !prof !71

do.body5.i122.i:                                  ; preds = %lor.rhs.i121.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

ocfs2_metadata_cache_lock.exit.i:                 ; preds = %lor.rhs.i121.i
  %co_cache_lock.i.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %co_cache_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %co_cache_lock.i.i, align 4
  tail call void %51(ptr noundef nonnull %ci) #6
  %52 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ci_flags.i, align 4
  %and.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i123.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i123.i, label %ocfs2_metadata_cache_lock.exit.i.if.end60.i_crit_edge, label %ocfs2_insert_can_use_array.exit.i

ocfs2_metadata_cache_lock.exit.i.if.end60.i_crit_edge: ; preds = %ocfs2_metadata_cache_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

ocfs2_insert_can_use_array.exit.i:                ; preds = %ocfs2_metadata_cache_lock.exit.i
  %ci_num_cached.i.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %54 = ptrtoint ptr %ci_num_cached.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ci_num_cached.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i.i = icmp ugt i32 %55, 1
  br i1 %cmp.i.i, label %ocfs2_insert_can_use_array.exit.i.if.end60.i_crit_edge, label %lor.rhs.i.i.i

ocfs2_insert_can_use_array.exit.i.if.end60.i_crit_edge: ; preds = %ocfs2_insert_can_use_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

lor.rhs.i.i.i:                                    ; preds = %ocfs2_insert_can_use_array.exit.i
  %56 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i.i, label %do.body5.i.i.i, label %lor.rhs.i128.i, !prof !71

do.body5.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

lor.rhs.i128.i:                                   ; preds = %lor.rhs.i.i.i
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i.i.i = tail call i64 %59(ptr noundef nonnull %ci) #6
  %60 = ptrtoint ptr %ci_num_cached.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ci_num_cached.i.i, align 8
  tail call fastcc void @trace_ocfs2_append_cache_array(i64 noundef %call.i.i.i, i64 noundef %37, i32 noundef %61) #6
  %ci_cache.i.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  %62 = ptrtoint ptr %ci_num_cached.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ci_num_cached.i.i, align 8
  %arrayidx.i.i = getelementptr [2 x i64], ptr %ci_cache.i.i, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %37, ptr %arrayidx.i.i, align 8
  %65 = load i32, ptr %ci_num_cached.i.i, align 8
  %inc.i.i = add i32 %65, 1
  store i32 %inc.i.i, ptr %ci_num_cached.i.i, align 8
  %66 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ci, align 8
  %tobool1.not.i127.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i127.i, label %do.body5.i129.i, label %ocfs2_metadata_cache_unlock.exit.i, !prof !71

do.body5.i129.i:                                  ; preds = %lor.rhs.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

ocfs2_metadata_cache_unlock.exit.i:               ; preds = %lor.rhs.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  %co_cache_unlock.i.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %co_cache_unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %co_cache_unlock.i.i, align 4
  tail call void %69(ptr noundef nonnull %ci) #6
  br label %if.then65.i

if.end60.i:                                       ; preds = %ocfs2_insert_can_use_array.exit.i.if.end60.i_crit_edge, %ocfs2_metadata_cache_lock.exit.i.if.end60.i_crit_edge
  br i1 %tobool20.not.i, label %if.end60.i.lor.rhs.i141.i_crit_edge, label %if.then62.i

if.end60.i.lor.rhs.i141.i_crit_edge:              ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i141.i

if.then62.i:                                      ; preds = %if.end60.i
  %ci_num_cached.i130.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %70 = ptrtoint ptr %ci_num_cached.i130.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ci_num_cached.i130.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp.not.i.i = icmp eq i32 %71, 2
  br i1 %cmp.not.i.i, label %do.body21.i.i, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #6
  %72 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_expand_cache, i32 noundef 357, ptr noundef nonnull @.str.6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i.i) #6
  %73 = ptrtoint ptr %_m4.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 1152921504606846976, ptr %_m4.i.i, align 8
  %call.i131.i = call i64 @ocfs2_metadata_cache_owner(ptr noundef nonnull %ci) #6
  %74 = ptrtoint ptr %ci_num_cached.i130.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ci_num_cached.i130.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i.i, ptr noundef nonnull @__func__.ocfs2_expand_cache, i32 noundef 357, ptr noundef nonnull @.str.7, i64 noundef %call.i131.i, i32 noundef %75, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i.i) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #6, !srcloc !87
  unreachable

do.body21.i.i:                                    ; preds = %if.then62.i
  br i1 %tobool.not.i123.i, label %do.body25.i.i, label %lor.rhs.i.i136.i

do.body25.i.i:                                    ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26.i.i) #6
  %76 = ptrtoint ptr %_m26.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 1152921504606846976, ptr %_m26.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26.i.i, ptr noundef nonnull @__func__.ocfs2_expand_cache, i32 noundef 360, ptr noundef nonnull @.str.8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26.i.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34.i.i) #6
  %77 = ptrtoint ptr %_m34.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 1152921504606846976, ptr %_m34.i.i, align 8
  %call38.i.i = call i64 @ocfs2_metadata_cache_owner(ptr noundef nonnull %ci) #6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34.i.i, ptr noundef nonnull @__func__.ocfs2_expand_cache, i32 noundef 360, ptr noundef nonnull @.str.9, i64 noundef %call38.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34.i.i) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #6, !srcloc !88
  unreachable

lor.rhs.i.i136.i:                                 ; preds = %do.body21.i.i
  %ci_cache.i133.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  %78 = ptrtoint ptr %ci_cache.i133.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ci_cache.i133.i, align 8
  %c_block.i.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %tree.sroa.0.0.i, i32 0, i32 1
  %80 = ptrtoint ptr %c_block.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %c_block.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx.1.i.i, align 8
  %c_block.1.i.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %tree.sroa.8.1.i, i32 0, i32 1
  %83 = ptrtoint ptr %c_block.1.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %c_block.1.i.i, align 8
  %84 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ci_flags.i, align 4
  %and54.i.i = and i32 %85, -3
  store i32 %and54.i.i, ptr %ci_flags.i, align 4
  store ptr null, ptr %ci_cache.i133.i, align 8
  %86 = ptrtoint ptr %ci_num_cached.i130.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %ci_num_cached.i130.i, align 8
  tail call fastcc void @__ocfs2_insert_cache_tree(ptr noundef nonnull %ci, ptr noundef %tree.sroa.0.0.i) #6
  tail call fastcc void @__ocfs2_insert_cache_tree(ptr noundef nonnull %ci, ptr noundef %tree.sroa.8.1.i) #6
  %87 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i135.i = icmp eq ptr %88, null
  br i1 %tobool1.not.i.i135.i, label %do.body5.i.i137.i, label %ocfs2_expand_cache.exit.i, !prof !71

do.body5.i.i137.i:                                ; preds = %lor.rhs.i.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_expand_cache.exit.i:                        ; preds = %lor.rhs.i.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call.i.i138.i = tail call i64 %90(ptr noundef nonnull %ci) #6
  %91 = ptrtoint ptr %ci_flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ci_flags.i, align 4
  %93 = ptrtoint ptr %ci_num_cached.i130.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ci_num_cached.i130.i, align 8
  tail call fastcc void @trace_ocfs2_expand_cache(i64 noundef %call.i.i138.i, i32 noundef %92, i32 noundef %94) #6
  br label %lor.rhs.i141.i

lor.rhs.i141.i:                                   ; preds = %ocfs2_expand_cache.exit.i, %if.end60.i.lor.rhs.i141.i_crit_edge
  %tree.sroa.8.2.i = phi ptr [ %tree.sroa.8.1.i, %if.end60.i.lor.rhs.i141.i_crit_edge ], [ null, %ocfs2_expand_cache.exit.i ]
  %tree.sroa.0.1.i = phi ptr [ %tree.sroa.0.0.i, %if.end60.i.lor.rhs.i141.i_crit_edge ], [ null, %ocfs2_expand_cache.exit.i ]
  tail call fastcc void @__ocfs2_insert_cache_tree(ptr noundef nonnull %ci, ptr noundef nonnull %call1.i) #6
  %95 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ci, align 8
  %tobool1.not.i140.i = icmp eq ptr %96, null
  br i1 %tobool1.not.i140.i, label %do.body5.i142.i, label %out_free.thread.i, !prof !71

do.body5.i142.i:                                  ; preds = %lor.rhs.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

out_free.thread.i:                                ; preds = %lor.rhs.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  %co_cache_unlock.i143.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %co_cache_unlock.i143.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %co_cache_unlock.i143.i, align 4
  tail call void %98(ptr noundef nonnull %ci) #6
  br label %if.end66.i

if.then65.i:                                      ; preds = %ocfs2_metadata_cache_unlock.exit.i, %do.body44.i
  %tree.sroa.8.3.i = phi ptr [ %tree.sroa.8.1.i, %ocfs2_metadata_cache_unlock.exit.i ], [ null, %do.body44.i ]
  %tree.sroa.0.2.i = phi ptr [ %tree.sroa.0.0.i, %ocfs2_metadata_cache_unlock.exit.i ], [ %call24.i, %do.body44.i ]
  %99 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  call void @kmem_cache_free(ptr noundef %99, ptr noundef nonnull %call1.i) #6
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %out_free.thread.i
  %tree.sroa.8.4.i = phi ptr [ %tree.sroa.8.2.i, %out_free.thread.i ], [ %tree.sroa.8.3.i, %if.then65.i ]
  %tree.sroa.0.3.i = phi ptr [ %tree.sroa.0.1.i, %out_free.thread.i ], [ %tree.sroa.0.2.i, %if.then65.i ]
  %tobool68.not.i = icmp eq ptr %tree.sroa.0.3.i, null
  br i1 %tobool68.not.i, label %if.end66.i.cleanup_crit_edge, label %for.inc79.i

if.end66.i.cleanup_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc79.i:                                      ; preds = %if.end66.i
  %100 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  call void @kmem_cache_free(ptr noundef %100, ptr noundef nonnull %tree.sroa.0.3.i) #6
  %tobool75.not.1.i = icmp eq ptr %tree.sroa.8.4.i, null
  br i1 %tobool75.not.1.i, label %for.inc79.i.cleanup_crit_edge, label %if.then76.1.i

for.inc79.i.cleanup_crit_edge:                    ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then76.1.i:                                    ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  call void @kmem_cache_free(ptr noundef %101, ptr noundef nonnull %tree.sroa.8.4.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then76.1.i, %for.inc79.i.cleanup_crit_edge, %if.end66.i.cleanup_crit_edge, %do.body.i, %ocfs2_metadata_cache_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_set_buffer_uptodate_begin(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_set_buffer_uptodate_begin, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !89
  %call42 = tail call i32 @__traceiter_ocfs2_set_buffer_uptodate_begin(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_set_buffer_uptodate_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_set_buffer_uptodate_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2752, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_set_new_buffer_uptodate(ptr noundef %ci, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ocfs2_buffer_cached(ptr noundef %ci, ptr noundef %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !80

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #6, !srcloc !91
  unreachable

do.end6:                                          ; preds = %entry
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end6.set_buffer_uptodate.exit_crit_edge

do.end6.set_buffer_uptodate.exit_crit_edge:       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #6
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %do.end6.set_buffer_uptodate.exit_crit_edge
  %tobool.not.i12 = icmp eq ptr %ci, null
  br i1 %tobool.not.i12, label %set_buffer_uptodate.exit.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

set_buffer_uptodate.exit.do.body5.i_crit_edge:    ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %set_buffer_uptodate.exit
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %lor.rhs.i15, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %set_buffer_uptodate.exit.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

lor.rhs.i15:                                      ; preds = %lor.rhs.i
  %co_io_lock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %co_io_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %co_io_lock.i, align 4
  tail call void %5(ptr noundef nonnull %ci) #6
  tail call void @ocfs2_set_buffer_uptodate(ptr noundef nonnull %ci, ptr noundef %bh)
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 8
  %tobool1.not.i14 = icmp eq ptr %7, null
  br i1 %tobool1.not.i14, label %do.body5.i16, label %ocfs2_metadata_cache_io_unlock.exit, !prof !71

do.body5.i16:                                     ; preds = %lor.rhs.i15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

ocfs2_metadata_cache_io_unlock.exit:              ; preds = %lor.rhs.i15
  call void @__sanitizer_cov_trace_pc() #8
  %co_io_unlock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %co_io_unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %co_io_unlock.i, align 4
  tail call void %9(ptr noundef nonnull %ci) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_remove_from_cache(ptr noundef %ci, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @ocfs2_remove_block_from_cache(ptr noundef %ci, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_remove_block_from_cache(ptr noundef %ci, i64 noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ci, null
  br i1 %tobool.not.i, label %entry.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %lor.rhs.i29, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

lor.rhs.i29:                                      ; preds = %lor.rhs.i
  %co_cache_lock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %co_cache_lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_cache_lock.i, align 4
  tail call void %3(ptr noundef nonnull %ci) #6
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 8
  %tobool1.not.i28 = icmp eq ptr %5, null
  br i1 %tobool1.not.i28, label %do.body5.i30, label %ocfs2_metadata_cache_owner.exit, !prof !71

do.body5.i30:                                     ; preds = %lor.rhs.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit:                  ; preds = %lor.rhs.i29
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i64 %7(ptr noundef nonnull %ci) #6
  %ci_num_cached = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %8 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ci_num_cached, align 8
  %ci_flags = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 3
  %10 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci_flags, align 4
  tail call fastcc void @trace_ocfs2_remove_block_from_cache(i64 noundef %call.i, i64 noundef %block, i32 noundef %9, i32 noundef %11)
  %12 = ptrtoint ptr %ci_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ci_flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ci_cache.i34 = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ocfs2_metadata_cache_owner.exit
  %14 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ci_num_cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not.i = icmp eq i32 %15, 0
  br i1 %cmp6.not.i, label %if.then.lor.rhs.i48_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.lor.rhs.i48_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i64], ptr %ci_cache.i34, i32 0, i32 %i.07.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %block)
  %cmp1.i = icmp eq i64 %17, %block
  br i1 %cmp1.i, label %ocfs2_search_cache_array.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.lor.rhs.i48_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.lor.rhs.i48_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

ocfs2_search_cache_array.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp.not = icmp eq i32 %i.07.i, -1
  br i1 %cmp.not, label %ocfs2_search_cache_array.exit.lor.rhs.i48_crit_edge, label %if.then3

ocfs2_search_cache_array.exit.lor.rhs.i48_crit_edge: ; preds = %ocfs2_search_cache_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

if.then3:                                         ; preds = %ocfs2_search_cache_array.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.07.i)
  %18 = icmp ugt i32 %i.07.i, 1
  br i1 %18, label %do.body3.i, label %do.body9.i, !prof !71

do.body3.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 525, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

do.body9.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %i.07.i)
  %cmp10.not.i = icmp ugt i32 %15, %i.07.i
  br i1 %cmp10.not.i, label %lor.rhs.i.i, label %do.body18.i, !prof !80

do.body18.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #6, !srcloc !93
  unreachable

lor.rhs.i.i:                                      ; preds = %do.body9.i
  %19 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i.i, label %do.body5.i.i, label %ocfs2_metadata_cache_owner.exit.i, !prof !71

do.body5.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit.i:                ; preds = %lor.rhs.i.i
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i.i = tail call i64 %22(ptr noundef nonnull %ci) #6
  %23 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ci_num_cached, align 8
  tail call fastcc void @trace_ocfs2_remove_metadata_array(i64 noundef %call.i.i, i32 noundef %i.07.i, i32 noundef %24) #6
  %25 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ci_num_cached, align 8
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %ci_num_cached, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %i.07.i)
  %cmp53.i = icmp ugt i32 %dec.i, %i.07.i
  br i1 %cmp53.i, label %if.then54.i, label %ocfs2_metadata_cache_owner.exit.i.lor.rhs.i48_crit_edge

ocfs2_metadata_cache_owner.exit.i.lor.rhs.i48_crit_edge: ; preds = %ocfs2_metadata_cache_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

if.then54.i:                                      ; preds = %ocfs2_metadata_cache_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nuw i32 %dec.i, %i.07.i
  %mul.i = shl i32 %sub.i, 3
  %add.i = add nuw nsw i32 %i.07.i, 1
  %arrayidx56.i = getelementptr i64, ptr %ci_cache.i34, i32 %add.i
  %27 = call ptr @memmove(ptr %arrayidx.i, ptr %arrayidx56.i, i32 %mul.i)
  br label %lor.rhs.i48

if.else:                                          ; preds = %ocfs2_metadata_cache_owner.exit
  %28 = ptrtoint ptr %ci_cache.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %n.013.i = load ptr, ptr %ci_cache.i34, align 4
  %tobool.not14.i = icmp eq ptr %n.013.i, null
  br i1 %tobool.not14.i, label %if.else.lor.rhs.i48_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.lor.rhs.i48_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %n.015.i = phi ptr [ %n.0.i, %if.end5.i.while.body.i_crit_edge ], [ %n.013.i, %if.else.while.body.i_crit_edge ]
  %c_block.i = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %n.015.i, i32 0, i32 1
  %29 = ptrtoint ptr %c_block.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %c_block.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %block)
  %cmp.i = icmp ugt i64 %30, %block
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.015.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %block)
  %cmp2.i = icmp ult i64 %30, %block
  br i1 %cmp2.i, label %if.then3.i, label %lor.rhs.i.i38

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.015.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %31 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i35 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i35, label %if.end5.i.lor.rhs.i48_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end5.i.lor.rhs.i48_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i48

lor.rhs.i.i38:                                    ; preds = %if.else.i
  %32 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ci, align 8
  %tobool1.not.i.i37 = icmp eq ptr %33, null
  br i1 %tobool1.not.i.i37, label %do.body5.i.i39, label %ocfs2_remove_metadata_tree.exit, !prof !71

do.body5.i.i39:                                   ; preds = %lor.rhs.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_remove_metadata_tree.exit:                  ; preds = %lor.rhs.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i.i40 = tail call i64 %35(ptr noundef nonnull %ci) #6
  %36 = ptrtoint ptr %c_block.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %c_block.i, align 8
  tail call fastcc void @trace_ocfs2_remove_metadata_tree(i64 noundef %call.i.i40, i64 noundef %37) #6
  tail call void @rb_erase(ptr noundef nonnull %n.015.i, ptr noundef %ci_cache.i34) #6
  %38 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ci_num_cached, align 8
  %dec.i44 = add i32 %39, -1
  store i32 %dec.i44, ptr %ci_num_cached, align 8
  br label %lor.rhs.i48

lor.rhs.i48:                                      ; preds = %ocfs2_remove_metadata_tree.exit, %if.end5.i.lor.rhs.i48_crit_edge, %if.else.lor.rhs.i48_crit_edge, %if.then54.i, %ocfs2_metadata_cache_owner.exit.i.lor.rhs.i48_crit_edge, %ocfs2_search_cache_array.exit.lor.rhs.i48_crit_edge, %for.inc.i.lor.rhs.i48_crit_edge, %if.then.lor.rhs.i48_crit_edge
  %item.0 = phi ptr [ null, %ocfs2_search_cache_array.exit.lor.rhs.i48_crit_edge ], [ %n.015.i, %ocfs2_remove_metadata_tree.exit ], [ null, %ocfs2_metadata_cache_owner.exit.i.lor.rhs.i48_crit_edge ], [ null, %if.then54.i ], [ null, %if.then.lor.rhs.i48_crit_edge ], [ null, %if.else.lor.rhs.i48_crit_edge ], [ null, %if.end5.i.lor.rhs.i48_crit_edge ], [ null, %for.inc.i.lor.rhs.i48_crit_edge ]
  %40 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ci, align 8
  %tobool1.not.i47 = icmp eq ptr %41, null
  br i1 %tobool1.not.i47, label %do.body5.i49, label %ocfs2_metadata_cache_unlock.exit, !prof !71

do.body5.i49:                                     ; preds = %lor.rhs.i48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !78
  unreachable

ocfs2_metadata_cache_unlock.exit:                 ; preds = %lor.rhs.i48
  %co_cache_unlock.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %co_cache_unlock.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %co_cache_unlock.i, align 4
  tail call void %43(ptr noundef nonnull %ci) #6
  %tobool9.not = icmp eq ptr %item.0, null
  br i1 %tobool9.not, label %ocfs2_metadata_cache_unlock.exit.if.end11_crit_edge, label %if.then10

ocfs2_metadata_cache_unlock.exit.if.end11_crit_edge: ; preds = %ocfs2_metadata_cache_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %ocfs2_metadata_cache_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %item.0) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %ocfs2_metadata_cache_unlock.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_remove_xattr_clusters_from_cache(ptr noundef %ci, i64 noundef %block, i32 noundef %c_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ci, null
  br i1 %tobool.not.i, label %entry.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %ocfs2_metadata_cache_get_super.exit, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

ocfs2_metadata_cache_get_super.exit:              ; preds = %lor.rhs.i
  %co_get_super.i = getelementptr inbounds %struct.ocfs2_caching_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %co_get_super.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %co_get_super.i, align 4
  %call.i = tail call ptr %3(ptr noundef nonnull %ci) #6
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %9 to i32
  %sub.i = sub i32 %7, %conv.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %10 = trunc i64 %shl.i to i32
  %conv2 = mul i32 %10, %c_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp8.not = icmp eq i32 %conv2, 0
  br i1 %cmp8.not, label %ocfs2_metadata_cache_get_super.exit.for.end_crit_edge, label %ocfs2_metadata_cache_get_super.exit.for.body_crit_edge

ocfs2_metadata_cache_get_super.exit.for.body_crit_edge: ; preds = %ocfs2_metadata_cache_get_super.exit
  br label %for.body

ocfs2_metadata_cache_get_super.exit.for.end_crit_edge: ; preds = %ocfs2_metadata_cache_get_super.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ocfs2_metadata_cache_get_super.exit.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %ocfs2_metadata_cache_get_super.exit.for.body_crit_edge ]
  %block.addr.09 = phi i64 [ %inc4, %for.body.for.body_crit_edge ], [ %block, %ocfs2_metadata_cache_get_super.exit.for.body_crit_edge ]
  tail call fastcc void @ocfs2_remove_block_from_cache(ptr noundef nonnull %ci, i64 noundef %block.addr.09)
  %inc = add nuw i32 %i.010, 1
  %inc4 = add i64 %block.addr.09, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ocfs2_metadata_cache_get_super.exit.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_ocfs2_uptodate_cache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #6
  store ptr %call, ptr @ocfs2_uptodate_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_ocfs2_uptodate_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ocfs2_uptodate_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_metadata_cache_purge(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_purge_copied_metadata_tree(i64 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_purge_copied_metadata_tree, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_purge_copied_metadata_tree, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !94
  %call42 = tail call i32 @__traceiter_ocfs2_purge_copied_metadata_tree(ptr noundef null, i64 noundef %num) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_purge_copied_metadata_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_purge_copied_metadata_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_purge_copied_metadata_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_purge_copied_metadata_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2724, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_purge_copied_metadata_tree(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_buffer_cached_begin(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_buffer_cached_begin, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !96
  %call42 = tail call i32 @__traceiter_ocfs2_buffer_cached_begin(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_buffer_cached_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_buffer_cached_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2728, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_buffer_cached_end(i32 noundef %index, ptr noundef %item) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_buffer_cached_end, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !98
  %call42 = tail call i32 @__traceiter_ocfs2_buffer_cached_end(ptr noundef null, i32 noundef %index, ptr noundef %item) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_buffer_cached_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_buffer_cached_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_buffer_cached_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2742, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_buffer_cached_begin(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_buffer_cached_end(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_set_buffer_uptodate_begin(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_append_cache_array(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_append_cache_array, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_append_cache_array, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !100
  %call42 = tail call i32 @__traceiter_ocfs2_append_cache_array(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_append_cache_array, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_append_cache_array, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_append_cache_array.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_append_cache_array.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2744, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_append_cache_array(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_set_buffer_uptodate(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_set_buffer_uptodate, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !102
  %call42 = tail call i32 @__traceiter_ocfs2_set_buffer_uptodate(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_set_buffer_uptodate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_set_buffer_uptodate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_set_buffer_uptodate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2750, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ocfs2_insert_cache_tree(ptr noundef %ci, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %c_block = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %new, i32 0, i32 1
  %0 = ptrtoint ptr %c_block to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %c_block, align 8
  %ci_cache = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %ci, null
  br i1 %tobool.not.i, label %entry.do.body5.i_crit_edge, label %lor.rhs.i, !prof !71

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %ocfs2_metadata_cache_owner.exit, !prof !71

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ocfs2_metadata_cache_owner.exit:                  ; preds = %lor.rhs.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i64 %5(ptr noundef nonnull %ci) #6
  %ci_num_cached = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 4
  %6 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ci_num_cached, align 8
  tail call fastcc void @trace_ocfs2_insert_cache_tree(i64 noundef %call.i, i64 noundef %1, i32 noundef %7)
  %8 = ptrtoint ptr %ci_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_cache, align 4
  %tobool.not39 = icmp eq ptr %9, null
  br i1 %tobool.not39, label %ocfs2_metadata_cache_owner.exit.while.end_crit_edge, label %ocfs2_metadata_cache_owner.exit.while.body_crit_edge

ocfs2_metadata_cache_owner.exit.while.body_crit_edge: ; preds = %ocfs2_metadata_cache_owner.exit
  br label %while.body

ocfs2_metadata_cache_owner.exit.while.end_crit_edge: ; preds = %ocfs2_metadata_cache_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %ocfs2_metadata_cache_owner.exit.while.body_crit_edge
  %10 = phi ptr [ %15, %if.end16.while.body_crit_edge ], [ %9, %ocfs2_metadata_cache_owner.exit.while.body_crit_edge ]
  %c_block2 = getelementptr inbounds %struct.ocfs2_meta_cache_item, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %c_block2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %c_block2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %12)
  %cmp = icmp ult i64 %1, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %if.end16

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %12)
  %cmp4 = icmp ugt i64 %1, %12
  br i1 %cmp4, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %if.end16

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_insert_cache_tree, i32 noundef 327, ptr noundef nonnull @.str.10, i64 noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/uptodate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 328, 0\0A.popsection", ""() #6, !srcloc !104
  unreachable

if.end16:                                         ; preds = %if.then5, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ]
  %14 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le = ptrtoint ptr %10 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %ocfs2_metadata_cache_owner.exit.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %ci_cache, %ocfs2_metadata_cache_owner.exit.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %ocfs2_metadata_cache_owner.exit.while.end_crit_edge ]
  %16 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parent.0.lcssa, ptr %new, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i, align 4
  %19 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %new, ptr noundef %ci_cache) #6
  %20 = ptrtoint ptr %ci_num_cached to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ci_num_cached, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %ci_num_cached, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_set_buffer_uptodate(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_expand_cache(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_expand_cache, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_expand_cache, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %call42 = tail call i32 @__traceiter_ocfs2_expand_cache(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_expand_cache, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_expand_cache, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_expand_cache.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_expand_cache.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2748, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_expand_cache(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_insert_cache_tree(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_insert_cache_tree, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_insert_cache_tree, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !107
  %call42 = tail call i32 @__traceiter_ocfs2_insert_cache_tree(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_insert_cache_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_insert_cache_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_insert_cache_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_insert_cache_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2746, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_insert_cache_tree(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_remove_block_from_cache(i64 noundef %ull, i64 noundef %ull1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_block_from_cache, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_remove_block_from_cache, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  %call42 = tail call i32 @__traceiter_ocfs2_remove_block_from_cache(ptr noundef null, i64 noundef %ull, i64 noundef %ull1, i32 noundef %value2, i32 noundef %value3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_block_from_cache, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_block_from_cache, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_remove_block_from_cache.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_remove_block_from_cache.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2758, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_remove_block_from_cache(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_remove_metadata_array(i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_array, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_remove_metadata_array, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !111
  %call42 = tail call i32 @__traceiter_ocfs2_remove_metadata_array(ptr noundef null, i64 noundef %val1, i32 noundef %val2, i32 noundef %val3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_array, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_array, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_remove_metadata_array.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_remove_metadata_array.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2754, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_remove_metadata_array(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_remove_metadata_tree(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_tree, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_remove_metadata_tree, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !79

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !113
  %call42 = tail call i32 @__traceiter_ocfs2_remove_metadata_tree(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_tree, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_remove_metadata_tree, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_remove_metadata_tree.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_remove_metadata_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2756, ptr noundef nonnull @.str.3) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_remove_metadata_tree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__func__.ocfs2_metadata_cache_purge, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/uptodate.c", i32 184, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/uptodate.c", i32 609, i32 44}
!5 = !{ptr @ocfs2_uptodate_cachep, !6, !"ocfs2_uptodate_cachep", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/uptodate.c", i32 54, i32 27}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2726, i32 1}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2724, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2728, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2730, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2752, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2744, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = !{ptr @__func__.__ocfs2_set_buffer_uptodate, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/uptodate.c", i32 399, i32 3}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2750, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{ptr @__func__.ocfs2_expand_cache, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/uptodate.c", i32 354, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/uptodate.c", i32 358, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2748, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @__func__.__ocfs2_insert_cache_tree, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/uptodate.c", i32 326, i32 4}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2746, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2758, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2754, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2756, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2161111483, i64 2161111966, i64 2161111520, i64 2161111576, i64 2161111610, i64 2161111634, i64 2161111675, i64 2161111696, i64 2161111724, i64 2161111758}
!73 = !{i64 2161113072, i64 2161113555, i64 2161113109, i64 2161113165, i64 2161113199, i64 2161113223, i64 2161113264, i64 2161113285, i64 2161113313, i64 2161113347}
!74 = !{i64 2161117839, i64 2161118322, i64 2161117876, i64 2161117932, i64 2161117966, i64 2161117990, i64 2161118031, i64 2161118052, i64 2161118080, i64 2161118114}
!75 = !{i64 2161119428, i64 2161119911, i64 2161119465, i64 2161119521, i64 2161119555, i64 2161119579, i64 2161119620, i64 2161119641, i64 2161119669, i64 2161119703}
!76 = !{i64 2161120991, i64 2161121475, i64 2161121028, i64 2161121084, i64 2161121118, i64 2161121142, i64 2161121183, i64 2161121204, i64 2161121232, i64 2161121266}
!77 = !{i64 2161123979, i64 2161124463, i64 2161124016, i64 2161124072, i64 2161124106, i64 2161124130, i64 2161124171, i64 2161124192, i64 2161124220, i64 2161124254}
!78 = !{i64 2161116250, i64 2161116733, i64 2161116287, i64 2161116343, i64 2161116377, i64 2161116401, i64 2161116442, i64 2161116463, i64 2161116491, i64 2161116525}
!79 = !{i64 2148492188, i64 2148492193, i64 2148492206, i64 2148492250, i64 2148492284, i64 2148492305}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2160904570}
!82 = !{i64 2160904817}
!83 = !{i64 2149488595}
!84 = !{i64 2149489631}
!85 = !{i64 2161114661, i64 2161115144, i64 2161114698, i64 2161114754, i64 2161114788, i64 2161114812, i64 2161114853, i64 2161114874, i64 2161114902, i64 2161114936}
!86 = !{i64 2161127290, i64 2161127774, i64 2161127327, i64 2161127383, i64 2161127417, i64 2161127441, i64 2161127482, i64 2161127503, i64 2161127531, i64 2161127565}
!87 = !{i64 2161137231, i64 2161137715, i64 2161137268, i64 2161137324, i64 2161137358, i64 2161137382, i64 2161137423, i64 2161137444, i64 2161137472, i64 2161137506}
!88 = !{i64 2161139680, i64 2161140164, i64 2161139717, i64 2161139773, i64 2161139807, i64 2161139831, i64 2161139872, i64 2161139893, i64 2161139921, i64 2161139955}
!89 = !{i64 2161037163}
!90 = !{i64 2161037408}
!91 = !{i64 2161142721, i64 2161143205, i64 2161142758, i64 2161142814, i64 2161142848, i64 2161142872, i64 2161142913, i64 2161142934, i64 2161142962, i64 2161142996}
!92 = !{i64 2161144325, i64 2161144809, i64 2161144362, i64 2161144418, i64 2161144452, i64 2161144476, i64 2161144517, i64 2161144538, i64 2161144566, i64 2161144600}
!93 = !{i64 2161145933, i64 2161146417, i64 2161145970, i64 2161146026, i64 2161146060, i64 2161146084, i64 2161146125, i64 2161146146, i64 2161146174, i64 2161146208}
!94 = !{i64 2160882239}
!95 = !{i64 2160882472}
!96 = !{i64 2160922758}
!97 = !{i64 2160923003}
!98 = !{i64 2160939884}
!99 = !{i64 2160940115}
!100 = !{i64 2160961802}
!101 = !{i64 2160962045}
!102 = !{i64 2161015159}
!103 = !{i64 2161015404}
!104 = !{i64 2161134506, i64 2161134990, i64 2161134543, i64 2161134599, i64 2161134633, i64 2161134657, i64 2161134698, i64 2161134719, i64 2161134747, i64 2161134781}
!105 = !{i64 2160997492}
!106 = !{i64 2160997723}
!107 = !{i64 2160979816}
!108 = !{i64 2160980057}
!109 = !{i64 2161096128}
!110 = !{i64 2161096399}
!111 = !{i64 2161055526}
!112 = !{i64 2161055775}
!113 = !{i64 2161073382}
!114 = !{i64 2161073617}
