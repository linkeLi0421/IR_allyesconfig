; ModuleID = '/llk/IR_all_yes/fs/ocfs2/reservations.c_pt.bc'
source_filename = "../fs/ocfs2/reservations.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.84, ptr }
%union.anon.84 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_alloc_reservation = type { %struct.rb_node, i32, i32, i32, i32, %struct.list_head, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@resv_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resv_lock\00", [22 x i8] zeroinitializer }, align 32
@__func__.__ocfs2_resv_find_window = private unnamed_addr constant [25 x i8] c"__ocfs2_resv_find_window\00", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"goal: %u next_resv: start %u len %u\0A\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_resv_find_window_begin = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_resv_find_window_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_resmap_find_free_bits_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resmap_find_free_bits_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_resmap_find_free_bits_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resmap_find_free_bits_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_resv_insert = private unnamed_addr constant [18 x i8] c"ocfs2_resv_insert\00", align 1
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Duplicate reservation window!\0A\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_resv_insert = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resv_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_dump_resv = private unnamed_addr constant [16 x i8] c"ocfs2_dump_resv\00", align 1
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Dumping resmap for device %s. Bitmap length: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"start: %u\09end: %u\09len: %u\09last_start: %u\09last_len: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d reservations found. LRU follows\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"LRU(%d) start: %u\09end: %u\09len: %u\09last_start: %u\09last_len: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_resv_find_window_prev = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resv_find_window_prev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_resv_find_window_next = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resv_find_window_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_cannibalize_resv_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_cannibalize_resv_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_cannibalize_resv_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_cannibalize_resv_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_resmap_resv_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resmap_resv_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_resmap_claimed_bits_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resmap_claimed_bits_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_resmap_claimed_bits_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_resmap_claimed_bits_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_check_resmap = private unnamed_addr constant [19 x i8] c"ocfs2_check_resmap\00", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reservation %d has bad start off!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reservation %d has no length!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reservation %d has invalid range!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reservation %d extends past bitmap!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ocfs2_validate_resmap_bits = private unnamed_addr constant [27 x i8] c"ocfs2_validate_resmap_bits\00", align 1
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"reservation %d covers an allocated area starting at bit %u!\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"resv_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 32, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 533, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1862, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 330, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 80, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 87, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 96, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 100, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 149, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 155, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 161, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [27 x i8] c"../fs/ocfs2/reservations.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 120, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @resv_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resv_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocfs2_dir_resv_allowed(ptr nocapture noundef readonly %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_resv_level = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 55
  %0 = ptrtoint ptr %osb_resv_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osb_resv_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %osb_dir_resv_level = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 56
  %2 = ptrtoint ptr %osb_dir_resv_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_dir_resv_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1 = icmp ne i32 %3, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_resv_init_once(ptr noundef %resv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %resv, i32 0, i32 40)
  %r_lru = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5
  %1 = ptrtoint ptr %r_lru to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %r_lru, ptr %r_lru, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %r_lru, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_resv_set_type(ptr nocapture noundef %resv, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !78

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %r_flags = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 6
  %0 = ptrtoint ptr %r_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_flags, align 4
  %or = or i32 %1, %flags
  store i32 %or, ptr %r_flags, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_resmap_init(ptr noundef %osb, ptr noundef %resmap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %resmap, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %m_osb = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 2
  %2 = ptrtoint ptr %m_osb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %osb, ptr %m_osb, align 4
  %3 = ptrtoint ptr %resmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %resmap, align 4
  %m_lru = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4
  %4 = ptrtoint ptr %m_lru to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %m_lru, ptr %m_lru, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m_lru, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_resv_discard(ptr noundef %resmap, ptr noundef %resv) local_unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %resv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @resv_lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @resv_lock, align 4
  %0 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !80

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end7.i:                                        ; preds = %if.then
  %r_start.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %r_flags.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 6
  %1 = call ptr @memset(ptr %r_start.i.i, i32 0, i32 16)
  %2 = ptrtoint ptr %r_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end7.i.__ocfs2_resv_discard.exit_crit_edge, label %if.then.i.i

do.end7.i.__ocfs2_resv_discard.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_resv_discard.exit

if.then.i.i:                                      ; preds = %do.end7.i
  %r_lru.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_lru.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i, align 4
  %6 = ptrtoint ptr %r_lru.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %10 = ptrtoint ptr %r_lru.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %r_lru.i.i, ptr %r_lru.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %r_lru.i.i, ptr %prev.i3.i.i.i, align 4
  tail call void @rb_erase(ptr noundef nonnull %resv, ptr noundef %resmap) #9
  %12 = ptrtoint ptr %r_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_flags.i.i, align 4
  %and2.i.i = and i32 %13, -2
  store i32 %and2.i.i, ptr %r_flags.i.i, align 4
  br label %__ocfs2_resv_discard.exit

__ocfs2_resv_discard.exit:                        ; preds = %list_del_init.exit.i.i, %do.end7.i.__ocfs2_resv_discard.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @resv_lock) #9
  br label %if.end

if.end:                                           ; preds = %__ocfs2_resv_discard.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_resmap_restart(ptr noundef %resmap, i32 noundef %clen, ptr noundef %disk_bitmap) local_unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_osb.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 2
  %0 = ptrtoint ptr %m_osb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_osb.i, align 4
  %osb_resv_level.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %osb_resv_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_resv_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @resv_lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @resv_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %while.cond.preheader.i, !prof !80

while.cond.preheader.i:                           ; preds = %if.end
  %call1012.i = tail call ptr @rb_last(ptr noundef %resmap) #9
  %cmp.not13.i = icmp eq ptr %call1012.i, null
  br i1 %cmp.not13.i, label %while.cond.preheader.i.ocfs2_resmap_clear_all_resv.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.ocfs2_resmap_clear_all_resv.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_clear_all_resv.exit

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

while.body.i:                                     ; preds = %__ocfs2_resv_discard.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call1014.i = phi ptr [ %call10.i, %__ocfs2_resv_discard.exit.i.while.body.i_crit_edge ], [ %call1012.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @resv_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !80

do.body4.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end7.i.i:                                      ; preds = %while.body.i
  %r_start.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call1014.i, i32 0, i32 1
  %r_flags.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call1014.i, i32 0, i32 6
  %6 = call ptr @memset(ptr %r_start.i.i.i, i32 0, i32 16)
  %7 = ptrtoint ptr %r_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r_flags.i.i.i, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end7.i.i.__ocfs2_resv_discard.exit.i_crit_edge, label %if.then.i.i.i

do.end7.i.i.__ocfs2_resv_discard.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_resv_discard.exit.i

if.then.i.i.i:                                    ; preds = %do.end7.i.i
  %r_lru.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call1014.i, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_lru.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call1014.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %r_lru.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %r_lru.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %15 = ptrtoint ptr %r_lru.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %r_lru.i.i.i, ptr %r_lru.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call1014.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %r_lru.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  tail call void @rb_erase(ptr noundef nonnull %call1014.i, ptr noundef %resmap) #9
  %17 = ptrtoint ptr %r_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_flags.i.i.i, align 4
  %and2.i.i.i = and i32 %18, -2
  store i32 %and2.i.i.i, ptr %r_flags.i.i.i, align 4
  br label %__ocfs2_resv_discard.exit.i

__ocfs2_resv_discard.exit.i:                      ; preds = %list_del_init.exit.i.i.i, %do.end7.i.i.__ocfs2_resv_discard.exit.i_crit_edge
  %call10.i = tail call ptr @rb_last(ptr noundef %resmap) #9
  %cmp.not.i = icmp eq ptr %call10.i, null
  br i1 %cmp.not.i, label %__ocfs2_resv_discard.exit.i.ocfs2_resmap_clear_all_resv.exit_crit_edge, label %__ocfs2_resv_discard.exit.i.while.body.i_crit_edge

__ocfs2_resv_discard.exit.i.while.body.i_crit_edge: ; preds = %__ocfs2_resv_discard.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

__ocfs2_resv_discard.exit.i.ocfs2_resmap_clear_all_resv.exit_crit_edge: ; preds = %__ocfs2_resv_discard.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_clear_all_resv.exit

ocfs2_resmap_clear_all_resv.exit:                 ; preds = %__ocfs2_resv_discard.exit.i.ocfs2_resmap_clear_all_resv.exit_crit_edge, %while.cond.preheader.i.ocfs2_resmap_clear_all_resv.exit_crit_edge
  %m_bitmap_len = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %19 = ptrtoint ptr %m_bitmap_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %clen, ptr %m_bitmap_len, align 4
  %m_disk_bitmap = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 1
  %20 = ptrtoint ptr %m_disk_bitmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %disk_bitmap, ptr %m_disk_bitmap, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @resv_lock) #9
  br label %return

return:                                           ; preds = %ocfs2_resmap_clear_all_resv.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ocfs2_resmap_uninit(ptr nocapture noundef %resmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_resmap_resv_bits(ptr noundef %resmap, ptr noundef %resv, ptr nocapture noundef writeonly %cstart, ptr nocapture noundef %clen) local_unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %resv, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %m_osb.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 2
  %0 = ptrtoint ptr %m_osb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_osb.i, align 4
  %osb_resv_level.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %osb_resv_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_resv_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @resv_lock) #9
  %r_len.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 2
  %4 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i37 = icmp eq i32 %5, 0
  br i1 %cmp.i37, label %if.then3, label %if.end.do.end20_crit_edge

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then3:                                         ; preds = %if.end
  %r_flags.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 6
  %6 = ptrtoint ptr %r_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_flags.i, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %if.then3.if.then8_crit_edge

if.then3.if.then8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false6:                                   ; preds = %if.then3
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %m_osb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_osb.i, align 4
  %osb_resv_level.i39 = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 55
  %osb_dir_resv_level.i = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 56
  %.pn.in.i = select i1 %tobool.not.i, ptr %osb_resv_level.i39, ptr %osb_dir_resv_level.i
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %bits.0.i = shl i32 4, %.pn.i
  %11 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.0.i, i32 %12)
  %cmp7 = icmp ult i32 %bits.0.i, %12
  br i1 %cmp7, label %lor.lhs.false6.if.then8_crit_edge, label %lor.lhs.false6.do.end9.i_crit_edge

lor.lhs.false6.do.end9.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

lor.lhs.false6.if.then8_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false6.if.then8_crit_edge, %if.then3.if.then8_crit_edge
  %13 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clen, align 4
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then8, %lor.lhs.false6.do.end9.i_crit_edge
  %wanted.0 = phi i32 [ %14, %if.then8 ], [ %bits.0.i, %lor.lhs.false6.do.end9.i_crit_edge ]
  %r_last_len.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 3
  %15 = ptrtoint ptr %r_last_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r_last_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not.i = icmp eq i32 %16, 0
  br i1 %tobool10.not.i, label %do.end9.i.if.end15.i_crit_edge, label %if.then11.i

do.end9.i.if.end15.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %r_last_start.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 4
  %17 = ptrtoint ptr %r_last_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_last_start.i, align 4
  %add.i = add i32 %18, %16
  %m_bitmap_len.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %19 = ptrtoint ptr %m_bitmap_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_bitmap_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %20)
  %cmp.not.i = icmp ult i32 %add.i, %20
  %spec.store.select.i = select i1 %cmp.not.i, i32 %add.i, i32 0
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end15.i_crit_edge
  %goal.0.i = phi i32 [ %spec.store.select.i, %if.then11.i ], [ 0, %do.end9.i.if.end15.i_crit_edge ]
  tail call fastcc void @__ocfs2_resv_find_window(ptr noundef %resmap, ptr noundef nonnull %resv, i32 noundef %goal.0.i, i32 noundef %wanted.0) #9
  %21 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i61.i = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal.0.i)
  %cmp18.not.i = icmp eq i32 %goal.0.i, 0
  %or.cond.i = or i1 %cmp18.not.i, %cmp.i61.i
  br i1 %or.cond.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then19.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__ocfs2_resv_find_window(ptr noundef %resmap, ptr noundef nonnull %resv, i32 noundef 0, i32 noundef %wanted.0) #9
  %23 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %r_len.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end20.i_crit_edge
  %24 = phi i32 [ %.pr.i, %if.then19.i ], [ %22, %if.end15.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i64.not.i = icmp eq i32 %24, 0
  br i1 %cmp.i64.not.i, label %if.then23.i, label %if.end20.i.do.body25.i_crit_edge

if.end20.i.do.body25.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25.i

if.then23.i:                                      ; preds = %if.end20.i
  %25 = ptrtoint ptr %r_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r_flags.i, align 4
  %and.i.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then23.i.if.end.i.i_crit_edge

if.then23.i.if.end.i.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %m_osb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_osb.i, align 4
  %and.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %osb_dir_resv_level.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 56
  %osb_resv_level.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %28, i32 0, i32 55
  %.pn.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %osb_resv_level.i.i.i, ptr %osb_dir_resv_level.i.i.i
  %29 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i.i = load i32, ptr %.pn.in.i.i.i, align 4
  %bits.0.i.i.i = shl i32 4, %.pn.i.i.i
  %shr.i.i = lshr exact i32 %bits.0.i.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then23.i.if.end.i.i_crit_edge
  %min_bits.0.i.i = phi i32 [ %shr.i.i, %if.then.i.i ], [ %wanted.0, %if.then23.i.if.end.i.i_crit_edge ]
  %m_lru.i.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4
  %30 = ptrtoint ptr %m_lru.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_lru.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 -28
  %r_start.i.i = getelementptr i8, ptr %31, i32 -16
  %32 = ptrtoint ptr %r_start.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r_start.i.i, align 4
  %r_len.i66.i = getelementptr i8, ptr %31, i32 -12
  %34 = ptrtoint ptr %r_len.i66.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %r_len.i66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i51.i.i = icmp eq i32 %35, 0
  %add.i.i.i = add i32 %35, -1
  %sub.i.i.i = select i1 %tobool.not.i51.i.i, i32 0, i32 %add.i.i.i
  %retval.0.i.i.i = add i32 %sub.i.i.i, %33
  tail call fastcc void @trace_ocfs2_cannibalize_resv_begin(i32 noundef %33, i32 noundef %35, i32 noundef %retval.0.i.i.i) #9
  %36 = ptrtoint ptr %r_len.i66.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r_len.i66.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %min_bits.0.i.i)
  %cmp.not.i.i = icmp ugt i32 %37, %min_bits.0.i.i
  br i1 %cmp.not.i.i, label %if.else10.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %38 = ptrtoint ptr %r_start.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_start.i.i, align 4
  %r_start7.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %40 = ptrtoint ptr %r_start7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %r_start7.i.i, align 4
  %41 = ptrtoint ptr %r_len.i66.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %r_len.i66.i, align 4
  %43 = ptrtoint ptr %r_len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %r_len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr @resv_lock, align 4
  %44 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %do.end7.i.i.i, !prof !80

