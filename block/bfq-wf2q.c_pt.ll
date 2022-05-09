; ModuleID = '/llk/IR_all_yes/block/bfq-wf2q.c_pt.bc'
source_filename = "../block/bfq-wf2q.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfq_data = type { ptr, %struct.list_head, ptr, %struct.rb_root_cached, i32, [3 x i32], i32, i32, i32, i8, i32, i32, i32, i32, %struct.hrtimer, ptr, i64, i64, i64, ptr, ptr, i64, i8, ptr, i8, i64, i64, i64, i64, i32, i32, i32, i64, i32, i64, i32, i32, %struct.list_head, %struct.list_head, [2 x i64], i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, i32, i8, %struct.hlist_head, i8, i32, i32, i32, i32, i32, i32, i64, %struct.bfq_queue, %struct.spinlock, ptr, ptr, [2 x [2 x i32]], i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.bfq_queue = type { i32, i32, ptr, i16, i16, i16, i16, i64, i32, i32, ptr, %struct.rb_node, ptr, %struct.rb_root, ptr, [2 x i32], i32, %struct.list_head, %struct.bfq_entity, ptr, i32, i32, i32, i32, %struct.list_head, %struct.bfq_ttime, i64, i64, i32, %struct.hlist_node, i64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, %struct.hlist_node, %struct.hlist_head }
%struct.bfq_entity = type { %struct.rb_node, i8, i64, i64, ptr, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, ptr }
%struct.bfq_ttime = type { i64, i64, i32, i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bfq_group = type { %struct.blkg_policy_data, [128 x i8], i32, %struct.bfq_entity, %struct.bfq_sched_data, ptr, [2 x [8 x ptr]], ptr, ptr, i32, %struct.rb_root, %struct.bfqg_stats }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.bfq_sched_data = type { ptr, ptr, [3 x %struct.bfq_service_tree], i32 }
%struct.bfq_service_tree = type { %struct.rb_root, %struct.rb_root, ptr, ptr, i64, i32 }
%struct.bfqg_stats = type { %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, i64, i64, i64, i16 }
%struct.blkg_rwstat = type { [5 x %struct.percpu_counter], [5 x %struct.atomic64_t] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.bfq_stat = type { %struct.percpu_counter, %struct.atomic64_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.blk_trace = type { i32, ptr, ptr, ptr, i16, i64, i64, i32, i32, ptr, %struct.list_head, %struct.atomic_t }

@__bfq_entity_update_weight_prio._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 749, ptr null, ptr null }, align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012update_weight_prio: new_weight %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__bfq_entity_update_weight_prio\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"block/bfq-wf2q.c\00", [47 x i8] zeroinitializer }, align 32
@__bfq_entity_update_weight_prio._entry_ptr = internal global ptr @__bfq_entity_update_weight_prio._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bfq_bfqq_served.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s bfqq_served %d secs\00", [41 x i8] zeroinitializer }, align 32
@bfq_timeout = external dso_local local_unnamed_addr constant i32, align 4
@bfq_del_bfqq_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s del from busy\00", [47 x i8] zeroinitializer }, align 32
@bfq_add_bfqq_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s add to busy\00", [17 x i8] zeroinitializer }, align 32
@blk_trace_note_message_enabled.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/blktrace_api.h\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bfq%d%c\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bfqSHARED-%c\00", [19 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bfq_calc_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s calc_finish: serv %lu, w %d\00", [33 x i8] zeroinitializer }, align 32
@bfq_calc_finish.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s calc_finish: start %llu, finish %llu, delta %llu\00", [44 x i8] zeroinitializer }, align 32
@bfq_get_entity.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s get_entity: %p %d\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 748, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 841, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1673, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [32 x i8] c"../include/linux/blktrace_api.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 70, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1091, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"../block/bfq-iosched.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1093, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 695, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 723, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 293, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 296, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [20 x i8] c"../block/bfq-wf2q.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 531, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__bfq_entity_update_weight_prio._entry, ptr @__bfq_entity_update_weight_prio._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfq_tot_busy_queues(ptr nocapture noundef readonly %bfqd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %busy_queues = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 5
  %0 = ptrtoint ptr %busy_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %busy_queues, align 4
  %arrayidx2 = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, %1
  %arrayidx4 = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %add, %5
  ret i32 %add5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfq_bfqq_to_bfqg(ptr nocapture noundef readonly %bfqq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 13
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bfqd = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 2
  %2 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfqd, align 8
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_group, align 4
  %entity1 = getelementptr inbounds %struct.bfq_group, ptr %5, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %group_entity.0 = phi ptr [ %1, %entry.if.end_crit_edge ], [ %entity1, %if.then ]
  %add.ptr = getelementptr i8, ptr %group_entity.0, i32 -144
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfq_entity_to_bfqq(ptr noundef readonly %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %my_sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %my_sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_sched_data, align 8
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %entity, i32 -88
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfq_entity_of(ptr noundef readnone %node) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %node
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @bfq_ioprio_to_weight(i32 noundef %ioprio) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %ioprio to i16
  %1 = sub i16 8, %0
  %conv = mul i16 %1, 10
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_put_idle_entity(ptr noundef %st, ptr noundef %entity) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %my_sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %entity, i32 -88
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %add.ptr.i.i, ptr null
  %first_idle.i = getelementptr inbounds %struct.bfq_service_tree, ptr %st, i32 0, i32 2
  %2 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_idle.i, align 8
  %cmp.i = icmp eq ptr %3, %entity
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call ptr @rb_next(ptr noundef %entity) #12
  %4 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %first_idle.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %last_idle.i = getelementptr inbounds %struct.bfq_service_tree, ptr %st, i32 0, i32 3
  %5 = ptrtoint ptr %last_idle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last_idle.i, align 4
  %cmp4.i = icmp eq ptr %6, %entity
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call ptr @rb_prev(ptr noundef %entity) #12
  %7 = ptrtoint ptr %last_idle.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %last_idle.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %idle.i = getelementptr inbounds %struct.bfq_service_tree, ptr %st, i32 0, i32 1
  %tree.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 4
  %8 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tree.i.i, align 8
  tail call void @rb_erase(ptr noundef %entity, ptr noundef %idle.i) #12
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %if.end10.i.bfq_idle_extract.exit_crit_edge, label %if.then11.i

if.end10.i.bfq_idle_extract.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_idle_extract.exit

if.then11.i:                                      ; preds = %if.end10.i
  %bfqq_list.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bfqq_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.i.list_del.exit.i_crit_edge

if.then11.i.list_del.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %bfqq_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bfqq_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then11.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %bfqq_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %bfqq_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %bfq_idle_extract.exit

bfq_idle_extract.exit:                            ; preds = %list_del.exit.i, %if.end10.i.bfq_idle_extract.exit_crit_edge
  %sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %17 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sched_data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %cmp = icmp eq ptr %20, %entity
  %21 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i6 = icmp eq ptr %22, null
  %spec.select.i.i8 = select i1 %tobool.not.i.i6, ptr %add.ptr.i.i, ptr null
  %on_st_or_in_serv.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 1
  %23 = ptrtoint ptr %on_st_or_in_serv.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %on_st_or_in_serv.i, align 4
  %weight.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 10
  %24 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %weight.i, align 8
  %wsum.i = getelementptr inbounds %struct.bfq_service_tree, ptr %st, i32 0, i32 5
  %26 = ptrtoint ptr %wsum.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wsum.i, align 8
  %sub.i = sub i32 %27, %25
  store i32 %sub.i, ptr %wsum.i, align 8
  %tobool.not.i9 = icmp eq ptr %spec.select.i.i8, null
  %brmerge.i = or i1 %cmp, %tobool.not.i9
  br i1 %brmerge.i, label %bfq_idle_extract.exit.bfq_forget_entity.exit_crit_edge, label %if.then.i10

bfq_idle_extract.exit.bfq_forget_entity.exit_crit_edge: ; preds = %bfq_idle_extract.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_forget_entity.exit

if.then.i10:                                      ; preds = %bfq_idle_extract.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bfq_put_queue(ptr noundef nonnull %spec.select.i.i8) #12
  br label %bfq_forget_entity.exit

bfq_forget_entity.exit:                           ; preds = %if.then.i10, %bfq_idle_extract.exit.bfq_forget_entity.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfq_entity_service_tree(ptr noundef readonly %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data1 = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %0 = ptrtoint ptr %sched_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data1, align 4
  %my_sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %2 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %3, null
  %add.ptr.i.i = getelementptr i8, ptr %entity, i32 -88
  %tobool.not2.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %tobool.not2.i, %tobool.not.i.i
  br i1 %tobool.not.i, label %entry.bfq_class_idx.exit_crit_edge, label %cond.true.i

entry.bfq_class_idx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_class_idx.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i = getelementptr i8, ptr %entity, i32 -74
  %4 = ptrtoint ptr %ioprio_class.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioprio_class.i, align 2
  %conv.i = zext i16 %5 to i32
  %sub.i = add nsw i32 %conv.i, -1
  br label %bfq_class_idx.exit

bfq_class_idx.exit:                               ; preds = %cond.true.i, %entry.bfq_class_idx.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ 1, %entry.bfq_class_idx.exit_crit_edge ]
  %service_tree = getelementptr inbounds %struct.bfq_sched_data, ptr %1, i32 0, i32 2
  %add.ptr = getelementptr %struct.bfq_service_tree, ptr %service_tree, i32 %cond.i
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__bfq_entity_update_weight_prio(ptr noundef %old_st, ptr noundef %entity, i1 noundef zeroext %update_class_too) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prio_changed = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 16
  %0 = ptrtoint ptr %prio_changed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_changed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end78_crit_edge, label %if.then

entry.if.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then:                                          ; preds = %entry
  %my_sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %2 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -88
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr null
  %tobool1.not = icmp eq ptr %spec.select.i, null
  %bfqd3 = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 2
  %bfqd4 = getelementptr i8, ptr %3, i32 112
  %bfqd.0.in = select i1 %tobool1.not, ptr %bfqd4, ptr %bfqd3
  %4 = ptrtoint ptr %bfqd.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %bfqd.0 = load ptr, ptr %bfqd.0.in, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  %weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 10
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %weight, align 8
  %wsum = getelementptr inbounds %struct.bfq_service_tree, ptr %old_st, i32 0, i32 5
  %7 = ptrtoint ptr %wsum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wsum, align 8
  %sub = sub i32 %8, %6
  store i32 %sub, ptr %wsum, align 8
  %new_weight8 = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 11
  %9 = ptrtoint ptr %new_weight8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_weight8, align 4
  %orig_weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 12
  %11 = ptrtoint ptr %orig_weight to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %orig_weight, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end36, label %if.then9

if.then9:                                         ; preds = %if.then
  %13 = add i32 %10, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000, i32 %13)
  %14 = icmp ult i32 %13, -1000
  br i1 %14, label %do.end17, label %if.then9.if.end28_crit_edge

if.then9.if.end28_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %10) #15
  %15 = ptrtoint ptr %new_weight8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_weight8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp22 = icmp slt i32 %16, 1
  %. = select i1 %cmp22, i32 1, i32 1000
  %17 = ptrtoint ptr %new_weight8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %., ptr %new_weight8, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end17, %if.then9.if.end28_crit_edge
  %18 = ptrtoint ptr %new_weight8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_weight8, align 4
  %20 = ptrtoint ptr %orig_weight to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %orig_weight, align 8
  br i1 %tobool1.not, label %if.end28.if.then48_crit_edge, label %if.then32

if.end28.if.then48_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then32:                                        ; preds = %if.end28
  %sub.i = sub i32 80, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #12
  %22 = trunc i32 %21 to i16
  %ioprio = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 3
  %23 = ptrtoint ptr %ioprio to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ioprio, align 4
  br i1 %update_class_too, label %if.then32.if.then39_crit_edge, label %if.then32.lor.lhs.false42_crit_edge

if.then32.lor.lhs.false42_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false42

if.then32.if.then39_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.end36:                                         ; preds = %if.then
  %update_class_too.not = xor i1 %update_class_too, true
  %brmerge = or i1 %tobool1.not, %update_class_too.not
  br i1 %brmerge, label %if.end36.if.end40_crit_edge, label %if.end36.if.then39_crit_edge

if.end36.if.then39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end36.if.then39_crit_edge, %if.then32.if.then39_crit_edge
  %new_ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 6
  %24 = ptrtoint ptr %new_ioprio_class to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %new_ioprio_class, align 2
  %ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 4
  %26 = ptrtoint ptr %ioprio_class to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ioprio_class, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  br i1 %tobool1.not, label %if.end40.if.then48_crit_edge, label %if.end40.lor.lhs.false42_crit_edge

if.end40.lor.lhs.false42_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false42

if.end40.if.then48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

lor.lhs.false42:                                  ; preds = %if.end40.lor.lhs.false42_crit_edge, %if.then32.lor.lhs.false42_crit_edge
  %ioprio_class43 = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 4
  %27 = ptrtoint ptr %ioprio_class43 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ioprio_class43, align 2
  %new_ioprio_class44 = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 6
  %29 = ptrtoint ptr %new_ioprio_class44 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %new_ioprio_class44, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp46 = icmp eq i16 %28, %30
  br i1 %cmp46, label %lor.lhs.false42.if.then48_crit_edge, label %lor.lhs.false42.if.end50_crit_edge

lor.lhs.false42.if.end50_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

lor.lhs.false42.if.then48_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false42.if.then48_crit_edge, %if.end40.if.then48_crit_edge, %if.end28.if.then48_crit_edge
  %31 = ptrtoint ptr %prio_changed to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %prio_changed, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %lor.lhs.false42.if.end50_crit_edge
  %sched_data1.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %32 = ptrtoint ptr %sched_data1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sched_data1.i, align 4
  %34 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i.i.i = icmp ne ptr %35, null
  %tobool.not2.i.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i.i = or i1 %tobool.not2.i.i, %tobool.not.i.i.i
  br i1 %tobool.not.i.i, label %if.end50.bfq_entity_service_tree.exit_crit_edge, label %cond.true.i.i

if.end50.bfq_entity_service_tree.exit_crit_edge:  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit

cond.true.i.i:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i = getelementptr i8, ptr %entity, i32 -74
  %36 = ptrtoint ptr %ioprio_class.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ioprio_class.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  br label %bfq_entity_service_tree.exit

bfq_entity_service_tree.exit:                     ; preds = %cond.true.i.i, %if.end50.bfq_entity_service_tree.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ 1, %if.end50.bfq_entity_service_tree.exit_crit_edge ]
  %service_tree.i = getelementptr inbounds %struct.bfq_sched_data, ptr %33, i32 0, i32 2
  %add.ptr.i129 = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i
  %38 = ptrtoint ptr %orig_weight to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %orig_weight, align 8
  br i1 %tobool1.not, label %bfq_entity_service_tree.exit.if.end60.thread_crit_edge, label %cond.end

bfq_entity_service_tree.exit.if.end60.thread_crit_edge: ; preds = %bfq_entity_service_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.thread

cond.end:                                         ; preds = %bfq_entity_service_tree.exit
  %40 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %weight, align 8
  %wr_coeff = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 37
  %42 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wr_coeff, align 8
  %mul = mul i32 %43, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul)
  %cmp55.not = icmp eq i32 %41, %mul
  br i1 %cmp55.not, label %cond.end.if.end60.thread_crit_edge, label %land.lhs.true66

