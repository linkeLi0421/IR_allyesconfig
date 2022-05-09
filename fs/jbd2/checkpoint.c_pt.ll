; ModuleID = '/llk/IR_all_yes/fs/jbd2/checkpoint.c_pt.bc'
source_filename = "../fs/jbd2/checkpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%struct.atomic_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__jbd2_log_wait_for_space._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: needed %d blocks and only had %d space available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__jbd2_log_wait_for_space\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/jbd2/checkpoint.c\00", [43 x i8] zeroinitializer }, align 32
@__jbd2_log_wait_for_space._entry_ptr = internal global ptr @__jbd2_log_wait_for_space._entry, section ".printk_index", align 4
@__jbd2_log_wait_for_space._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: no way to get more journal space in %s\0A\00", [50 x i8] zeroinitializer }, align 32
@__jbd2_log_wait_for_space._entry_ptr.5 = internal global ptr @__jbd2_log_wait_for_space._entry.3, section ".printk_index", align 4
@__func__.jbd2_log_do_checkpoint = private unnamed_addr constant [23 x i8] c"jbd2_log_do_checkpoint\00", align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Start checkpoint\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cleanup_journal_tail returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jbd2_log_do_checkpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.jbd2_log_do_checkpoint, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013JBD2: %s: Waiting for Godot: block %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@jbd2_log_do_checkpoint._entry_ptr = internal global ptr @jbd2_log_do_checkpoint._entry, section ".printk_index", align 4
@__func__.__jbd2_journal_drop_transaction = private unnamed_addr constant [32 x i8] c"__jbd2_journal_drop_transaction\00", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dropping transaction %d, all done\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_checkpoint = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/jbd2.h\00", [36 x i8] zeroinitializer }, align 32
@trace_jbd2_checkpoint.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_jbd2_shrink_checkpoint_list = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_shrink_checkpoint_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_jbd2_checkpoint_stats = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_checkpoint_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_jbd2_drop_transaction = external dso_local global %struct.tracepoint, align 4
@trace_jbd2_drop_transaction.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 154, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 157, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 206, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 215, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 267, i32 5 }
@___asan_gen_.39 = private constant [24 x i8] c"../fs/jbd2/checkpoint.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 807, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/trace/events/jbd2.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 14, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 108, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 354, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__jbd2_log_wait_for_space._entry, ptr @__jbd2_log_wait_for_space._entry.3, ptr @__jbd2_log_wait_for_space._entry_ptr, ptr @__jbd2_log_wait_for_space._entry_ptr.5, ptr @jbd2_log_do_checkpoint._entry, ptr @jbd2_log_do_checkpoint._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_log_do_checkpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__jbd2_log_wait_for_space(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %first_tid.i = alloca i32, align 4
  %blocknr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_max_transaction_buffers = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 47
  %0 = ptrtoint ptr %j_max_transaction_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %j_max_transaction_buffers, align 8
  %j_free.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 26
  %j_committing_transaction.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 7
  %j_checkpoint_mutex = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 19
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %j_fs_dev.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %j_devname = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %2 = ptrtoint ptr %j_free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %j_free.i, align 4
  %sub.i = add i32 %3, -32
  %4 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.cond.jbd2_log_space_left.exit_crit_edge, label %if.then.i

while.cond.jbd2_log_space_left.exit_crit_edge:    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_log_space_left.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %t_outstanding_credits.i = getelementptr inbounds %struct.transaction_s, ptr %5, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %t_outstanding_credits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %t_outstanding_credits.i, align 4
  %sub2.i = sub i32 %sub.i, %7
  br label %jbd2_log_space_left.exit

jbd2_log_space_left.exit:                         ; preds = %if.then.i, %while.cond.jbd2_log_space_left.exit_crit_edge
  %free.0.i = phi i32 [ %sub2.i, %if.then.i ], [ %sub.i, %while.cond.jbd2_log_space_left.exit_crit_edge ]
  %8 = call i32 @llvm.smax.i32(i32 %free.0.i, i32 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp = icmp ult i32 %8, %1
  br i1 %cmp, label %while.body, label %jbd2_log_space_left.exit.cleanup63_crit_edge

jbd2_log_space_left.exit.cleanup63_crit_edge:     ; preds = %jbd2_log_space_left.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

while.body:                                       ; preds = %jbd2_log_space_left.exit
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  call void @mutex_lock_io_nested(ptr noundef %j_checkpoint_mutex, i32 noundef 0) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  %9 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %journal, align 8
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %j_checkpoint_mutex) #8
  br label %cleanup63

if.end:                                           ; preds = %while.body
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %11 = ptrtoint ptr %j_free.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_free.i, align 4
  %sub.i97 = add i32 %12, -32
  %13 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool.not.i99 = icmp eq ptr %14, null
  br i1 %tobool.not.i99, label %if.end.jbd2_log_space_left.exit105_crit_edge, label %if.then.i103

if.end.jbd2_log_space_left.exit105_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_log_space_left.exit105

if.then.i103:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %t_outstanding_credits.i100 = getelementptr inbounds %struct.transaction_s, ptr %14, i32 0, i32 18
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef %t_outstanding_credits.i100, i32 noundef 4) #8
  %15 = ptrtoint ptr %t_outstanding_credits.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %t_outstanding_credits.i100, align 4
  %sub2.i102 = sub i32 %sub.i97, %16
  br label %jbd2_log_space_left.exit105

jbd2_log_space_left.exit105:                      ; preds = %if.then.i103, %if.end.jbd2_log_space_left.exit105_crit_edge
  %free.0.i104 = phi i32 [ %sub2.i102, %if.then.i103 ], [ %sub.i97, %if.end.jbd2_log_space_left.exit105_crit_edge ]
  %17 = call i32 @llvm.smax.i32(i32 %free.0.i104, i32 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp4 = icmp slt i32 %17, %1
  br i1 %cmp4, label %if.then5, label %if.else59

if.then5:                                         ; preds = %jbd2_log_space_left.exit105
  %18 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp6.not = icmp eq ptr %19, null
  %20 = ptrtoint ptr %j_committing_transaction.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %j_committing_transaction.i, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then8

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_tid, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge
  %tid.0 = phi i32 [ %23, %if.then8 ], [ 0, %if.then5.if.end10_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @_raw_write_unlock(ptr noundef %j_state_lock) #8
  br i1 %cmp6.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 @jbd2_log_do_checkpoint(ptr noundef %journal)
  br label %cleanup.thread

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tid.i) #8
  %24 = ptrtoint ptr %first_tid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %first_tid.i, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocknr.i) #8
  %25 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %blocknr.i, align 4, !annotation !51
  %26 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %journal, align 8
  %and.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i106 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i106, label %if.end.i, label %if.else.jbd2_cleanup_journal_tail.exit.thread_crit_edge

if.else.jbd2_cleanup_journal_tail.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit.thread

if.end.i:                                         ; preds = %if.else
  %call1.i = call i32 @jbd2_journal_get_log_tail(ptr noundef %journal, ptr noundef nonnull %first_tid.i, ptr noundef nonnull %blocknr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.jbd2_cleanup_journal_tail.exit.thread_crit_edge, label %do.body.i

if.end.i.jbd2_cleanup_journal_tail.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit.thread

do.body.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.end15.i, !prof !52

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  %30 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %journal, align 8
  %and.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.end15.i.jbd2_cleanup_journal_tail.exit_crit_edge, label %if.then17.i

do.end15.i.jbd2_cleanup_journal_tail.exit_crit_edge: ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit

if.then17.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %j_fs_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %j_fs_dev.i, align 8
  %call18.i = call i32 @blkdev_issue_flush(ptr noundef %33) #8
  br label %jbd2_cleanup_journal_tail.exit

jbd2_cleanup_journal_tail.exit.thread:            ; preds = %if.end.i.jbd2_cleanup_journal_tail.exit.thread_crit_edge, %if.else.jbd2_cleanup_journal_tail.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i) #8
  br label %if.else20

jbd2_cleanup_journal_tail.exit:                   ; preds = %if.then17.i, %do.end15.i.jbd2_cleanup_journal_tail.exit_crit_edge
  %34 = ptrtoint ptr %first_tid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %first_tid.i, align 4
  %36 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blocknr.i, align 4
  %call20.i = call i32 @__jbd2_update_log_tail(ptr noundef %journal, i32 noundef %35, i32 noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp17 = icmp eq i32 %call20.i, 0
  br i1 %cmp17, label %jbd2_cleanup_journal_tail.exit.cleanup.thread_crit_edge, label %jbd2_cleanup_journal_tail.exit.if.else20_crit_edge

jbd2_cleanup_journal_tail.exit.if.else20_crit_edge: ; preds = %jbd2_cleanup_journal_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else20

jbd2_cleanup_journal_tail.exit.cleanup.thread_crit_edge: ; preds = %jbd2_cleanup_journal_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.else20:                                        ; preds = %jbd2_cleanup_journal_tail.exit.if.else20_crit_edge, %jbd2_cleanup_journal_tail.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tid.0)
  %tobool21.not = icmp eq i32 %tid.0, 0
  br i1 %tobool21.not, label %do.end, label %cleanup

do.end:                                           ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %17) #11
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %j_devname) #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #8
  call void @jbd2_journal_abort(ptr noundef %journal, i32 noundef -5) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end, %jbd2_cleanup_journal_tail.exit.cleanup.thread_crit_edge, %if.then14
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  br label %if.end61

cleanup:                                          ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %j_checkpoint_mutex) #8
  %call24 = call i32 @jbd2_log_wait_commit(ptr noundef %journal, i32 noundef %tid.0) #8
  call void @_raw_write_lock(ptr noundef %j_state_lock) #8
  br label %while.cond.backedge

if.else59:                                        ; preds = %jbd2_log_space_left.exit105
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %cleanup.thread
  call void @mutex_unlock(ptr noundef %j_checkpoint_mutex) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end61, %cleanup
  br label %while.cond

cleanup63:                                        ; preds = %if.then, %jbd2_log_space_left.exit.cleanup63_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_io_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_log_do_checkpoint(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %first_tid.i233 = alloca i32, align 4
  %blocknr.i234 = alloca i32, align 4
  %plug.i216 = alloca %struct.blk_plug, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  %first_tid.i = alloca i32, align 4
  %blocknr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.jbd2_log_do_checkpoint, i32 noundef 206, ptr noundef nonnull @.str.6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tid.i) #8
  %0 = ptrtoint ptr %first_tid.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first_tid.i, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocknr.i) #8
  %1 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blocknr.i, align 4, !annotation !51
  %2 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %journal, align 8
  %and.i.i208 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i208)
  %tobool.not.i = icmp eq i32 %and.i.i208, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.jbd2_cleanup_journal_tail.exit_crit_edge