do.body4.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end7.i.i.i:                                    ; preds = %if.then5.i.i
  %r_flags.i.i.i.i = getelementptr i8, ptr %31, i32 8
  %45 = call ptr @memset(ptr %r_start.i.i, i32 0, i32 16)
  %46 = ptrtoint ptr %r_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %r_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end7.i.i.i.ocfs2_cannibalize_resv.exit.i_crit_edge, label %if.then.i.i.i.i

do.end7.i.i.i.ocfs2_cannibalize_resv.exit.i_crit_edge: ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_cannibalize_resv.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end7.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i.i = getelementptr i8, ptr %31, i32 4
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %31, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit.i.i.i.i

list_del_init.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge
  %54 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %31, ptr %31, align 4
  %prev.i3.i.i.i.i.i = getelementptr i8, ptr %31, i32 4
  %55 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %31, ptr %prev.i3.i.i.i.i.i, align 4
  tail call void @rb_erase(ptr noundef %add.ptr.i.i, ptr noundef %resmap) #9
  %56 = ptrtoint ptr %r_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %r_flags.i.i.i.i, align 4
  %and2.i.i.i.i = and i32 %57, -2
  store i32 %and2.i.i.i.i, ptr %r_flags.i.i.i.i, align 4
  br label %ocfs2_cannibalize_resv.exit.i

if.else10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div50.i.i = lshr i32 %37, 1
  %shrink.0.i.i = select i1 %tobool.not.i.i, i32 %div50.i.i, i32 %min_bits.0.i.i
  %sub.i.i = sub i32 %37, %shrink.0.i.i
  %58 = ptrtoint ptr %r_len.i66.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i.i, ptr %r_len.i66.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %shrink.0.i.i)
  %tobool.not.i53.i.i = icmp eq i32 %37, %shrink.0.i.i
  %59 = ptrtoint ptr %r_start.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r_start.i.i, align 4
  %retval.0.i57.i.i = select i1 %tobool.not.i53.i.i, i32 1, i32 %sub.i.i
  %add.i.i = add i32 %60, %retval.0.i57.i.i
  %r_start18.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %61 = ptrtoint ptr %r_start18.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i.i, ptr %r_start18.i.i, align 4
  %62 = ptrtoint ptr %r_len.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shrink.0.i.i, ptr %r_len.i, align 4
  br label %ocfs2_cannibalize_resv.exit.i

ocfs2_cannibalize_resv.exit.i:                    ; preds = %if.else10.i.i, %list_del_init.exit.i.i.i.i, %do.end7.i.i.i.ocfs2_cannibalize_resv.exit.i_crit_edge
  %r_start21.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %63 = ptrtoint ptr %r_start21.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %r_start21.i.i, align 4
  %65 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i59.i.i = icmp eq i32 %66, 0
  %add.i61.i.i = add i32 %66, -1
  %sub.i62.i.i = select i1 %tobool.not.i59.i.i, i32 0, i32 %add.i61.i.i
  %retval.0.i63.i.i = add i32 %sub.i62.i.i, %64
  %r_last_start.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 4
  %67 = ptrtoint ptr %r_last_start.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %r_last_start.i.i, align 4
  %69 = ptrtoint ptr %r_last_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %r_last_len.i, align 4
  tail call fastcc void @trace_ocfs2_cannibalize_resv_end(i32 noundef %64, i32 noundef %retval.0.i63.i.i, i32 noundef %66, i32 noundef %68, i32 noundef %70) #9
  tail call fastcc void @ocfs2_resv_insert(ptr noundef %resmap, ptr noundef nonnull %resv) #9
  br label %do.body25.i

do.body25.i:                                      ; preds = %ocfs2_cannibalize_resv.exit.i, %if.end20.i.do.body25.i_crit_edge
  %71 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i68.not.i = icmp eq i32 %72, 0
  br i1 %cmp.i68.not.i, label %do.body35.i, label %do.body, !prof !80

do.body35.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 711, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.body:                                          ; preds = %do.body25.i
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %73 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %r_start, align 4
  tail call fastcc void @trace_ocfs2_resmap_resv_bits(i32 noundef %74, i32 noundef %72)
  %75 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i41.not = icmp eq i32 %.pr, 0
  br i1 %cmp.i41.not, label %do.body16, label %do.body.do.end20_crit_edge, !prof !80

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 745, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end20:                                         ; preds = %do.body.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %r_start21 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %76 = ptrtoint ptr %r_start21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %r_start21, align 4
  %78 = ptrtoint ptr %cstart to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %cstart, align 4
  %79 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %r_len.i, align 4
  %81 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %clen, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @resv_lock) #9
  br label %return