cond.end.if.end60.thread_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.thread

if.end60.thread:                                  ; preds = %cond.end.if.end60.thread_crit_edge, %bfq_entity_service_tree.exit.if.end60.thread_crit_edge
  %mul134.ph = phi i32 [ %41, %cond.end.if.end60.thread_crit_edge ], [ %39, %bfq_entity_service_tree.exit.if.end60.thread_crit_edge ]
  %44 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul134.ph, ptr %weight, align 8
  br label %if.end71

land.lhs.true66:                                  ; preds = %cond.end
  %queue_weights_tree = getelementptr inbounds %struct.bfq_data, ptr %bfqd.0, i32 0, i32 3
  tail call void @__bfq_weights_tree_remove(ptr noundef %bfqd.0, ptr noundef nonnull %spec.select.i, ptr noundef %queue_weights_tree) #12
  %45 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %weight, align 8
  %46 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wr_coeff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp68 = icmp eq i32 %47, 1
  br i1 %cmp68, label %if.then70, label %land.lhs.true66.if.end71_crit_edge

land.lhs.true66.if.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bfq_weights_tree_add(ptr noundef %bfqd.0, ptr noundef nonnull %spec.select.i, ptr noundef %queue_weights_tree) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true66.if.end71_crit_edge, %if.end60.thread
  %48 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %weight, align 8
  %wsum73 = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 5
  %50 = ptrtoint ptr %wsum73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wsum73, align 8
  %add = add i32 %51, %49
  store i32 %add, ptr %wsum73, align 8
  %cmp74.not = icmp eq ptr %add.ptr.i129, %old_st
  br i1 %cmp74.not, label %if.end71.if.end78_crit_edge, label %if.then76

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %vtime = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 4
  %52 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vtime, align 8
  %start = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 2
  %54 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %start, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end71.if.end78_crit_edge, %entry.if.end78_crit_edge
  %new_st.0 = phi ptr [ %old_st, %entry.if.end78_crit_edge ], [ %add.ptr.i129, %if.then76 ], [ %old_st, %if.end71.if.end78_crit_edge ]
  ret ptr %new_st.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfq_weights_tree_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_weights_tree_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_bfqq_served(ptr noundef %bfqq, i32 noundef %served) local_unnamed_addr #4 align 64 {
entry:
  %pid_str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %service_from_backlogged = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 39
  %0 = ptrtoint ptr %service_from_backlogged to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service_from_backlogged, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %first_IO_time = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 43
  %3 = ptrtoint ptr %first_IO_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %first_IO_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wr_coeff = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 37
  %4 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wr_coeff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %service_from_wr = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 40
  %6 = ptrtoint ptr %service_from_wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service_from_wr, align 4
  %add = add i32 %7, %served
  store i32 %add, ptr %service_from_wr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %add5 = add i32 %1, %served
  %8 = ptrtoint ptr %service_from_backlogged to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add5, ptr %service_from_backlogged, align 8
  %tobool6.not73 = icmp eq ptr %entity1, null
  br i1 %tobool6.not73, label %if.end3.do.body_crit_edge, label %for.body.lr.ph

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end3
  %conv.i = zext i32 %served to i64
  %shl.i = shl nuw nsw i64 %conv.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %served)
  %cmp164.i.i.i = icmp ult i32 %served, 1024
  %conv169.i.i.i = trunc i64 %shl.i to i32
  br label %for.body

for.body:                                         ; preds = %bfq_forget_idle.exit.for.body_crit_edge, %for.body.lr.ph
  %entity.074 = phi ptr [ %entity1, %for.body.lr.ph ], [ %36, %bfq_forget_idle.exit.for.body_crit_edge ]
  %sched_data1.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.074, i32 0, i32 15
  %9 = ptrtoint ptr %sched_data1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sched_data1.i, align 4
  %my_sched_data.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.074, i32 0, i32 14
  %11 = ptrtoint ptr %my_sched_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %my_sched_data.i.i.i, align 8
  %tobool.not.i.i.i = icmp ne ptr %12, null
  %add.ptr.i.i.i = getelementptr i8, ptr %entity.074, i32 -88
  %tobool.not2.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i = or i1 %tobool.not2.i.i, %tobool.not.i.i.i
  br i1 %tobool.not.i.i, label %for.body.bfq_entity_service_tree.exit_crit_edge, label %cond.true.i.i

for.body.bfq_entity_service_tree.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit

cond.true.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i = getelementptr i8, ptr %entity.074, i32 -74
  %13 = ptrtoint ptr %ioprio_class.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ioprio_class.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  br label %bfq_entity_service_tree.exit

bfq_entity_service_tree.exit:                     ; preds = %cond.true.i.i, %for.body.bfq_entity_service_tree.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ 1, %for.body.bfq_entity_service_tree.exit_crit_edge ]
  %service_tree.i = getelementptr inbounds %struct.bfq_sched_data, ptr %10, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i
  %service = getelementptr inbounds %struct.bfq_entity, ptr %entity.074, i32 0, i32 6
  %15 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %service, align 8
  %add7 = add i32 %16, %served
  store i32 %add7, ptr %service, align 8
  %wsum = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 5
  %17 = ptrtoint ptr %wsum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wsum, align 8
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !50

if.then168.i.i.i:                                 ; preds = %bfq_entity_service_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %18
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %bfq_delta.exit

if.else174.i.i.i:                                 ; preds = %bfq_entity_service_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %shl.i) #16, !srcloc !51
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %19, 1
  br label %bfq_delta.exit

bfq_delta.exit:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %vtime = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 4
  %20 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vtime, align 8
  %add9 = add i64 %21, %dividend.addr.0.i.i.i
  store i64 %add9, ptr %vtime, align 8
  %first_idle1.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 2
  %22 = ptrtoint ptr %first_idle1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %first_idle1.i, align 8
  %last_idle2.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 3
  %24 = ptrtoint ptr %last_idle2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last_idle2.i, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %add.ptr.i, align 8
  %cmp.i = icmp ne ptr %27, null
  %tobool.not.i70 = icmp eq ptr %25, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i70
  br i1 %or.cond.i, label %bfq_delta.exit.if.end.i_crit_edge, label %land.lhs.true3.i

bfq_delta.exit.if.end.i_crit_edge:                ; preds = %bfq_delta.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %bfq_delta.exit
  %finish.i = getelementptr inbounds %struct.bfq_entity, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %finish.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %finish.i, align 8
  %sub.i.i71 = sub i64 %29, %add9
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i71)
  %cmp.i.i = icmp slt i64 %sub.i.i71, 1
  br i1 %cmp.i.i, label %if.then.i72, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i72:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %vtime to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %vtime, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i72, %land.lhs.true3.i.if.end.i_crit_edge, %bfq_delta.exit.if.end.i_crit_edge
  %tobool7.not.i = icmp eq ptr %23, null
  br i1 %tobool7.not.i, label %if.end.i.bfq_forget_idle.exit_crit_edge, label %land.lhs.true8.i

if.end.i.bfq_forget_idle.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_forget_idle.exit

land.lhs.true8.i:                                 ; preds = %if.end.i
  %finish9.i = getelementptr inbounds %struct.bfq_entity, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %finish9.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %finish9.i, align 8
  %33 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vtime, align 8
  %sub.i26.i = sub i64 %32, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i26.i)
  %cmp.i27.i = icmp slt i64 %sub.i26.i, 1
  br i1 %cmp.i27.i, label %if.then13.i, label %land.lhs.true8.i.bfq_forget_idle.exit_crit_edge

land.lhs.true8.i.bfq_forget_idle.exit_crit_edge:  ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_forget_idle.exit

if.then13.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bfq_put_idle_entity(ptr noundef %add.ptr.i, ptr noundef nonnull %23) #12
  br label %bfq_forget_idle.exit

bfq_forget_idle.exit:                             ; preds = %if.then13.i, %land.lhs.true8.i.bfq_forget_idle.exit_crit_edge, %if.end.i.bfq_forget_idle.exit_crit_edge
  %parent = getelementptr inbounds %struct.bfq_entity, ptr %entity.074, i32 0, i32 13
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 4
  %tobool6.not = icmp eq ptr %36, null
  br i1 %tobool6.not, label %bfq_forget_idle.exit.do.body_crit_edge, label %bfq_forget_idle.exit.for.body_crit_edge

bfq_forget_idle.exit.for.body_crit_edge:          ; preds = %bfq_forget_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

bfq_forget_idle.exit.do.body_crit_edge:           ; preds = %bfq_forget_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %bfq_forget_idle.exit.do.body_crit_edge, %if.end3.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str) #12
  %bfqd = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 2
  %37 = call ptr @memset(ptr %pid_str, i32 255, i32 16)
  %38 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bfqd, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %call10 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %41)
  br i1 %call10, label %if.end15, label %do.body.cleanup_crit_edge, !prof !52

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %do.body
  call fastcc void @bfq_bfqq_name(ptr noundef %bfqq, ptr noundef nonnull %pid_str)
  %42 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end15.rcu_read_lock.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end15.rcu_read_lock.exit_crit_edge
  %46 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bfqd, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 46
  %50 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %blk_trace, align 8
  %call21 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end30_crit_edge

rcu_read_lock.exit.do.end30_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true.do.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @bfq_bfqq_served.__warned, align 1
  br i1 %.b67, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_bfqq_served.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 841, ptr noundef nonnull @.str.3) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true.do.end30_crit_edge, %rcu_read_lock.exit.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %51, null
  br i1 %tobool32.not, label %do.end30.if.end43_crit_edge, label %if.then39, !prof !50

do.end30.if.end43_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then39:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call ptr @bfqq_group(ptr noundef %bfqq) #12
  %call41 = tail call ptr @bfqg_to_blkg(ptr noundef %call40) #12
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %call41, i32 0, i32 3
  %52 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blkcg, align 4
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %51, ptr noundef %53, ptr noundef nonnull @.str.4, ptr noundef nonnull %pid_str, i32 noundef %served) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.end30.if.end43_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %q) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46
  %4 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %blk_trace, align 8
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @blk_trace_note_message_enabled.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @blk_trace_note_message_enabled.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 70, ptr noundef nonnull @.str.3) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.land.end_crit_edge, label %land.rhs

do.end7.land.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %act_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %act_mask, align 8
  %8 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool10 = icmp ne i16 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end7.land.end_crit_edge
  %9 = phi i1 [ false, %do.end7.land.end_crit_edge ], [ %tobool10, %land.rhs ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14, label %land.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

land.end.rcu_read_unlock.exit_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %land.end
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %land.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %10 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i21 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %9
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_bfqq_name(ptr noundef %bfqq, ptr nocapture noundef writeonly %str) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @bfq_bfqq_sync(ptr noundef %bfqq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %pid = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 32
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  %conv5 = select i1 %tobool.not, i32 65, i32 83
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %conv5)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_note_message(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfqg_to_blkg(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfqq_group(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_bfqq_charge_time(ptr nocapture noundef readonly %bfqd, ptr noundef %bfqq, i32 noundef %time_ms) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfq_timeout to i32))
  %0 = load i32, ptr @bfq_timeout, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %0) #12
  %1 = tail call i32 @llvm.umin.i32(i32 %call, i32 %time_ms)
  %bfq_max_budget = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 36
  %2 = ptrtoint ptr %bfq_max_budget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bfq_max_budget, align 4
  %mul = mul i32 %3, %1
  %div = udiv i32 %mul, %call
  %service = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 6
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service, align 8
  %6 = tail call i32 @llvm.smax.i32(i32 %div, i32 %5)
  %budget = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 7
  %7 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %budget, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8 = icmp sgt i32 %6, %8
  br i1 %cmp8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %budget to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %budget, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = sub i32 %6, %5
  %10 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @bfq_bfqq_served(ptr noundef %bfqq, i32 noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bfq_deactivate_entity(ptr noundef %entity, i1 noundef zeroext %ins_into_idle_tree) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %on_st_or_in_serv = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 1
  %2 = ptrtoint ptr %on_st_or_in_serv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %on_st_or_in_serv, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %my_sched_data.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %4 = ptrtoint ptr %my_sched_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %my_sched_data.i.i.i, align 8
  %tobool.not.i.i.i = icmp ne ptr %5, null
  %add.ptr.i.i.i = getelementptr i8, ptr %entity, i32 -88
  %tobool.not2.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i = or i1 %tobool.not2.i.i, %tobool.not.i.i.i
  br i1 %tobool.not.i.i, label %if.end.bfq_entity_service_tree.exit_crit_edge, label %cond.true.i.i

if.end.bfq_entity_service_tree.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i = getelementptr i8, ptr %entity, i32 -74
  %6 = ptrtoint ptr %ioprio_class.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ioprio_class.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  br label %bfq_entity_service_tree.exit

bfq_entity_service_tree.exit:                     ; preds = %cond.true.i.i, %if.end.bfq_entity_service_tree.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ 1, %if.end.bfq_entity_service_tree.exit_crit_edge ]
  %service_tree.i = getelementptr inbounds %struct.bfq_sched_data, ptr %1, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %cmp = icmp eq ptr %9, %entity
  %service = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 6
  %10 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service, align 8
  tail call fastcc void @bfq_calc_finish(ptr noundef %entity, i32 noundef %11)
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %bfq_entity_service_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %1, align 8
  br label %if.end6

if.else:                                          ; preds = %bfq_entity_service_tree.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %service, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %tree = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 4
  %14 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tree, align 8
  %cmp7 = icmp eq ptr %15, %add.ptr.i
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bfq_active_extract(ptr noundef %add.ptr.i, ptr noundef %entity)
  br label %if.end15

if.else9:                                         ; preds = %if.end6
  %cmp.not = xor i1 %cmp, true
  %idle = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 1
  %cmp12 = icmp eq ptr %15, %idle
  %or.cond = select i1 %cmp.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %if.else9.if.end15_crit_edge

if.else9.if.end15_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.else9
  %16 = ptrtoint ptr %my_sched_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %my_sched_data.i.i.i, align 8
  %tobool.not.i.i47 = icmp eq ptr %17, null
  %spec.select.i.i = select i1 %tobool.not.i.i47, ptr %add.ptr.i.i.i, ptr null
  %first_idle.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 2
  %18 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %first_idle.i, align 8
  %cmp.i = icmp eq ptr %19, %entity
  br i1 %cmp.i, label %if.then.i, label %if.then13.if.end.i_crit_edge

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call ptr @rb_next(ptr noundef %entity) #12
  %20 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1.i, ptr %first_idle.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  %last_idle.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 3
  %21 = ptrtoint ptr %last_idle.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last_idle.i, align 4
  %cmp4.i = icmp eq ptr %22, %entity
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call ptr @rb_prev(ptr noundef %entity) #12
  %23 = ptrtoint ptr %last_idle.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %last_idle.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %24 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tree, align 8
  tail call void @rb_erase(ptr noundef %entity, ptr noundef %15) #12
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %if.end10.i.if.end15_crit_edge, label %if.then11.i

if.end10.i.if.end15_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11.i:                                      ; preds = %if.end10.i
  %bfqq_list.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bfqq_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.i.list_del.exit.i_crit_edge

if.then11.i.list_del.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %bfqq_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bfqq_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then11.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %bfqq_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %bfqq_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit.i, %if.end10.i.if.end15_crit_edge, %if.else9.if.end15_crit_edge, %if.then8
  br i1 %ins_into_idle_tree, label %lor.lhs.false, label %if.end15.if.then19_crit_edge

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end15
  %finish = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 3
  %33 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %finish, align 8
  %vtime = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 4
  %35 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vtime, align 8
  %sub.i = sub i64 %34, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i48 = icmp slt i64 %sub.i, 1
  br i1 %cmp.i48, label %lor.lhs.false.if.then19_crit_edge, label %if.else21

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  %37 = ptrtoint ptr %my_sched_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %my_sched_data.i.i.i, align 8
  %tobool.not.i.i50 = icmp eq ptr %38, null
  %spec.select.i.i52 = select i1 %tobool.not.i.i50, ptr %add.ptr.i.i.i, ptr null
  %39 = ptrtoint ptr %on_st_or_in_serv to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %on_st_or_in_serv, align 4
  %weight.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 10
  %40 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %weight.i, align 8
  %wsum.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 5
  %42 = ptrtoint ptr %wsum.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wsum.i, align 8
  %sub.i53 = sub i32 %43, %41
  store i32 %sub.i53, ptr %wsum.i, align 8
  %tobool.not.i54 = icmp eq ptr %spec.select.i.i52, null
  %brmerge.i = or i1 %cmp, %tobool.not.i54
  br i1 %brmerge.i, label %if.then19.cleanup_crit_edge, label %if.then.i55

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i55:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bfq_put_queue(ptr noundef nonnull %spec.select.i.i52) #12
  br label %cleanup

if.else21:                                        ; preds = %lor.lhs.false
  %44 = ptrtoint ptr %my_sched_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %my_sched_data.i.i.i, align 8
  %tobool.not.i.i58 = icmp eq ptr %45, null
  %spec.select.i.i60 = select i1 %tobool.not.i.i58, ptr %add.ptr.i.i.i, ptr null
  %first_idle1.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 2
  %46 = ptrtoint ptr %first_idle1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %first_idle1.i, align 8
  %last_idle2.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 3
  %48 = ptrtoint ptr %last_idle2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %last_idle2.i, align 4
  %tobool.not.i61 = icmp eq ptr %47, null
  br i1 %tobool.not.i61, label %if.else21.if.then.i63_crit_edge, label %lor.lhs.false.i

if.else21.if.then.i63_crit_edge:                  ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i63

lor.lhs.false.i:                                  ; preds = %if.else21
  %finish.i = getelementptr inbounds %struct.bfq_entity, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %finish.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %finish.i, align 8
  %sub.i.i62 = sub i64 %51, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i62)
  %cmp.i.i = icmp slt i64 %sub.i.i62, 1
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end.i64_crit_edge, label %lor.lhs.false.i.if.then.i63_crit_edge