entry.jbd2_cleanup_journal_tail.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @jbd2_journal_get_log_tail(ptr noundef %journal, ptr noundef nonnull %first_tid.i, ptr noundef nonnull %blocknr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.jbd2_cleanup_journal_tail.exit_crit_edge, label %do.body.i

if.end.i.jbd2_cleanup_journal_tail.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit

do.body.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.end15.i, !prof !52

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  %6 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %journal, align 8
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.end15.i.if.end19.i_crit_edge, label %if.then17.i

do.end15.i.if.end19.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then17.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %j_fs_dev.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %8 = ptrtoint ptr %j_fs_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %j_fs_dev.i, align 8
  %call18.i = call i32 @blkdev_issue_flush(ptr noundef %9) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %do.end15.i.if.end19.i_crit_edge
  %10 = ptrtoint ptr %first_tid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first_tid.i, align 4
  %12 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocknr.i, align 4
  %call20.i = call i32 @__jbd2_update_log_tail(ptr noundef %journal, i32 noundef %11, i32 noundef %13) #8
  br label %jbd2_cleanup_journal_tail.exit

jbd2_cleanup_journal_tail.exit:                   ; preds = %if.end19.i, %if.end.i.jbd2_cleanup_journal_tail.exit_crit_edge, %entry.jbd2_cleanup_journal_tail.exit_crit_edge
  %retval.0.i = phi i32 [ %call20.i, %if.end19.i ], [ -5, %entry.jbd2_cleanup_journal_tail.exit_crit_edge ], [ 1, %if.end.i.jbd2_cleanup_journal_tail.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i) #8
  call fastcc void @trace_jbd2_checkpoint(ptr noundef %journal, i32 noundef %retval.0.i)
  call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.jbd2_log_do_checkpoint, i32 noundef 215, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %jbd2_cleanup_journal_tail.exit.cleanup_crit_edge, label %if.end

jbd2_cleanup_journal_tail.exit.cleanup_crit_edge: ; preds = %jbd2_cleanup_journal_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %jbd2_cleanup_journal_tail.exit
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %14 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end2:                                          ; preds = %if.end
  %t_chp_stats = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %t_chp_stats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_chp_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4 = icmp eq i32 %17, 0
  br i1 %cmp4, label %if.then5, label %if.end2.if.end8_crit_edge

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %t_chp_stats to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %t_chp_stats, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end2.if.end8_crit_edge
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_tid, align 4
  %22 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp10.not291 = icmp eq ptr %23, %15
  br i1 %cmp10.not291, label %lor.lhs.false.lr.ph, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false.lr.ph:                              ; preds = %if.end8
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 8
  %cs_written = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 16, i32 2
  %cs_forced_to_close = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 16, i32 1
  %j_devname = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 35
  %j_checkpoint_mutex = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %restart.backedge.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %24 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %21)
  %cmp12.not = icmp eq i32 %25, %21
  br i1 %cmp12.not, label %lor.lhs.false.while.cond.outer_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false.while.cond.outer_crit_edge:         ; preds = %lor.lhs.false
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %lor.lhs.false87.while.cond.outer_crit_edge, %lor.lhs.false.while.cond.outer_crit_edge
  %batch_count.1.ph = phi i32 [ %inc83, %lor.lhs.false87.while.cond.outer_crit_edge ], [ 0, %lor.lhs.false.while.cond.outer_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %do.end51.while.cond_crit_edge, %while.cond.outer
  %26 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_checkpoint_list, align 8
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %while.body
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !54
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 354) #8
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %29, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i209 = icmp eq i32 %36, 0
  br i1 %tobool.not.i209, label %if.then20.retry_crit_edge, label %if.then.i

if.then20.retry_crit_edge:                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %29) #8
  br label %retry

if.end22:                                         ; preds = %while.body
  %b_transaction = getelementptr inbounds %struct.journal_head, ptr %27, i32 0, i32 7
  %37 = ptrtoint ptr %b_transaction to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_transaction, align 4
  %cmp23.not = icmp eq ptr %38, null
  br i1 %cmp23.not, label %if.end45, label %if.then24

if.then24:                                        ; preds = %if.end22
  %t_tid26 = getelementptr inbounds %struct.transaction_s, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %t_tid26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %t_tid26, align 4
  %41 = ptrtoint ptr %cs_forced_to_close to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cs_forced_to_close, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %cs_forced_to_close, align 4
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  %43 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %journal, align 8
  %and = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then24.if.end37_crit_edge, label %do.end35, !prof !55

if.then24.if.end37_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end35:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 3
  %45 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %b_blocknr, align 8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %j_devname, i64 noundef %46) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.then24.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %batch_count.1.ph)
  %tobool38.not = icmp eq i32 %batch_count.1.ph, 0
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %for.body.i.preheader

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body.i.preheader:                             ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #8
  %47 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 20, i32 %i.018.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  call void @write_dirty_buffer(ptr noundef %49, i32 noundef 2048) #8
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %batch_count.1.ph
  br i1 %exitcond.not, label %for.body3.i.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body3.i.preheader:                            ; preds = %for.body.i
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #8
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.i.preheader
  %i.120.i = phi i32 [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body3.i.preheader ]
  %arrayidx5.i = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 20, i32 %i.120.i
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx5.i, align 4
  call void @__brelse(ptr noundef %51) #8
  %inc7.i = add nuw nsw i32 %i.120.i, 1
  %exitcond313.not = icmp eq i32 %inc7.i, %batch_count.1.ph
  br i1 %exitcond313.not, label %__flush_batch.exit, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

__flush_batch.exit:                               ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #8
  br label %if.end40

if.end40:                                         ; preds = %__flush_batch.exit, %if.end37.if.end40_crit_edge
  %call41 = call i32 @jbd2_log_start_commit(ptr noundef %journal, i32 noundef %40) #8
  call void @mutex_unlock(ptr noundef %j_checkpoint_mutex) #8
  %call42 = call i32 @jbd2_log_wait_commit(ptr noundef %journal, i32 noundef %40) #8
  call void @mutex_lock_io_nested(ptr noundef %j_checkpoint_mutex, i32 noundef 0) #8
  br label %restart.backedge

restart.backedge:                                 ; preds = %__flush_batch.exit230, %retry.restart.backedge_crit_edge, %if.end40
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %52 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp10.not = icmp eq ptr %53, %15
  br i1 %cmp10.not, label %restart.backedge.lor.lhs.false_crit_edge, label %restart.backedge.out_crit_edge

restart.backedge.out_crit_edge:                   ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

restart.backedge.lor.lhs.false_crit_edge:         ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end45:                                         ; preds = %if.end22
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %29, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool47.not = icmp eq i32 %56, 0
  br i1 %tobool47.not, label %do.end51, label %do.end59

do.end51:                                         ; preds = %if.end45
  %call52 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %27)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end51.while.cond_crit_edge, label %do.end51.out_crit_edge

do.end51.out_crit_edge:                           ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end51.while.cond_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end59:                                         ; preds = %if.end45
  %b_count.i211 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 11
  %call.i.i.i212 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i211, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i211, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i211, ptr %b_count.i211, i32 1, ptr elementtype(i32) %b_count.i211) #8, !srcloc !54
  %58 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %29, align 4
  %60 = and i32 %59, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool62.not = icmp eq i32 %60, 0
  br i1 %tobool62.not, label %do.end82, label %do.body74, !prof !55

do.body74:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

do.end82:                                         ; preds = %do.end59
  %inc83 = add nuw nsw i32 %batch_count.1.ph, 1
  %arrayidx = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 20, i32 %batch_count.1.ph
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %29, ptr %arrayidx, align 4
  %b_cp_transaction.i = getelementptr inbounds %struct.journal_head, ptr %27, i32 0, i32 11
  %62 = ptrtoint ptr %b_cp_transaction.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_cp_transaction.i, align 4
  %b_cpprev.i.i = getelementptr inbounds %struct.journal_head, ptr %27, i32 0, i32 13
  %64 = ptrtoint ptr %b_cpprev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_cpprev.i.i, align 4
  %b_cpnext.i.i = getelementptr inbounds %struct.journal_head, ptr %27, i32 0, i32 12
  %66 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_cpnext.i.i, align 4
  %b_cpprev1.i.i = getelementptr inbounds %struct.journal_head, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %b_cpprev1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %b_cpprev1.i.i, align 4
  %69 = load ptr, ptr %b_cpnext.i.i, align 4
  %70 = load ptr, ptr %b_cpprev.i.i, align 4
  %b_cpnext4.i.i = getelementptr inbounds %struct.journal_head, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %b_cpnext4.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %b_cpnext4.i.i, align 4
  %t_checkpoint_list.i.i = getelementptr inbounds %struct.transaction_s, ptr %63, i32 0, i32 8
  %72 = ptrtoint ptr %t_checkpoint_list.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %t_checkpoint_list.i.i, align 8
  %cmp.i.i = icmp eq ptr %73, %27
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end82.__buffer_unlink_first.exit.i_crit_edge

do.end82.__buffer_unlink_first.exit.i_crit_edge:  ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %__buffer_unlink_first.exit.i

if.then.i.i:                                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_cpnext.i.i, align 4
  %cmp8.i.i = icmp eq ptr %75, %27
  %spec.store.select.i.i = select i1 %cmp8.i.i, ptr null, ptr %75
  %76 = ptrtoint ptr %t_checkpoint_list.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %spec.store.select.i.i, ptr %t_checkpoint_list.i.i, align 8
  br label %__buffer_unlink_first.exit.i

__buffer_unlink_first.exit.i:                     ; preds = %if.then.i.i, %do.end82.__buffer_unlink_first.exit.i_crit_edge
  %t_checkpoint_io_list.i = getelementptr inbounds %struct.transaction_s, ptr %63, i32 0, i32 9
  %77 = ptrtoint ptr %t_checkpoint_io_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %t_checkpoint_io_list.i, align 4
  %tobool.not.i213 = icmp eq ptr %78, null
  br i1 %tobool.not.i213, label %if.then.i214, label %if.else.i

if.then.i214:                                     ; preds = %__buffer_unlink_first.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %b_cpprev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %27, ptr %b_cpprev.i.i, align 4
  br label %__buffer_relink_io.exit