return:                                           ; preds = %do.end20, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end20 ], [ -28, %lor.lhs.false.return_crit_edge ], [ -28, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resmap_resv_bits(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_resv_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resmap_resv_bits, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %call42 = tail call i32 @__traceiter_ocfs2_resmap_resv_bits(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_resv_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_resv_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resmap_resv_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resmap_resv_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1912, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_resmap_claimed_bits(ptr noundef %resmap, ptr noundef %resv, i32 noundef %cstart, i32 noundef %clen) local_unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %clen, %cstart
  %sub = add i32 %add, -1
  %cmp = icmp eq ptr %resmap, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %m_osb.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 2
  %0 = ptrtoint ptr %m_osb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_osb.i, align 4
  %osb_resv_level.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %osb_resv_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_resv_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %cmp1 = icmp eq ptr %resv, null
  %or.cond = or i1 %cmp1, %cmp.i
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %4 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cstart)
  %cmp4.not = icmp eq i32 %5, %cstart
  br i1 %cmp4.not, label %do.end14, label %do.body8, !prof !78

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 795, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

do.end14:                                         ; preds = %do.body
  tail call void @_raw_spin_lock(ptr noundef nonnull @resv_lock) #9
  %6 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_start, align 4
  %r_len.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 2
  %8 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %add.i = add i32 %9, -1
  %sub.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  %retval.0.i = add i32 %sub.i, %7
  %r_last_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 4
  %10 = ptrtoint ptr %r_last_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_last_start, align 4
  %r_last_len = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 3
  %12 = ptrtoint ptr %r_last_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_last_len, align 4
  tail call fastcc void @trace_ocfs2_resmap_claimed_bits_begin(i32 noundef %cstart, i32 noundef %sub, i32 noundef %clen, i32 noundef %7, i32 noundef %retval.0.i, i32 noundef %9, i32 noundef %11, i32 noundef %13)
  %14 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cstart)
  %cmp19 = icmp ugt i32 %15, %cstart
  br i1 %cmp19, label %do.body27, label %do.body36, !prof !80

do.body27:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 804, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

do.body36:                                        ; preds = %do.end14
  %16 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i119 = icmp eq i32 %17, 0
  %add.i121 = add i32 %17, -1
  %sub.i122 = select i1 %tobool.not.i119, i32 0, i32 %add.i121
  %retval.0.i123 = add i32 %sub.i122, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i123, i32 %cstart)
  %cmp38 = icmp ult i32 %retval.0.i123, %cstart
  br i1 %cmp38, label %do.body46, label %do.body55, !prof !80

do.body46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 805, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

do.body55:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i123, i32 %sub)
  %cmp57 = icmp ult i32 %retval.0.i123, %sub
  br i1 %cmp57, label %do.body65, label %do.end73, !prof !80

do.body65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 806, 0\0A.popsection", ""() #9, !srcloc !93
  unreachable

do.end73:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cstart)
  %cmp.not.i.not = icmp eq i32 %15, %cstart
  br i1 %cmp.not.i.not, label %do.end8.i, label %do.body3.i, !prof !78

do.body3.i:                                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 762, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end8.i:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i123, i32 %sub)
  %cmp9.i = icmp eq i32 %retval.0.i123, %sub
  br i1 %cmp9.i, label %if.then10.i, label %do.end29.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @resv_lock, align 4
  %18 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !80

do.body4.i.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end7.i.i:                                      ; preds = %if.then10.i
  %r_flags.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 6
  %19 = call ptr @memset(ptr %r_start, i32 0, i32 16)
  %20 = ptrtoint ptr %r_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r_flags.i.i.i, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end7.i.i.ocfs2_adjust_resv_from_alloc.exitthread-pre-split_crit_edge, label %if.then.i.i.i

do.end7.i.i.ocfs2_adjust_resv_from_alloc.exitthread-pre-split_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_adjust_resv_from_alloc.exitthread-pre-split

if.then.i.i.i:                                    ; preds = %do.end7.i.i
  %r_lru.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_lru.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %r_lru.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r_lru.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %28 = ptrtoint ptr %r_lru.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %r_lru.i.i.i, ptr %r_lru.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %r_lru.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  tail call void @rb_erase(ptr noundef nonnull %resv, ptr noundef nonnull %resmap) #9
  %30 = ptrtoint ptr %r_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r_flags.i.i.i, align 4
  %and2.i.i.i = and i32 %31, -2
  store i32 %and2.i.i.i, ptr %r_flags.i.i.i, align 4
  br label %ocfs2_adjust_resv_from_alloc.exitthread-pre-split

do.end29.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %r_start to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %r_start, align 4
  %add33.i = sub i32 %retval.0.i123, %sub
  %33 = ptrtoint ptr %r_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add33.i, ptr %r_len.i, align 4
  br label %ocfs2_adjust_resv_from_alloc.exit

ocfs2_adjust_resv_from_alloc.exitthread-pre-split: ; preds = %list_del_init.exit.i.i.i, %do.end7.i.i.ocfs2_adjust_resv_from_alloc.exitthread-pre-split_crit_edge
  %34 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %r_len.i, align 4
  br label %ocfs2_adjust_resv_from_alloc.exit

ocfs2_adjust_resv_from_alloc.exit:                ; preds = %ocfs2_adjust_resv_from_alloc.exitthread-pre-split, %do.end29.i
  %35 = phi i32 [ %.pr, %ocfs2_adjust_resv_from_alloc.exitthread-pre-split ], [ %add33.i, %do.end29.i ]
  %36 = ptrtoint ptr %r_last_start to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cstart, ptr %r_last_start, align 4
  %37 = ptrtoint ptr %r_last_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %clen, ptr %r_last_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i131.not = icmp eq i32 %35, 0
  br i1 %cmp.i131.not, label %ocfs2_adjust_resv_from_alloc.exit.if.end79_crit_edge, label %if.then78

ocfs2_adjust_resv_from_alloc.exit.if.end79_crit_edge: ; preds = %ocfs2_adjust_resv_from_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then78:                                        ; preds = %ocfs2_adjust_resv_from_alloc.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @resv_lock, align 4
  %38 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !80

do.body4.i:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #9, !srcloc !95
  unreachable

do.end7.i:                                        ; preds = %if.then78
  %r_lru.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5
  %39 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %r_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %r_lru.i
  br i1 %cmp.i.not.i, label %do.end7.i.if.end12.i_crit_edge, label %if.then10.i132

do.end7.i.if.end12.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i132:                                   ; preds = %do.end7.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_lru.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then10.i132.list_del_init.exit.i_crit_edge

if.then10.i132.list_del_init.exit.i_crit_edge:    ; preds = %if.then10.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then10.i132
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %r_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then10.i132.list_del_init.exit.i_crit_edge
  %47 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %r_lru.i, ptr %r_lru.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %r_lru.i, ptr %prev.i3.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %list_del_init.exit.i, %do.end7.i.if.end12.i_crit_edge
  %m_lru.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %r_lru.i, ptr noundef %50, ptr noundef %m_lru.i) #9
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %if.end12.i.if.end79_crit_edge

if.end12.i.if.end79_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end.i.i17.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %r_lru.i, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %m_lru.i, ptr %r_lru.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %r_lru.i, ptr %50, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end.i.i17.i, %if.end12.i.if.end79_crit_edge, %ocfs2_adjust_resv_from_alloc.exit.if.end79_crit_edge
  %55 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %r_start, align 4
  %57 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i134 = icmp eq i32 %58, 0
  %add.i136 = add i32 %58, -1
  %sub.i137 = select i1 %tobool.not.i134, i32 0, i32 %add.i136
  %retval.0.i138 = add i32 %sub.i137, %56
  %59 = ptrtoint ptr %r_last_start to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r_last_start, align 4
  %61 = ptrtoint ptr %r_last_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %r_last_len, align 4
  tail call fastcc void @trace_ocfs2_resmap_claimed_bits_end(i32 noundef %56, i32 noundef %retval.0.i138, i32 noundef %58, i32 noundef %60, i32 noundef %62)
  tail call fastcc void @ocfs2_check_resmap(ptr noundef nonnull %resmap)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @resv_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resmap_claimed_bits_begin(i32 noundef %cstart, i32 noundef %cend, i32 noundef %clen, i32 noundef %r_start, i32 noundef %r_end, i32 noundef %r_len, i32 noundef %last_start, i32 noundef %last_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resmap_claimed_bits_begin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %call42 = tail call i32 @__traceiter_ocfs2_resmap_claimed_bits_begin(ptr noundef null, i32 noundef %cstart, i32 noundef %cend, i32 noundef %clen, i32 noundef %r_start, i32 noundef %r_end, i32 noundef %r_len, i32 noundef %last_start, i32 noundef %last_len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resmap_claimed_bits_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resmap_claimed_bits_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1944, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
define internal fastcc void @trace_ocfs2_resmap_claimed_bits_end(i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %last_start, i32 noundef %last_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resmap_claimed_bits_end, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %call42 = tail call i32 @__traceiter_ocfs2_resmap_claimed_bits_end(ptr noundef null, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %last_start, i32 noundef %last_len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_claimed_bits_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resmap_claimed_bits_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resmap_claimed_bits_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1966, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
define internal fastcc void @ocfs2_check_resmap(ptr noundef %resmap) unnamed_addr #2 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m8 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m33 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %resmap) #9
  %tobool.not95 = icmp eq ptr %call, null
  br i1 %tobool.not95, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %m_bitmap_len = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %m_disk_bitmap.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %off.099 = phi i32 [ 0, %while.body.lr.ph ], [ %retval.0.i86, %if.end44.while.body_crit_edge ]
  %i.098 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end44.while.body_crit_edge ]
  %node.096 = phi ptr [ %call, %while.body.lr.ph ], [ %call46, %if.end44.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.098)
  %cmp = icmp sgt i32 %i.098, 0
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end4_crit_edge

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true:                                    ; preds = %while.body
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.096, i32 0, i32 1
  %0 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %off.099)
  %cmp1.not = icmp ugt i32 %1, %off.099
  br i1 %cmp1.not, label %land.lhs.true.if.end4_crit_edge, label %do.body

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_check_resmap, i32 noundef 144, ptr noundef nonnull @.str.10, i32 noundef %i.098) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %bad

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %while.body.if.end4_crit_edge
  %r_len = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.096, i32 0, i32 2
  %3 = ptrtoint ptr %r_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %do.body7, label %if.end15

do.body7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8) #9
  %5 = ptrtoint ptr %_m8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m8, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8, ptr noundef nonnull @__func__.ocfs2_check_resmap, i32 noundef 150, ptr noundef nonnull @.str.11, i32 noundef %i.098) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8) #9
  br label %bad