lor.lhs.false.i.if.then.i63_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i63

lor.lhs.false.i.if.end.i64_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i64

if.then.i63:                                      ; preds = %lor.lhs.false.i.if.then.i63_crit_edge, %if.else21.if.then.i63_crit_edge
  %52 = ptrtoint ptr %first_idle1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entity, ptr %first_idle1.i, align 8
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then.i63, %lor.lhs.false.i.if.end.i64_crit_edge
  %tobool7.not.i = icmp eq ptr %49, null
  br i1 %tobool7.not.i, label %if.end.i64.if.then13.i_crit_edge, label %lor.lhs.false8.i

if.end.i64.if.then13.i_crit_edge:                 ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false8.i:                                 ; preds = %if.end.i64
  %53 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %finish, align 8
  %finish10.i = getelementptr inbounds %struct.bfq_entity, ptr %49, i32 0, i32 3
  %55 = ptrtoint ptr %finish10.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %finish10.i, align 8
  %sub.i33.i = sub i64 %54, %56
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i33.i)
  %cmp.i34.i = icmp slt i64 %sub.i33.i, 1
  br i1 %cmp.i34.i, label %lor.lhs.false8.i.if.end15.i_crit_edge, label %lor.lhs.false8.i.if.then13.i_crit_edge

lor.lhs.false8.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false8.i.if.end15.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then13.i:                                      ; preds = %lor.lhs.false8.i.if.then13.i_crit_edge, %if.end.i64.if.then13.i_crit_edge
  %57 = ptrtoint ptr %last_idle2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entity, ptr %last_idle2.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %lor.lhs.false8.i.if.end15.i_crit_edge
  %idle.i65 = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i, i32 1
  %58 = ptrtoint ptr %idle.i65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %idle.i65, align 4
  %tobool.not16.i.i = icmp eq ptr %59, null
  br i1 %tobool.not16.i.i, label %if.end15.i.bfq_insert.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end15.i.bfq_insert.exit.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_insert.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end15.i
  %60 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %finish, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %62 = phi ptr [ %59, %while.body.lr.ph.i.i ], [ %66, %while.body.i.i.while.body.i.i_crit_edge ]
  %finish.i.i = getelementptr inbounds %struct.bfq_entity, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %finish.i.i, align 8
  %sub.i.i.i = sub i64 %64, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i.i, 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  %node.1.i.i = select i1 %cmp.i.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %65 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %node.1.i.i, align 4
  %tobool.not.i36.i = icmp eq ptr %66, null
  br i1 %tobool.not.i36.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le.i.i = ptrtoint ptr %62 to i32
  br label %bfq_insert.exit.i

bfq_insert.exit.i:                                ; preds = %while.cond.while.end_crit_edge.i.i, %if.end15.i.bfq_insert.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end15.i.bfq_insert.exit.i_crit_edge ]
  %node.0.lcssa.i.i = phi ptr [ %node.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %idle.i65, %if.end15.i.bfq_insert.exit.i_crit_edge ]
  %67 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %parent.0.lcssa.i.i, ptr %entity, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 1
  %68 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 2
  %69 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %70 = ptrtoint ptr %node.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entity, ptr %node.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %entity, ptr noundef %idle.i65) #12
  %71 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %idle.i65, ptr %tree, align 8
  %tobool16.not.i = icmp eq ptr %spec.select.i.i60, null
  br i1 %tobool16.not.i, label %bfq_insert.exit.i.cleanup_crit_edge, label %if.then17.i

bfq_insert.exit.i.cleanup_crit_edge:              ; preds = %bfq_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %bfq_insert.exit.i
  %bfqq_list.i67 = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i60, i32 0, i32 24
  %bfqd.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i60, i32 0, i32 2
  %72 = ptrtoint ptr %bfqd.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bfqd.i, align 8
  %idle_list.i = getelementptr inbounds %struct.bfq_data, ptr %73, i32 0, i32 38
  %74 = ptrtoint ptr %idle_list.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %idle_list.i, align 4
  %call.i.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %bfqq_list.i67, ptr noundef %idle_list.i, ptr noundef %75) #12
  br i1 %call.i.i.i68, label %if.end.i.i.i69, label %if.then17.i.cleanup_crit_edge

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i69:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %bfqq_list.i67, ptr %prev1.i.i.i, align 4
  %77 = ptrtoint ptr %bfqq_list.i67 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %bfqq_list.i67, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i60, i32 0, i32 24, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %idle_list.i, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %idle_list.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %bfqq_list.i67, ptr %idle_list.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i69, %if.then17.i.cleanup_crit_edge, %bfq_insert.exit.i.cleanup_crit_edge, %if.then.i55, %if.then19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %80 = xor i1 %tobool.not, true
  ret i1 %80
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_calc_finish(ptr noundef %entity, i32 noundef %service) unnamed_addr #4 align 64 {
entry:
  %pid_str = alloca [16 x i8], align 1
  %pid_str41 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %my_sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i137 = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -88
  %spec.select.i = select i1 %tobool.not.i137, ptr %add.ptr.i, ptr null
  %start = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 2
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 10
  %4 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %weight, align 8
  %conv.i = zext i32 %service to i64
  %shl.i = shl nuw nsw i64 %conv.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %service)
  %cmp164.i.i.i = icmp ult i32 %service, 1024
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !50

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %5
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %bfq_delta.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %shl.i) #16, !srcloc !51
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %6, 1
  br label %bfq_delta.exit

bfq_delta.exit:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %add = add i64 %dividend.addr.0.i.i.i, %3
  %finish = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 3
  %7 = ptrtoint ptr %finish to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %finish, align 8
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %bfq_delta.exit.if.end102_crit_edge, label %do.body

bfq_delta.exit.if.end102_crit_edge:               ; preds = %bfq_delta.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

do.body:                                          ; preds = %bfq_delta.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str) #12
  %bfqd = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 2
  %8 = call ptr @memset(ptr %pid_str, i32 255, i32 16)
  %9 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfqd, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call2 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %12)
  br i1 %call2, label %if.end, label %do.body.cleanup_crit_edge, !prof !52

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %do.body
  call fastcc void @bfq_bfqq_name(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %pid_str)
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %17 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bfqd, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %blk_trace, align 8
  %call12 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b125 = load i1, ptr @bfq_calc_finish.__warned, align 1
  br i1 %.b125, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_calc_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 295, ptr noundef nonnull @.str.3) #12
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %do.end21.if.end35_crit_edge, label %if.then30, !prof !50

do.end21.if.end35_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then30:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call ptr @bfqq_group(ptr noundef nonnull %spec.select.i) #12
  %call32 = tail call ptr @bfqg_to_blkg(ptr noundef %call31) #12
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %call32, i32 0, i32 3
  %23 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blkcg, align 4
  %25 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %weight, align 8
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %22, ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef nonnull %pid_str, i32 noundef %service, i32 noundef %26) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %do.end21.if.end35_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str41) #12
  %27 = call ptr @memset(ptr %pid_str41, i32 255, i32 16)
  %28 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bfqd, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %call44 = call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %31)
  br i1 %call44, label %if.end54, label %cleanup.cleanup97_crit_edge, !prof !52

cleanup.cleanup97_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end54:                                         ; preds = %cleanup
  call fastcc void @bfq_bfqq_name(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %pid_str41)
  %32 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i126 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i126 to ptr
  %preempt_count.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i127, align 4
  %add.i.i.i128 = add i32 %35, 1
  store volatile i32 %add.i.i.i128, ptr %preempt_count.i.i.i.i127, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i129 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i129, label %if.end54.rcu_read_lock.exit136_crit_edge, label %land.lhs.true.i132

if.end54.rcu_read_lock.exit136_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit136

land.lhs.true.i132:                               ; preds = %if.end54
  %call1.i130 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130)
  %tobool.not.i131 = icmp eq i32 %call1.i130, 0
  br i1 %tobool.not.i131, label %land.lhs.true.i132.rcu_read_lock.exit136_crit_edge, label %land.lhs.true2.i134

land.lhs.true.i132.rcu_read_lock.exit136_crit_edge: ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit136

land.lhs.true2.i134:                              ; preds = %land.lhs.true.i132
  %.b4.i133 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i133, label %land.lhs.true2.i134.rcu_read_lock.exit136_crit_edge, label %if.then.i135

land.lhs.true2.i134.rcu_read_lock.exit136_crit_edge: ; preds = %land.lhs.true2.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit136

if.then.i135:                                     ; preds = %land.lhs.true2.i134
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit136

rcu_read_lock.exit136:                            ; preds = %if.then.i135, %land.lhs.true2.i134.rcu_read_lock.exit136_crit_edge, %land.lhs.true.i132.rcu_read_lock.exit136_crit_edge, %if.end54.rcu_read_lock.exit136_crit_edge
  %36 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bfqd, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %blk_trace64 = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %blk_trace64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %blk_trace64, align 8
  %call66 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %rcu_read_lock.exit136.do.end76_crit_edge

rcu_read_lock.exit136.do.end76_crit_edge:         ; preds = %rcu_read_lock.exit136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true68:                                  ; preds = %rcu_read_lock.exit136
  %call69 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b123124 = load i1, ptr @bfq_calc_finish.__warned.14, align 1
  br i1 %.b123124, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_calc_finish.__warned.14, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 299, ptr noundef nonnull @.str.3) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %rcu_read_lock.exit136.do.end76_crit_edge
  %tobool78.not = icmp eq ptr %41, null
  br i1 %tobool78.not, label %do.end76.if.end94_crit_edge, label %if.then85, !prof !50

do.end76.if.end94_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then85:                                        ; preds = %do.end76
  %call86 = call ptr @bfqq_group(ptr noundef nonnull %spec.select.i) #12
  %call87 = call ptr @bfqg_to_blkg(ptr noundef %call86) #12
  %blkcg88 = getelementptr inbounds %struct.blkcg_gq, ptr %call87, i32 0, i32 3
  %42 = ptrtoint ptr %blkcg88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blkcg88, align 4
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start, align 8
  %46 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %finish, align 8
  %48 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %weight, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %service)
  %cmp164.i.i.i245 = icmp ult i32 %service, 1024
  br i1 %cmp164.i.i.i245, label %if.then168.i.i.i250, label %if.else174.i.i.i252, !prof !50

if.then168.i.i.i250:                              ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i247 = trunc i64 %shl.i to i32
  %div172.i.i.i248 = udiv i32 %conv169.i.i.i247, %49
  %conv173.i.i.i249 = zext i32 %div172.i.i.i248 to i64
  br label %bfq_delta.exit254

if.else174.i.i.i252:                              ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  %50 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %49, i64 %shl.i) #16, !srcloc !51
  %asmresult1.i.i.i.i251 = extractvalue { i64, i64 } %50, 1
  br label %bfq_delta.exit254

bfq_delta.exit254:                                ; preds = %if.else174.i.i.i252, %if.then168.i.i.i250
  %dividend.addr.0.i.i.i253 = phi i64 [ %conv173.i.i.i249, %if.then168.i.i.i250 ], [ %asmresult1.i.i.i.i251, %if.else174.i.i.i252 ]
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %41, ptr noundef %43, ptr noundef nonnull @.str.15, ptr noundef nonnull %pid_str41, i64 noundef %45, i64 noundef %47, i64 noundef %dividend.addr.0.i.i.i253) #12
  br label %if.end94

if.end94:                                         ; preds = %bfq_delta.exit254, %do.end76.if.end94_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup97

cleanup97:                                        ; preds = %if.end94, %cleanup.cleanup97_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str41) #12
  br label %if.end102

if.end102:                                        ; preds = %cleanup97, %bfq_delta.exit.if.end102_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_active_extract(ptr noundef %st, ptr noundef %entity) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %my_sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -88
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr null
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 1
  %2 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i15 = icmp eq ptr %3, null
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 2
  %4 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_left.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i15, label %land.lhs.true.i, label %if.else6.i

land.lhs.true.i:                                  ; preds = %entry
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.bfq_find_deepest.exit.thread_crit_edge

land.lhs.true.i.bfq_find_deepest.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_find_deepest.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entity, align 4
  %and.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i to ptr
  br label %bfq_find_deepest.exit

if.else6.i:                                       ; preds = %entry
  br i1 %tobool1.not.i, label %if.else6.i.bfq_find_deepest.exit.thread_crit_edge, label %if.else11.i

if.else6.i.bfq_find_deepest.exit.thread_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_find_deepest.exit.thread