if.else.i:                                        ; preds = %__buffer_unlink_first.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %b_cpnext.i.i, align 4
  %81 = ptrtoint ptr %t_checkpoint_io_list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %t_checkpoint_io_list.i, align 4
  %b_cpprev4.i = getelementptr inbounds %struct.journal_head, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %b_cpprev4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_cpprev4.i, align 4
  %85 = ptrtoint ptr %b_cpprev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %b_cpprev.i.i, align 4
  %b_cpnext7.i = getelementptr inbounds %struct.journal_head, ptr %84, i32 0, i32 12
  %86 = ptrtoint ptr %b_cpnext7.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %27, ptr %b_cpnext7.i, align 4
  %87 = load ptr, ptr %b_cpnext.i.i, align 4
  %b_cpprev9.i = getelementptr inbounds %struct.journal_head, ptr %87, i32 0, i32 13
  br label %__buffer_relink_io.exit

__buffer_relink_io.exit:                          ; preds = %if.else.i, %if.then.i214
  %b_cpprev9.sink.i = phi ptr [ %b_cpprev9.i, %if.else.i ], [ %b_cpnext.i.i, %if.then.i214 ]
  %88 = ptrtoint ptr %b_cpprev9.sink.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %27, ptr %b_cpprev9.sink.i, align 4
  %89 = ptrtoint ptr %t_checkpoint_io_list.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %27, ptr %t_checkpoint_io_list.i, align 4
  %90 = ptrtoint ptr %cs_written to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cs_written, align 4
  %inc85 = add i32 %91, 1
  store i32 %inc85, ptr %cs_written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc83)
  %cmp86 = icmp eq i32 %inc83, 64
  br i1 %cmp86, label %__buffer_relink_io.exit.retry.thread_crit_edge, label %lor.lhs.false87

__buffer_relink_io.exit.retry.thread_crit_edge:   ; preds = %__buffer_relink_io.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.thread

lor.lhs.false87:                                  ; preds = %__buffer_relink_io.exit
  %92 = call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 16384
  %96 = and i32 %95, 2
  %tobool.i.not = icmp eq i32 %96, 0
  br i1 %tobool.i.not, label %lor.lhs.false87.while.cond.outer_crit_edge, label %lor.lhs.false87.retry.thread_crit_edge

lor.lhs.false87.retry.thread_crit_edge:           ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.thread

lor.lhs.false87.while.cond.outer_crit_edge:       ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %batch_count.1.ph)
  %tobool95.not = icmp eq i32 %batch_count.1.ph, 0
  br i1 %tobool95.not, label %restart2.preheader, label %while.end.retry.thread_crit_edge

while.end.retry.thread_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.thread

restart2.preheader:                               ; preds = %while.end
  %97 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp104.not292 = icmp eq ptr %98, %15
  br i1 %cmp104.not292, label %lor.lhs.false105.lr.ph, label %restart2.preheader.out_crit_edge

restart2.preheader.out_crit_edge:                 ; preds = %restart2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false105.lr.ph:                           ; preds = %restart2.preheader
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 9
  br label %lor.lhs.false105

retry.thread:                                     ; preds = %while.end.retry.thread_crit_edge, %lor.lhs.false87.retry.thread_crit_edge, %__buffer_relink_io.exit.retry.thread_crit_edge
  %batch_count.3 = phi i32 [ %batch_count.1.ph, %while.end.retry.thread_crit_edge ], [ %inc83, %lor.lhs.false87.retry.thread_crit_edge ], [ 64, %__buffer_relink_io.exit.retry.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  br label %if.then99

retry:                                            ; preds = %if.then.i, %if.then20.retry_crit_edge
  call void @__brelse(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %batch_count.1.ph)
  %tobool98.not = icmp eq i32 %batch_count.1.ph, 0
  br i1 %tobool98.not, label %retry.restart.backedge_crit_edge, label %retry.if.then99_crit_edge

retry.if.then99_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

retry.restart.backedge_crit_edge:                 ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart.backedge

if.then99:                                        ; preds = %retry.if.then99_crit_edge, %retry.thread
  %batch_count.4318 = phi i32 [ %batch_count.3, %retry.thread ], [ %batch_count.1.ph, %retry.if.then99_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i216) #8
  %99 = call ptr @memset(ptr %plug.i216, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %batch_count.4318)
  %cmp17.i217 = icmp sgt i32 %batch_count.4318, 0
  br i1 %cmp17.i217, label %if.then99.for.body.i222_crit_edge, label %for.end.i224.thread

if.then99.for.body.i222_crit_edge:                ; preds = %if.then99
  br label %for.body.i222

for.end.i224.thread:                              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_finish_plug(ptr noundef nonnull %plug.i216) #8
  br label %__flush_batch.exit230

for.body.i222:                                    ; preds = %for.body.i222.for.body.i222_crit_edge, %if.then99.for.body.i222_crit_edge
  %i.018.i218 = phi i32 [ %inc.i220, %for.body.i222.for.body.i222_crit_edge ], [ 0, %if.then99.for.body.i222_crit_edge ]
  %arrayidx.i219 = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 20, i32 %i.018.i218
  %100 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i219, align 4
  call void @write_dirty_buffer(ptr noundef %101, i32 noundef 2048) #8
  %inc.i220 = add nuw nsw i32 %i.018.i218, 1
  %exitcond314.not = icmp eq i32 %inc.i220, %batch_count.4318
  br i1 %exitcond314.not, label %for.body3.i229.preheader, label %for.body.i222.for.body.i222_crit_edge

for.body.i222.for.body.i222_crit_edge:            ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i222

for.body3.i229.preheader:                         ; preds = %for.body.i222
  call void @blk_finish_plug(ptr noundef nonnull %plug.i216) #8
  br label %for.body3.i229

for.body3.i229:                                   ; preds = %for.body3.i229.for.body3.i229_crit_edge, %for.body3.i229.preheader
  %i.120.i225 = phi i32 [ %inc7.i227, %for.body3.i229.for.body3.i229_crit_edge ], [ 0, %for.body3.i229.preheader ]
  %arrayidx5.i226 = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 20, i32 %i.120.i225
  %102 = ptrtoint ptr %arrayidx5.i226 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx5.i226, align 4
  call void @__brelse(ptr noundef %103) #8
  %inc7.i227 = add nuw nsw i32 %i.120.i225, 1
  %exitcond315.not = icmp eq i32 %inc7.i227, %batch_count.4318
  br i1 %exitcond315.not, label %for.body3.i229.__flush_batch.exit230_crit_edge, label %for.body3.i229.for.body3.i229_crit_edge

for.body3.i229.for.body3.i229_crit_edge:          ; preds = %for.body3.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i229

for.body3.i229.__flush_batch.exit230_crit_edge:   ; preds = %for.body3.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %__flush_batch.exit230

__flush_batch.exit230:                            ; preds = %for.body3.i229.__flush_batch.exit230_crit_edge, %for.end.i224.thread
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i216) #8
  br label %restart.backedge

lor.lhs.false105:                                 ; preds = %if.then117.lor.lhs.false105_crit_edge, %lor.lhs.false105.lr.ph
  %104 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %t_tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %21)
  %cmp107.not = icmp eq i32 %105, %21
  br i1 %cmp107.not, label %lor.lhs.false105.while.cond110_crit_edge, label %lor.lhs.false105.out_crit_edge

lor.lhs.false105.out_crit_edge:                   ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false105.while.cond110_crit_edge:         ; preds = %lor.lhs.false105
  br label %while.cond110

while.cond110:                                    ; preds = %if.end123.while.cond110_crit_edge, %lor.lhs.false105.while.cond110_crit_edge
  %106 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %t_checkpoint_io_list, align 4
  %tobool111.not = icmp eq ptr %107, null
  br i1 %tobool111.not, label %while.cond110.out_crit_edge, label %while.body112

while.cond110.out_crit_edge:                      ; preds = %while.cond110
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body112:                                    ; preds = %while.cond110
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  %112 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool116.not = icmp eq i32 %112, 0
  br i1 %tobool116.not, label %if.end123, label %if.then117

if.then117:                                       ; preds = %while.body112
  %b_count.i231 = getelementptr inbounds %struct.buffer_head, ptr %109, i32 0, i32 11
  %call.i.i.i232 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i231, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i231, i32 1, i32 3, i32 1) #8
  %113 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i231, ptr %b_count.i231, i32 1, ptr elementtype(i32) %b_count.i231) #8, !srcloc !54
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call fastcc void @wait_on_buffer(ptr noundef %109)
  call void @__brelse(ptr noundef %109) #8
  call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %114 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp104.not = icmp eq ptr %115, %15
  br i1 %cmp104.not, label %if.then117.lor.lhs.false105_crit_edge, label %if.then117.out_crit_edge

if.then117.out_crit_edge:                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then117.lor.lhs.false105_crit_edge:            ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false105

if.end123:                                        ; preds = %while.body112
  %call124 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %107)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end123.while.cond110_crit_edge, label %if.end123.out_crit_edge

if.end123.out_crit_edge:                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end123.while.cond110_crit_edge:                ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond110

out:                                              ; preds = %if.end123.out_crit_edge, %if.then117.out_crit_edge, %while.cond110.out_crit_edge, %lor.lhs.false105.out_crit_edge, %restart2.preheader.out_crit_edge, %do.end51.out_crit_edge, %restart.backedge.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tid.i233) #8
  %116 = ptrtoint ptr %first_tid.i233 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %first_tid.i233, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocknr.i234) #8
  %117 = ptrtoint ptr %blocknr.i234 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %blocknr.i234, align 4, !annotation !51
  %118 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %journal, align 8
  %and.i.i235 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i235)
  %tobool.not.i236 = icmp eq i32 %and.i.i235, 0
  br i1 %tobool.not.i236, label %if.end.i239, label %jbd2_cleanup_journal_tail.exit252.thread

jbd2_cleanup_journal_tail.exit252.thread:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i234) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i233) #8
  br label %130

if.end.i239:                                      ; preds = %out
  %call1.i237 = call i32 @jbd2_journal_get_log_tail(ptr noundef %journal, ptr noundef nonnull %first_tid.i233, ptr noundef nonnull %blocknr.i234) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i237)
  %tobool2.not.i238 = icmp eq i32 %call1.i237, 0
  br i1 %tobool2.not.i238, label %jbd2_cleanup_journal_tail.exit252.thread268, label %do.body.i241

jbd2_cleanup_journal_tail.exit252.thread268:      ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i234) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i233) #8
  br label %cleanup

do.body.i241:                                     ; preds = %if.end.i239
  %120 = ptrtoint ptr %blocknr.i234 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %blocknr.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.not.i240 = icmp eq i32 %121, 0
  br i1 %cmp.not.i240, label %do.body9.i242, label %do.end15.i245, !prof !52

do.body9.i242:                                    ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end15.i245:                                    ; preds = %do.body.i241
  %122 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %journal, align 8
  %and.i243 = and i32 %123, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243)
  %tobool16.not.i244 = icmp eq i32 %and.i243, 0
  br i1 %tobool16.not.i244, label %do.end15.i245.jbd2_cleanup_journal_tail.exit252_crit_edge, label %if.then17.i248