if.end15:                                         ; preds = %if.end4
  %r_start16 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.096, i32 0, i32 1
  %6 = ptrtoint ptr %r_start16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_start16, align 4
  %add.i = add i32 %4, -1
  %retval.0.i = add i32 %add.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %retval.0.i)
  %cmp18 = icmp ugt i32 %7, %retval.0.i
  br i1 %cmp18, label %do.body20, label %if.end28

do.body20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #9
  %8 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.ocfs2_check_resmap, i32 noundef 156, ptr noundef nonnull @.str.12, i32 noundef %i.098) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #9
  br label %bad

if.end28:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %m_bitmap_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_bitmap_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %10)
  %cmp30.not = icmp ult i32 %retval.0.i, %10
  br i1 %cmp30.not, label %if.end40, label %do.body32

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33) #9
  %11 = ptrtoint ptr %_m33 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m33, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33, ptr noundef nonnull @__func__.ocfs2_check_resmap, i32 noundef 162, ptr noundef nonnull @.str.13, i32 noundef %i.098) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33) #9
  br label %bad

if.end40:                                         ; preds = %if.end28
  %12 = ptrtoint ptr %m_disk_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_disk_bitmap.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %if.end40
  %start.013.i = phi i32 [ %inc.i, %if.end4.i.while.body.i_crit_edge ], [ %7, %if.end40 ]
  %div3.i.i.i = lshr i32 %start.013.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %13, i32 %div3.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %start.013.i, 31
  %and.i.i.i = xor i32 %xor.i.i, 24
  %16 = shl nuw i32 1, %and.i.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i79 = icmp eq i32 %17, 0
  br i1 %tobool.not.i79, label %if.end4.i, label %ocfs2_validate_resmap_bits.exit

if.end4.i:                                        ; preds = %while.body.i
  %inc.i = add i32 %start.013.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %retval.0.i
  br i1 %cmp.not.i, label %if.end44, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

ocfs2_validate_resmap_bits.exit:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %18 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_validate_resmap_bits, i32 noundef 122, ptr noundef nonnull @.str.14, i32 noundef %i.098, i32 noundef %start.013.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  br label %bad

if.end44:                                         ; preds = %if.end4.i
  %19 = ptrtoint ptr %r_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i82 = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %r_start16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_start16, align 4
  %add.i84 = add i32 %20, -1
  %sub.i85 = select i1 %tobool.not.i82, i32 0, i32 %add.i84
  %retval.0.i86 = add i32 %sub.i85, %22
  %call46 = tail call ptr @rb_next(ptr noundef nonnull %node.096) #9
  %inc = add i32 %i.098, 1
  %tobool.not = icmp eq ptr %call46, null
  br i1 %tobool.not, label %if.end44.while.end_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end44.while.end_crit_edge, %entry.while.end_crit_edge
  ret void

bad:                                              ; preds = %ocfs2_validate_resmap_bits.exit, %do.body32, %do.body20, %do.body7, %do.body
  call fastcc void @ocfs2_dump_resv(ptr noundef %resmap)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ocfs2_resv_find_window(ptr noundef %resmap, ptr noundef %resv, i32 noundef %goal, i32 noundef %wanted) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 1
  %0 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_start, align 4
  %r_len.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %resv, i32 0, i32 2
  %2 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %add.i = add i32 %3, -1
  %sub.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  %retval.0.i = add i32 %sub.i, %1
  %4 = ptrtoint ptr %resmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %resmap, align 4
  %cmp = icmp eq ptr %5, null
  %conv = zext i1 %cmp to i32
  tail call fastcc void @trace_ocfs2_resv_find_window_begin(i32 noundef %1, i32 noundef %retval.0.i, i32 noundef %goal, i32 noundef %wanted, i32 noundef %conv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @resv_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body6, label %do.end16, !prof !80

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

do.end16:                                         ; preds = %entry
  %7 = ptrtoint ptr %resmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %resmap, align 4
  %cmp19 = icmp eq ptr %8, null
  br i1 %cmp19, label %if.then21, label %if.end49

if.then21:                                        ; preds = %do.end16
  %m_bitmap_len = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %9 = ptrtoint ptr %m_bitmap_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_bitmap_len, align 4
  %sub = sub i32 %10, %goal
  %m_disk_bitmap.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 1
  %11 = ptrtoint ptr %m_disk_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_disk_bitmap.i, align 4
  %conv.i = zext i32 %goal to i64
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_begin(i64 noundef %conv.i, i32 noundef %sub, i32 noundef %wanted, i32 noundef %10) #9
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %if.then21
  %best_start.0.i = phi i32 [ 0, %if.then21 ], [ %best_start.1.i, %if.end.i.while.cond.i_crit_edge ]
  %best_len.0.i = phi i32 [ 0, %if.then21 ], [ %15, %if.end.i.while.cond.i_crit_edge ]
  %start.0.i = phi i32 [ %goal, %if.then21 ], [ %start.1.i, %if.end.i.while.cond.i_crit_edge ]
  %found.0.i = phi i32 [ 0, %if.then21 ], [ %found.1.i, %if.end.i.while.cond.i_crit_edge ]
  %13 = ptrtoint ptr %m_bitmap_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_bitmap_len, align 4
  %call.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %12, i32 noundef %14, i32 noundef %start.0.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %10)
  %cmp3.not.i = icmp ult i32 %call.i.i, %10
  br i1 %cmp3.not.i, label %if.end.i, label %while.end.i

if.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %start.0.i)
  %cmp5.i = icmp eq i32 %call.i.i, %start.0.i
  %inc.i = add nuw i32 %found.0.i, 1
  %found.1.i = select i1 %cmp5.i, i32 %inc.i, i32 1
  %start.1.i = add nuw i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %found.1.i, i32 %best_len.0.i)
  %cmp11.i = icmp ugt i32 %found.1.i, %best_len.0.i
  %sub.i209 = sub i32 %start.1.i, %found.1.i
  %best_start.1.i = select i1 %cmp11.i, i32 %sub.i209, i32 %best_start.0.i
  %15 = tail call i32 @llvm.umax.i32(i32 %found.1.i, i32 %best_len.0.i) #9
  %cmp15.not.i = icmp ult i32 %found.1.i, %wanted
  br i1 %cmp15.not.i, label %if.end.i.while.cond.i_crit_edge, label %if.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge

if.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_find_free_bits.exit

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.0.i)
  %cmp19.i = icmp eq i32 %best_len.0.i, 0
  br i1 %cmp19.i, label %ocfs2_resmap_find_free_bits.exit.thread, label %while.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge

while.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_find_free_bits.exit

ocfs2_resmap_find_free_bits.exit:                 ; preds = %while.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge, %if.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge
  %best_len.259.i = phi i32 [ %best_len.0.i, %while.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge ], [ %15, %if.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge ]
  %best_start.258.i = phi i32 [ %best_start.0.i, %while.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge ], [ %best_start.1.i, %if.end.i.ocfs2_resmap_find_free_bits.exit_crit_edge ]
  %16 = tail call i32 @llvm.umin.i32(i32 %best_len.259.i, i32 %wanted) #9
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_end(i32 noundef %best_start.258.i, i32 noundef %16) #9
  %17 = or i32 %16, %goal
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %ocfs2_resmap_find_free_bits.exit.do.body35_crit_edge, label %do.end43, !prof !80

ocfs2_resmap_find_free_bits.exit.do.body35_crit_edge: ; preds = %ocfs2_resmap_find_free_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

ocfs2_resmap_find_free_bits.exit.thread:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal)
  %19 = icmp eq i32 %goal, 0
  br i1 %19, label %ocfs2_resmap_find_free_bits.exit.thread.do.body35_crit_edge, label %ocfs2_resmap_find_free_bits.exit.thread.cleanup_crit_edge, !prof !80

ocfs2_resmap_find_free_bits.exit.thread.cleanup_crit_edge: ; preds = %ocfs2_resmap_find_free_bits.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ocfs2_resmap_find_free_bits.exit.thread.do.body35_crit_edge: ; preds = %ocfs2_resmap_find_free_bits.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.body35:                                        ; preds = %ocfs2_resmap_find_free_bits.exit.thread.do.body35_crit_edge, %ocfs2_resmap_find_free_bits.exit.do.body35_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

do.end43:                                         ; preds = %ocfs2_resmap_find_free_bits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp26 = icmp eq i32 %16, 0
  br i1 %cmp26, label %do.end43.cleanup_crit_edge, label %do.end43.cleanup.sink.split_crit_edge

do.end43.cleanup.sink.split_crit_edge:            ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @resv_lock, align 4
  %20 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %if.end12.i, !prof !80

do.body4.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

if.end12.i:                                       ; preds = %if.end49
  %call14.i = tail call ptr @rb_first(ptr noundef %resmap) #9
  %tobool15.not37.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not37.i, label %if.end12.i.if.then53_crit_edge, label %while.body.i.preheader

if.end12.i.if.then53_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

while.body.i.preheader:                           ; preds = %if.end12.i
  %r_start.i335 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call14.i, i32 0, i32 1
  %21 = ptrtoint ptr %r_start.i335 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_start.i335, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %goal)
  %cmp.not.i336 = icmp ugt i32 %22, %goal
  br i1 %cmp.not.i336, label %while.body.i.preheader.if.then53_crit_edge, label %while.body.i.preheader.land.lhs.true.i_crit_edge

while.body.i.preheader.land.lhs.true.i_crit_edge: ; preds = %while.body.i.preheader
  br label %land.lhs.true.i

while.body.i.preheader.if.then53_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

while.body.i:                                     ; preds = %if.end23.i
  %r_start.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call24.i, i32 0, i32 1
  %23 = ptrtoint ptr %r_start.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r_start.i, align 4
  %cmp.not.i = icmp ugt i32 %24, %goal
  br i1 %cmp.not.i, label %while.body.i.if.end85_crit_edge, label %while.body.i.land.lhs.true.i_crit_edge