if.else11.i:                                      ; preds = %if.else6.i
  %call.i = tail call ptr @rb_next(ptr noundef %entity) #12
  %rb_right12.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rb_right12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_right12.i, align 4
  %tobool13.not.i = icmp eq ptr %10, null
  br i1 %tobool13.not.i, label %if.else16.i, label %if.else11.i.bfq_find_deepest.exit.thread_crit_edge

if.else11.i.bfq_find_deepest.exit.thread_crit_edge: ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_find_deepest.exit.thread

if.else16.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 4
  %and18.i = and i32 %12, -4
  %13 = inttoptr i32 %and18.i to ptr
  %cmp.not.i = icmp eq ptr %13, %entity
  %spec.select.i16 = select i1 %cmp.not.i, ptr %call.i, ptr %13
  br label %bfq_find_deepest.exit

bfq_find_deepest.exit.thread:                     ; preds = %if.else11.i.bfq_find_deepest.exit.thread_crit_edge, %if.else6.i.bfq_find_deepest.exit.thread_crit_edge, %land.lhs.true.i.bfq_find_deepest.exit.thread_crit_edge
  %deepest.0.i.ph = phi ptr [ %5, %land.lhs.true.i.bfq_find_deepest.exit.thread_crit_edge ], [ %10, %if.else11.i.bfq_find_deepest.exit.thread_crit_edge ], [ %3, %if.else6.i.bfq_find_deepest.exit.thread_crit_edge ]
  %tree.i18 = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 4
  %14 = ptrtoint ptr %tree.i18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tree.i18, align 8
  tail call void @rb_erase(ptr noundef %entity, ptr noundef %st) #12
  br label %if.then

bfq_find_deepest.exit:                            ; preds = %if.else16.i, %if.then.i
  %deepest.0.i = phi ptr [ %8, %if.then.i ], [ %spec.select.i16, %if.else16.i ]
  %tree.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 4
  %15 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tree.i, align 8
  tail call void @rb_erase(ptr noundef %entity, ptr noundef %st) #12
  %tobool.not = icmp eq ptr %deepest.0.i, null
  br i1 %tobool.not, label %bfq_find_deepest.exit.if.end_crit_edge, label %bfq_find_deepest.exit.if.then_crit_edge

bfq_find_deepest.exit.if.then_crit_edge:          ; preds = %bfq_find_deepest.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

bfq_find_deepest.exit.if.end_crit_edge:           ; preds = %bfq_find_deepest.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %bfq_find_deepest.exit.if.then_crit_edge, %bfq_find_deepest.exit.thread
  %deepest.0.i20 = phi ptr [ %deepest.0.i.ph, %bfq_find_deepest.exit.thread ], [ %deepest.0.i, %bfq_find_deepest.exit.if.then_crit_edge ]
  tail call fastcc void @bfq_update_active_tree(ptr noundef nonnull %deepest.0.i20)
  br label %if.end

if.end:                                           ; preds = %if.then, %bfq_find_deepest.exit.if.end_crit_edge
  %sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %16 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sched_data, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 -248
  %bfqd2 = getelementptr i8, ptr %17, i32 112
  %18 = ptrtoint ptr %bfqd2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bfqd2, align 8
  %tobool3.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %bfqq_list = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bfqq_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %bfqq_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bfqq_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %26 = ptrtoint ptr %bfqq_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %bfqq_list, align 4
  %prev.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 24, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %list_del.exit, %if.end.if.end5_crit_edge
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root_group, align 4
  %cmp.not = icmp eq ptr %add.ptr, %29
  br i1 %cmp.not, label %if.end5.if.end7_crit_edge, label %if.then6

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %active_entities = getelementptr i8, ptr %17, i32 188
  %30 = ptrtoint ptr %active_entities to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_entities, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %active_entities, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @next_queue_may_preempt(ptr nocapture noundef readonly %bfqd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 2
  %0 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_group, align 4
  %sched_data = getelementptr inbounds %struct.bfq_group, ptr %1, i32 0, i32 4
  %next_in_service = getelementptr inbounds %struct.bfq_group, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %next_in_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_in_service, align 4
  %4 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched_data, align 8
  %cmp = icmp ne ptr %3, %5
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfq_get_next_queue(ptr nocapture noundef readonly %bfqd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %busy_queues.i = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 5
  %0 = ptrtoint ptr %busy_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %busy_queues.i, align 4
  %arrayidx2.i = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %3, %1
  %arrayidx4.i = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %add5.i = sub i32 0, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add5.i)
  %cmp = icmp eq i32 %add.i, %add5.i
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.end:                                           ; preds = %entry
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 2
  %6 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_group, align 4
  %sched_data = getelementptr inbounds %struct.bfq_group, ptr %7, i32 0, i32 4
  %tobool.not35 = icmp eq ptr %sched_data, null
  br i1 %tobool.not35, label %for.end.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 80)
  %8 = load ptr, ptr inttoptr (i32 80 to ptr), align 16
  %tobool.not.i3141 = icmp eq ptr %8, null
  %spec.select.i43 = select i1 %tobool.not.i3141, ptr inttoptr (i32 -88 to ptr), ptr null
  br label %cleanup16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %sd.036 = phi ptr [ %21, %for.inc.for.body_crit_edge ], [ %sched_data, %if.end.for.body_crit_edge ]
  %next_in_service = getelementptr inbounds %struct.bfq_sched_data, ptr %sd.036, i32 0, i32 1
  %9 = ptrtoint ptr %next_in_service to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_in_service, align 4
  %11 = ptrtoint ptr %sd.036 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sd.036, align 8
  %my_sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %10, i32 0, i32 14
  %12 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %13, null
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -88
  %tobool.not4.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %tobool.not4.i, %tobool.not.i.i
  br i1 %tobool.not.i, label %bfq_no_longer_next_in_service.exit, label %cond.true.i.i

bfq_no_longer_next_in_service.exit:               ; preds = %for.body
  %active_entities.i = getelementptr i8, ptr %10, i32 292
  %14 = ptrtoint ptr %active_entities.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_entities.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %bfq_no_longer_next_in_service.exit.bfq_entity_service_tree.exit_crit_edge, label %bfq_no_longer_next_in_service.exit.for.inc_crit_edge

bfq_no_longer_next_in_service.exit.for.inc_crit_edge: ; preds = %bfq_no_longer_next_in_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

bfq_no_longer_next_in_service.exit.bfq_entity_service_tree.exit_crit_edge: ; preds = %bfq_no_longer_next_in_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit

cond.true.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i = getelementptr i8, ptr %10, i32 -74
  %16 = ptrtoint ptr %ioprio_class.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ioprio_class.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  br label %bfq_entity_service_tree.exit

bfq_entity_service_tree.exit:                     ; preds = %cond.true.i.i, %bfq_no_longer_next_in_service.exit.bfq_entity_service_tree.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.i.i, %cond.true.i.i ], [ 1, %bfq_no_longer_next_in_service.exit.bfq_entity_service_tree.exit_crit_edge ]
  %.in = getelementptr inbounds %struct.bfq_entity, ptr %10, i32 0, i32 15
  %18 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.in, align 4
  %service_tree.i = getelementptr inbounds %struct.bfq_sched_data, ptr %19, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %cond.i.i
  tail call fastcc void @bfq_active_extract(ptr noundef %add.ptr.i, ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %bfq_entity_service_tree.exit, %bfq_no_longer_next_in_service.exit.for.inc_crit_edge
  %20 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %my_sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %10, i32 0, i32 14
  %22 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i31 = icmp eq ptr %23, null
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 -88
  %spec.select.i = select i1 %tobool.not.i31, ptr %add.ptr.i32, ptr null
  %tobool7.not37 = icmp eq ptr %10, null
  br i1 %tobool7.not37, label %for.end.cleanup16_crit_edge, label %for.end.for.body8_crit_edge

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.end.cleanup16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

for.body8:                                        ; preds = %for.inc14.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %entity.138 = phi ptr [ %27, %for.inc14.for.body8_crit_edge ], [ %10, %for.end.for.body8_crit_edge ]
  %sched_data10 = getelementptr inbounds %struct.bfq_entity, ptr %entity.138, i32 0, i32 15
  %24 = ptrtoint ptr %sched_data10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sched_data10, align 4
  %call11 = tail call fastcc zeroext i1 @bfq_update_next_in_service(ptr noundef %25, ptr noundef null, i1 noundef zeroext false)
  br i1 %call11, label %for.inc14, label %for.body8.cleanup16_crit_edge

for.body8.cleanup16_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

for.inc14:                                        ; preds = %for.body8
  %parent = getelementptr inbounds %struct.bfq_entity, ptr %entity.138, i32 0, i32 13
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 4
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %for.inc14.cleanup16_crit_edge, label %for.inc14.for.body8_crit_edge

for.inc14.for.body8_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.inc14.cleanup16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc14.cleanup16_crit_edge, %for.body8.cleanup16_crit_edge, %for.end.cleanup16_crit_edge, %for.end.thread, %entry.cleanup16_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup16_crit_edge ], [ %spec.select.i, %for.end.cleanup16_crit_edge ], [ %spec.select.i43, %for.end.thread ], [ %spec.select.i, %for.body8.cleanup16_crit_edge ], [ %spec.select.i, %for.inc14.cleanup16_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bfq_update_next_in_service(ptr noundef %sd, ptr noundef %new_entity, i1 noundef zeroext %expiration) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %next_in_service1 = getelementptr inbounds %struct.bfq_sched_data, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %next_in_service1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_in_service1, align 4
  %tobool.not = icmp eq ptr %new_entity, null
  %cmp.not = icmp eq ptr %1, %new_entity
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.then19_crit_edge, label %if.then

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.if.then24_crit_edge, label %if.then4

if.then.if.then24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then4:                                         ; preds = %if.then
  %my_sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %new_entity, i32 0, i32 14
  %2 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %3, null
  %add.ptr.i.i = getelementptr i8, ptr %new_entity, i32 -88
  %tobool.not2.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %tobool.not2.i, %tobool.not.i.i
  br i1 %tobool.not.i, label %if.then4.bfq_class_idx.exit_crit_edge, label %cond.true.i

if.then4.bfq_class_idx.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_class_idx.exit

cond.true.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i = getelementptr i8, ptr %new_entity, i32 -74
  %4 = ptrtoint ptr %ioprio_class.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioprio_class.i, align 2
  %conv.i = zext i16 %5 to i32
  %sub.i = add nsw i32 %conv.i, -1
  br label %bfq_class_idx.exit

bfq_class_idx.exit:                               ; preds = %cond.true.i, %if.then4.bfq_class_idx.exit_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ 1, %if.then4.bfq_class_idx.exit_crit_edge ]
  %my_sched_data.i.i53 = getelementptr inbounds %struct.bfq_entity, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %my_sched_data.i.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %my_sched_data.i.i53, align 8
  %tobool.not.i.i54 = icmp ne ptr %7, null
  %add.ptr.i.i55 = getelementptr i8, ptr %1, i32 -88
  %tobool.not2.i56 = icmp eq ptr %add.ptr.i.i55, null
  %tobool.not.i57 = or i1 %tobool.not2.i56, %tobool.not.i.i54
  br i1 %tobool.not.i57, label %bfq_class_idx.exit.bfq_class_idx.exit63_crit_edge, label %cond.true.i61

bfq_class_idx.exit.bfq_class_idx.exit63_crit_edge: ; preds = %bfq_class_idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_class_idx.exit63

cond.true.i61:                                    ; preds = %bfq_class_idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i58 = getelementptr i8, ptr %1, i32 -74
  %8 = ptrtoint ptr %ioprio_class.i58 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ioprio_class.i58, align 2
  %conv.i59 = zext i16 %9 to i32
  %sub.i60 = add nsw i32 %conv.i59, -1
  br label %bfq_class_idx.exit63

bfq_class_idx.exit63:                             ; preds = %cond.true.i61, %bfq_class_idx.exit.bfq_class_idx.exit63_crit_edge
  %cond.i62 = phi i32 [ %sub.i60, %cond.true.i61 ], [ 1, %bfq_class_idx.exit.bfq_class_idx.exit63_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond.i62)
  %cmp6 = icmp eq i32 %cond.i, %cond.i62
  br i1 %cmp6, label %land.lhs.true7, label %bfq_class_idx.exit63.if.then19_crit_edge

bfq_class_idx.exit63.if.then19_crit_edge:         ; preds = %bfq_class_idx.exit63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

land.lhs.true7:                                   ; preds = %bfq_class_idx.exit63
  %service_tree = getelementptr inbounds %struct.bfq_sched_data, ptr %sd, i32 0, i32 2
  %start = getelementptr inbounds %struct.bfq_entity, ptr %new_entity, i32 0, i32 2
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %vtime = getelementptr %struct.bfq_service_tree, ptr %service_tree, i32 %cond.i, i32 4
  %12 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vtime, align 8
  %sub.i64 = sub i64 %11, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i64)
  %cmp.i = icmp slt i64 %sub.i64, 1
  br i1 %cmp.i, label %if.end, label %land.lhs.true7.if.then19_crit_edge

land.lhs.true7.if.then19_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end:                                           ; preds = %land.lhs.true7
  %finish = getelementptr inbounds %struct.bfq_entity, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %finish, align 8
  %finish10 = getelementptr inbounds %struct.bfq_entity, ptr %new_entity, i32 0, i32 3
  %16 = ptrtoint ptr %finish10 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %finish10, align 8
  %sub.i66 = sub i64 %15, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i66)
  %cmp.i67 = icmp sgt i64 %sub.i66, 0
  br i1 %cmp.i67, label %if.end.if.then24_crit_edge, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %land.lhs.true7.if.then19_crit_edge, %bfq_class_idx.exit63.if.then19_crit_edge, %entry.if.then19_crit_edge
  %service_tree.i = getelementptr inbounds %struct.bfq_sched_data, ptr %sd, i32 0, i32 2
  %bfq_class_idle_last_service.i = getelementptr inbounds %struct.bfq_sched_data, ptr %sd, i32 0, i32 3
  %18 = ptrtoint ptr %bfq_class_idle_last_service.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bfq_class_idle_last_service.i, align 8
  %add.i = add i32 %19, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i69 = sub i32 %add.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i69)
  %cmp.i70 = icmp slt i32 %sub.i69, 0
  br i1 %cmp.i70, label %do.end.i, label %if.then19.for.body.i.preheader_crit_edge