do.end15.i245.jbd2_cleanup_journal_tail.exit252_crit_edge: ; preds = %do.end15.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_cleanup_journal_tail.exit252

if.then17.i248:                                   ; preds = %do.end15.i245
  call void @__sanitizer_cov_trace_pc() #10
  %j_fs_dev.i246 = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %124 = ptrtoint ptr %j_fs_dev.i246 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %j_fs_dev.i246, align 8
  %call18.i247 = call i32 @blkdev_issue_flush(ptr noundef %125) #8
  br label %jbd2_cleanup_journal_tail.exit252

jbd2_cleanup_journal_tail.exit252:                ; preds = %if.then17.i248, %do.end15.i245.jbd2_cleanup_journal_tail.exit252_crit_edge
  %126 = ptrtoint ptr %first_tid.i233 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %first_tid.i233, align 4
  %128 = ptrtoint ptr %blocknr.i234 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %blocknr.i234, align 4
  %call20.i249 = call i32 @__jbd2_update_log_tail(ptr noundef %journal, i32 noundef %127, i32 noundef %129) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr.i234) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid.i233) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i249)
  %cmp131 = icmp slt i32 %call20.i249, 0
  br i1 %cmp131, label %jbd2_cleanup_journal_tail.exit252._crit_edge, label %jbd2_cleanup_journal_tail.exit252.cleanup_crit_edge

jbd2_cleanup_journal_tail.exit252.cleanup_crit_edge: ; preds = %jbd2_cleanup_journal_tail.exit252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

jbd2_cleanup_journal_tail.exit252._crit_edge:     ; preds = %jbd2_cleanup_journal_tail.exit252
  call void @__sanitizer_cov_trace_pc() #10
  br label %130

130:                                              ; preds = %jbd2_cleanup_journal_tail.exit252._crit_edge, %jbd2_cleanup_journal_tail.exit252.thread
  %retval.0.i251267 = phi i32 [ -5, %jbd2_cleanup_journal_tail.exit252.thread ], [ %call20.i249, %jbd2_cleanup_journal_tail.exit252._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %130, %jbd2_cleanup_journal_tail.exit252.cleanup_crit_edge, %jbd2_cleanup_journal_tail.exit252.thread268, %jbd2_cleanup_journal_tail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %jbd2_cleanup_journal_tail.exit.cleanup_crit_edge ], [ %retval.0.i251267, %130 ], [ 0, %jbd2_cleanup_journal_tail.exit252.cleanup_crit_edge ], [ 0, %jbd2_cleanup_journal_tail.exit252.thread268 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_cleanup_journal_tail(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  %first_tid = alloca i32, align 4
  %blocknr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tid) #8
  %0 = ptrtoint ptr %first_tid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first_tid, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocknr) #8
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blocknr, align 4, !annotation !51
  %2 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %journal, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @jbd2_journal_get_log_tail(ptr noundef %journal, ptr noundef nonnull %first_tid, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %4 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocknr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body9, label %do.end15, !prof !52

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end15:                                         ; preds = %do.body
  %6 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %journal, align 8
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.end15.if.end19_crit_edge, label %if.then17

do.end15.if.end19_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %8 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %j_fs_dev, align 8
  %call18 = call i32 @blkdev_issue_flush(ptr noundef %9) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.end15.if.end19_crit_edge
  %10 = ptrtoint ptr %first_tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first_tid, align 4
  %12 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocknr, align 4
  %call20 = call i32 @__jbd2_update_log_tail(ptr noundef %journal, i32 noundef %11, i32 noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -5, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocknr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_wait_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_checkpoint(ptr noundef %journal, i32 noundef %result) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint, i32 0, i32 1), ptr blockaddress(@trace_jbd2_checkpoint, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %call42 = tail call i32 @__traceiter_jbd2_checkpoint(ptr noundef null, ptr noundef %journal, i32 noundef %result) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_checkpoint.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_checkpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 32, ptr noundef nonnull @.str.11) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
define internal fastcc void @wait_on_buffer(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 354) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wait_on_buffer(ptr noundef %bh) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_start_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef %jh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_cp_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 11
  %0 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_cp_transaction, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jh, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %j_atomic_flags = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %j_atomic_flags) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_cp_transaction, align 4
  %b_cpprev.i.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 13
  %11 = ptrtoint ptr %b_cpprev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_cpprev.i.i, align 4
  %b_cpnext.i.i = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 12
  %13 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_cpnext.i.i, align 4
  %b_cpprev1.i.i = getelementptr inbounds %struct.journal_head, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %b_cpprev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %b_cpprev1.i.i, align 4
  %16 = load ptr, ptr %b_cpnext.i.i, align 4
  %17 = load ptr, ptr %b_cpprev.i.i, align 4
  %b_cpnext4.i.i = getelementptr inbounds %struct.journal_head, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %b_cpnext4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %b_cpnext4.i.i, align 4
  %t_checkpoint_list.i.i = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %t_checkpoint_list.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_checkpoint_list.i.i, align 8
  %cmp.i.i = icmp eq ptr %20, %jh
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end10.__buffer_unlink_first.exit.i_crit_edge

if.end10.__buffer_unlink_first.exit.i_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %__buffer_unlink_first.exit.i

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_cpnext.i.i, align 4
  %cmp8.i.i = icmp eq ptr %22, %jh
  %spec.store.select.i.i = select i1 %cmp8.i.i, ptr null, ptr %22
  %23 = ptrtoint ptr %t_checkpoint_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.store.select.i.i, ptr %t_checkpoint_list.i.i, align 8
  br label %__buffer_unlink_first.exit.i

__buffer_unlink_first.exit.i:                     ; preds = %if.then.i.i, %if.end10.__buffer_unlink_first.exit.i_crit_edge
  %t_checkpoint_io_list.i = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 9
  %24 = ptrtoint ptr %t_checkpoint_io_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t_checkpoint_io_list.i, align 4
  %cmp.i = icmp eq ptr %25, %jh
  br i1 %cmp.i, label %if.then.i, label %__buffer_unlink_first.exit.i.__buffer_unlink.exit_crit_edge

__buffer_unlink_first.exit.i.__buffer_unlink.exit_crit_edge: ; preds = %__buffer_unlink_first.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__buffer_unlink.exit

if.then.i:                                        ; preds = %__buffer_unlink_first.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %b_cpnext.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_cpnext.i.i, align 4
  %cmp3.i = icmp eq ptr %27, %jh
  %spec.store.select.i = select i1 %cmp3.i, ptr null, ptr %27
  %28 = ptrtoint ptr %t_checkpoint_io_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.store.select.i, ptr %t_checkpoint_io_list.i, align 4
  br label %__buffer_unlink.exit

__buffer_unlink.exit:                             ; preds = %if.then.i, %__buffer_unlink_first.exit.i.__buffer_unlink.exit_crit_edge
  %29 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %b_cp_transaction, align 4
  %j_checkpoint_jh_count = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %30 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %j_checkpoint_jh_count, i64 noundef -1, i32 noundef %30) #8
  tail call void @jbd2_journal_put_journal_head(ptr noundef %jh) #8
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t_checkpoint_list, align 8
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %lor.lhs.false, label %__buffer_unlink.exit.cleanup_crit_edge

__buffer_unlink.exit.cleanup_crit_edge:           ; preds = %__buffer_unlink.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %__buffer_unlink.exit
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t_checkpoint_io_list, align 4
  %tobool13.not = icmp eq ptr %34, null
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp.not = icmp eq i32 %36, 8
  br i1 %cmp.not, label %if.end17, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %t_chp_stats = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %t_chp_stats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t_chp_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool18.not = icmp eq i32 %38, 0
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %38)
  %cmp.not.i = icmp ult i32 %39, %38
  %retval.0.p.v.i = select i1 %cmp.not.i, i32 1073741822, i32 0
  %retval.0.p.i = sub i32 %39, %38
  %retval.0.i = add i32 %retval.0.p.i, %retval.0.p.v.i
  %40 = ptrtoint ptr %t_chp_stats to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %t_chp_stats, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 36
  %41 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %j_fs_dev, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bd_dev, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %t_tid, align 4
  tail call fastcc void @trace_jbd2_checkpoint_stats(i32 noundef %44, i32 noundef %46, ptr noundef %t_chp_stats)
  tail call void @__jbd2_journal_drop_transaction(ptr noundef %5, ptr noundef nonnull %1)
  tail call void @jbd2_journal_free_transaction(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %__buffer_unlink.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %__buffer_unlink.exit.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_log_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_update_log_tail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_shrink_checkpoint_list(ptr noundef %journal, ptr nocapture noundef %nr_to_scan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %2 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not154 = icmp eq ptr %3, null
  br i1 %tobool.not154, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %j_shrink_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 23
  br label %if.end

again:                                            ; preds = %land.lhs.true
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %4 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %again.if.then_crit_edge, label %again.if.end_crit_edge

again.if.end_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

again.if.then_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %again.if.then_crit_edge, %entry.if.then_crit_edge
  %first_tid.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %first_tid.1, %again.if.then_crit_edge ]
  %last_tid.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %14, %again.if.then_crit_edge ]
  %next_tid.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %next_tid.1, %again.if.then_crit_edge ]
  %tid.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %18, %again.if.then_crit_edge ]
  %nr_freed.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %nr_freed.3190, %again.if.then_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  br label %out

if.end:                                           ; preds = %again.if.end_crit_edge, %if.end.lr.ph
  %6 = phi ptr [ %3, %if.end.lr.ph ], [ %5, %again.if.end_crit_edge ]
  %nr_freed.0156 = phi i32 [ 0, %if.end.lr.ph ], [ %nr_freed.3190, %again.if.end_crit_edge ]
  %first_tid.0155 = phi i32 [ 0, %if.end.lr.ph ], [ %first_tid.1, %again.if.end_crit_edge ]
  %7 = ptrtoint ptr %j_shrink_transaction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_shrink_transaction, align 8
  %tobool2.not = icmp eq ptr %8, null
  %. = select i1 %tobool2.not, ptr %6, ptr %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_tid.0155)
  %tobool7.not = icmp eq i32 %first_tid.0155, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %., i32 0, i32 1
  %9 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_tid, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %first_tid.1 = phi i32 [ %first_tid.0155, %if.end.if.end9_crit_edge ], [ %10, %if.then8 ]
  %t_cpprev = getelementptr inbounds %struct.transaction_s, ptr %6, i32 0, i32 22
  %11 = ptrtoint ptr %t_cpprev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_cpprev, align 8
  %t_tid11 = getelementptr inbounds %struct.transaction_s, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %t_tid11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_tid11, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end9
  %next_transaction.0 = phi ptr [ %., %if.end9 ], [ %16, %do.cond.do.body_crit_edge ]
  %nr_freed.1 = phi i32 [ %nr_freed.0156, %if.end9 ], [ %nr_freed.2, %do.cond.do.body_crit_edge ]
  %t_cpnext = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 21
  %15 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t_cpnext, align 4
  %t_tid12 = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 1
  %17 = ptrtoint ptr %t_tid12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_tid12, align 4
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 8
  %19 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_checkpoint_list, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.body.journal_shrink_one_cp_list.exit_crit_edge, label %lor.lhs.false.i