while.body.i.land.lhs.true.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body.i.if.end85_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true.i:                                  ; preds = %while.body.i.land.lhs.true.i_crit_edge, %while.body.i.preheader.land.lhs.true.i_crit_edge
  %25 = phi i32 [ %24, %while.body.i.land.lhs.true.i_crit_edge ], [ %22, %while.body.i.preheader.land.lhs.true.i_crit_edge ]
  %node.038.i337 = phi ptr [ %call24.i, %while.body.i.land.lhs.true.i_crit_edge ], [ %call14.i, %while.body.i.preheader.land.lhs.true.i_crit_edge ]
  %r_len.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.038.i337, i32 0, i32 2
  %26 = ptrtoint ptr %r_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  %add.i.i = add i32 %27, -1
  %sub.i.i = select i1 %tobool.not.i.i, i32 0, i32 %add.i.i
  %retval.0.i.i = add i32 %sub.i.i, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %goal)
  %cmp17.not.i = icmp ult i32 %retval.0.i.i, %goal
  br i1 %cmp17.not.i, label %if.end23.i, label %land.lhs.true.i.if.end85_crit_edge

land.lhs.true.i.if.end85_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end23.i:                                       ; preds = %land.lhs.true.i
  %call24.i = tail call ptr @rb_next(ptr noundef nonnull %node.038.i337) #9
  %tobool15.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool15.not.i, label %if.end23.i.if.end85_crit_edge, label %while.body.i

if.end23.i.if.end85_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then53:                                        ; preds = %while.body.i.preheader.if.then53_crit_edge, %if.end12.i.if.then53_crit_edge
  %call54 = tail call ptr @rb_first(ptr noundef %resmap) #9
  %r_start56 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call54, i32 0, i32 1
  %28 = ptrtoint ptr %r_start56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r_start56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %goal)
  %cmp57.not = icmp ugt i32 %29, %goal
  br i1 %cmp57.not, label %if.end74, label %do.body60

do.body60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %30 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m, align 8
  %r_len64 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call54, i32 0, i32 2
  %31 = ptrtoint ptr %r_len64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r_len64, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_resv_find_window, i32 noundef 534, ptr noundef nonnull @.str.1, i32 noundef %goal, i32 noundef %29, i32 noundef %32) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  call fastcc void @ocfs2_dump_resv(ptr noundef %resmap)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

if.end74:                                         ; preds = %if.then53
  %sub76 = sub i32 %29, %goal
  %m_disk_bitmap.i212 = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 1
  %33 = ptrtoint ptr %m_disk_bitmap.i212 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m_disk_bitmap.i212, align 4
  %conv.i213 = zext i32 %goal to i64
  %m_bitmap_len.i214 = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %35 = ptrtoint ptr %m_bitmap_len.i214 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m_bitmap_len.i214, align 4
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_begin(i64 noundef %conv.i213, i32 noundef %sub76, i32 noundef %wanted, i32 noundef %36) #9
  br label %while.cond.i221

while.cond.i221:                                  ; preds = %if.end.i230.while.cond.i221_crit_edge, %if.end74
  %best_start.0.i215 = phi i32 [ 0, %if.end74 ], [ %best_start.1.i228, %if.end.i230.while.cond.i221_crit_edge ]
  %best_len.0.i216 = phi i32 [ 0, %if.end74 ], [ %39, %if.end.i230.while.cond.i221_crit_edge ]
  %start.0.i217 = phi i32 [ %goal, %if.end74 ], [ %start.1.i225, %if.end.i230.while.cond.i221_crit_edge ]
  %found.0.i218 = phi i32 [ 0, %if.end74 ], [ %found.1.i224, %if.end.i230.while.cond.i221_crit_edge ]
  %37 = ptrtoint ptr %m_bitmap_len.i214 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_bitmap_len.i214, align 4
  %call.i.i219 = tail call i32 @_find_next_zero_bit_le(ptr noundef %34, i32 noundef %38, i32 noundef %start.0.i217) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i219, i32 %29)
  %cmp3.not.i220 = icmp ult i32 %call.i.i219, %29
  br i1 %cmp3.not.i220, label %if.end.i230, label %while.end.i232

if.end.i230:                                      ; preds = %while.cond.i221
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i219, i32 %start.0.i217)
  %cmp5.i222 = icmp eq i32 %call.i.i219, %start.0.i217
  %inc.i223 = add nuw i32 %found.0.i218, 1
  %found.1.i224 = select i1 %cmp5.i222, i32 %inc.i223, i32 1
  %start.1.i225 = add nuw i32 %call.i.i219, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %found.1.i224, i32 %best_len.0.i216)
  %cmp11.i226 = icmp ugt i32 %found.1.i224, %best_len.0.i216
  %sub.i227 = sub i32 %start.1.i225, %found.1.i224
  %best_start.1.i228 = select i1 %cmp11.i226, i32 %sub.i227, i32 %best_start.0.i215
  %39 = tail call i32 @llvm.umax.i32(i32 %found.1.i224, i32 %best_len.0.i216) #9
  %cmp15.not.i229 = icmp ult i32 %found.1.i224, %wanted
  br i1 %cmp15.not.i229, label %if.end.i230.while.cond.i221_crit_edge, label %if.end.i230.ocfs2_resmap_find_free_bits.exit237_crit_edge

if.end.i230.ocfs2_resmap_find_free_bits.exit237_crit_edge: ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_find_free_bits.exit237

if.end.i230.while.cond.i221_crit_edge:            ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i221

while.end.i232:                                   ; preds = %while.cond.i221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.0.i216)
  %cmp19.i231 = icmp eq i32 %best_len.0.i216, 0
  br i1 %cmp19.i231, label %while.end.i232.if.end85_crit_edge, label %while.end.i232.ocfs2_resmap_find_free_bits.exit237_crit_edge

while.end.i232.ocfs2_resmap_find_free_bits.exit237_crit_edge: ; preds = %while.end.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_find_free_bits.exit237

while.end.i232.if.end85_crit_edge:                ; preds = %while.end.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

ocfs2_resmap_find_free_bits.exit237:              ; preds = %while.end.i232.ocfs2_resmap_find_free_bits.exit237_crit_edge, %if.end.i230.ocfs2_resmap_find_free_bits.exit237_crit_edge
  %best_len.259.i233 = phi i32 [ %best_len.0.i216, %while.end.i232.ocfs2_resmap_find_free_bits.exit237_crit_edge ], [ %39, %if.end.i230.ocfs2_resmap_find_free_bits.exit237_crit_edge ]
  %best_start.258.i234 = phi i32 [ %best_start.0.i215, %while.end.i232.ocfs2_resmap_find_free_bits.exit237_crit_edge ], [ %best_start.1.i228, %if.end.i230.ocfs2_resmap_find_free_bits.exit237_crit_edge ]
  %40 = tail call i32 @llvm.umin.i32(i32 %best_len.259.i233, i32 %wanted) #9
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_end(i32 noundef %best_start.258.i234, i32 noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool78.not = icmp eq i32 %40, 0
  br i1 %tobool78.not, label %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge, label %if.then79

ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge: ; preds = %ocfs2_resmap_find_free_bits.exit237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then79:                                        ; preds = %ocfs2_resmap_find_free_bits.exit237
  call void @__sanitizer_cov_trace_cmp4(i32 %best_len.259.i233, i32 %wanted)
  %cmp80.not = icmp ult i32 %best_len.259.i233, %wanted
  br i1 %cmp80.not, label %if.then79.if.end85_crit_edge, label %if.then79.cleanup.sink.split_crit_edge

if.then79.cleanup.sink.split_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge, %while.end.i232.if.end85_crit_edge, %if.end23.i.if.end85_crit_edge, %land.lhs.true.i.if.end85_crit_edge, %while.body.i.if.end85_crit_edge
  %cstart.2 = phi i32 [ %best_start.258.i234, %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge ], [ %best_start.258.i234, %if.then79.if.end85_crit_edge ], [ -1, %while.end.i232.if.end85_crit_edge ], [ -1, %while.body.i.if.end85_crit_edge ], [ -1, %land.lhs.true.i.if.end85_crit_edge ], [ -1, %if.end23.i.if.end85_crit_edge ]
  %best_start.1 = phi i32 [ 0, %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge ], [ %best_start.258.i234, %if.then79.if.end85_crit_edge ], [ 0, %while.end.i232.if.end85_crit_edge ], [ 0, %while.body.i.if.end85_crit_edge ], [ 0, %land.lhs.true.i.if.end85_crit_edge ], [ 0, %if.end23.i.if.end85_crit_edge ]
  %best_len.1 = phi i32 [ 0, %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge ], [ %40, %if.then79.if.end85_crit_edge ], [ 0, %while.end.i232.if.end85_crit_edge ], [ 0, %while.body.i.if.end85_crit_edge ], [ 0, %land.lhs.true.i.if.end85_crit_edge ], [ 0, %if.end23.i.if.end85_crit_edge ]
  %prev_resv.0 = phi ptr [ %call54, %ocfs2_resmap_find_free_bits.exit237.if.end85_crit_edge ], [ %call54, %if.then79.if.end85_crit_edge ], [ %call54, %while.end.i232.if.end85_crit_edge ], [ %node.038.i337, %while.body.i.if.end85_crit_edge ], [ %node.038.i337, %land.lhs.true.i.if.end85_crit_edge ], [ %node.038.i337, %if.end23.i.if.end85_crit_edge ]
  %r_start86 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %prev_resv.0, i32 0, i32 1
  %41 = ptrtoint ptr %r_start86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %r_start86, align 4
  %r_len.i238 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %prev_resv.0, i32 0, i32 2
  %43 = ptrtoint ptr %r_len.i238 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r_len.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i239 = icmp eq i32 %44, 0
  %add.i241 = add i32 %44, -1
  %sub.i242 = select i1 %tobool.not.i239, i32 0, i32 %add.i241
  %retval.0.i243 = add i32 %sub.i242, %42
  tail call fastcc void @trace_ocfs2_resv_find_window_prev(i32 noundef %42, i32 noundef %retval.0.i243)
  %m_bitmap_len101 = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %m_disk_bitmap.i262 = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %next_resv128.while.cond_crit_edge, %if.end85
  %cstart.3 = phi i32 [ %cstart.2, %if.end85 ], [ %cstart.5, %next_resv128.while.cond_crit_edge ]
  %best_start.2 = phi i32 [ %best_start.1, %if.end85 ], [ %best_start.3, %next_resv128.while.cond_crit_edge ]
  %best_len.2 = phi i32 [ %best_len.1, %if.end85 ], [ %best_len.3, %next_resv128.while.cond_crit_edge ]
  %prev_resv.1 = phi ptr [ %prev_resv.0, %if.end85 ], [ %call88, %next_resv128.while.cond_crit_edge ]
  %call88 = tail call ptr @rb_next(ptr noundef %prev_resv.1) #9
  %tobool89.not = icmp eq ptr %call88, null
  %r_len.i250 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %prev_resv.1, i32 0, i32 2
  %45 = ptrtoint ptr %r_len.i250 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %r_len.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i251 = icmp eq i32 %46, 0
  %r_start2.i252 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %prev_resv.1, i32 0, i32 1
  %47 = ptrtoint ptr %r_start2.i252 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %r_start2.i252, align 4
  %add.i253 = add i32 %46, -1
  %sub.i254 = select i1 %tobool.not.i251, i32 0, i32 %add.i253
  br i1 %tobool89.not, label %cond.end.thread, label %cond.true109

cond.end.thread:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %retval.0.i255 = add i32 %48, 1
  %add100 = add i32 %retval.0.i255, %sub.i254
  %49 = ptrtoint ptr %m_bitmap_len101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m_bitmap_len101, align 4
  %sub102 = sub i32 %50, %add100
  br label %cond.end112

cond.true109:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %retval.0.i249 = add i32 %sub.i254, %48
  %add = add i32 %retval.0.i249, 1
  %r_start95 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call88, i32 0, i32 1
  %51 = ptrtoint ptr %r_start95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %r_start95, align 4
  %53 = xor i32 %retval.0.i249, -1
  %add98 = add i32 %52, %53
  %r_len.i256 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %call88, i32 0, i32 2
  %54 = ptrtoint ptr %r_len.i256 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %r_len.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i257 = icmp eq i32 %55, 0
  %add.i259 = add i32 %55, -1
  %sub.i260 = select i1 %tobool.not.i257, i32 0, i32 %add.i259
  %retval.0.i261 = add i32 %sub.i260, %52
  br label %cond.end112

cond.end112:                                      ; preds = %cond.true109, %cond.end.thread
  %cond317 = phi i32 [ %52, %cond.true109 ], [ -1, %cond.end.thread ]
  %gap_len.0308315 = phi i32 [ %add98, %cond.true109 ], [ %sub102, %cond.end.thread ]
  %gap_start.0309314 = phi i32 [ %add, %cond.true109 ], [ %add100, %cond.end.thread ]
  %cond113 = phi i32 [ %retval.0.i261, %cond.true109 ], [ -1, %cond.end.thread ]
  tail call fastcc void @trace_ocfs2_resv_find_window_next(i32 noundef %cond317, i32 noundef %cond113)
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_len.0308315, i32 %best_len.2)
  %cmp114.not = icmp ugt i32 %gap_len.0308315, %best_len.2
  br i1 %cmp114.not, label %if.end117, label %cond.end112.next_resv128_crit_edge