if.then19.for.body.i.preheader_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.bfq_sched_data, ptr %sd, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %add.ptr.i, align 8
  %cmp1.i = icmp eq ptr %22, null
  %spec.select.i = select i1 %cmp1.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %bfq_class_idle_last_service.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bfq_class_idle_last_service.i, align 8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %if.then19.for.body.i.preheader_crit_edge
  %class_idx.230.i.ph = phi i32 [ 0, %if.then19.for.body.i.preheader_crit_edge ], [ %spec.select.i, %do.end.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %class_idx.230.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %class_idx.230.i.ph, %for.body.i.preheader ]
  %add.ptr6.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %class_idx.230.i
  %25 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd, align 8
  %27 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %add.ptr6.i, align 8
  %cmp.i.i = icmp eq ptr %28, null
  br i1 %cmp.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %tobool.not.i71 = icmp eq ptr %26, null
  %29 = or i1 %tobool.not.i71, %expiration
  %min_start.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %28, i32 0, i32 5
  %30 = ptrtoint ptr %min_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %min_start.i.i.i, align 8
  %vtime.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %class_idx.230.i, i32 4
  %32 = ptrtoint ptr %vtime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vtime.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %31, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %sub.i.i.i.i, 1
  %retval.0.i.i.i = select i1 %cmp.i.i.i.i, i64 %33, i64 %31
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %retval.0.i.i.i)
  %cmp.i.i.i = icmp ult i64 %33, %retval.0.i.i.i
  %or.cond.i.i = select i1 %29, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.i, label %if.end.i.i.if.end2.i.i_crit_edge

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %34 = ptrtoint ptr %vtime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %retval.0.i.i.i, ptr %vtime.i.i.i, align 8
  %first_idle1.i.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %class_idx.230.i, i32 2
  %35 = ptrtoint ptr %first_idle1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %first_idle1.i.i.i.i, align 8
  %last_idle2.i.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i, i32 %class_idx.230.i, i32 3
  %37 = ptrtoint ptr %last_idle2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %last_idle2.i.i.i.i, align 4
  %39 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %add.ptr6.i, align 8
  %cmp.i.i10.i.i = icmp ne ptr %40, null
  %tobool.not.i.i.i.i = icmp eq ptr %38, null
  %or.cond.i.i.i.i = select i1 %cmp.i.i10.i.i, i1 true, i1 %tobool.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %if.then.i.i.i
  %finish.i.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %finish.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %finish.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i64 %42, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i64 %sub.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %vtime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %vtime.i.i.i, align 8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %tobool7.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool7.not.i.i.i.i, label %if.end.i.i.i.i.if.end2.i.i_crit_edge, label %land.lhs.true8.i.i.i.i

if.end.i.i.i.i.if.end2.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i.i

land.lhs.true8.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  %finish9.i.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %36, i32 0, i32 3
  %44 = ptrtoint ptr %finish9.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %finish9.i.i.i.i, align 8
  %46 = ptrtoint ptr %vtime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vtime.i.i.i, align 8
  %sub.i26.i.i.i.i = sub i64 %45, %47
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i26.i.i.i.i)
  %cmp.i27.i.i.i.i = icmp slt i64 %sub.i26.i.i.i.i, 1
  br i1 %cmp.i27.i.i.i.i, label %if.then13.i.i.i.i, label %land.lhs.true8.i.i.i.i.if.end2.i.i_crit_edge

land.lhs.true8.i.i.i.i.if.end2.i.i_crit_edge:     ; preds = %land.lhs.true8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i.i

if.then13.i.i.i.i:                                ; preds = %land.lhs.true8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bfq_put_idle_entity(ptr noundef %add.ptr6.i, ptr noundef nonnull %36) #12
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then13.i.i.i.i, %land.lhs.true8.i.i.i.i.if.end2.i.i_crit_edge, %if.end.i.i.i.i.if.end2.i.i_crit_edge, %if.end.i.i.if.end2.i.i_crit_edge
  %48 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %node.030.i.i.i = load ptr, ptr %add.ptr6.i, align 4
  %tobool.not31.i.i.i = icmp eq ptr %node.030.i.i.i, null
  br i1 %tobool.not31.i.i.i, label %if.end2.i.i.for.inc.i_crit_edge, label %if.end2.i.i.left.i.i.i_crit_edge

if.end2.i.i.left.i.i.i_crit_edge:                 ; preds = %if.end2.i.i
  br label %left.i.i.i

if.end2.i.i.for.inc.i_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

while.cond.i.i.i:                                 ; preds = %if.end14.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.1.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %node.0.i.i.i = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.for.inc.i_crit_edge, label %while.cond.i.i.i.left.i.i.i.backedge_crit_edge

while.cond.i.i.i.left.i.i.i.backedge_crit_edge:   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %left.i.i.i.backedge

while.cond.i.i.i.for.inc.i_crit_edge:             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

left.i.i.i:                                       ; preds = %left.i.i.i.backedge, %if.end2.i.i.left.i.i.i_crit_edge
  %node.1.i.i.i = phi ptr [ %node.1.i.i.i.be, %left.i.i.i.backedge ], [ %node.030.i.i.i, %if.end2.i.i.left.i.i.i_crit_edge ]
  %first.1.i.i.i = phi ptr [ %first.1.i.i.i.be, %left.i.i.i.backedge ], [ null, %if.end2.i.i.left.i.i.i_crit_edge ]
  %start.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %node.1.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %start.i.i.i, align 8
  %sub.i.i11.i.i = sub i64 %51, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i11.i.i)
  %cmp.i.i12.i.i = icmp slt i64 %sub.i.i11.i.i, 1
  %spec.select.i.i.i = select i1 %cmp.i.i12.i.i, ptr %node.1.i.i.i, ptr %first.1.i.i.i
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.1.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool3.not.i.i.i, label %left.i.i.i.if.end14.i.i.i_crit_edge, label %if.then4.i.i.i

left.i.i.i.if.end14.i.i.i_crit_edge:              ; preds = %left.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i.i

if.then4.i.i.i:                                   ; preds = %left.i.i.i
  %min_start.i13.i.i = getelementptr inbounds %struct.bfq_entity, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %min_start.i13.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %min_start.i13.i.i, align 8
  %sub.i27.i.i.i = sub i64 %55, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i27.i.i.i)
  %cmp.i28.i.i.i = icmp slt i64 %sub.i27.i.i.i, 1
  br i1 %cmp.i28.i.i.i, label %if.then4.i.i.i.left.i.i.i.backedge_crit_edge, label %if.then4.i.i.i.if.end14.i.i.i_crit_edge

if.then4.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i.i

if.then4.i.i.i.left.i.i.i.backedge_crit_edge:     ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %left.i.i.i.backedge

left.i.i.i.backedge:                              ; preds = %if.then4.i.i.i.left.i.i.i.backedge_crit_edge, %while.cond.i.i.i.left.i.i.i.backedge_crit_edge
  %node.1.i.i.i.be = phi ptr [ %53, %if.then4.i.i.i.left.i.i.i.backedge_crit_edge ], [ %node.0.i.i.i, %while.cond.i.i.i.left.i.i.i.backedge_crit_edge ]
  %first.1.i.i.i.be = phi ptr [ %spec.select.i.i.i, %if.then4.i.i.i.left.i.i.i.backedge_crit_edge ], [ null, %while.cond.i.i.i.left.i.i.i.backedge_crit_edge ]
  br label %left.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then4.i.i.i.if.end14.i.i.i_crit_edge, %left.i.i.i.if.end14.i.i.i_crit_edge
  %tobool15.not.i.i.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %while.cond.i.i.i, label %if.end14.i.i.i.if.then24_crit_edge

if.end14.i.i.i.if.then24_crit_edge:               ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.inc.i:                                        ; preds = %while.cond.i.i.i.for.inc.i_crit_edge, %if.end2.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %class_idx.230.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.if.end31_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end31_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %if.end14.i.i.i.if.then24_crit_edge, %if.end.if.then24_crit_edge, %if.then.if.then24_crit_edge
  %next_in_service.1.ph = phi ptr [ %new_entity, %if.end.if.then24_crit_edge ], [ %new_entity, %if.then.if.then24_crit_edge ], [ %spec.select.i.i.i, %if.end14.i.i.i.if.then24_crit_edge ]
  %sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %next_in_service.1.ph, i32 0, i32 15
  %56 = ptrtoint ptr %sched_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sched_data.i, align 4
  %my_entity.i = getelementptr i8, ptr %57, i32 184
  %58 = ptrtoint ptr %my_entity.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %my_entity.i, align 8
  %tobool.not.i72 = icmp eq ptr %59, null
  br i1 %tobool.not.i72, label %if.then24.bfq_update_parent_budget.exit_crit_edge, label %if.then.i

if.then24.bfq_update_parent_budget.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_parent_budget.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %budget.i = getelementptr inbounds %struct.bfq_entity, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %budget.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %budget.i, align 4
  %budget1.i = getelementptr inbounds %struct.bfq_entity, ptr %next_in_service.1.ph, i32 0, i32 7
  %62 = ptrtoint ptr %budget1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %budget1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i73 = icmp sgt i32 %61, %63
  %64 = ptrtoint ptr %budget.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %budget.i, align 4
  br label %bfq_update_parent_budget.exit

bfq_update_parent_budget.exit:                    ; preds = %if.then.i, %if.then24.bfq_update_parent_budget.exit_crit_edge
  %ret.1.off0.i = phi i1 [ %cmp.i73, %if.then.i ], [ false, %if.then24.bfq_update_parent_budget.exit_crit_edge ]
  %65 = ptrtoint ptr %next_in_service1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %next_in_service1, align 4
  %tobool28.not = icmp eq ptr %66, null
  %spec.select52 = select i1 %tobool28.not, i1 true, i1 %ret.1.off0.i
  br label %if.end31