do.body.journal_shrink_one_cp_list.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit

lor.lhs.false.i:                                  ; preds = %do.body
  %21 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %lor.lhs.false.i.journal_shrink_one_cp_list.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.journal_shrink_one_cp_list.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %b_cpprev.i = getelementptr inbounds %struct.journal_head, ptr %20, i32 0, i32 13
  %23 = ptrtoint ptr %b_cpprev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_cpprev.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end.i
  %next_jh.0.i = phi ptr [ %20, %if.end.i ], [ %26, %land.rhs.i.do.body.i_crit_edge ]
  %nr_freed.0.i = phi i32 [ 0, %if.end.i ], [ %nr_freed.1.i, %land.rhs.i.do.body.i_crit_edge ]
  %b_cpnext.i = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i, i32 0, i32 12
  %25 = ptrtoint ptr %b_cpnext.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_cpnext.i, align 4
  %27 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_to_scan, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %nr_to_scan, align 4
  %29 = ptrtoint ptr %next_jh.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next_jh.0.i, align 4
  %b_transaction.i.i = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i, i32 0, i32 7
  %31 = ptrtoint ptr %b_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_transaction.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

lor.lhs.false.i.i:                                ; preds = %do.body.i
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %30, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool2.not.i.i, label %__cp_buffer_busy.exit.i, label %lor.lhs.false.i.i.do.cond.i_crit_edge

lor.lhs.false.i.i.do.cond.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

__cp_buffer_busy.exit.i:                          ; preds = %lor.lhs.false.i.i
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %30, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.i.not.i = icmp eq i32 %38, 0
  br i1 %tobool4.i.not.i, label %if.end2.i, label %__cp_buffer_busy.exit.i.do.cond.i_crit_edge

__cp_buffer_busy.exit.i.do.cond.i_crit_edge:      ; preds = %__cp_buffer_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.end2.i:                                        ; preds = %__cp_buffer_busy.exit.i
  %inc.i = add i32 %nr_freed.0.i, 1
  %call3.i = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %next_jh.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end2.i.journal_shrink_one_cp_list.exit_crit_edge

if.end2.i.journal_shrink_one_cp_list.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit

if.end6.i:                                        ; preds = %if.end2.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 16384
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %if.end6.i.do.cond.i_crit_edge, label %if.end6.i.journal_shrink_one_cp_list.exit_crit_edge

if.end6.i.journal_shrink_one_cp_list.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit

if.end6.i.do.cond.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end6.i.do.cond.i_crit_edge, %__cp_buffer_busy.exit.i.do.cond.i_crit_edge, %lor.lhs.false.i.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %nr_freed.1.i = phi i32 [ %nr_freed.0.i, %__cp_buffer_busy.exit.i.do.cond.i_crit_edge ], [ %inc.i, %if.end6.i.do.cond.i_crit_edge ], [ %nr_freed.0.i, %lor.lhs.false.i.i.do.cond.i_crit_edge ], [ %nr_freed.0.i, %do.body.i.do.cond.i_crit_edge ]
  %cmp10.not.i = icmp eq ptr %next_jh.0.i, %24
  br i1 %cmp10.not.i, label %do.cond.i.journal_shrink_one_cp_list.exit_crit_edge, label %land.rhs.i

do.cond.i.journal_shrink_one_cp_list.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit

land.rhs.i:                                       ; preds = %do.cond.i
  %44 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_to_scan, align 4
  %tobool11.not.i = icmp eq i32 %45, 0
  br i1 %tobool11.not.i, label %land.rhs.i.journal_shrink_one_cp_list.exit.thread_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.rhs.i.journal_shrink_one_cp_list.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit.thread

journal_shrink_one_cp_list.exit.thread:           ; preds = %land.rhs.i.journal_shrink_one_cp_list.exit.thread_crit_edge, %lor.lhs.false.i.journal_shrink_one_cp_list.exit.thread_crit_edge
  %retval.0.i.ph119 = phi i32 [ %nr_freed.1.i, %land.rhs.i.journal_shrink_one_cp_list.exit.thread_crit_edge ], [ 0, %lor.lhs.false.i.journal_shrink_one_cp_list.exit.thread_crit_edge ]
  %add122 = add i32 %retval.0.i.ph119, %nr_freed.1
  br label %do.end

journal_shrink_one_cp_list.exit:                  ; preds = %do.cond.i.journal_shrink_one_cp_list.exit_crit_edge, %if.end6.i.journal_shrink_one_cp_list.exit_crit_edge, %if.end2.i.journal_shrink_one_cp_list.exit_crit_edge, %do.body.journal_shrink_one_cp_list.exit_crit_edge
  %tobool21.not = phi i1 [ true, %do.body.journal_shrink_one_cp_list.exit_crit_edge ], [ true, %do.cond.i.journal_shrink_one_cp_list.exit_crit_edge ], [ true, %if.end6.i.journal_shrink_one_cp_list.exit_crit_edge ], [ false, %if.end2.i.journal_shrink_one_cp_list.exit_crit_edge ]
  %retval.0.i.ph = phi i32 [ 0, %do.body.journal_shrink_one_cp_list.exit_crit_edge ], [ %nr_freed.1.i, %do.cond.i.journal_shrink_one_cp_list.exit_crit_edge ], [ %inc.i, %if.end6.i.journal_shrink_one_cp_list.exit_crit_edge ], [ %inc.i, %if.end2.i.journal_shrink_one_cp_list.exit_crit_edge ]
  %46 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %nr_to_scan, align 4
  %add = add i32 %retval.0.i.ph, %nr_freed.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 0
  br i1 %cmp, label %journal_shrink_one_cp_list.exit.do.end_crit_edge, label %if.end14

journal_shrink_one_cp_list.exit.do.end_crit_edge: ; preds = %journal_shrink_one_cp_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end14:                                         ; preds = %journal_shrink_one_cp_list.exit
  %47 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 16384
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end14.do.end_crit_edge

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end14
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false.do.cond_crit_edge

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.end23:                                         ; preds = %lor.lhs.false
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 9
  %52 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t_checkpoint_io_list, align 4
  %tobool.not.i88 = icmp eq ptr %53, null
  br i1 %tobool.not.i88, label %if.end23.journal_shrink_one_cp_list.exit118_crit_edge, label %if.end.i92

if.end23.journal_shrink_one_cp_list.exit118_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit118

if.end.i92:                                       ; preds = %if.end23
  %b_cpprev.i91 = getelementptr inbounds %struct.journal_head, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %b_cpprev.i91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_cpprev.i91, align 4
  br label %do.body.i99

do.body.i99:                                      ; preds = %land.rhs.i116.do.body.i99_crit_edge, %if.end.i92
  %next_jh.0.i93 = phi ptr [ %53, %if.end.i92 ], [ %57, %land.rhs.i116.do.body.i99_crit_edge ]
  %nr_freed.0.i94 = phi i32 [ 0, %if.end.i92 ], [ %nr_freed.1.i112, %land.rhs.i116.do.body.i99_crit_edge ]
  %b_cpnext.i95 = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i93, i32 0, i32 12
  %56 = ptrtoint ptr %b_cpnext.i95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_cpnext.i95, align 4
  %58 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_to_scan, align 4
  %dec.i96 = add i32 %59, -1
  store i32 %dec.i96, ptr %nr_to_scan, align 4
  %60 = ptrtoint ptr %next_jh.0.i93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %next_jh.0.i93, align 4
  %b_transaction.i.i97 = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i93, i32 0, i32 7
  %62 = ptrtoint ptr %b_transaction.i.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_transaction.i.i97, align 4
  %tobool.not.i.i98 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i98, label %lor.lhs.false.i.i101, label %do.body.i99.do.cond.i114_crit_edge

do.body.i99.do.cond.i114_crit_edge:               ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i114

lor.lhs.false.i.i101:                             ; preds = %do.body.i99
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %61, align 4
  %66 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool2.not.i.i100 = icmp eq i32 %66, 0
  br i1 %tobool2.not.i.i100, label %__cp_buffer_busy.exit.i103, label %lor.lhs.false.i.i101.do.cond.i114_crit_edge

lor.lhs.false.i.i101.do.cond.i114_crit_edge:      ; preds = %lor.lhs.false.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i114

__cp_buffer_busy.exit.i103:                       ; preds = %lor.lhs.false.i.i101
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %61, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool4.i.not.i102 = icmp eq i32 %69, 0
  br i1 %tobool4.i.not.i102, label %if.end2.i107, label %__cp_buffer_busy.exit.i103.do.cond.i114_crit_edge

__cp_buffer_busy.exit.i103.do.cond.i114_crit_edge: ; preds = %__cp_buffer_busy.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i114

if.end2.i107:                                     ; preds = %__cp_buffer_busy.exit.i103
  %inc.i104 = add i32 %nr_freed.0.i94, 1
  %call3.i105 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %next_jh.0.i93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i105)
  %tobool4.not.i106 = icmp eq i32 %call3.i105, 0
  br i1 %tobool4.not.i106, label %if.end6.i111, label %if.end2.i107.journal_shrink_one_cp_list.exit118_crit_edge

if.end2.i107.journal_shrink_one_cp_list.exit118_crit_edge: ; preds = %if.end2.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit118

if.end6.i111:                                     ; preds = %if.end2.i107
  %70 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i109 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i109 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 16384
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i110 = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i110, label %if.end6.i111.do.cond.i114_crit_edge, label %if.end6.i111.journal_shrink_one_cp_list.exit118_crit_edge

if.end6.i111.journal_shrink_one_cp_list.exit118_crit_edge: ; preds = %if.end6.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit118

if.end6.i111.do.cond.i114_crit_edge:              ; preds = %if.end6.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i114