cond.end112.next_resv128_crit_edge:               ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_resv128

if.end117:                                        ; preds = %cond.end112
  %56 = ptrtoint ptr %m_disk_bitmap.i262 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %m_disk_bitmap.i262, align 4
  %conv.i263 = zext i32 %gap_start.0309314 to i64
  %58 = ptrtoint ptr %m_bitmap_len101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m_bitmap_len101, align 4
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_begin(i64 noundef %conv.i263, i32 noundef %gap_len.0308315, i32 noundef %wanted, i32 noundef %59) #9
  %add.i265 = add i32 %gap_start.0309314, %gap_len.0308315
  br label %while.cond.i272

while.cond.i272:                                  ; preds = %if.end.i281.while.cond.i272_crit_edge, %if.end117
  %best_start.0.i266 = phi i32 [ 0, %if.end117 ], [ %best_start.1.i279, %if.end.i281.while.cond.i272_crit_edge ]
  %best_len.0.i267 = phi i32 [ 0, %if.end117 ], [ %62, %if.end.i281.while.cond.i272_crit_edge ]
  %start.0.i268 = phi i32 [ %gap_start.0309314, %if.end117 ], [ %start.1.i276, %if.end.i281.while.cond.i272_crit_edge ]
  %found.0.i269 = phi i32 [ 0, %if.end117 ], [ %found.1.i275, %if.end.i281.while.cond.i272_crit_edge ]
  %60 = ptrtoint ptr %m_bitmap_len101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_bitmap_len101, align 4
  %call.i.i270 = tail call i32 @_find_next_zero_bit_le(ptr noundef %57, i32 noundef %61, i32 noundef %start.0.i268) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i270, i32 %add.i265)
  %cmp3.not.i271 = icmp ult i32 %call.i.i270, %add.i265
  br i1 %cmp3.not.i271, label %if.end.i281, label %while.end.i283

if.end.i281:                                      ; preds = %while.cond.i272
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i270, i32 %start.0.i268)
  %cmp5.i273 = icmp eq i32 %call.i.i270, %start.0.i268
  %inc.i274 = add nuw i32 %found.0.i269, 1
  %found.1.i275 = select i1 %cmp5.i273, i32 %inc.i274, i32 1
  %start.1.i276 = add nuw i32 %call.i.i270, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %found.1.i275, i32 %best_len.0.i267)
  %cmp11.i277 = icmp ugt i32 %found.1.i275, %best_len.0.i267
  %sub.i278 = sub i32 %start.1.i276, %found.1.i275
  %best_start.1.i279 = select i1 %cmp11.i277, i32 %sub.i278, i32 %best_start.0.i266
  %62 = tail call i32 @llvm.umax.i32(i32 %found.1.i275, i32 %best_len.0.i267) #9
  %cmp15.not.i280 = icmp ult i32 %found.1.i275, %wanted
  br i1 %cmp15.not.i280, label %if.end.i281.while.cond.i272_crit_edge, label %if.end.i281.if.end22.i286_crit_edge

if.end.i281.if.end22.i286_crit_edge:              ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i286

if.end.i281.while.cond.i272_crit_edge:            ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i272

while.end.i283:                                   ; preds = %while.cond.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.0.i267)
  %cmp19.i282 = icmp eq i32 %best_len.0.i267, 0
  br i1 %cmp19.i282, label %while.end.i283.ocfs2_resmap_find_free_bits.exit288_crit_edge, label %while.end.i283.if.end22.i286_crit_edge

while.end.i283.if.end22.i286_crit_edge:           ; preds = %while.end.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i286

while.end.i283.ocfs2_resmap_find_free_bits.exit288_crit_edge: ; preds = %while.end.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resmap_find_free_bits.exit288

if.end22.i286:                                    ; preds = %while.end.i283.if.end22.i286_crit_edge, %if.end.i281.if.end22.i286_crit_edge
  %best_len.259.i284 = phi i32 [ %best_len.0.i267, %while.end.i283.if.end22.i286_crit_edge ], [ %62, %if.end.i281.if.end22.i286_crit_edge ]
  %best_start.258.i285 = phi i32 [ %best_start.0.i266, %while.end.i283.if.end22.i286_crit_edge ], [ %best_start.1.i279, %if.end.i281.if.end22.i286_crit_edge ]
  %63 = tail call i32 @llvm.umin.i32(i32 %best_len.259.i284, i32 %wanted) #9
  tail call fastcc void @trace_ocfs2_resmap_find_free_bits_end(i32 noundef %best_start.258.i285, i32 noundef %63) #9
  br label %ocfs2_resmap_find_free_bits.exit288

ocfs2_resmap_find_free_bits.exit288:              ; preds = %if.end22.i286, %while.end.i283.ocfs2_resmap_find_free_bits.exit288_crit_edge
  %cstart.4 = phi i32 [ %best_start.258.i285, %if.end22.i286 ], [ %cstart.3, %while.end.i283.ocfs2_resmap_find_free_bits.exit288_crit_edge ]
  %retval.0.i287 = phi i32 [ %63, %if.end22.i286 ], [ 0, %while.end.i283.ocfs2_resmap_find_free_bits.exit288_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i287, i32 %wanted)
  %cmp119 = icmp eq i32 %retval.0.i287, %wanted
  br i1 %cmp119, label %ocfs2_resmap_find_free_bits.exit288.out_insert_crit_edge, label %if.else122

ocfs2_resmap_find_free_bits.exit288.out_insert_crit_edge: ; preds = %ocfs2_resmap_find_free_bits.exit288
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_insert

if.else122:                                       ; preds = %ocfs2_resmap_find_free_bits.exit288
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i287, i32 %best_len.2)
  %cmp123 = icmp ugt i32 %retval.0.i287, %best_len.2
  %spec.select323 = select i1 %cmp123, i32 %cstart.4, i32 %best_start.2
  %64 = tail call i32 @llvm.umax.i32(i32 %retval.0.i287, i32 %best_len.2)
  br label %next_resv128

next_resv128:                                     ; preds = %if.else122, %cond.end112.next_resv128_crit_edge
  %cstart.5 = phi i32 [ %cstart.3, %cond.end112.next_resv128_crit_edge ], [ %cstart.4, %if.else122 ]
  %best_start.3 = phi i32 [ %best_start.2, %cond.end112.next_resv128_crit_edge ], [ %spec.select323, %if.else122 ]
  %best_len.3 = phi i32 [ %best_len.2, %cond.end112.next_resv128_crit_edge ], [ %64, %if.else122 ]
  br i1 %tobool89.not, label %next_resv128.out_insert_crit_edge, label %next_resv128.while.cond_crit_edge