if.end31:                                         ; preds = %bfq_update_parent_budget.exit, %for.inc.i.if.end31_crit_edge
  %next_in_service.184 = phi ptr [ %next_in_service.1.ph, %bfq_update_parent_budget.exit ], [ null, %for.inc.i.if.end31_crit_edge ]
  %parent_sched_may_change.0.off0 = phi i1 [ %spec.select52, %bfq_update_parent_budget.exit ], [ false, %for.inc.i.if.end31_crit_edge ]
  %67 = ptrtoint ptr %next_in_service1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %next_in_service.184, ptr %next_in_service1, align 4
  ret i1 %parent_sched_may_change.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bfq_bfqd_reset_in_service(ptr noundef %bfqd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_service_queue = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 15
  %0 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_service_queue, align 8
  %entity = getelementptr inbounds %struct.bfq_queue, ptr %1, i32 0, i32 18
  tail call void @bfq_clear_bfqq_wait_request(ptr noundef %1) #12
  %idle_slice_timer = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 14
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %idle_slice_timer) #12
  %2 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %in_service_queue, align 8
  %tobool.not18 = icmp eq ptr %entity, null
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %entity1.019 = phi ptr [ %7, %for.body.for.body_crit_edge ], [ %entity, %entry.for.body_crit_edge ]
  %sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity1.019, i32 0, i32 15
  %3 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sched_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %4, align 8
  %parent = getelementptr inbounds %struct.bfq_entity, ptr %entity1.019, i32 0, i32 13
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %on_st_or_in_serv = getelementptr inbounds %struct.bfq_queue, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %on_st_or_in_serv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %on_st_or_in_serv, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %for.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  tail call void @bfq_put_queue(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then.cleanup7_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %for.end.if.end6_crit_edge
  br label %cleanup7

cleanup7:                                         ; preds = %if.end6, %if.then.cleanup7_crit_edge
  %retval.1 = phi i1 [ false, %if.end6 ], [ true, %if.then.cleanup7_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_clear_bfqq_wait_request(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_put_queue(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_deactivate_bfqq(ptr nocapture readnone %bfqd, ptr noundef %bfqq, i1 noundef zeroext %ins_into_idle_tree, i1 noundef zeroext %expiration) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entity2 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %tobool.not44.i = icmp eq ptr %entity2, null
  br i1 %tobool.not44.i, label %entry.bfq_deactivate_entity.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.bfq_deactivate_entity.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.cond.i.bfq_deactivate_entity.exit_crit_edge, label %for.cond.i.land.rhs.i_crit_edge

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.cond.i.bfq_deactivate_entity.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %entity.addr.046.i = phi ptr [ %1, %for.cond.i.land.rhs.i_crit_edge ], [ %entity2, %entry.land.rhs.i_crit_edge ]
  %ins_into_idle_tree.addr.0.off045.i = phi i1 [ true, %for.cond.i.land.rhs.i_crit_edge ], [ %ins_into_idle_tree, %entry.land.rhs.i_crit_edge ]
  %parent2.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.046.i, i32 0, i32 13
  %0 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2.i, align 4
  %sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.046.i, i32 0, i32 15
  %2 = ptrtoint ptr %sched_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data.i, align 4
  %call.i = tail call zeroext i1 @__bfq_deactivate_entity(ptr noundef nonnull %entity.addr.046.i, i1 noundef zeroext %ins_into_idle_tree.addr.0.off045.i) #12
  br i1 %call.i, label %if.end.i, label %land.rhs.i.bfq_deactivate_entity.exit_crit_edge

land.rhs.i.bfq_deactivate_entity.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

if.end.i:                                         ; preds = %land.rhs.i
  %next_in_service.i = getelementptr inbounds %struct.bfq_sched_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %next_in_service.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_in_service.i, align 4
  %cmp.i = icmp eq ptr %5, %entity.addr.046.i
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call fastcc zeroext i1 @bfq_update_next_in_service(ptr noundef %3, ptr noundef null, i1 noundef zeroext %expiration) #12
  %6 = ptrtoint ptr %next_in_service.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load ptr, ptr %next_in_service.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %7 = phi ptr [ %.pr.i, %if.then5.i ], [ %5, %if.end.i.if.end8.i_crit_edge ]
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %for.cond.i, label %lor.lhs.false.i.for.end.i_crit_edge

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %lor.lhs.false.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %tobool15.not49.i = icmp eq ptr %1, null
  br i1 %tobool15.not49.i, label %for.end.i.bfq_deactivate_entity.exit_crit_edge, label %for.end.i.for.body16.i_crit_edge

for.end.i.for.body16.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body16.i

for.end.i.bfq_deactivate_entity.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

for.body16.i:                                     ; preds = %for.inc23.i.for.body16.i_crit_edge, %for.end.i.for.body16.i_crit_edge
  %entity.addr.150.i = phi ptr [ %28, %for.inc23.i.for.body16.i_crit_edge ], [ %1, %for.end.i.for.body16.i_crit_edge ]
  %sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 15
  %10 = ptrtoint ptr %sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched_data.i.i, align 4
  %my_sched_data.i.i.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 14
  %12 = ptrtoint ptr %my_sched_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %my_sched_data.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp ne ptr %13, null
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %entity.addr.150.i, i32 -88
  %tobool.not2.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %tobool.not.i.i.i.i = or i1 %tobool.not2.i.i.i.i, %tobool.not.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i, label %for.body16.i.bfq_entity_service_tree.exit.i.i_crit_edge, label %cond.true.i.i.i.i

for.body16.i.bfq_entity_service_tree.exit.i.i_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit.i.i

cond.true.i.i.i.i:                                ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i.i.i = getelementptr i8, ptr %entity.addr.150.i, i32 -74
  %14 = ptrtoint ptr %ioprio_class.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ioprio_class.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %15 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -1
  br label %bfq_entity_service_tree.exit.i.i

bfq_entity_service_tree.exit.i.i:                 ; preds = %cond.true.i.i.i.i, %for.body16.i.bfq_entity_service_tree.exit.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %sub.i.i.i.i, %cond.true.i.i.i.i ], [ 1, %for.body16.i.bfq_entity_service_tree.exit.i.i_crit_edge ]
  %service_tree.i.i.i = getelementptr inbounds %struct.bfq_sched_data, ptr %11, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i.i, i32 %cond.i.i.i.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %cmp.i.i = icmp eq ptr %17, %entity.addr.150.i
  br i1 %cmp.i.i, label %if.then.i.i, label %bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge

bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge: ; preds = %bfq_entity_service_tree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.sink.split.i.i

if.then.i.i:                                      ; preds = %bfq_entity_service_tree.exit.i.i
  %service.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 6
  %18 = ptrtoint ptr %service.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %service.i.i, align 8
  tail call fastcc void @bfq_calc_finish(ptr noundef nonnull %entity.addr.150.i, i32 noundef %19) #12
  %finish.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 3
  %20 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %finish.i.i, align 8
  %start.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 2
  %22 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %start.i.i, align 8
  %tree.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 4
  %23 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tree.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge, label %if.then.i.i.if.end2.sink.split.i.i_crit_edge

if.then.i.i.if.end2.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.sink.split.i.i

if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bfq_requeue_entity.exit.i

if.end2.sink.split.i.i:                           ; preds = %if.then.i.i.if.end2.sink.split.i.i_crit_edge, %bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge
  tail call fastcc void @bfq_active_extract(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %entity.addr.150.i) #12
  br label %__bfq_requeue_entity.exit.i

__bfq_requeue_entity.exit.i:                      ; preds = %if.end2.sink.split.i.i, %if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge
  tail call fastcc void @bfq_update_fin_time_enqueue(ptr noundef nonnull %entity.addr.150.i, ptr noundef %add.ptr.i.i.i, i1 noundef zeroext false) #12
  %25 = ptrtoint ptr %sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sched_data.i.i, align 4
  %call19.i = tail call fastcc zeroext i1 @bfq_update_next_in_service(ptr noundef %26, ptr noundef nonnull %entity.addr.150.i, i1 noundef zeroext %expiration) #12
  %brmerge.i = or i1 %call19.i, %expiration
  br i1 %brmerge.i, label %for.inc23.i, label %__bfq_requeue_entity.exit.i.bfq_deactivate_entity.exit_crit_edge

__bfq_requeue_entity.exit.i.bfq_deactivate_entity.exit_crit_edge: ; preds = %__bfq_requeue_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

for.inc23.i:                                      ; preds = %__bfq_requeue_entity.exit.i
  %parent24.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.150.i, i32 0, i32 13
  %27 = ptrtoint ptr %parent24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent24.i, align 4
  %tobool15.not.i = icmp eq ptr %28, null
  br i1 %tobool15.not.i, label %for.inc23.i.bfq_deactivate_entity.exit_crit_edge, label %for.inc23.i.for.body16.i_crit_edge

for.inc23.i.for.body16.i_crit_edge:               ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i

for.inc23.i.bfq_deactivate_entity.exit_crit_edge: ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_deactivate_entity.exit

bfq_deactivate_entity.exit:                       ; preds = %for.inc23.i.bfq_deactivate_entity.exit_crit_edge, %__bfq_requeue_entity.exit.i.bfq_deactivate_entity.exit_crit_edge, %for.end.i.bfq_deactivate_entity.exit_crit_edge, %land.rhs.i.bfq_deactivate_entity.exit_crit_edge, %for.cond.i.bfq_deactivate_entity.exit_crit_edge, %entry.bfq_deactivate_entity.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_activate_bfqq(ptr nocapture readnone %bfqd, ptr noundef %bfqq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %call = tail call i32 @bfq_bfqq_non_blocking_wait_rq(ptr noundef %bfqq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  tail call fastcc void @bfq_activate_requeue_entity(ptr noundef %entity1, i1 noundef zeroext %tobool, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call void @bfq_clear_bfqq_non_blocking_wait_rq(ptr noundef %bfqq) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_activate_requeue_entity(ptr noundef %entity, i1 noundef zeroext %non_blocking_wait_rq, i1 noundef zeroext %requeue, i1 noundef zeroext %expiration) unnamed_addr #4 align 64 {
entry:
  %pid_str.i.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not11 = icmp eq ptr %entity, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %entity.addr.012 = phi ptr [ %89, %for.inc.for.body_crit_edge ], [ %entity, %entry.for.body_crit_edge ]
  %sched_data = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 15
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %my_sched_data.i.i.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 14
  %2 = ptrtoint ptr %my_sched_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_sched_data.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp ne ptr %3, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entity.addr.012, i32 -88
  %tobool.not2.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool.not.i.i.i = or i1 %tobool.not2.i.i.i, %tobool.not.i.i.i.i
  br i1 %tobool.not.i.i.i, label %for.body.bfq_entity_service_tree.exit.i_crit_edge, label %cond.true.i.i.i

for.body.bfq_entity_service_tree.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit.i

cond.true.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i.i = getelementptr i8, ptr %entity.addr.012, i32 -74
  %4 = ptrtoint ptr %ioprio_class.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioprio_class.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  br label %bfq_entity_service_tree.exit.i

bfq_entity_service_tree.exit.i:                   ; preds = %cond.true.i.i.i, %for.body.bfq_entity_service_tree.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.i.i.i, %cond.true.i.i.i ], [ 1, %for.body.bfq_entity_service_tree.exit.i_crit_edge ]
  %service_tree.i.i = getelementptr inbounds %struct.bfq_sched_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %cmp.i = icmp eq ptr %7, %entity.addr.012
  br i1 %cmp.i, label %bfq_entity_service_tree.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

bfq_entity_service_tree.exit.i.if.then.i_crit_edge: ; preds = %bfq_entity_service_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %bfq_entity_service_tree.exit.i
  %add.ptr.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i
  %tree.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 4
  %8 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tree.i, align 8
  %cmp1.i = icmp eq ptr %9, %add.ptr.i.i
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %bfq_entity_service_tree.exit.i.if.then.i_crit_edge
  br i1 %tobool.not.i.i.i, label %if.then.i.bfq_entity_service_tree.exit.i.i_crit_edge, label %cond.true.i.i.i.i

if.then.i.bfq_entity_service_tree.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit.i.i

cond.true.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i.i.i = getelementptr i8, ptr %entity.addr.012, i32 -74
  %10 = ptrtoint ptr %ioprio_class.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ioprio_class.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %11 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -1
  br label %bfq_entity_service_tree.exit.i.i

bfq_entity_service_tree.exit.i.i:                 ; preds = %cond.true.i.i.i.i, %if.then.i.bfq_entity_service_tree.exit.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %sub.i.i.i.i, %cond.true.i.i.i.i ], [ 1, %if.then.i.bfq_entity_service_tree.exit.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i.i
  br i1 %cmp.i, label %if.then.i.i, label %bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge

bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge: ; preds = %bfq_entity_service_tree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.sink.split.i.i

if.then.i.i:                                      ; preds = %bfq_entity_service_tree.exit.i.i
  %service.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 6
  %12 = ptrtoint ptr %service.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %service.i.i, align 8
  call fastcc void @bfq_calc_finish(ptr noundef nonnull %entity.addr.012, i32 noundef %13) #12
  %finish.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 3
  %14 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %finish.i.i, align 8
  %start.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 2
  %16 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %start.i.i, align 8
  %tree.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 4
  %17 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tree.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge, label %if.then.i.i.if.end2.sink.split.i.i_crit_edge

if.then.i.i.if.end2.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.sink.split.i.i

if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bfq_requeue_entity.exit.i

if.end2.sink.split.i.i:                           ; preds = %if.then.i.i.if.end2.sink.split.i.i_crit_edge, %bfq_entity_service_tree.exit.i.i.if.end2.sink.split.i.i_crit_edge
  call fastcc void @bfq_active_extract(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %entity.addr.012) #12
  br label %__bfq_requeue_entity.exit.i

__bfq_requeue_entity.exit.i:                      ; preds = %if.end2.sink.split.i.i, %if.then.i.i.__bfq_requeue_entity.exit.i_crit_edge
  call fastcc void @bfq_update_fin_time_enqueue(ptr noundef nonnull %entity.addr.012, ptr noundef %add.ptr.i.i.i, i1 noundef zeroext false) #12
  br label %__bfq_activate_requeue_entity.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  br i1 %tobool.not.i.i.i, label %if.else.i.bfq_entity_service_tree.exit.i18.i_crit_edge, label %cond.true.i.i.i15.i

if.else.i.bfq_entity_service_tree.exit.i18.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_entity_service_tree.exit.i18.i

cond.true.i.i.i15.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio_class.i.i.i12.i = getelementptr i8, ptr %entity.addr.012, i32 -74
  %19 = ptrtoint ptr %ioprio_class.i.i.i12.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ioprio_class.i.i.i12.i, align 2
  %conv.i.i.i13.i = zext i16 %20 to i32
  %sub.i.i.i14.i = add nsw i32 %conv.i.i.i13.i, -1
  br label %bfq_entity_service_tree.exit.i18.i

bfq_entity_service_tree.exit.i18.i:               ; preds = %cond.true.i.i.i15.i, %if.else.i.bfq_entity_service_tree.exit.i18.i_crit_edge
  %cond.i.i.i16.i = phi i32 [ %sub.i.i.i14.i, %cond.true.i.i.i15.i ], [ 1, %if.else.i.bfq_entity_service_tree.exit.i18.i_crit_edge ]
  br i1 %non_blocking_wait_rq, label %land.lhs.true.i.i, label %bfq_entity_service_tree.exit.i18.i.if.else.i.i_crit_edge

bfq_entity_service_tree.exit.i18.i.if.else.i.i_crit_edge: ; preds = %bfq_entity_service_tree.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %bfq_entity_service_tree.exit.i18.i
  %vtime.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 4
  %21 = ptrtoint ptr %vtime.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vtime.i.i, align 8
  %finish.i19.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 3
  %23 = ptrtoint ptr %finish.i19.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %finish.i19.i, align 8
  %sub.i.i20.i = sub i64 %22, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i20.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i20.i, 1
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %bfq_entity_service_tree.exit.i18.i.if.else.i.i_crit_edge
  %vtime4.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %min_vstart.0.in.i.i = phi ptr [ %vtime4.i.i, %if.else.i.i ], [ %finish.i19.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %backshifted.0.off0.i.i = phi i1 [ false, %if.else.i.i ], [ true, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %25 = ptrtoint ptr %min_vstart.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %min_vstart.0.i.i = load i64, ptr %min_vstart.0.in.i.i, align 8
  %idle.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 1
  %cmp.i22.i = icmp eq ptr %9, %idle.i.i
  br i1 %cmp.i22.i, label %if.then5.i.i, label %if.else10.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %tobool.not.i.i46.i.i = icmp eq ptr %3, null
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i46.i.i, ptr %add.ptr.i.i.i.i, ptr null
  %first_idle.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 2
  %26 = ptrtoint ptr %first_idle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %first_idle.i.i.i, align 8
  %cmp.i47.i.i = icmp eq ptr %27, %entity.addr.012
  br i1 %cmp.i47.i.i, label %if.then.i.i.i, label %if.then5.i.i.if.end.i.i.i_crit_edge

if.then5.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i.i = call ptr @rb_next(ptr noundef nonnull %entity.addr.012) #12
  %28 = ptrtoint ptr %first_idle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i.i.i, ptr %first_idle.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then5.i.i.if.end.i.i.i_crit_edge
  %last_idle.i.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 3
  %29 = ptrtoint ptr %last_idle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %last_idle.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %30, %entity.addr.012
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i.i.if.end10.i.i.i_crit_edge

if.end.i.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i.i = call ptr @rb_prev(ptr noundef nonnull %entity.addr.012) #12
  %31 = ptrtoint ptr %last_idle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %last_idle.i.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end10.i.i.i_crit_edge
  %32 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tree.i, align 8
  call void @rb_erase(ptr noundef nonnull %entity.addr.012, ptr noundef %9) #12
  %tobool.not.i.i23.i = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %tobool.not.i.i23.i, label %if.end10.i.i.i.bfq_idle_extract.exit.i.i_crit_edge, label %if.then11.i.i.i

if.end10.i.i.i.bfq_idle_extract.exit.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_idle_extract.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.end10.i.i.i
  %bfqq_list.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i.i.i, i32 0, i32 24
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %bfqq_list.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then11.i.i.i.list_del.exit.i.i.i_crit_edge

if.then11.i.i.i.list_del.exit.i.i.i_crit_edge:    ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i.i.i, i32 0, i32 24, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %bfqq_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfqq_list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.then11.i.i.i.list_del.exit.i.i.i_crit_edge
  %39 = ptrtoint ptr %bfqq_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %bfqq_list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i.i.i, i32 0, i32 24, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  br label %bfq_idle_extract.exit.i.i

bfq_idle_extract.exit.i.i:                        ; preds = %list_del.exit.i.i.i, %if.end10.i.i.i.bfq_idle_extract.exit.i.i_crit_edge
  %finish6.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 3
  %41 = ptrtoint ptr %finish6.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %finish6.i.i, align 8
  %sub.i48.i.i = sub i64 %min_vstart.0.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i48.i.i)
  %cmp.i49.i.i = icmp slt i64 %sub.i48.i.i, 1
  %spec.select.i.i = select i1 %cmp.i49.i.i, i64 %42, i64 %min_vstart.0.i.i
  %start.i24.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 2
  %43 = ptrtoint ptr %start.i24.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %spec.select.i.i, ptr %start.i24.i, align 8
  br label %if.end12.i.i

if.else10.i.i:                                    ; preds = %if.end.i.i
  %start11.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 2
  %44 = ptrtoint ptr %start11.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %min_vstart.0.i.i, ptr %start11.i.i, align 8
  %weight.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 10
  %45 = ptrtoint ptr %weight.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %weight.i.i, align 8
  %wsum.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i, i32 5
  %47 = ptrtoint ptr %wsum.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wsum.i.i, align 8
  %add.i.i = add i32 %48, %46
  store i32 %add.i.i, ptr %wsum.i.i, align 8
  %49 = ptrtoint ptr %my_sched_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %my_sched_data.i.i.i.i, align 8
  %tobool.not.i49.i.i.i = icmp ne ptr %50, null
  %tobool.not.i53.i.i = or i1 %tobool.not2.i.i.i, %tobool.not.i49.i.i.i
  br i1 %tobool.not.i53.i.i, label %if.else10.i.i.bfq_get_entity.exit.i.i_crit_edge, label %if.then.i55.i.i

if.else10.i.i.bfq_get_entity.exit.i.i_crit_edge:  ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_get_entity.exit.i.i

if.then.i55.i.i:                                  ; preds = %if.else10.i.i
  %51 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i.i.i, align 8
  %inc.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i, ptr %add.ptr.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str.i.i.i) #12
  %bfqd.i.i.i = getelementptr i8, ptr %entity.addr.012, i32 -80
  %53 = call ptr @memset(ptr %pid_str.i.i.i, i32 255, i32 16)
  %54 = ptrtoint ptr %bfqd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bfqd.i.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %call1.i54.i.i = call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %57) #12
  br i1 %call1.i54.i.i, label %if.end.i56.i.i, label %if.then.i55.i.i.cleanup.i.i.i_crit_edge, !prof !52

if.then.i55.i.i.cleanup.i.i.i_crit_edge:          ; preds = %if.then.i55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i.i

if.end.i56.i.i:                                   ; preds = %if.then.i55.i.i
  %call.i30.i = call i32 @bfq_bfqq_sync(ptr noundef nonnull %add.ptr.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  %pid.i.i = getelementptr i8, ptr %entity.addr.012, i32 212
  %58 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.not.i.i = icmp eq i32 %59, -1
  %conv5.i.i = select i1 %tobool.not.i31.i, i32 65, i32 83
  br i1 %cmp.not.i.i, label %if.else.i33.i, label %if.then.i32.i

if.then.i32.i:                                    ; preds = %if.end.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pid_str.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %59, i32 noundef %conv5.i.i) #12
  br label %bfq_bfqq_name.exit.i

if.else.i33.i:                                    ; preds = %if.end.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pid_str.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv5.i.i) #12
  br label %bfq_bfqq_name.exit.i

bfq_bfqq_name.exit.i:                             ; preds = %if.else.i33.i, %if.then.i32.i
  %60 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i.i, label %bfq_bfqq_name.exit.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

bfq_bfqq_name.exit.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %bfq_bfqq_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %bfq_bfqq_name.exit.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i57.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i57.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %bfq_bfqq_name.exit.i.rcu_read_lock.exit.i.i.i_crit_edge
  %64 = ptrtoint ptr %bfqd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bfqd.i.i.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %blk_trace.i.i.i = getelementptr inbounds %struct.request_queue, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %blk_trace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %blk_trace.i.i.i, align 8
  %call11.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end20.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end20.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call13.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %land.lhs.true.i.i.i.do.end20.i.i.i_crit_edge, label %land.lhs.true15.i.i.i

land.lhs.true.i.i.i.do.end20.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i.i.i

land.lhs.true15.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b48.i.i.i = load i1, ptr @bfq_get_entity.__warned, align 1
  br i1 %.b48.i.i.i, label %land.lhs.true15.i.i.i.do.end20.i.i.i_crit_edge, label %if.then17.i.i.i

land.lhs.true15.i.i.i.do.end20.i.i.i_crit_edge:   ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20.i.i.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_get_entity.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 532, ptr noundef nonnull @.str.3) #12
  br label %do.end20.i.i.i

do.end20.i.i.i:                                   ; preds = %if.then17.i.i.i, %land.lhs.true15.i.i.i.do.end20.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end20.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end20.i.i.i_crit_edge
  %tobool22.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool22.not.i.i.i, label %do.end20.i.i.i.if.end34.i.i.i_crit_edge, label %if.then29.i.i.i, !prof !50

do.end20.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %do.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i.i

if.then29.i.i.i:                                  ; preds = %do.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call30.i.i.i = call ptr @bfqq_group(ptr noundef nonnull %add.ptr.i.i.i.i) #12
  %call31.i.i.i = call ptr @bfqg_to_blkg(ptr noundef %call30.i.i.i) #12
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %call31.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %blkcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %blkcg.i.i.i, align 4
  %72 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i.i.i, align 8
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %69, ptr noundef %71, ptr noundef nonnull @.str.16, ptr noundef nonnull %pid_str.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i, i32 noundef %73) #12
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.end20.i.i.i.if.end34.i.i.i_crit_edge
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end34.i.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i27.i

if.end34.i.i.i.rcu_read_unlock.exit.i_crit_edge:  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i27.i:                              ; preds = %if.end34.i.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i26.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i26.i, label %land.lhs.true.i27.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i27.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i27.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i28.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i28.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i28.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i27.i.rcu_read_unlock.exit.i_crit_edge, %if.end34.i.i.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %74 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i29.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i29.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %rcu_read_unlock.exit.i, %if.then.i55.i.i.cleanup.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str.i.i.i) #12
  br label %bfq_get_entity.exit.i.i