do.cond.i114:                                     ; preds = %if.end6.i111.do.cond.i114_crit_edge, %__cp_buffer_busy.exit.i103.do.cond.i114_crit_edge, %lor.lhs.false.i.i101.do.cond.i114_crit_edge, %do.body.i99.do.cond.i114_crit_edge
  %nr_freed.1.i112 = phi i32 [ %nr_freed.0.i94, %__cp_buffer_busy.exit.i103.do.cond.i114_crit_edge ], [ %inc.i104, %if.end6.i111.do.cond.i114_crit_edge ], [ %nr_freed.0.i94, %lor.lhs.false.i.i101.do.cond.i114_crit_edge ], [ %nr_freed.0.i94, %do.body.i99.do.cond.i114_crit_edge ]
  %cmp10.not.i113 = icmp eq ptr %next_jh.0.i93, %55
  br i1 %cmp10.not.i113, label %do.cond.i114.journal_shrink_one_cp_list.exit118_crit_edge, label %land.rhs.i116

do.cond.i114.journal_shrink_one_cp_list.exit118_crit_edge: ; preds = %do.cond.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_shrink_one_cp_list.exit118

land.rhs.i116:                                    ; preds = %do.cond.i114
  %75 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_to_scan, align 4
  %tobool11.not.i115 = icmp eq i32 %76, 0
  br i1 %tobool11.not.i115, label %journal_shrink_one_cp_list.exit118.thread, label %land.rhs.i116.do.body.i99_crit_edge

land.rhs.i116.do.body.i99_crit_edge:              ; preds = %land.rhs.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i99

journal_shrink_one_cp_list.exit118.thread:        ; preds = %land.rhs.i116
  call void @__sanitizer_cov_trace_pc() #10
  %add25126 = add i32 %nr_freed.1.i112, %add
  br label %do.end

journal_shrink_one_cp_list.exit118:               ; preds = %do.cond.i114.journal_shrink_one_cp_list.exit118_crit_edge, %if.end6.i111.journal_shrink_one_cp_list.exit118_crit_edge, %if.end2.i107.journal_shrink_one_cp_list.exit118_crit_edge, %if.end23.journal_shrink_one_cp_list.exit118_crit_edge
  %retval.0.i117.ph = phi i32 [ 0, %if.end23.journal_shrink_one_cp_list.exit118_crit_edge ], [ %inc.i104, %if.end6.i111.journal_shrink_one_cp_list.exit118_crit_edge ], [ %nr_freed.1.i112, %do.cond.i114.journal_shrink_one_cp_list.exit118_crit_edge ], [ %inc.i104, %if.end2.i107.journal_shrink_one_cp_list.exit118_crit_edge ]
  %77 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr124 = load i32, ptr %nr_to_scan, align 4
  %add25 = add i32 %retval.0.i117.ph, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr124)
  %cmp26 = icmp eq i32 %.pr124, 0
  br i1 %cmp26, label %journal_shrink_one_cp_list.exit118.do.end_crit_edge, label %if.end28

journal_shrink_one_cp_list.exit118.do.end_crit_edge: ; preds = %journal_shrink_one_cp_list.exit118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end28:                                         ; preds = %journal_shrink_one_cp_list.exit118
  %78 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i86 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i86 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 16384
  %82 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i87.not = icmp eq i32 %82, 0
  br i1 %tobool.i87.not, label %if.end28.do.cond_crit_edge, label %if.end28.do.end_crit_edge

if.end28.do.end_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end28.do.cond_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

do.cond:                                          ; preds = %if.end28.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge
  %nr_freed.2 = phi i32 [ %add, %lor.lhs.false.do.cond_crit_edge ], [ %add25, %if.end28.do.cond_crit_edge ]
  %cmp36.not = icmp eq ptr %next_transaction.0, %12
  br i1 %cmp36.not, label %do.cond.if.else41_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond.if.else41_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41

do.end:                                           ; preds = %if.end28.do.end_crit_edge, %journal_shrink_one_cp_list.exit118.do.end_crit_edge, %journal_shrink_one_cp_list.exit118.thread, %if.end14.do.end_crit_edge, %journal_shrink_one_cp_list.exit.do.end_crit_edge, %journal_shrink_one_cp_list.exit.thread
  %nr_freed.3 = phi i32 [ %add122, %journal_shrink_one_cp_list.exit.thread ], [ %add25126, %journal_shrink_one_cp_list.exit118.thread ], [ %add, %journal_shrink_one_cp_list.exit.do.end_crit_edge ], [ %add, %if.end14.do.end_crit_edge ], [ %add25, %journal_shrink_one_cp_list.exit118.do.end_crit_edge ], [ %add25, %if.end28.do.end_crit_edge ]
  %cmp37.not = icmp eq ptr %next_transaction.0, %12
  br i1 %cmp37.not, label %do.end.if.else41_crit_edge, label %if.then38

do.end.if.else41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %j_shrink_transaction to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %16, ptr %j_shrink_transaction, align 8
  %t_tid40 = getelementptr inbounds %struct.transaction_s, ptr %16, i32 0, i32 1
  %84 = ptrtoint ptr %t_tid40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %t_tid40, align 4
  br label %if.end43