next_resv128.while.cond_crit_edge:                ; preds = %next_resv128
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

next_resv128.out_insert_crit_edge:                ; preds = %next_resv128
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_insert

out_insert:                                       ; preds = %next_resv128.out_insert_crit_edge, %ocfs2_resmap_find_free_bits.exit288.out_insert_crit_edge
  %best_start.4 = phi i32 [ %best_start.3, %next_resv128.out_insert_crit_edge ], [ %cstart.4, %ocfs2_resmap_find_free_bits.exit288.out_insert_crit_edge ]
  %best_len.4 = phi i32 [ %best_len.3, %next_resv128.out_insert_crit_edge ], [ %wanted, %ocfs2_resmap_find_free_bits.exit288.out_insert_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_len.4)
  %tobool135.not = icmp eq i32 %best_len.4, 0
  br i1 %tobool135.not, label %out_insert.cleanup_crit_edge, label %out_insert.cleanup.sink.split_crit_edge

out_insert.cleanup.sink.split_crit_edge:          ; preds = %out_insert
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

out_insert.cleanup_crit_edge:                     ; preds = %out_insert
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %out_insert.cleanup.sink.split_crit_edge, %if.then79.cleanup.sink.split_crit_edge, %do.end43.cleanup.sink.split_crit_edge
  %best_start.4321.sink = phi i32 [ %best_start.258.i, %do.end43.cleanup.sink.split_crit_edge ], [ %best_start.4, %out_insert.cleanup.sink.split_crit_edge ], [ %best_start.258.i234, %if.then79.cleanup.sink.split_crit_edge ]
  %best_len.4322.sink = phi i32 [ %16, %do.end43.cleanup.sink.split_crit_edge ], [ %best_len.4, %out_insert.cleanup.sink.split_crit_edge ], [ %40, %if.then79.cleanup.sink.split_crit_edge ]
  %65 = ptrtoint ptr %r_start to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %best_start.4321.sink, ptr %r_start, align 4
  %66 = ptrtoint ptr %r_len.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %best_len.4322.sink, ptr %r_len.i, align 4
  tail call fastcc void @ocfs2_resv_insert(ptr noundef %resmap, ptr noundef %resv)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out_insert.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %ocfs2_resmap_find_free_bits.exit.thread.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resv_find_window_begin(i32 noundef %r_start, i32 noundef %r_end, i32 noundef %goal, i32 noundef %wanted, i32 noundef %empty_root) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resv_find_window_begin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %call42 = tail call i32 @__traceiter_ocfs2_resv_find_window_begin(ptr noundef null, i32 noundef %r_start, i32 noundef %r_end, i32 noundef %goal, i32 noundef %wanted, i32 noundef %empty_root) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resv_find_window_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resv_find_window_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1882, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
define internal fastcc void @ocfs2_resv_insert(ptr noundef %resmap, ptr noundef %new) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @resv_lock, align 4
  %0 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !80

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.end9:                                          ; preds = %entry
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 1
  %1 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %r_start, align 4
  %r_len = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 2
  %3 = ptrtoint ptr %r_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_len, align 4
  tail call fastcc void @trace_ocfs2_resv_insert(i32 noundef %2, i32 noundef %4)
  %5 = ptrtoint ptr %resmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resmap, align 4
  %tobool10.not84 = icmp eq ptr %6, null
  br i1 %tobool10.not84, label %do.end9.while.end_crit_edge, label %while.body.lr.ph

do.end9.while.end_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end9
  %7 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r_start, align 4
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %9 = phi ptr [ %6, %while.body.lr.ph ], [ %18, %if.end53.while.body_crit_edge ]
  %r_start13 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %r_start13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_start13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp = icmp ult i32 %8, %11
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %r_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %add.i = add i32 %13, -1
  %sub.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  %retval.0.i = add i32 %sub.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %11)
  %cmp18.not = icmp ult i32 %retval.0.i, %11
  br i1 %cmp18.not, label %if.then14.if.end53_crit_edge, label %do.body26, !prof !78

if.then14.if.end53_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.body26:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

if.else:                                          ; preds = %while.body
  %r_len.i74 = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %r_len.i74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r_len.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i75 = icmp eq i32 %15, 0
  %add.i77 = add i32 %15, -1
  %sub.i78 = select i1 %tobool.not.i75, i32 0, i32 %add.i77
  %retval.0.i79 = add i32 %sub.i78, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i79)
  %cmp37 = icmp ugt i32 %8, %retval.0.i79
  br i1 %cmp37, label %if.then38, label %do.body40

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %if.end53

do.body40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_resv_insert, i32 noundef 330, ptr noundef nonnull @.str.5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 331, 0\0A.popsection", ""() #9, !srcloc !109
  unreachable

if.end53:                                         ; preds = %if.then38, %if.then14.if.end53_crit_edge
  %p.1 = phi ptr [ %rb_left, %if.then14.if.end53_crit_edge ], [ %rb_right, %if.then38 ]
  %17 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.1, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %while.cond.while.end_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %9 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.end9.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %resmap, %do.end9.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %do.end9.while.end_crit_edge ]
  %19 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %parent.0.lcssa, ptr %new, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_left.i, align 4
  %22 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %new, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %new, ptr noundef %resmap) #9
  %r_flags = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 6
  %23 = ptrtoint ptr %r_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r_flags, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %r_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @resv_lock, align 4
  %25 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !80

do.body4.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/reservations.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #9, !srcloc !95
  unreachable

do.end7.i:                                        ; preds = %while.end
  %r_lru.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 5
  %26 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %r_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %r_lru.i
  br i1 %cmp.i.not.i, label %do.end7.i.if.end12.i_crit_edge, label %if.then10.i

do.end7.i.if.end12.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %do.end7.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_lru.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then10.i.list_del_init.exit.i_crit_edge

if.then10.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then10.i.list_del_init.exit.i_crit_edge
  %34 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %r_lru.i, ptr %r_lru.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %r_lru.i, ptr %prev.i3.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %list_del_init.exit.i, %do.end7.i.if.end12.i_crit_edge
  %m_lru.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %r_lru.i, ptr noundef %37, ptr noundef %m_lru.i) #9
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %if.end12.i.ocfs2_resv_mark_lru.exit_crit_edge

if.end12.i.ocfs2_resv_mark_lru.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_resv_mark_lru.exit

if.end.i.i17.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %r_lru.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %r_lru.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %m_lru.i, ptr %r_lru.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %new, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %r_lru.i, ptr %37, align 4
  br label %ocfs2_resv_mark_lru.exit

ocfs2_resv_mark_lru.exit:                         ; preds = %if.end.i.i17.i, %if.end12.i.ocfs2_resv_mark_lru.exit_crit_edge
  tail call fastcc void @ocfs2_check_resmap(ptr noundef %resmap)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_dump_resv(ptr noundef %resmap) unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m3 = alloca i64, align 8
  %_m13 = alloca i64, align 8
  %_m25 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_osb = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 2
  %0 = ptrtoint ptr %m_osb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_osb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2305843009213693952, ptr %_m, align 8
  %dev_str = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 61
  %m_bitmap_len = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 3
  %3 = ptrtoint ptr %m_bitmap_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_bitmap_len, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dump_resv, i32 noundef 81, ptr noundef nonnull @.str.6, ptr noundef %dev_str, i32 noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  %call = call ptr @rb_first(ptr noundef %resmap) #9
  %tobool1.not69 = icmp eq ptr %call, null
  br i1 %tobool1.not69, label %entry.do.body12_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %node.071 = phi ptr [ %call11, %while.body.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %i.070 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m3) #9
  %5 = ptrtoint ptr %_m3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2305843009213693952, ptr %_m3, align 8
  %r_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.071, i32 0, i32 1
  %6 = ptrtoint ptr %r_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_start, align 4
  %r_len.i = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.071, i32 0, i32 2
  %8 = ptrtoint ptr %r_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %add.i = add i32 %9, -1
  %sub.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  %retval.0.i = add i32 %sub.i, %7
  %r_last_start = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.071, i32 0, i32 4
  %10 = ptrtoint ptr %r_last_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_last_start, align 4
  %r_last_len = getelementptr inbounds %struct.ocfs2_alloc_reservation, ptr %node.071, i32 0, i32 3
  %12 = ptrtoint ptr %r_last_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_last_len, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m3, ptr noundef nonnull @__func__.ocfs2_dump_resv, i32 noundef 90, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %retval.0.i, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m3) #9
  %call11 = call ptr @rb_next(ptr noundef nonnull %node.071) #9
  %inc = add i32 %i.070, 1
  %tobool1.not = icmp eq ptr %call11, null
  br i1 %tobool1.not, label %while.body.do.body12_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.do.body12_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.body12:                                        ; preds = %while.body.do.body12_crit_edge, %entry.do.body12_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.body12_crit_edge ], [ %inc, %while.body.do.body12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m13) #9
  %14 = ptrtoint ptr %_m13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2305843009213693952, ptr %_m13, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m13, ptr noundef nonnull @__func__.ocfs2_dump_resv, i32 noundef 96, ptr noundef nonnull @.str.8, i32 noundef %i.0.lcssa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m13) #9
  %m_lru = getelementptr inbounds %struct.ocfs2_reservation_map, ptr %resmap, i32 0, i32 4
  %15 = ptrtoint ptr %m_lru to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn72 = load ptr, ptr %m_lru, align 4
  %cmp.not73 = icmp eq ptr %.pn72, %m_lru
  br i1 %cmp.not73, label %do.body12.for.end_crit_edge, label %do.body12.do.body24_crit_edge