bfq_get_entity.exit.i.i:                          ; preds = %cleanup.i.i.i, %if.else10.i.i.bfq_get_entity.exit.i.i_crit_edge
  %on_st_or_in_serv.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 1
  %78 = ptrtoint ptr %on_st_or_in_serv.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %on_st_or_in_serv.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %bfq_get_entity.exit.i.i, %bfq_idle_extract.exit.i.i
  %79 = ptrtoint ptr %my_sched_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %my_sched_data.i.i.i.i, align 8
  %tobool.not.i58.i.i = icmp ne ptr %80, null
  %tobool14.not.i.i = or i1 %tobool.not2.i.i.i, %tobool.not.i58.i.i
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end12.i.i.__bfq_activate_entity.exit.i_crit_edge

if.end12.i.i.__bfq_activate_entity.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bfq_activate_entity.exit.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %in_groups_with_pending_reqs.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 17
  %81 = ptrtoint ptr %in_groups_with_pending_reqs.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %in_groups_with_pending_reqs.i.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool17.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.then15.i.i.__bfq_activate_entity.exit.i_crit_edge

if.then15.i.i.__bfq_activate_entity.exit.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bfq_activate_entity.exit.i

if.then18.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bfqd16.i.i = getelementptr i8, ptr %entity.addr.012, i32 216
  %83 = ptrtoint ptr %bfqd16.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bfqd16.i.i, align 8
  %85 = ptrtoint ptr %in_groups_with_pending_reqs.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %in_groups_with_pending_reqs.i.i, align 4
  %num_groups_with_pending_reqs.i.i = getelementptr inbounds %struct.bfq_data, ptr %84, i32 0, i32 4
  %86 = ptrtoint ptr %num_groups_with_pending_reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_groups_with_pending_reqs.i.i, align 8
  %inc.i.i = add i32 %87, 1
  store i32 %inc.i.i, ptr %num_groups_with_pending_reqs.i.i, align 8
  br label %__bfq_activate_entity.exit.i

__bfq_activate_entity.exit.i:                     ; preds = %if.then18.i.i, %if.then15.i.i.__bfq_activate_entity.exit.i_crit_edge, %if.end12.i.i.__bfq_activate_entity.exit.i_crit_edge
  %add.ptr.i.i25.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %cond.i.i.i16.i
  call fastcc void @bfq_update_fin_time_enqueue(ptr noundef nonnull %entity.addr.012, ptr noundef %add.ptr.i.i25.i, i1 noundef zeroext %backshifted.0.off0.i.i) #12
  br label %__bfq_activate_requeue_entity.exit

__bfq_activate_requeue_entity.exit:               ; preds = %__bfq_activate_entity.exit.i, %__bfq_requeue_entity.exit.i
  %call = call fastcc zeroext i1 @bfq_update_next_in_service(ptr noundef %1, ptr noundef nonnull %entity.addr.012, i1 noundef zeroext %expiration)
  %brmerge = or i1 %call, %requeue
  br i1 %brmerge, label %for.inc, label %__bfq_activate_requeue_entity.exit.for.end_crit_edge

__bfq_activate_requeue_entity.exit.for.end_crit_edge: ; preds = %__bfq_activate_requeue_entity.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %__bfq_activate_requeue_entity.exit
  %parent = getelementptr inbounds %struct.bfq_entity, ptr %entity.addr.012, i32 0, i32 13
  %88 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %89, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__bfq_activate_requeue_entity.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfq_bfqq_non_blocking_wait_rq(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_clear_bfqq_non_blocking_wait_rq(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_requeue_bfqq(ptr nocapture noundef readonly %bfqd, ptr noundef %bfqq, i1 noundef zeroext %expiration) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %in_service_queue = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 15
  %0 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_service_queue, align 8
  %cmp = icmp eq ptr %1, %bfqq
  tail call fastcc void @bfq_activate_requeue_entity(ptr noundef %entity1, i1 noundef zeroext false, i1 noundef zeroext %cmp, i1 noundef zeroext %expiration)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_del_bfqq_busy(ptr noundef %bfqd, ptr noundef %bfqq, i1 noundef zeroext %expiration) local_unnamed_addr #4 align 64 {
entry:
  %pid_str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str) #12
  %0 = call ptr @memset(ptr %pid_str, i32 255, i32 16)
  %1 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bfqd, align 8
  %call = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %2)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge, !prof !52

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @bfq_bfqq_name(ptr noundef %bfqq, ptr noundef nonnull %pid_str)
  %3 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bfqd, align 8
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %blk_trace, align 8
  %call7 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b57 = load i1, ptr @bfq_del_bfqq_busy.__warned, align 1
  br i1 %.b57, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_del_bfqq_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1673, ptr noundef nonnull @.str.3) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %do.end16.if.end29_crit_edge, label %if.then25, !prof !50

do.end16.if.end29_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call ptr @bfqq_group(ptr noundef %bfqq) #12
  %call27 = tail call ptr @bfqg_to_blkg(ptr noundef %call26) #12
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %call27, i32 0, i32 3
  %11 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blkcg, align 4
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %10, ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef nonnull %pid_str) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %do.end16.if.end29_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str) #12
  call void @bfq_clear_bfqq_busy(ptr noundef %bfqq) #12
  %ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 4
  %13 = ptrtoint ptr %ioprio_class to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ioprio_class, align 2
  %conv = zext i16 %14 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %arrayidx, align 4
  %wr_coeff = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 37
  %17 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr_coeff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %if.then35, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then35:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %wr_busy_queues = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 6
  %19 = ptrtoint ptr %wr_busy_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wr_busy_queues, align 8
  %dec36 = add i32 %20, -1
  store i32 %dec36, ptr %wr_busy_queues, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %cleanup.if.end37_crit_edge
  %call38 = call ptr @bfqq_group(ptr noundef %bfqq) #12
  call void @bfqg_stats_update_dequeue(ptr noundef %call38) #12
  call void @bfq_deactivate_bfqq(ptr undef, ptr noundef %bfqq, i1 noundef zeroext true, i1 noundef zeroext %expiration)
  %dispatched = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 22
  %21 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dispatched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool40.not = icmp eq i32 %22, 0
  br i1 %tobool40.not, label %if.then41, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @bfq_weights_tree_remove(ptr noundef %bfqd, ptr noundef %bfqq) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_clear_bfqq_busy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfqg_stats_update_dequeue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_weights_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_add_bfqq_busy(ptr noundef %bfqd, ptr noundef %bfqq) local_unnamed_addr #4 align 64 {
entry:
  %pid_str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pid_str) #12
  %0 = call ptr @memset(ptr %pid_str, i32 255, i32 16)
  %1 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bfqd, align 8
  %call = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %2)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge, !prof !52

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @bfq_bfqq_name(ptr noundef %bfqq, ptr noundef nonnull %pid_str)
  %3 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bfqd, align 8
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %blk_trace, align 8
  %call7 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @bfq_add_bfqq_busy.__warned, align 1
  br i1 %.b79, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bfq_add_bfqq_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1695, ptr noundef nonnull @.str.3) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %do.end16.if.end29_crit_edge, label %if.then25, !prof !50

do.end16.if.end29_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call ptr @bfqq_group(ptr noundef %bfqq) #12
  %call27 = tail call ptr @bfqg_to_blkg(ptr noundef %call26) #12
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %call27, i32 0, i32 3
  %11 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blkcg, align 4
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %10, ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %pid_str) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %do.end16.if.end29_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pid_str) #12
  %entity1.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %call.i80 = call i32 @bfq_bfqq_non_blocking_wait_rq(ptr noundef %bfqq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.i = icmp ne i32 %call.i80, 0
  call fastcc void @bfq_activate_requeue_entity(ptr noundef %entity1.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @bfq_clear_bfqq_non_blocking_wait_rq(ptr noundef %bfqq) #12
  call void @bfq_mark_bfqq_busy(ptr noundef %bfqq) #12
  %ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 4
  %13 = ptrtoint ptr %ioprio_class to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ioprio_class, align 2
  %conv = zext i16 %14 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.bfq_data, ptr %bfqd, i32 0, i32 5, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx, align 4
  %dispatched = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 22
  %17 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dispatched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool34.not = icmp eq i32 %18, 0
  br i1 %tobool34.not, label %if.then35, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then35:                                        ; preds = %cleanup
  %wr_coeff = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 37
  %19 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wr_coeff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then37, label %if.then35.if.end39_crit_edge

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %queue_weights_tree = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 3
  call void @bfq_weights_tree_add(ptr noundef %bfqd, ptr noundef %bfqq, ptr noundef %queue_weights_tree) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then35.if.end39_crit_edge, %cleanup.if.end39_crit_edge
  %wr_coeff40 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 37
  %21 = ptrtoint ptr %wr_coeff40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wr_coeff40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp41 = icmp ugt i32 %22, 1
  br i1 %cmp41, label %if.then43, label %if.end39.if.end45_crit_edge

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %wr_busy_queues = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 6
  %23 = ptrtoint ptr %wr_busy_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_busy_queues, align 8
  %inc44 = add i32 %24, 1
  store i32 %inc44, ptr %wr_busy_queues, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39.if.end45_crit_edge
  %woken_list_node = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 50
  %pprev.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 50, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i81 = icmp eq ptr %26, null
  br i1 %tobool.not.i81, label %if.end45.if.end57_crit_edge, label %land.lhs.true48

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true48:                                  ; preds = %if.end45
  %waker_bfqq = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 46
  %27 = ptrtoint ptr %waker_bfqq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %waker_bfqq, align 4
  %woken_list = getelementptr inbounds %struct.bfq_queue, ptr %28, i32 0, i32 51
  %29 = ptrtoint ptr %woken_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %woken_list, align 8
  %cmp50.not = icmp eq ptr %woken_list_node, %30
  br i1 %cmp50.not, label %land.lhs.true48.if.end57_crit_edge, label %if.then.i82.critedge

land.lhs.true48.if.end57_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then.i82.critedge:                             ; preds = %land.lhs.true48
  %31 = ptrtoint ptr %woken_list_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %woken_list_node, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %26, align 4
  %tobool.not.i3.i = icmp eq ptr %32, null
  br i1 %tobool.not.i3.i, label %if.then.i82.critedge.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i82.critedge.__hlist_del.exit.i_crit_edge: ; preds = %if.then.i82.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i82.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %26, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i82.critedge.__hlist_del.exit.i_crit_edge
  %35 = ptrtoint ptr %woken_list_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %woken_list_node, align 4
  %36 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pprev.i, align 4
  %37 = ptrtoint ptr %waker_bfqq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %waker_bfqq, align 4
  %woken_list56 = getelementptr inbounds %struct.bfq_queue, ptr %38, i32 0, i32 51
  %39 = ptrtoint ptr %woken_list56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %woken_list56, align 4
  store volatile ptr %40, ptr %woken_list_node, align 4
  %tobool.not.i83 = icmp eq ptr %40, null
  br i1 %tobool.not.i83, label %__hlist_del.exit.i.hlist_add_head.exit_crit_edge, label %do.body12.i

__hlist_del.exit.i.hlist_add_head.exit_crit_edge: ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i84 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %woken_list_node, ptr %pprev.i84, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %__hlist_del.exit.i.hlist_add_head.exit_crit_edge
  %42 = ptrtoint ptr %woken_list56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %woken_list_node, ptr %woken_list56, align 4
  %43 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %woken_list56, ptr %pprev.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %hlist_add_head.exit, %land.lhs.true48.if.end57_crit_edge, %if.end45.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_mark_bfqq_busy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfq_bfqq_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_update_active_tree(ptr noundef %node) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %up

up:                                               ; preds = %up.backedge, %entry
  %node.addr.0 = phi ptr [ %node, %entry ], [ %17, %up.backedge ]
  %start.i = getelementptr inbounds %struct.bfq_entity, ptr %node.addr.0, i32 0, i32 2
  %0 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start.i, align 8
  %min_start.i = getelementptr inbounds %struct.bfq_entity, ptr %node.addr.0, i32 0, i32 5
  %2 = ptrtoint ptr %min_start.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %min_start.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0, i32 0, i32 1
  %3 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %up.bfq_update_min.exit.i_crit_edge, label %if.then.i.i

up.bfq_update_min.exit.i_crit_edge:               ; preds = %up
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i

if.then.i.i:                                      ; preds = %up
  %min_start1.i.i = getelementptr inbounds %struct.bfq_entity, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %min_start1.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %min_start1.i.i, align 8
  %sub.i.i.i = sub i64 %1, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.bfq_update_min.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.bfq_update_min.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %min_start.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %min_start.i, align 8
  br label %bfq_update_min.exit.i

bfq_update_min.exit.i:                            ; preds = %if.then3.i.i, %if.then.i.i.bfq_update_min.exit.i_crit_edge, %up.bfq_update_min.exit.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.addr.0, i32 0, i32 2
  %8 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i6.i = icmp eq ptr %9, null
  br i1 %tobool.not.i6.i, label %bfq_update_min.exit.i.bfq_update_active_node.exit_crit_edge, label %if.then.i11.i

bfq_update_min.exit.i.bfq_update_active_node.exit_crit_edge: ; preds = %bfq_update_min.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_active_node.exit

if.then.i11.i:                                    ; preds = %bfq_update_min.exit.i
  %10 = ptrtoint ptr %min_start.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %min_start.i, align 8
  %min_start1.i8.i = getelementptr inbounds %struct.bfq_entity, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %min_start1.i8.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %min_start1.i8.i, align 8
  %sub.i.i9.i = sub i64 %11, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i9.i)
  %cmp.i.i10.i = icmp slt i64 %sub.i.i9.i, 1
  br i1 %cmp.i.i10.i, label %if.then.i11.i.bfq_update_active_node.exit_crit_edge, label %if.then3.i12.i

if.then.i11.i.bfq_update_active_node.exit_crit_edge: ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_active_node.exit

if.then3.i12.i:                                   ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %min_start.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %min_start.i, align 8
  br label %bfq_update_active_node.exit

bfq_update_active_node.exit:                      ; preds = %if.then3.i12.i, %if.then.i11.i.bfq_update_active_node.exit_crit_edge, %bfq_update_min.exit.i.bfq_update_active_node.exit_crit_edge
  %15 = ptrtoint ptr %node.addr.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node.addr.0, align 4
  %and = and i32 %16, -4
  %17 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %bfq_update_active_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  ret void

if.end:                                           ; preds = %bfq_update_active_node.exit
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left, align 4
  %cmp = icmp eq ptr %node.addr.0, %19
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_right, align 4
  %tobool1.not = icmp eq ptr %21, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %start.i20 = getelementptr inbounds %struct.bfq_entity, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %start.i20 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start.i20, align 8
  %min_start.i21 = getelementptr inbounds %struct.bfq_entity, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %min_start.i21 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %min_start.i21, align 8
  %rb_right.i22 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_right.i22, align 4
  %tobool.not.i.i23 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i23, label %if.then2.bfq_update_min.exit.i31_crit_edge, label %if.then.i.i27

if.then2.bfq_update_min.exit.i31_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i31

if.then.i.i27:                                    ; preds = %if.then2
  %min_start1.i.i24 = getelementptr inbounds %struct.bfq_entity, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %min_start1.i.i24 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %min_start1.i.i24, align 8
  %sub.i.i.i25 = sub i64 %23, %28
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i25)
  %cmp.i.i.i26 = icmp slt i64 %sub.i.i.i25, 1
  br i1 %cmp.i.i.i26, label %if.then.i.i27.bfq_update_min.exit.i31_crit_edge, label %if.then3.i.i28