if.else41:                                        ; preds = %do.end.if.else41_crit_edge, %do.cond.if.else41_crit_edge
  %nr_freed.3191 = phi i32 [ %nr_freed.3, %do.end.if.else41_crit_edge ], [ %nr_freed.2, %do.cond.if.else41_crit_edge ]
  %86 = ptrtoint ptr %j_shrink_transaction to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %j_shrink_transaction, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then38
  %nr_freed.3190 = phi i32 [ %nr_freed.3, %if.then38 ], [ %nr_freed.3191, %if.else41 ]
  %next_tid.1 = phi i32 [ %85, %if.then38 ], [ 0, %if.else41 ]
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 570, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %87 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool46.not = icmp eq i32 %88, 0
  br i1 %tobool46.not, label %if.end43.out_crit_edge, label %land.lhs.true

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_tid.1)
  %tobool47.not = icmp eq i32 %next_tid.1, 0
  br i1 %tobool47.not, label %land.lhs.true.out_crit_edge, label %again

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.end43.out_crit_edge, %if.then
  %first_tid.2 = phi i32 [ %first_tid.0.lcssa, %if.then ], [ %first_tid.1, %land.lhs.true.out_crit_edge ], [ %first_tid.1, %if.end43.out_crit_edge ]
  %last_tid.1 = phi i32 [ %last_tid.0.lcssa, %if.then ], [ %14, %land.lhs.true.out_crit_edge ], [ %14, %if.end43.out_crit_edge ]
  %next_tid.2 = phi i32 [ %next_tid.0.lcssa, %if.then ], [ %next_tid.1, %if.end43.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ]
  %tid.1 = phi i32 [ %tid.0.lcssa, %if.then ], [ %18, %land.lhs.true.out_crit_edge ], [ %18, %if.end43.out_crit_edge ]
  %nr_freed.4 = phi i32 [ %nr_freed.0.lcssa, %if.then ], [ %nr_freed.3190, %land.lhs.true.out_crit_edge ], [ %nr_freed.3190, %if.end43.out_crit_edge ]
  %89 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_to_scan, align 4
  %sub = sub i32 %1, %90
  tail call fastcc void @trace_jbd2_shrink_checkpoint_list(ptr noundef %journal, i32 noundef %first_tid.2, i32 noundef %tid.1, i32 noundef %last_tid.1, i32 noundef %nr_freed.4, i32 noundef %sub, i32 noundef %next_tid.2)
  ret i32 %nr_freed.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_shrink_checkpoint_list(ptr noundef %journal, i32 noundef %first_tid, i32 noundef %tid, i32 noundef %last_tid, i32 noundef %nr_freed, i32 noundef %nr_scanned, i32 noundef %next_tid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_shrink_checkpoint_list, i32 0, i32 1), ptr blockaddress(@trace_jbd2_shrink_checkpoint_list, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %call42 = tail call i32 @__traceiter_jbd2_shrink_checkpoint_list(ptr noundef null, ptr noundef %journal, i32 noundef %first_tid, i32 noundef %tid, i32 noundef %last_tid, i32 noundef %nr_freed, i32 noundef %nr_scanned, i32 noundef %next_tid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_shrink_checkpoint_list, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_shrink_checkpoint_list, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_shrink_checkpoint_list.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_shrink_checkpoint_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 496, ptr noundef nonnull @.str.11) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
define dso_local void @__jbd2_journal_clean_checkpoint_list(ptr nocapture noundef readonly %journal, i1 noundef zeroext %destroy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %0 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_cpprev = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %t_cpprev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_cpprev, align 8
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end
  %next_transaction.0 = phi ptr [ %1, %if.end ], [ %5, %do.body.backedge ]
  %t_cpnext = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 21
  %4 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_cpnext, align 4
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 8
  %6 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_checkpoint_list, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.journal_clean_one_cp_list.exit_crit_edge, label %if.end.i

do.body.journal_clean_one_cp_list.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit

if.end.i:                                         ; preds = %do.body
  %b_cpprev.i = getelementptr inbounds %struct.journal_head, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %b_cpprev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_cpprev.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %if.end.i
  %next_jh.0.i = phi ptr [ %7, %if.end.i ], [ %11, %if.end7.i.do.body.i_crit_edge ]
  %b_cpnext.i = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i, i32 0, i32 12
  %10 = ptrtoint ptr %b_cpnext.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_cpnext.i, align 4
  br i1 %destroy, label %do.body.i.if.end3.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %12 = ptrtoint ptr %next_jh.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_jh.0.i, align 4
  %b_transaction.i.i = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i, i32 0, i32 7
  %14 = ptrtoint ptr %b_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_transaction.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.journal_clean_one_cp_list.exit_crit_edge

land.lhs.true.i.journal_clean_one_cp_list.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %13, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i.i, label %__cp_buffer_busy.exit.i, label %lor.lhs.false.i.i.journal_clean_one_cp_list.exit_crit_edge

lor.lhs.false.i.i.journal_clean_one_cp_list.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit

__cp_buffer_busy.exit.i:                          ; preds = %lor.lhs.false.i.i
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %13, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool4.i.not.i, label %__cp_buffer_busy.exit.i.if.end3.i_crit_edge, label %__cp_buffer_busy.exit.i.journal_clean_one_cp_list.exit_crit_edge

__cp_buffer_busy.exit.i.journal_clean_one_cp_list.exit_crit_edge: ; preds = %__cp_buffer_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit

__cp_buffer_busy.exit.i.if.end3.i_crit_edge:      ; preds = %__cp_buffer_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %__cp_buffer_busy.exit.i.if.end3.i_crit_edge, %do.body.i.if.end3.i_crit_edge
  %call4.i = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %next_jh.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %22 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 16384
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.i = icmp ne i32 %26, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %journal_clean_one_cp_list.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %cmp.not.i = icmp eq ptr %next_jh.0.i, %9
  %or.cond.i = select i1 %tobool.i.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end7.i.journal_clean_one_cp_list.exit_crit_edge, label %if.end7.i.do.body.i_crit_edge

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end7.i.journal_clean_one_cp_list.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit

journal_clean_one_cp_list.exit:                   ; preds = %if.end7.i.journal_clean_one_cp_list.exit_crit_edge, %__cp_buffer_busy.exit.i.journal_clean_one_cp_list.exit_crit_edge, %lor.lhs.false.i.i.journal_clean_one_cp_list.exit_crit_edge, %land.lhs.true.i.journal_clean_one_cp_list.exit_crit_edge, %do.body.journal_clean_one_cp_list.exit_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 16384
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %if.end7, label %journal_clean_one_cp_list.exit.cleanup_crit_edge

journal_clean_one_cp_list.exit.cleanup_crit_edge: ; preds = %journal_clean_one_cp_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

journal_clean_one_cp_list.exit.thread:            ; preds = %if.end3.i
  %cmp.not.old = icmp eq ptr %next_transaction.0, %3
  %or.cond58 = select i1 %tobool.i.i, i1 true, i1 %cmp.not.old
  br i1 %or.cond58, label %journal_clean_one_cp_list.exit.thread.cleanup_crit_edge, label %journal_clean_one_cp_list.exit.thread.do.body.backedge_crit_edge

journal_clean_one_cp_list.exit.thread.do.body.backedge_crit_edge: ; preds = %journal_clean_one_cp_list.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

journal_clean_one_cp_list.exit.thread.cleanup_crit_edge: ; preds = %journal_clean_one_cp_list.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.backedge:                                 ; preds = %journal_clean_one_cp_list.exit52.do.body.backedge_crit_edge, %journal_clean_one_cp_list.exit.thread.do.body.backedge_crit_edge
  br label %do.body

if.end7:                                          ; preds = %journal_clean_one_cp_list.exit
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %next_transaction.0, i32 0, i32 9
  %32 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t_checkpoint_io_list, align 4
  %tobool.not.i30 = icmp eq ptr %33, null
  br i1 %tobool.not.i30, label %if.end7.journal_clean_one_cp_list.exit52_crit_edge, label %if.end.i32

if.end7.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

if.end.i32:                                       ; preds = %if.end7
  %b_cpprev.i31 = getelementptr inbounds %struct.journal_head, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %b_cpprev.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_cpprev.i31, align 4
  br label %do.body.i35

do.body.i35:                                      ; preds = %if.end7.i50.do.body.i35_crit_edge, %if.end.i32
  %next_jh.0.i33 = phi ptr [ %33, %if.end.i32 ], [ %37, %if.end7.i50.do.body.i35_crit_edge ]
  %b_cpnext.i34 = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i33, i32 0, i32 12
  %36 = ptrtoint ptr %b_cpnext.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_cpnext.i34, align 4
  br i1 %destroy, label %do.body.i35.if.end3.i45_crit_edge, label %land.lhs.true.i38

do.body.i35.if.end3.i45_crit_edge:                ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i45

land.lhs.true.i38:                                ; preds = %do.body.i35
  %38 = ptrtoint ptr %next_jh.0.i33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_jh.0.i33, align 4
  %b_transaction.i.i36 = getelementptr inbounds %struct.journal_head, ptr %next_jh.0.i33, i32 0, i32 7
  %40 = ptrtoint ptr %b_transaction.i.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_transaction.i.i36, align 4
  %tobool.not.i.i37 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i37, label %lor.lhs.false.i.i40, label %land.lhs.true.i38.journal_clean_one_cp_list.exit52_crit_edge

land.lhs.true.i38.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

lor.lhs.false.i.i40:                              ; preds = %land.lhs.true.i38
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %39, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.i.i39 = icmp eq i32 %44, 0
  br i1 %tobool2.not.i.i39, label %__cp_buffer_busy.exit.i42, label %lor.lhs.false.i.i40.journal_clean_one_cp_list.exit52_crit_edge

lor.lhs.false.i.i40.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %lor.lhs.false.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

__cp_buffer_busy.exit.i42:                        ; preds = %lor.lhs.false.i.i40
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %39, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool4.i.not.i41 = icmp eq i32 %47, 0
  br i1 %tobool4.i.not.i41, label %__cp_buffer_busy.exit.i42.if.end3.i45_crit_edge, label %__cp_buffer_busy.exit.i42.journal_clean_one_cp_list.exit52_crit_edge

__cp_buffer_busy.exit.i42.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %__cp_buffer_busy.exit.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

__cp_buffer_busy.exit.i42.if.end3.i45_crit_edge:  ; preds = %__cp_buffer_busy.exit.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i45

if.end3.i45:                                      ; preds = %__cp_buffer_busy.exit.i42.if.end3.i45_crit_edge, %do.body.i35.if.end3.i45_crit_edge
  %call4.i43 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %next_jh.0.i33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i43)
  %tobool5.not.i44 = icmp eq i32 %call4.i43, 0
  br i1 %tobool5.not.i44, label %if.end7.i50, label %if.end3.i45.journal_clean_one_cp_list.exit52_crit_edge

if.end3.i45.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %if.end3.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

if.end7.i50:                                      ; preds = %if.end3.i45
  %48 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i46 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i46 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 16384
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.i47 = icmp ne i32 %52, 0
  %cmp.not.i48 = icmp eq ptr %next_jh.0.i33, %35
  %or.cond.i49 = select i1 %tobool.i.i47, i1 true, i1 %cmp.not.i48
  br i1 %or.cond.i49, label %if.end7.i50.journal_clean_one_cp_list.exit52_crit_edge, label %if.end7.i50.do.body.i35_crit_edge

if.end7.i50.do.body.i35_crit_edge:                ; preds = %if.end7.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i35

if.end7.i50.journal_clean_one_cp_list.exit52_crit_edge: ; preds = %if.end7.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_clean_one_cp_list.exit52

journal_clean_one_cp_list.exit52:                 ; preds = %if.end7.i50.journal_clean_one_cp_list.exit52_crit_edge, %if.end3.i45.journal_clean_one_cp_list.exit52_crit_edge, %__cp_buffer_busy.exit.i42.journal_clean_one_cp_list.exit52_crit_edge, %lor.lhs.false.i.i40.journal_clean_one_cp_list.exit52_crit_edge, %land.lhs.true.i38.journal_clean_one_cp_list.exit52_crit_edge, %if.end7.journal_clean_one_cp_list.exit52_crit_edge
  %tobool13.not = phi i1 [ true, %if.end7.journal_clean_one_cp_list.exit52_crit_edge ], [ true, %if.end7.i50.journal_clean_one_cp_list.exit52_crit_edge ], [ false, %if.end3.i45.journal_clean_one_cp_list.exit52_crit_edge ], [ true, %__cp_buffer_busy.exit.i42.journal_clean_one_cp_list.exit52_crit_edge ], [ true, %lor.lhs.false.i.i40.journal_clean_one_cp_list.exit52_crit_edge ], [ true, %land.lhs.true.i38.journal_clean_one_cp_list.exit52_crit_edge ]
  %53 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i28 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i28 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 16384
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i29 = icmp ne i32 %57, 0
  %or.cond = or i1 %tobool13.not, %tobool.i29
  %cmp.not = icmp eq ptr %next_transaction.0, %3
  %or.cond27 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond27, label %journal_clean_one_cp_list.exit52.cleanup_crit_edge, label %journal_clean_one_cp_list.exit52.do.body.backedge_crit_edge

journal_clean_one_cp_list.exit52.do.body.backedge_crit_edge: ; preds = %journal_clean_one_cp_list.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

journal_clean_one_cp_list.exit52.cleanup_crit_edge: ; preds = %journal_clean_one_cp_list.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %journal_clean_one_cp_list.exit52.cleanup_crit_edge, %journal_clean_one_cp_list.exit.thread.cleanup_crit_edge, %journal_clean_one_cp_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_checkpoint(ptr noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %0 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not7 = icmp eq ptr %1, null
  br i1 %tobool.not7, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  ret void

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__jbd2_journal_clean_checkpoint_list(ptr noundef %journal, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock(ptr noundef %j_list_lock) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 652, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  tail call void @_raw_spin_lock(ptr noundef %j_list_lock) #8
  %2 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_checkpoint_transactions, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.then_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_checkpoint_stats(i32 noundef %dev, i32 noundef %tid, ptr noundef %stats) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint_stats, i32 0, i32 1), ptr blockaddress(@trace_jbd2_checkpoint_stats, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %call42 = tail call i32 @__traceiter_jbd2_checkpoint_stats(ptr noundef null, i32 noundef %dev, i32 noundef %tid, ptr noundef %stats) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_checkpoint_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_checkpoint_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 325, ptr noundef nonnull @.str.11) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
define dso_local void @__jbd2_journal_drop_transaction(ptr noundef %journal, ptr noundef %transaction) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_list_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %j_list_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %j_list_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !52

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

do.end7:                                          ; preds = %entry
  %j_shrink_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 23
  %2 = ptrtoint ptr %j_shrink_transaction to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %j_shrink_transaction, align 8
  %t_cpnext = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 21
  %3 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t_cpnext, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.end7.do.body25_crit_edge, label %if.then9

do.end7.do.body25_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.then9:                                         ; preds = %do.end7
  %t_cpprev = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 22
  %5 = ptrtoint ptr %t_cpprev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_cpprev, align 8
  %t_cpprev11 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %t_cpprev11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %t_cpprev11, align 8
  %8 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_cpnext, align 4
  %10 = load ptr, ptr %t_cpprev, align 8
  %t_cpnext14 = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %t_cpnext14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %t_cpnext14, align 4
  %j_checkpoint_transactions = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 12
  %12 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp = icmp eq ptr %13, %transaction
  br i1 %cmp, label %if.then15, label %if.then9.if.end18_crit_edge

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %t_cpnext to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t_cpnext, align 4
  %16 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %j_checkpoint_transactions, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then9.if.end18_crit_edge
  %17 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %j_checkpoint_transactions, align 8
  %cmp20 = icmp eq ptr %18, %transaction
  br i1 %cmp20, label %if.then21, label %if.end18.do.body25_crit_edge

if.end18.do.body25_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %j_checkpoint_transactions to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %j_checkpoint_transactions, align 8
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %if.end18.do.body25_crit_edge, %do.end7.do.body25_crit_edge
  %t_state = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 2
  %20 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp26.not = icmp eq i32 %21, 8
  br i1 %cmp26.not, label %do.body42, label %do.body36, !prof !55

do.body36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 795, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

do.body42:                                        ; preds = %do.body25
  %t_buffers = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 6
  %22 = ptrtoint ptr %t_buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t_buffers, align 8
  %cmp43.not = icmp eq ptr %23, null
  br i1 %cmp43.not, label %do.body59, label %do.body53, !prof !55

do.body53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

do.body59:                                        ; preds = %do.body42
  %t_forget = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 7
  %24 = ptrtoint ptr %t_forget to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t_forget, align 4
  %cmp60.not = icmp eq ptr %25, null
  br i1 %cmp60.not, label %do.body76, label %do.body70, !prof !55

do.body70:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 797, 0\0A.popsection", ""() #8, !srcloc !69
  unreachable

do.body76:                                        ; preds = %do.body59
  %t_shadow_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 10
  %26 = ptrtoint ptr %t_shadow_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_shadow_list, align 8
  %cmp77.not = icmp eq ptr %27, null
  br i1 %cmp77.not, label %do.body93, label %do.body87, !prof !55

do.body87:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 798, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

do.body93:                                        ; preds = %do.body76
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 8
  %28 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t_checkpoint_list, align 8
  %cmp94.not = icmp eq ptr %29, null
  br i1 %cmp94.not, label %do.body110, label %do.body104, !prof !55

do.body104:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 799, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

do.body110:                                       ; preds = %do.body93
  %t_checkpoint_io_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 9
  %30 = ptrtoint ptr %t_checkpoint_io_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t_checkpoint_io_list, align 4
  %cmp111.not = icmp eq ptr %31, null
  br i1 %cmp111.not, label %do.body127, label %do.body121, !prof !55

do.body121:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 800, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.body127:                                       ; preds = %do.body110
  %t_updates = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %t_updates, i32 noundef 4) #8
  %32 = ptrtoint ptr %t_updates to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %t_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp129.not = icmp eq i32 %33, 0
  br i1 %cmp129.not, label %do.body145, label %do.body139, !prof !55

do.body139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 801, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.body145:                                       ; preds = %do.body127
  %j_committing_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 11
  %34 = ptrtoint ptr %j_committing_transaction to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %j_committing_transaction, align 4
  %cmp146.not = icmp eq ptr %35, %transaction
  br i1 %cmp146.not, label %do.body156, label %do.body162, !prof !52

do.body156:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 802, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.body162:                                       ; preds = %do.body145
  %j_running_transaction = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 10
  %36 = ptrtoint ptr %j_running_transaction to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %j_running_transaction, align 8
  %cmp163.not = icmp eq ptr %37, %transaction
  br i1 %cmp163.not, label %do.body173, label %do.end178, !prof !52

do.body173:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 803, 0\0A.popsection", ""() #8, !srcloc !75
  unreachable

do.end178:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_jbd2_drop_transaction(ptr noundef %journal, ptr noundef %transaction)
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 1
  %38 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %t_tid, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__jbd2_journal_drop_transaction, i32 noundef 807, ptr noundef nonnull @.str.9, i32 noundef %39) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_free_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_insert_checkpoint(ptr noundef %jh, ptr noundef %transaction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jh, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

lor.rhs:                                          ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5 = icmp eq i32 %7, 0
  br i1 %tobool5, label %do.body9, label %lor.rhs.do.body14_crit_edge, !prof !52

lor.rhs.do.body14_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body9:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

do.body14:                                        ; preds = %lor.rhs.do.body14_crit_edge, %entry.do.body14_crit_edge
  %b_cp_transaction = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 11
  %8 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_cp_transaction, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %do.end29, label %do.body24, !prof !55

do.body24:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 752, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

do.end29:                                         ; preds = %do.body14
  %call31 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %1) #8
  %10 = ptrtoint ptr %b_cp_transaction to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transaction, ptr %b_cp_transaction, align 4
  %t_checkpoint_list = getelementptr inbounds %struct.transaction_s, ptr %transaction, i32 0, i32 8
  %11 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_checkpoint_list, align 8
  %tobool33.not = icmp eq ptr %12, null
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %b_cpprev = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 13
  %13 = ptrtoint ptr %b_cpprev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %jh, ptr %b_cpprev, align 4
  %b_cpnext = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 12
  br label %if.end44