do.body12.do.body24_crit_edge:                    ; preds = %do.body12
  br label %do.body24

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %do.body12.do.body24_crit_edge
  %.pn75 = phi ptr [ %.pn, %do.body24.do.body24_crit_edge ], [ %.pn72, %do.body12.do.body24_crit_edge ]
  %i.174 = phi i32 [ %inc37, %do.body24.do.body24_crit_edge ], [ 0, %do.body12.do.body24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m25) #9
  %16 = ptrtoint ptr %_m25 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2305843009213693952, ptr %_m25, align 8
  %r_start29 = getelementptr i8, ptr %.pn75, i32 -16
  %17 = ptrtoint ptr %r_start29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_start29, align 4
  %r_len.i63 = getelementptr i8, ptr %.pn75, i32 -12
  %19 = ptrtoint ptr %r_len.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_len.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i64 = icmp eq i32 %20, 0
  %add.i66 = add i32 %20, -1
  %sub.i67 = select i1 %tobool.not.i64, i32 0, i32 %add.i66
  %retval.0.i68 = add i32 %sub.i67, %18
  %r_last_start32 = getelementptr i8, ptr %.pn75, i32 -4
  %21 = ptrtoint ptr %r_last_start32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_last_start32, align 4
  %r_last_len33 = getelementptr i8, ptr %.pn75, i32 -8
  %23 = ptrtoint ptr %r_last_len33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r_last_len33, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m25, ptr noundef nonnull @__func__.ocfs2_dump_resv, i32 noundef 103, ptr noundef nonnull @.str.9, i32 noundef %i.174, i32 noundef %18, i32 noundef %retval.0.i68, i32 noundef %20, i32 noundef %22, i32 noundef %24) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m25) #9
  %inc37 = add i32 %i.174, 1
  %25 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp.not = icmp eq ptr %.pn, %m_lru
  br i1 %cmp.not, label %do.body24.for.end_crit_edge, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.body24.for.end_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.body24.for.end_crit_edge, %do.body12.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resv_find_window_prev(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_prev, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resv_find_window_prev, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %call42 = tail call i32 @__traceiter_ocfs2_resv_find_window_prev(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_prev, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_prev, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resv_find_window_prev.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resv_find_window_prev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1884, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resv_find_window_next(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_next, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resv_find_window_next, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %call42 = tail call i32 @__traceiter_ocfs2_resv_find_window_next(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_next, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_find_window_next, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resv_find_window_next.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resv_find_window_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1886, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resv_find_window_begin(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resmap_find_free_bits_begin(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resmap_find_free_bits_begin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %call42 = tail call i32 @__traceiter_ocfs2_resmap_find_free_bits_begin(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resmap_find_free_bits_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resmap_find_free_bits_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1858, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
define internal fastcc void @trace_ocfs2_resmap_find_free_bits_end(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resmap_find_free_bits_end, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %call42 = tail call i32 @__traceiter_ocfs2_resmap_find_free_bits_end(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resmap_find_free_bits_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resmap_find_free_bits_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resmap_find_free_bits_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1860, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
declare dso_local i32 @__traceiter_ocfs2_resmap_find_free_bits_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resmap_find_free_bits_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_resv_insert(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_insert, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_resv_insert, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %call42 = tail call i32 @__traceiter_ocfs2_resv_insert(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_resv_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_resv_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_resv_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1856, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resv_insert(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resv_find_window_prev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resv_find_window_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_cannibalize_resv_begin(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_cannibalize_resv_begin, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %call42 = tail call i32 @__traceiter_ocfs2_cannibalize_resv_begin(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_cannibalize_resv_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_cannibalize_resv_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1888, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
define internal fastcc void @trace_ocfs2_cannibalize_resv_end(i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %last_start, i32 noundef %last_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_cannibalize_resv_end, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !78

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %call42 = tail call i32 @__traceiter_ocfs2_cannibalize_resv_end(ptr noundef null, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %last_start, i32 noundef %last_len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !78

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_cannibalize_resv_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_cannibalize_resv_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_cannibalize_resv_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1910, ptr noundef nonnull @.str.3) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #9
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
declare dso_local i32 @__traceiter_ocfs2_cannibalize_resv_begin(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_cannibalize_resv_end(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resmap_resv_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resmap_claimed_bits_begin(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_resmap_claimed_bits_end(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/reservations.c", i32 32, i32 8}
!2 = !{ptr @resv_lock, !1, !"resv_lock", i1 false, i1 false}
!3 = !{ptr @__func__.__ocfs2_resv_find_window, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/reservations.c", i32 533, i32 4}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1862, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1858, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1860, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = !{ptr @__func__.ocfs2_resv_insert, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/reservations.c", i32 330, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1856, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{ptr @__func__.ocfs2_dump_resv, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/reservations.c", i32 80, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/reservations.c", i32 87, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/reservations.c", i32 96, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/reservations.c", i32 100, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1884, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1886, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1888, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1890, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1912, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1914, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1946, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @__func__.ocfs2_check_resmap, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/reservations.c", i32 143, i32 4}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/reservations.c", i32 149, i32 4}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/reservations.c", i32 155, i32 4}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/reservations.c", i32 161, i32 4}
!65 = !{ptr @__func__.ocfs2_validate_resmap_bits, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/reservations.c", i32 120, i32 4}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2161110865, i64 2161111353, i64 2161110902, i64 2161110958, i64 2161110992, i64 2161111016, i64 2161111057, i64 2161111078, i64 2161111106, i64 2161111140}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2161114622, i64 2161115110, i64 2161114659, i64 2161114715, i64 2161114749, i64 2161114773, i64 2161114814, i64 2161114835, i64 2161114863, i64 2161114897}
!82 = !{i64 2161116476, i64 2161116964, i64 2161116513, i64 2161116569, i64 2161116603, i64 2161116627, i64 2161116668, i64 2161116689, i64 2161116717, i64 2161116751}
!83 = !{i64 2161152200, i64 2161152688, i64 2161152237, i64 2161152293, i64 2161152327, i64 2161152351, i64 2161152392, i64 2161152413, i64 2161152441, i64 2161152475}
!84 = !{i64 2161153832, i64 2161154320, i64 2161153869, i64 2161153925, i64 2161153959, i64 2161153983, i64 2161154024, i64 2161154045, i64 2161154073, i64 2161154107}
!85 = !{i64 2148495198, i64 2148495203, i64 2148495216, i64 2148495260, i64 2148495294, i64 2148495315}
!86 = !{i64 2158834028}
!87 = !{i64 2158834255}
!88 = !{i64 2149491605}
!89 = !{i64 2149492641}
!90 = !{i64 2161158700, i64 2161159188, i64 2161158737, i64 2161158793, i64 2161158827, i64 2161158851, i64 2161158892, i64 2161158913, i64 2161158941, i64 2161158975}
!91 = !{i64 2161160312, i64 2161160800, i64 2161160349, i64 2161160405, i64 2161160439, i64 2161160463, i64 2161160504, i64 2161160525, i64 2161160553, i64 2161160587}
!92 = !{i64 2161161938, i64 2161162426, i64 2161161975, i64 2161162031, i64 2161162065, i64 2161162089, i64 2161162130, i64 2161162151, i64 2161162179, i64 2161162213}
!93 = !{i64 2161163560, i64 2161164048, i64 2161163597, i64 2161163653, i64 2161163687, i64 2161163711, i64 2161163752, i64 2161163773, i64 2161163801, i64 2161163835}
!94 = !{i64 2161155478, i64 2161155966, i64 2161155515, i64 2161155571, i64 2161155605, i64 2161155629, i64 2161155670, i64 2161155691, i64 2161155719, i64 2161155753}
!95 = !{i64 2161112758, i64 2161113246, i64 2161112795, i64 2161112851, i64 2161112885, i64 2161112909, i64 2161112950, i64 2161112971, i64 2161112999, i64 2161113033}
!96 = !{i64 2158853790}
!97 = !{i64 2158854145}
!98 = !{i64 2158873472}
!99 = !{i64 2158873767}
!100 = !{i64 2161109195, i64 2161109683, i64 2161109232, i64 2161109288, i64 2161109322, i64 2161109346, i64 2161109387, i64 2161109408, i64 2161109436, i64 2161109470}
!101 = !{i64 2161136736, i64 2161137224, i64 2161136773, i64 2161136829, i64 2161136863, i64 2161136887, i64 2161136928, i64 2161136949, i64 2161136977, i64 2161137011}
!102 = !{i64 2161141359, i64 2161141847, i64 2161141396, i64 2161141452, i64 2161141486, i64 2161141510, i64 2161141551, i64 2161141572, i64 2161141600, i64 2161141634}
!103 = !{i64 2161126389, i64 2161130938, i64 2161126426, i64 2161126482, i64 2161126516, i64 2161126540, i64 2161126581, i64 2161126602, i64 2161126630, i64 2161126664}
!104 = !{i64 2161144545, i64 2161145033, i64 2161144582, i64 2161144638, i64 2161144672, i64 2161144696, i64 2161144737, i64 2161144758, i64 2161144786, i64 2161144820}
!105 = !{i64 2158735791}
!106 = !{i64 2158736090}
!107 = !{i64 2161119719, i64 2161120207, i64 2161119756, i64 2161119812, i64 2161119846, i64 2161119870, i64 2161119911, i64 2161119932, i64 2161119960, i64 2161119994}
!108 = !{i64 2161122746, i64 2161123234, i64 2161122783, i64 2161122839, i64 2161122873, i64 2161122897, i64 2161122938, i64 2161122959, i64 2161122987, i64 2161123021}
!109 = !{i64 2161124506, i64 2161124994, i64 2161124543, i64 2161124599, i64 2161124633, i64 2161124657, i64 2161124698, i64 2161124719, i64 2161124747, i64 2161124781}
!110 = !{i64 2158753820}
!111 = !{i64 2158754057}
!112 = !{i64 2158775218}
!113 = !{i64 2158775455}
!114 = !{i64 2158694524}
!115 = !{i64 2158694807}
!116 = !{i64 2158716918}
!117 = !{i64 2158717163}
!118 = !{i64 2158676232}
!119 = !{i64 2158676449}
!120 = !{i64 2158793405}
!121 = !{i64 2158793668}
!122 = !{i64 2158812253}
!123 = !{i64 2158812542}