if.then.i.i27.bfq_update_min.exit.i31_crit_edge:  ; preds = %if.then.i.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i31

if.then3.i.i28:                                   ; preds = %if.then.i.i27
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %min_start.i21 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %min_start.i21, align 8
  br label %bfq_update_min.exit.i31

bfq_update_min.exit.i31:                          ; preds = %if.then3.i.i28, %if.then.i.i27.bfq_update_min.exit.i31_crit_edge, %if.then2.bfq_update_min.exit.i31_crit_edge
  %rb_left.i29 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %rb_left.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rb_left.i29, align 4
  %tobool.not.i6.i30 = icmp eq ptr %31, null
  br i1 %tobool.not.i6.i30, label %bfq_update_min.exit.i31.up.backedge_crit_edge, label %if.then.i11.i35

bfq_update_min.exit.i31.up.backedge_crit_edge:    ; preds = %bfq_update_min.exit.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %up.backedge

if.then.i11.i35:                                  ; preds = %bfq_update_min.exit.i31
  %32 = ptrtoint ptr %min_start.i21 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %min_start.i21, align 8
  %min_start1.i8.i32 = getelementptr inbounds %struct.bfq_entity, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %min_start1.i8.i32 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %min_start1.i8.i32, align 8
  %sub.i.i9.i33 = sub i64 %33, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i9.i33)
  %cmp.i.i10.i34 = icmp slt i64 %sub.i.i9.i33, 1
  br i1 %cmp.i.i10.i34, label %if.then.i11.i35.up.backedge_crit_edge, label %if.then3.i12.i36

if.then.i11.i35.up.backedge_crit_edge:            ; preds = %if.then.i11.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %up.backedge

if.then3.i12.i36:                                 ; preds = %if.then.i11.i35
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %min_start.i21 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %min_start.i21, align 8
  br label %up.backedge

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %if.else.up.backedge_crit_edge, label %if.then6

if.else.up.backedge_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %up.backedge

if.then6:                                         ; preds = %if.else
  %start.i38 = getelementptr inbounds %struct.bfq_entity, ptr %19, i32 0, i32 2
  %37 = ptrtoint ptr %start.i38 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start.i38, align 8
  %min_start.i39 = getelementptr inbounds %struct.bfq_entity, ptr %19, i32 0, i32 5
  %39 = ptrtoint ptr %min_start.i39 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %min_start.i39, align 8
  %rb_right.i40 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  %40 = ptrtoint ptr %rb_right.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rb_right.i40, align 4
  %tobool.not.i.i41 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i41, label %if.then6.bfq_update_min.exit.i49_crit_edge, label %if.then.i.i45

if.then6.bfq_update_min.exit.i49_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i49

if.then.i.i45:                                    ; preds = %if.then6
  %min_start1.i.i42 = getelementptr inbounds %struct.bfq_entity, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %min_start1.i.i42 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %min_start1.i.i42, align 8
  %sub.i.i.i43 = sub i64 %38, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i43)
  %cmp.i.i.i44 = icmp slt i64 %sub.i.i.i43, 1
  br i1 %cmp.i.i.i44, label %if.then.i.i45.bfq_update_min.exit.i49_crit_edge, label %if.then3.i.i46

if.then.i.i45.bfq_update_min.exit.i49_crit_edge:  ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_update_min.exit.i49

if.then3.i.i46:                                   ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %min_start.i39 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %min_start.i39, align 8
  br label %bfq_update_min.exit.i49

bfq_update_min.exit.i49:                          ; preds = %if.then3.i.i46, %if.then.i.i45.bfq_update_min.exit.i49_crit_edge, %if.then6.bfq_update_min.exit.i49_crit_edge
  %rb_left.i47 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  %45 = ptrtoint ptr %rb_left.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rb_left.i47, align 4
  %tobool.not.i6.i48 = icmp eq ptr %46, null
  br i1 %tobool.not.i6.i48, label %bfq_update_min.exit.i49.up.backedge_crit_edge, label %if.then.i11.i53

bfq_update_min.exit.i49.up.backedge_crit_edge:    ; preds = %bfq_update_min.exit.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %up.backedge

if.then.i11.i53:                                  ; preds = %bfq_update_min.exit.i49
  %47 = ptrtoint ptr %min_start.i39 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %min_start.i39, align 8
  %min_start1.i8.i50 = getelementptr inbounds %struct.bfq_entity, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %min_start1.i8.i50 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %min_start1.i8.i50, align 8
  %sub.i.i9.i51 = sub i64 %48, %50
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i9.i51)
  %cmp.i.i10.i52 = icmp slt i64 %sub.i.i9.i51, 1
  br i1 %cmp.i.i10.i52, label %if.then.i11.i53.up.backedge_crit_edge, label %if.then3.i12.i54

if.then.i11.i53.up.backedge_crit_edge:            ; preds = %if.then.i11.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %up.backedge

if.then3.i12.i54:                                 ; preds = %if.then.i11.i53
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %min_start.i39 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %min_start.i39, align 8
  br label %up.backedge

up.backedge:                                      ; preds = %if.then3.i12.i54, %if.then.i11.i53.up.backedge_crit_edge, %bfq_update_min.exit.i49.up.backedge_crit_edge, %if.else.up.backedge_crit_edge, %if.then3.i12.i36, %if.then.i11.i35.up.backedge_crit_edge, %bfq_update_min.exit.i31.up.backedge_crit_edge
  br label %up
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfq_update_fin_time_enqueue(ptr noundef %entity, ptr noundef %st, i1 noundef zeroext %backshifted) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %my_sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %entity, i32 -88
  %spec.select.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr null
  %call1 = tail call ptr @__bfq_entity_update_weight_prio(ptr noundef %st, ptr noundef %entity, i1 noundef zeroext true)
  %budget = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 7
  %2 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %budget, align 4
  tail call fastcc void @bfq_calc_finish(ptr noundef %entity, i32 noundef %3)
  br i1 %backshifted, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %vtime = getelementptr inbounds %struct.bfq_service_tree, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vtime, align 8
  %finish = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 3
  %6 = ptrtoint ptr %finish to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %finish, align 8
  %sub.i = sub i64 %5, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 1
  br i1 %cmp.i, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %conv = trunc i64 %sub.i to i32
  %tobool6.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %wr_coeff = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i, i32 0, i32 37
  %8 = ptrtoint ptr %wr_coeff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_coeff, align 8
  %div = udiv i32 %conv, %9
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %delta.0 = phi i32 [ %div, %if.then7 ], [ %conv, %if.then.if.end_crit_edge ]
  %conv8 = zext i32 %delta.0 to i64
  %start = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 2
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %add = add i64 %11, %conv8
  store i64 %add, ptr %start, align 8
  %add11 = add i64 %7, %conv8
  %12 = ptrtoint ptr %finish to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add11, ptr %finish, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %13 = ptrtoint ptr %my_sched_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %my_sched_data.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %add.ptr.i, ptr null
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %tobool.not16.i.i = icmp eq ptr %16, null
  br i1 %tobool.not16.i.i, label %if.end12.bfq_insert.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end12.bfq_insert.exit.i_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_insert.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end12
  %finish2.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 3
  %17 = ptrtoint ptr %finish2.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %finish2.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %19 = phi ptr [ %16, %while.body.lr.ph.i.i ], [ %23, %while.body.i.i.while.body.i.i_crit_edge ]
  %finish.i.i = getelementptr inbounds %struct.bfq_entity, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %finish.i.i, align 8
  %sub.i.i.i = sub i64 %21, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i.i, 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  %node.1.i.i = select i1 %cmp.i.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %22 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.1.i.i, align 4
  %tobool.not.i25.i = icmp eq ptr %23, null
  br i1 %tobool.not.i25.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le.i.i = ptrtoint ptr %19 to i32
  br label %bfq_insert.exit.i

bfq_insert.exit.i:                                ; preds = %while.cond.while.end_crit_edge.i.i, %if.end12.bfq_insert.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end12.bfq_insert.exit.i_crit_edge ]
  %node.0.lcssa.i.i = phi ptr [ %node.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %call1, %if.end12.bfq_insert.exit.i_crit_edge ]
  %24 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %parent.0.lcssa.i.i, ptr %entity, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entity, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %27 = ptrtoint ptr %node.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entity, ptr %node.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %entity, ptr noundef %call1) #12
  %tree.i.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 4
  %28 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1, ptr %tree.i.i, align 8
  %29 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i27 = icmp eq ptr %30, null
  br i1 %tobool.not.i27, label %if.else.i, label %bfq_insert.exit.i.if.end5.i_crit_edge

bfq_insert.exit.i.if.end5.i_crit_edge:            ; preds = %bfq_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.else.i:                                        ; preds = %bfq_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool2.not.i = icmp eq ptr %32, null
  %spec.select.i28 = select i1 %tobool2.not.i, ptr %entity, ptr %32
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %bfq_insert.exit.i.if.end5.i_crit_edge
  %node.0.i = phi ptr [ %30, %bfq_insert.exit.i.if.end5.i_crit_edge ], [ %spec.select.i28, %if.else.i ]
  tail call fastcc void @bfq_update_active_tree(ptr noundef %node.0.i) #12
  %sched_data.i = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %33 = ptrtoint ptr %sched_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sched_data.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %34, i32 -248
  %bfqd6.i = getelementptr i8, ptr %34, i32 112
  %35 = ptrtoint ptr %bfqd6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bfqd6.i, align 8
  %tobool7.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  %bfqq_list.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24
  %bfqd9.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %bfqd9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bfqd9.i, align 8
  %active_list.i = getelementptr inbounds %struct.bfq_data, ptr %38, i32 0, i32 37
  %39 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %active_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bfqq_list.i, ptr noundef %active_list.i, ptr noundef %40) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.if.end10.i_crit_edge

if.then8.i.if.end10.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %bfqq_list.i, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %bfqq_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %bfqq_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bfq_queue, ptr %spec.select.i.i, i32 0, i32 24, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %active_list.i, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %active_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %bfqq_list.i, ptr %active_list.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i.i, %if.then8.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %root_group.i = getelementptr inbounds %struct.bfq_data, ptr %36, i32 0, i32 2
  %45 = ptrtoint ptr %root_group.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %root_group.i, align 4
  %cmp.not.i = icmp eq ptr %add.ptr.i29, %46
  br i1 %cmp.not.i, label %if.end10.i.bfq_active_insert.exit_crit_edge, label %if.then11.i

if.end10.i.bfq_active_insert.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bfq_active_insert.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %active_entities.i = getelementptr i8, ptr %34, i32 188
  %47 = ptrtoint ptr %active_entities.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %active_entities.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %active_entities.i, align 4
  br label %bfq_active_insert.exit

bfq_active_insert.exit:                           ; preds = %if.then11.i, %if.end10.i.bfq_active_insert.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/bfq-wf2q.c", i32 748, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__bfq_entity_update_weight_prio._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__bfq_entity_update_weight_prio._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../block/bfq-wf2q.c", i32 841, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../block/bfq-wf2q.c", i32 1673, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../block/bfq-wf2q.c", i32 1695, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/blktrace_api.h", i32 70, i32 7}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../block/bfq-iosched.h", i32 1091, i32 22}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../block/bfq-iosched.h", i32 1093, i32 22}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../block/bfq-wf2q.c", i32 293, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../block/bfq-wf2q.c", i32 296, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../block/bfq-wf2q.c", i32 531, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2155095544}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148426671, i64 2148426951, i64 2148427285, i64 2148427619}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2149415605}
!54 = !{i64 2149415871}
!55 = !{i8 0, i8 2}