if.else:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %b_cpnext36 = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 12
  %14 = ptrtoint ptr %b_cpnext36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %b_cpnext36, align 4
  %15 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t_checkpoint_list, align 8
  %b_cpprev38 = getelementptr inbounds %struct.journal_head, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %b_cpprev38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_cpprev38, align 4
  %b_cpprev39 = getelementptr inbounds %struct.journal_head, ptr %jh, i32 0, i32 13
  %19 = ptrtoint ptr %b_cpprev39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %b_cpprev39, align 4
  %b_cpnext41 = getelementptr inbounds %struct.journal_head, ptr %18, i32 0, i32 12
  %20 = ptrtoint ptr %b_cpnext41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %jh, ptr %b_cpnext41, align 4
  %21 = load ptr, ptr %b_cpnext36, align 4
  %b_cpprev43 = getelementptr inbounds %struct.journal_head, ptr %21, i32 0, i32 13
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then34
  %b_cpprev43.sink = phi ptr [ %b_cpprev43, %if.else ], [ %b_cpnext, %if.then34 ]
  %22 = ptrtoint ptr %b_cpprev43.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %jh, ptr %b_cpprev43.sink, align 4
  %23 = ptrtoint ptr %t_checkpoint_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %jh, ptr %t_checkpoint_list, align 8
  %24 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transaction, align 8
  %j_checkpoint_jh_count = getelementptr inbounds %struct.journal_s, ptr %25, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %26 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %j_checkpoint_jh_count, i64 noundef 1, i32 noundef %26) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_grab_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_jbd2_drop_transaction(ptr noundef %journal, ptr noundef %commit_transaction) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_drop_transaction, i32 0, i32 1), ptr blockaddress(@trace_jbd2_drop_transaction, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !55

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  %call42 = tail call i32 @__traceiter_jbd2_drop_transaction(ptr noundef null, ptr noundef %journal, ptr noundef %commit_transaction) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !55

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_drop_transaction, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_drop_transaction, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_jbd2_drop_transaction.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_jbd2_drop_transaction.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 90, ptr noundef nonnull @.str.11) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_checkpoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_shrink_checkpoint_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_checkpoint_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_drop_transaction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !35, !37, !38, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jbd2/checkpoint.c", i32 154, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__jbd2_log_wait_for_space._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__jbd2_log_wait_for_space._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jbd2/checkpoint.c", i32 157, i32 5}
!8 = !{ptr @__jbd2_log_wait_for_space._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__jbd2_log_wait_for_space._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__func__.jbd2_log_do_checkpoint, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jbd2/checkpoint.c", i32 206, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/jbd2/checkpoint.c", i32 215, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jbd2/checkpoint.c", i32 267, i32 5}
!17 = !{ptr @jbd2_log_do_checkpoint._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @jbd2_log_do_checkpoint._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__func__.__jbd2_journal_drop_transaction, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jbd2/checkpoint.c", i32 807, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/jbd2.h", i32 14, i32 1}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/jbd2.h", i32 462, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/jbd2.h", i32 296, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/trace/events/jbd2.h", i32 85, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2155057088, i64 2155057573, i64 2155057125, i64 2155057181, i64 2155057215, i64 2155057239, i64 2155057280, i64 2155057301, i64 2155057329, i64 2155057363}
!54 = !{i64 2148221433, i64 2148221459, i64 2148221488, i64 2148221522, i64 2148221553, i64 2148221576}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2155055443, i64 2155055928, i64 2155055480, i64 2155055536, i64 2155055570, i64 2155055594, i64 2155055635, i64 2155055656, i64 2155055684, i64 2155055718}
!57 = !{i64 2149071774, i64 2149071779, i64 2149071792, i64 2149071836, i64 2149071870, i64 2149071891}
!58 = !{i64 2154655265}
!59 = !{i64 2154655488}
!60 = !{i64 2149518339}
!61 = !{i64 2149519375}
!62 = !{i64 2155032702}
!63 = !{i64 2155033053}
!64 = !{i64 2154900068}
!65 = !{i64 2154900303}
!66 = !{i64 2155062984, i64 2155063469, i64 2155063021, i64 2155063077, i64 2155063111, i64 2155063135, i64 2155063176, i64 2155063197, i64 2155063225, i64 2155063259}
!67 = !{i64 2155064698, i64 2155065183, i64 2155064735, i64 2155064791, i64 2155064825, i64 2155064849, i64 2155064890, i64 2155064911, i64 2155064939, i64 2155064973}
!68 = !{i64 2155066409, i64 2155066894, i64 2155066446, i64 2155066502, i64 2155066536, i64 2155066560, i64 2155066601, i64 2155066622, i64 2155066650, i64 2155066684}
!69 = !{i64 2155068117, i64 2155068602, i64 2155068154, i64 2155068210, i64 2155068244, i64 2155068268, i64 2155068309, i64 2155068330, i64 2155068358, i64 2155068392}
!70 = !{i64 2155073901, i64 2155074386, i64 2155073938, i64 2155073994, i64 2155074028, i64 2155074052, i64 2155074093, i64 2155074114, i64 2155074142, i64 2155074176}
!71 = !{i64 2155075636, i64 2155076121, i64 2155075673, i64 2155075729, i64 2155075763, i64 2155075787, i64 2155075828, i64 2155075849, i64 2155075877, i64 2155075911}
!72 = !{i64 2155077380, i64 2155077865, i64 2155077417, i64 2155077473, i64 2155077507, i64 2155077531, i64 2155077572, i64 2155077593, i64 2155077621, i64 2155077655}
!73 = !{i64 2155079091, i64 2155079576, i64 2155079128, i64 2155079184, i64 2155079218, i64 2155079242, i64 2155079283, i64 2155079304, i64 2155079332, i64 2155079366}
!74 = !{i64 2155080823, i64 2155081308, i64 2155080860, i64 2155080916, i64 2155080950, i64 2155080974, i64 2155081015, i64 2155081036, i64 2155081064, i64 2155081098}
!75 = !{i64 2155082546, i64 2155083031, i64 2155082583, i64 2155082639, i64 2155082673, i64 2155082697, i64 2155082738, i64 2155082759, i64 2155082787, i64 2155082821}
!76 = !{i64 2155059328, i64 2155059813, i64 2155059365, i64 2155059421, i64 2155059455, i64 2155059479, i64 2155059520, i64 2155059541, i64 2155059569, i64 2155059603}
!77 = !{i64 2155061084, i64 2155061569, i64 2155061121, i64 2155061177, i64 2155061211, i64 2155061235, i64 2155061276, i64 2155061297, i64 2155061325, i64 2155061359}
!78 = !{i64 2154749518}
!79 = !{i64 2154749777}
