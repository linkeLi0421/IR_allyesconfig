; ModuleID = '/llk/IR_all_yes/fs/ocfs2/buffer_head_io.c_pt.bc'
source_filename = "../fs/ocfs2/buffer_head_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.77, %union.anon.81 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.77 = type { i64 }
%union.anon.81 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.82, [16 x i8] }
%union.anon.82 = type { i32 }

@__func__.ocfs2_write_block = private unnamed_addr constant [18 x i8] c"ocfs2_write_block\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_read_blocks_sync = private unnamed_addr constant [23 x i8] c"ocfs2_read_blocks_sync\00", align 1
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"trying to sync read a dirty buffer! (blocknr = %llu), skipping\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ocfs2_read_blocks = private unnamed_addr constant [18 x i8] c"ocfs2_read_blocks\00", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"asked to read %d blocks!\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ocfs2_write_super_or_backup = private unnamed_addr constant [28 x i8] c"ocfs2_write_super_or_backup\00", align 1
@__tracepoint_ocfs2_write_block = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_write_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_read_blocks_sync = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_sync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_read_blocks_sync_jbd = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_sync_jbd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_read_blocks_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_read_blocks_from_disk = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_from_disk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_read_blocks_bh = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_read_blocks_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_read_blocks_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 53, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 127, i32 4 }
@___asan_gen_.14 = private constant [29 x i8] c"../fs/ocfs2/buffer_head_io.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 217, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 2686, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 108, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 366, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_write_block(ptr noundef %osb, ptr noundef %bh, ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m68 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_write_block(i64 noundef %1, ptr noundef %ci)
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %3)
  %cmp = icmp ult i64 %3, 2
  br i1 %cmp, label %do.body3, label %do.body9, !prof !51

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #6, !srcloc !52
  unreachable

do.body9:                                         ; preds = %entry
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %do.end26, label %do.body18, !prof !53

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 46, 0\0A.popsection", ""() #6, !srcloc !54
  unreachable

do.end26:                                         ; preds = %do.body9
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #6
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %7 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %8, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not = icmp eq i32 %and.i, 0
  br i1 %tobool28.not, label %if.end46, label %do.body39

do.body39:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_block, i32 noundef 53, ptr noundef nonnull @.str, i64 noundef -30) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %out

if.end46:                                         ; preds = %do.end26
  tail call void @ocfs2_metadata_cache_io_lock(ptr noundef %ci) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 366) #6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #6
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end46.if.then.i109_crit_edge

if.end46.if.then.i109_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i109

trylock_buffer.exit.i:                            ; preds = %if.end46
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #6, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i109_crit_edge

trylock_buffer.exit.i.if.then.i109_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i109

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit

if.then.i109:                                     ; preds = %trylock_buffer.exit.i.if.then.i109_crit_edge, %if.end46.if.then.i109_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #6
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i109, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bh, align 4
  %and1.i.i107 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i107)
  %tobool.not.i = icmp eq i32 %and1.i.i107, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #6
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #6
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !57
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 7
  %17 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %call47 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #6
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %bh, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i110 = icmp eq i32 %20, 0
  br i1 %tobool.not.i110, label %set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge, label %if.then.i111

set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge: ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_on_buffer.exit

if.then.i111:                                     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wait_on_buffer(ptr noundef %bh) #6
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i111, %set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bh, align 4
  %and1.i.i108 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i108)
  %tobool49.not = icmp eq i32 %and1.i.i108, 0
  br i1 %tobool49.not, label %do.body67, label %if.then50

if.then50:                                        ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocfs2_set_buffer_uptodate(ptr noundef %ci, ptr noundef %bh) #6
  br label %if.end78

do.body67:                                        ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #6
  %23 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606846976, ptr %_m68, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.ocfs2_write_block, i32 noundef 78, ptr noundef nonnull @.str, i64 noundef -5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #6
  br label %if.end78

if.end78:                                         ; preds = %do.body67, %if.then50
  %ret.0 = phi i32 [ 0, %if.then50 ], [ -5, %do.body67 ]
  call void @ocfs2_metadata_cache_io_unlock(ptr noundef %ci) #6
  br label %out

out:                                              ; preds = %if.end78, %do.body39
  %ret.1 = phi i32 [ -30, %do.body39 ], [ %ret.0, %if.end78 ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_block(i64 noundef %block, ptr noundef %ci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_block, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !59
  %call42 = tail call i32 @__traceiter_ocfs2_write_block(ptr noundef null, i64 noundef %block, ptr noundef %ci) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_block, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_write_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_write_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2698, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_io_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_on_buffer(ptr noundef %bh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #6
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wait_on_buffer(ptr noundef %bh) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_io_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_blocks_sync(ptr nocapture noundef readonly %osb, i64 noundef %block, i32 noundef %nr, ptr nocapture noundef %bhs) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m42 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_ocfs2_read_blocks_sync(i64 noundef %block, i32 noundef %nr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool.not = icmp eq i32 %nr, 0
  br i1 %tobool.not, label %entry.bail_crit_edge, label %for.body.lr.ph

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhs, align 4
  %cmp = icmp ne ptr %1, null
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.addr.0153 = phi i64 [ %block, %for.body.lr.ph ], [ %block.addr.1, %for.inc.for.body_crit_edge ]
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc56, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr ptr, ptr %bhs, i32 %i.0152
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then6, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then6:                                         ; preds = %for.body
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 4
  %inc = add i64 %block.addr.0153, 1
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %block.addr.0153, i32 noundef %9, i32 noundef 8) #6
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx3, align 4
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %do.body, label %if.then6.if.end32_crit_edge

if.then6.if.end32_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_blocks_sync, i32 noundef 112, ptr noundef nonnull @.str, i64 noundef -12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %for.body60.lr.ph.preheader

if.end32:                                         ; preds = %if.then6.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %block.addr.1 = phi i64 [ %inc, %if.then6.if.end32_crit_edge ], [ %block.addr.0153, %for.body.if.end32_crit_edge ]
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not = icmp eq i32 %16, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  call fastcc void @trace_ocfs2_read_blocks_sync_jbd(i64 noundef %18)
  br label %for.inc

if.end37:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %13, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool39.not = icmp eq i32 %21, 0
  br i1 %tobool39.not, label %if.end50, label %do.body41

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #6
  %22 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m42, align 8
  %b_blocknr46 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %b_blocknr46 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b_blocknr46, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.ocfs2_read_blocks_sync, i32 noundef 130, ptr noundef nonnull @.str.1, i64 noundef %24) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #6
  br label %for.inc

if.end50:                                         ; preds = %if.end37
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 366) #6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #6
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end50.if.then.i_crit_edge

if.end50.if.then.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end50
  call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #6
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 4, ptr elementtype(i32) %13) #6, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %28 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end50.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef %13) #6
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %13, align 4
  %31 = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool52.not = icmp eq i32 %31, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @unlock_buffer(ptr noundef %13) #6
  br label %for.inc

if.end54:                                         ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !57
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 7
  %33 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %call55 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %13) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %if.then53, %do.body41, %if.then36
  %inc56 = add nuw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc56, %nr
  br i1 %exitcond.not, label %for.inc.for.body60.lr.ph.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.body60.lr.ph.preheader_crit_edge:     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.lr.ph.preheader

for.body60.lr.ph.preheader:                       ; preds = %for.inc.for.body60.lr.ph.preheader_crit_edge, %do.body
  %tobool62.not159.ph = phi i1 [ false, %do.body ], [ true, %for.inc.for.body60.lr.ph.preheader_crit_edge ]
  %status.1158.ph = phi i32 [ -12, %do.body ], [ 0, %for.inc.for.body60.lr.ph.preheader_crit_edge ]
  br label %for.body60.lr.ph

for.body60.lr.ph:                                 ; preds = %if.end87.for.body60.lr.ph_crit_edge, %for.body60.lr.ph.preheader
  %tobool62.not159 = phi i1 [ %tobool62.not159.ph, %for.body60.lr.ph.preheader ], [ false, %if.end87.for.body60.lr.ph_crit_edge ]
  %status.1158 = phi i32 [ %status.1158.ph, %for.body60.lr.ph.preheader ], [ -5, %if.end87.for.body60.lr.ph_crit_edge ]
  br label %for.body60

for.body60:                                       ; preds = %for.inc92.for.body60_crit_edge, %for.body60.lr.ph
  %i.1155 = phi i32 [ %nr, %for.body60.lr.ph ], [ %sub, %for.inc92.for.body60_crit_edge ]
  %sub = add i32 %i.1155, -1
  %arrayidx61 = getelementptr ptr, ptr %bhs, i32 %sub
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx61, align 4
  br i1 %tobool62.not159, label %if.end83, label %if.then65, !prof !53

if.then65:                                        ; preds = %for.body60
  %tobool68.not = icmp eq ptr %35, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool68.not
  br i1 %or.cond, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.then65
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool71.not = icmp eq i32 %38, 0
  br i1 %tobool71.not, label %if.then72, label %if.then69.if.end73_crit_edge

if.then69.if.end73_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wait_on_buffer(ptr noundef nonnull %35)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then69.if.end73_crit_edge
  call fastcc void @put_bh(ptr noundef nonnull %35)
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx61, align 4
  br label %for.inc92

if.else:                                          ; preds = %if.then65
  br i1 %tobool68.not, label %if.else.for.inc92_crit_edge, label %land.lhs.true77

if.else.for.inc92_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc92

land.lhs.true77:                                  ; preds = %if.else
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %35, align 4
  %and1.i.i146 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i146)
  %tobool79.not = icmp eq i32 %and1.i.i146, 0
  br i1 %tobool79.not, label %land.lhs.true77.for.inc92_crit_edge, label %if.then80

land.lhs.true77.for.inc92_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc92

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %35) #6
  br label %for.inc92

if.end83:                                         ; preds = %for.body60
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %35, align 4
  %44 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool85.not = icmp eq i32 %44, 0
  br i1 %tobool85.not, label %if.then86, label %if.end83.if.end87_crit_edge

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then86:                                        ; preds = %if.end83
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #6
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %35, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.then86.if.end87_crit_edge, label %if.then.i150

if.then86.if.end87_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then.i150:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  call void @__wait_on_buffer(ptr noundef %35) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then.i150, %if.then86.if.end87_crit_edge, %if.end83.if.end87_crit_edge
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %35, align 4
  %and1.i.i149 = and i32 %49, 1
  %tobool89.not = icmp eq i32 %and1.i.i149, 0
  br i1 %tobool89.not, label %if.end87.for.body60.lr.ph_crit_edge, label %if.end87.for.inc92_crit_edge

if.end87.for.inc92_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc92

if.end87.for.body60.lr.ph_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.lr.ph

for.inc92:                                        ; preds = %if.end87.for.inc92_crit_edge, %if.then80, %land.lhs.true77.for.inc92_crit_edge, %if.else.for.inc92_crit_edge, %if.end73
  %cmp58.not = icmp eq i32 %sub, 0
  br i1 %cmp58.not, label %for.inc92.bail_crit_edge, label %for.inc92.for.body60_crit_edge

for.inc92.for.body60_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.inc92.bail_crit_edge:                         ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

bail:                                             ; preds = %for.inc92.bail_crit_edge, %entry.bail_crit_edge
  %status.2 = phi i32 [ 0, %entry.bail_crit_edge ], [ %status.1158, %for.inc92.bail_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_blocks_sync(i64 noundef %val1, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_sync, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !63
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_sync(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_sync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_sync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2676, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
define internal fastcc void @trace_ocfs2_read_blocks_sync_jbd(i64 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync_jbd, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_sync_jbd, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !65
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_sync_jbd(ptr noundef null, i64 noundef %num) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !66
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync_jbd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_sync_jbd, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_sync_jbd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_sync_jbd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2678, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bh(ptr noundef %bh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !67
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #6, !srcloc !68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_blocks(ptr noundef %ci, i64 noundef %block, i32 noundef %nr, ptr noundef %bhs, i32 noundef %flags, ptr noundef readonly %validate) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m77 = alloca i64, align 8
  %_m123 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ci) #6
  tail call fastcc void @trace_ocfs2_read_blocks_begin(ptr noundef %ci, i64 noundef %block, i32 noundef %nr, i32 noundef %flags)
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !51

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #6, !srcloc !69
  unreachable

do.body10:                                        ; preds = %entry
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %and12 = and i32 %flags, 1
  %0 = and i32 %flags, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %.not = icmp eq i32 %0, 9
  br i1 %.not, label %do.body21, label %do.end29, !prof !51

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #6, !srcloc !70
  unreachable

do.end29:                                         ; preds = %do.body10
  %cmp = icmp eq ptr %bhs, null
  br i1 %cmp, label %do.body40, label %if.end48

do.body40:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_blocks, i32 noundef 212, ptr noundef nonnull @.str, i64 noundef -22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %bail

if.end48:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp49 = icmp slt i32 %nr, 0
  br i1 %cmp49, label %do.body52, label %if.end87

do.body52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #6
  %2 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m53, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.ocfs2_read_blocks, i32 noundef 217, ptr noundef nonnull @.str.2, i32 noundef %nr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m77) #6
  %3 = ptrtoint ptr %_m77 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m77, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m77, ptr noundef nonnull @__func__.ocfs2_read_blocks, i32 noundef 219, ptr noundef nonnull @.str, i64 noundef -22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m77) #6
  br label %bail

if.end87:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp88 = icmp eq i32 %nr, 0
  br i1 %cmp88, label %if.end87.bail_crit_edge, label %for.body.lr.ph

if.end87.bail_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail

for.body.lr.ph:                                   ; preds = %if.end87
  %4 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bhs, align 4
  %cmp92 = icmp ne ptr %5, null
  tail call void @ocfs2_metadata_cache_io_lock(ptr noundef nonnull %ci) #6
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool137.not = icmp eq i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not379 = icmp eq i32 %0, 0
  %tobool178.not = icmp eq ptr %validate, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.addr.0391 = phi i64 [ %block, %for.body.lr.ph ], [ %block.addr.1, %for.inc.for.body_crit_edge ]
  %i.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc183, %for.inc.for.body_crit_edge ]
  %ignore_cache.0389 = phi i32 [ 0, %for.body.lr.ph ], [ %ignore_cache.1, %for.inc.for.body_crit_edge ]
  %arrayidx96 = getelementptr ptr, ptr %bhs, i32 %i.0390
  %6 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx96, align 4
  %cmp97 = icmp eq ptr %7, null
  br i1 %cmp97, label %if.then99, label %for.body.if.end134_crit_edge

for.body.if.end134_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then99:                                        ; preds = %for.body
  %inc = add i64 %block.addr.0391, 1
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %9, i64 noundef %block.addr.0391, i32 noundef %11, i32 noundef 8) #6
  %12 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %arrayidx96, align 4
  %cmp103 = icmp eq ptr %call.i, null
  br i1 %cmp103, label %if.then105, label %if.then99.if.end134_crit_edge

if.then99.if.end134_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then105:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocfs2_metadata_cache_io_unlock(ptr noundef nonnull %ci) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m123) #6
  %13 = ptrtoint ptr %_m123 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m123, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m123, ptr noundef nonnull @__func__.ocfs2_read_blocks, i32 noundef 240, ptr noundef nonnull @.str, i64 noundef -12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m123) #6
  br label %for.end

if.end134:                                        ; preds = %if.then99.if.end134_crit_edge, %for.body.if.end134_crit_edge
  %block.addr.1 = phi i64 [ %inc, %if.then99.if.end134_crit_edge ], [ %block.addr.0391, %for.body.if.end134_crit_edge ]
  %14 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx96, align 4
  br i1 %tobool137.not, label %land.lhs.true138, label %if.end134.if.end143_crit_edge

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

land.lhs.true138:                                 ; preds = %if.end134
  %call139 = tail call i32 @ocfs2_buffer_uptodate(ptr noundef nonnull %ci, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then141, label %land.lhs.true138.if.end143_crit_edge

land.lhs.true138.if.end143_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then141:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr, align 8
  %call142 = tail call i64 @ocfs2_metadata_cache_owner(ptr noundef nonnull %ci) #6
  tail call fastcc void @trace_ocfs2_read_blocks_from_disk(i64 noundef %17, i64 noundef %call142)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %land.lhs.true138.if.end143_crit_edge, %if.end134.if.end143_crit_edge
  %tobool151.not = phi i1 [ false, %if.then141 ], [ true, %land.lhs.true138.if.end143_crit_edge ], [ false, %if.end134.if.end143_crit_edge ]
  %ignore_cache.1 = phi i32 [ 1, %if.then141 ], [ 0, %land.lhs.true138.if.end143_crit_edge ], [ 1, %if.end134.if.end143_crit_edge ]
  %b_blocknr144 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr144 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_blocknr144, align 8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %15, align 4
  %shr.i.i = lshr i32 %21, 16
  %and1.i.i = and i32 %shr.i.i, 1
  %22 = load volatile i32, ptr %15, align 4
  %shr.i.i358 = lshr i32 %22, 1
  %and1.i.i359 = and i32 %shr.i.i358, 1
  tail call fastcc void @trace_ocfs2_read_blocks_bh(i64 noundef %19, i32 noundef %ignore_cache.1, i32 noundef %and1.i.i, i32 noundef %and1.i.i359)
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %15, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool148.not = icmp ne i32 %25, 0
  %brmerge = or i1 %tobool151.not, %tobool148.not
  br i1 %brmerge, label %if.end143.for.inc_crit_edge, label %if.then152

if.end143.for.inc_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then152:                                       ; preds = %if.end143
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %15, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool154.not = icmp eq i32 %28, 0
  br i1 %tobool154.not, label %if.end156, label %if.then152.for.inc_crit_edge

if.then152.for.inc_crit_edge:                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end156:                                        ; preds = %if.then152
  br i1 %tobool11.not, label %if.end156.if.end163_crit_edge, label %land.lhs.true159

if.end156.if.end163_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

land.lhs.true159:                                 ; preds = %if.end156
  %call160 = tail call i32 @ocfs2_buffer_read_ahead(ptr noundef nonnull %ci, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %land.lhs.true159.if.end163_crit_edge, label %land.lhs.true159.for.inc_crit_edge

land.lhs.true159.for.inc_crit_edge:               ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true159.if.end163_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true159.if.end163_crit_edge, %if.end156.if.end163_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 366) #6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #6
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end163.if.then.i376_crit_edge

if.end163.if.then.i376_crit_edge:                 ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i376

trylock_buffer.exit.i:                            ; preds = %if.end163
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #6
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 4, ptr elementtype(i32) %15) #6, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %32 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i376_crit_edge

trylock_buffer.exit.i.if.then.i376_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i376

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit

if.then.i376:                                     ; preds = %trylock_buffer.exit.i.if.then.i376_crit_edge, %if.end163.if.then.i376_crit_edge
  tail call void @__lock_buffer(ptr noundef %15) #6
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i376, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %15, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool165.not = icmp eq i32 %35, 0
  br i1 %tobool165.not, label %if.end167, label %if.then166

if.then166:                                       ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unlock_buffer(ptr noundef %15) #6
  br label %for.inc

if.end167:                                        ; preds = %lock_buffer.exit
  br i1 %.not379, label %land.lhs.true173, label %if.end167.if.end177_crit_edge

if.end167.if.end177_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

land.lhs.true173:                                 ; preds = %if.end167
  %call174 = tail call i32 @ocfs2_buffer_uptodate(ptr noundef nonnull %ci, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %land.lhs.true173.if.end177_crit_edge, label %if.then176

land.lhs.true173.if.end177_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

if.then176:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unlock_buffer(ptr noundef %15) #6
  br label %for.inc

if.end177:                                        ; preds = %land.lhs.true173.if.end177_crit_edge, %if.end167.if.end177_crit_edge
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !57
  br i1 %tobool178.not, label %if.end177.if.end180_crit_edge, label %if.then179

if.end177.if.end180_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then179:                                       ; preds = %if.end177
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %15, align 4
  %39 = and i32 %38, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then179.if.end180_crit_edge

if.then179.if.end180_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then.i:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 25, ptr noundef %15) #6
  br label %if.end180

if.end180:                                        ; preds = %if.then.i, %if.then179.if.end180_crit_edge, %if.end177.if.end180_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 7
  %40 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %call181 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %15) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end180, %if.then176, %if.then166, %land.lhs.true159.for.inc_crit_edge, %if.then152.for.inc_crit_edge, %if.end143.for.inc_crit_edge
  %inc183 = add nuw nsw i32 %i.0390, 1
  %exitcond.not = icmp eq i32 %inc183, %nr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then105
  %ignore_cache.0387 = phi i32 [ %ignore_cache.0389, %if.then105 ], [ %ignore_cache.1, %for.inc.for.end_crit_edge ]
  %status.0 = phi i32 [ -12, %if.then105 ], [ 0, %for.inc.for.end_crit_edge ]
  %block.addr.2 = phi i64 [ %inc, %if.then105 ], [ %block.addr.1, %for.inc.for.end_crit_edge ]
  %i.1393 = add i32 %nr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1393)
  %cmp185394 = icmp sgt i32 %i.1393, -1
  br i1 %cmp185394, label %for.end.for.body187_crit_edge, label %for.end.for.end254_crit_edge

for.end.for.end254_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end254

for.end.for.body187_crit_edge:                    ; preds = %for.end
  br label %for.body187

for.body187:                                      ; preds = %for.body187.backedge, %for.end.for.body187_crit_edge
  %i.1396 = phi i32 [ %i.1396.be, %for.body187.backedge ], [ %i.1393, %for.end.for.body187_crit_edge ]
  %status.2395 = phi i32 [ %status.2395.be, %for.body187.backedge ], [ %status.0, %for.end.for.body187_crit_edge ]
  %arrayidx188 = getelementptr ptr, ptr %bhs, i32 %i.1396
  %41 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx188, align 4
  br i1 %tobool11.not, label %if.then191, label %for.body187.if.end252_crit_edge

for.body187.if.end252_crit_edge:                  ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then191:                                       ; preds = %for.body187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2395)
  %tobool192.not = icmp eq i32 %status.2395, 0
  br i1 %tobool192.not, label %if.end216, label %if.then199, !prof !53

if.then199:                                       ; preds = %if.then191
  %tobool202.not = icmp eq ptr %42, null
  %or.cond = select i1 %cmp92, i1 true, i1 %tobool202.not
  br i1 %or.cond, label %if.else, label %if.then203

if.then203:                                       ; preds = %if.then199
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool205.not = icmp eq i32 %45, 0
  br i1 %tobool205.not, label %if.then206, label %if.then203.if.end207_crit_edge

if.then203.if.end207_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wait_on_buffer(ptr noundef nonnull %42)
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.then203.if.end207_crit_edge
  call fastcc void @put_bh(ptr noundef nonnull %42)
  %46 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx188, align 4
  br label %for.inc253

if.else:                                          ; preds = %if.then199
  br i1 %tobool202.not, label %if.else.for.inc253_crit_edge, label %land.lhs.true210

if.else.for.inc253_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc253

land.lhs.true210:                                 ; preds = %if.else
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %42, align 4
  %and1.i.i368 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i368)
  %tobool212.not = icmp eq i32 %and1.i.i368, 0
  br i1 %tobool212.not, label %land.lhs.true210.for.inc253_crit_edge, label %if.then213

land.lhs.true210.for.inc253_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc253

if.then213:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %42) #6
  br label %for.inc253

if.end216:                                        ; preds = %if.then191
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %42, align 4
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool218.not = icmp eq i32 %51, 0
  br i1 %tobool218.not, label %if.then219, label %if.end216.if.end220_crit_edge

if.end216.if.end220_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then219:                                       ; preds = %if.end216
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #6
  %52 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %42, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i377 = icmp eq i32 %54, 0
  br i1 %tobool.not.i377, label %if.then219.if.end220_crit_edge, label %if.then.i378

if.then219.if.end220_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then.i378:                                     ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #8
  call void @__wait_on_buffer(ptr noundef %42) #6
  br label %if.end220

if.end220:                                        ; preds = %if.then.i378, %if.then219.if.end220_crit_edge, %if.end216.if.end220_crit_edge
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %42, align 4
  %and1.i.i371 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i371)
  %tobool222.not = icmp eq i32 %and1.i.i371, 0
  br i1 %tobool222.not, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 25, ptr noundef %42) #6
  br label %for.body187.backedge

if.end224:                                        ; preds = %if.end220
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %42, align 4
  %59 = and i32 %58, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool226.not = icmp eq i32 %59, 0
  br i1 %tobool226.not, label %if.end224.if.end252_crit_edge, label %do.body228

if.end224.if.end252_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.body228:                                       ; preds = %if.end224
  %60 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %42, align 4
  %62 = and i32 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool230.not = icmp eq i32 %62, 0
  br i1 %tobool230.not, label %do.end246, label %do.body238, !prof !53

do.body238:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 381, 0\0A.popsection", ""() #6, !srcloc !71
  unreachable

do.end246:                                        ; preds = %do.body228
  call void @_clear_bit(i32 noundef 25, ptr noundef %42) #6
  %call247 = call i32 %validate(ptr noundef %call, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %do.end246.if.end252_crit_edge, label %do.end246.for.body187.backedge_crit_edge

do.end246.for.body187.backedge_crit_edge:         ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body187.backedge

do.end246.if.end252_crit_edge:                    ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.end252:                                        ; preds = %do.end246.if.end252_crit_edge, %if.end224.if.end252_crit_edge, %for.body187.if.end252_crit_edge
  %status.3 = phi i32 [ %status.2395, %for.body187.if.end252_crit_edge ], [ 0, %do.end246.if.end252_crit_edge ], [ 0, %if.end224.if.end252_crit_edge ]
  call void @ocfs2_set_buffer_uptodate(ptr noundef nonnull %ci, ptr noundef %42) #6
  br label %for.inc253

for.inc253:                                       ; preds = %if.end252, %if.then213, %land.lhs.true210.for.inc253_crit_edge, %if.else.for.inc253_crit_edge, %if.end207
  %status.4 = phi i32 [ %status.3, %if.end252 ], [ %status.2395, %if.end207 ], [ %status.2395, %if.then213 ], [ %status.2395, %land.lhs.true210.for.inc253_crit_edge ], [ %status.2395, %if.else.for.inc253_crit_edge ]
  %i.1 = add i32 %i.1396, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp185 = icmp sgt i32 %i.1, -1
  br i1 %cmp185, label %for.inc253.for.body187.backedge_crit_edge, label %for.inc253.for.end254_crit_edge

for.inc253.for.end254_crit_edge:                  ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end254

for.inc253.for.body187.backedge_crit_edge:        ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body187.backedge

for.body187.backedge:                             ; preds = %for.inc253.for.body187.backedge_crit_edge, %do.end246.for.body187.backedge_crit_edge, %if.then223
  %i.1396.be = phi i32 [ %i.1, %for.inc253.for.body187.backedge_crit_edge ], [ %i.1393, %do.end246.for.body187.backedge_crit_edge ], [ %i.1393, %if.then223 ]
  %status.2395.be = phi i32 [ %status.4, %for.inc253.for.body187.backedge_crit_edge ], [ %call247, %do.end246.for.body187.backedge_crit_edge ], [ -5, %if.then223 ]
  br label %for.body187

for.end254:                                       ; preds = %for.inc253.for.end254_crit_edge, %for.end.for.end254_crit_edge
  %status.2.lcssa = phi i32 [ %status.0, %for.end.for.end254_crit_edge ], [ %status.4, %for.inc253.for.end254_crit_edge ]
  call void @ocfs2_metadata_cache_io_unlock(ptr noundef nonnull %ci) #6
  call fastcc void @trace_ocfs2_read_blocks_end(i64 noundef %block.addr.2, i32 noundef %nr, i32 noundef %flags, i32 noundef %ignore_cache.0387)
  br label %bail

bail:                                             ; preds = %for.end254, %if.end87.bail_crit_edge, %do.body52, %do.body40
  %status.5 = phi i32 [ -22, %do.body40 ], [ -22, %do.body52 ], [ %status.2.lcssa, %for.end254 ], [ 0, %if.end87.bail_crit_edge ]
  ret i32 %status.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_blocks_begin(ptr noundef %ci, i64 noundef %block, i32 noundef %nr, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_begin, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !72
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_begin(ptr noundef null, ptr noundef %ci, i64 noundef %block, i32 noundef %nr, i32 noundef %flags) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_begin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2718, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
declare dso_local i32 @ocfs2_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_blocks_from_disk(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_from_disk, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_from_disk, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !74
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_from_disk(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_from_disk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_from_disk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_from_disk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_from_disk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2680, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
declare dso_local i64 @ocfs2_metadata_cache_owner(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_blocks_bh(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_bh, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_bh, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !76
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_bh(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_bh, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_bh, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_bh.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2682, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
declare dso_local i32 @ocfs2_buffer_read_ahead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_read_blocks_end(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_read_blocks_end, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !78
  %call42 = tail call i32 @__traceiter_ocfs2_read_blocks_end(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !53

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_read_blocks_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_read_blocks_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_read_blocks_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2684, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
define dso_local i32 @ocfs2_write_super_or_backup(ptr noundef %osb, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !53

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

do.end8:                                          ; preds = %entry
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %5 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %6)
  %cmp.i = icmp eq i64 %6, 2
  br i1 %cmp.i, label %do.end8.ocfs2_check_super_or_backup.exit_crit_edge, label %for.cond.preheader.i

do.end8.ocfs2_check_super_or_backup.exit_crit_edge: ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_check_super_or_backup.exit

for.cond.preheader.i:                             ; preds = %do.end8
  %7 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sb, align 4
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom2.i.i = zext i8 %10 to i64
  %shr.i.i94 = lshr i64 1073741824, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i94, i64 %6)
  %cmp2.i = icmp eq i64 %shr.i.i94, %6
  %shr.i.1.i = lshr i64 4294967296, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.1.i, i64 %6)
  %cmp2.1.i = icmp eq i64 %shr.i.1.i, %6
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp2.1.i
  %shr.i.2.i = lshr i64 17179869184, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.2.i, i64 %6)
  %cmp2.2.i = icmp eq i64 %shr.i.2.i, %6
  %or.cond13.i = select i1 %or.cond.i, i1 true, i1 %cmp2.2.i
  %shr.i.3.i = lshr i64 68719476736, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.3.i, i64 %6)
  %cmp2.3.i = icmp eq i64 %shr.i.3.i, %6
  %or.cond14.i = select i1 %or.cond13.i, i1 true, i1 %cmp2.3.i
  %shr.i.4.i = lshr i64 274877906944, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.4.i, i64 %6)
  %cmp2.4.i = icmp eq i64 %shr.i.4.i, %6
  %or.cond15.i = select i1 %or.cond14.i, i1 true, i1 %cmp2.4.i
  %shr.i.5.i = lshr i64 1099511627776, %sh_prom2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.5.i, i64 %6)
  %cmp2.5.i = icmp eq i64 %shr.i.5.i, %6
  %or.cond16.i = select i1 %or.cond15.i, i1 true, i1 %cmp2.5.i
  br i1 %or.cond16.i, label %for.cond.preheader.i.ocfs2_check_super_or_backup.exit_crit_edge, label %for.cond.5.i

for.cond.preheader.i.ocfs2_check_super_or_backup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_check_super_or_backup.exit

for.cond.5.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/buffer_head_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

ocfs2_check_super_or_backup.exit:                 ; preds = %for.cond.preheader.i.ocfs2_check_super_or_backup.exit_crit_edge, %do.end8.ocfs2_check_super_or_backup.exit_crit_edge
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #6
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %11 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %12, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %ocfs2_check_super_or_backup.exit.do.body22_crit_edge

ocfs2_check_super_or_backup.exit.do.body22_crit_edge: ; preds = %ocfs2_check_super_or_backup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

lor.lhs.false:                                    ; preds = %ocfs2_check_super_or_backup.exit
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #6
  %13 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %osb_flags.i, align 8
  %and.i97 = and i32 %14, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool12.not = icmp eq i32 %and.i97, 0
  br i1 %tobool12.not, label %if.end29, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %ocfs2_check_super_or_backup.exit.do.body22_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_super_or_backup, i32 noundef 439, ptr noundef nonnull @.str, i64 noundef -30) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %out

if.end29:                                         ; preds = %lor.lhs.false
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 366) #6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #6
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end29.if.then.i98_crit_edge

if.end29.if.then.i98_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i98

trylock_buffer.exit.i:                            ; preds = %if.end29
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #6, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  %19 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i98_crit_edge

trylock_buffer.exit.i.if.then.i98_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i98

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit

if.then.i98:                                      ; preds = %trylock_buffer.exit.i.if.then.i98_crit_edge, %if.end29.if.then.i98_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #6
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i98, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh, align 4
  %and1.i.i92 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i92)
  %tobool.not.i = icmp eq i32 %and1.i.i92, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #6
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #6
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !57
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 7
  %23 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %24 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sb, align 4
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 27
  tail call void @ocfs2_compute_meta_ecc(ptr noundef %25, ptr noundef %27, ptr noundef %i_check) #6
  %call32 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #6
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i99 = icmp eq i32 %30, 0
  br i1 %tobool.not.i99, label %set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge, label %if.then.i100

set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge: ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_on_buffer.exit

if.then.i100:                                     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wait_on_buffer(ptr noundef %bh) #6
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i100, %set_buffer_uptodate.exit.wait_on_buffer.exit_crit_edge
  %31 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh, align 4
  %and1.i.i93 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i93)
  %tobool34.not = icmp eq i32 %and1.i.i93, 0
  br i1 %tobool34.not, label %do.body52, label %wait_on_buffer.exit.out_crit_edge

wait_on_buffer.exit.out_crit_edge:                ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body52:                                        ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #6
  %33 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m53, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.ocfs2_write_super_or_backup, i32 noundef 458, ptr noundef nonnull @.str, i64 noundef -5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #6
  br label %out

out:                                              ; preds = %do.body52, %wait_on_buffer.exit.out_crit_edge, %do.body22
  %ret.0 = phi i32 [ -30, %do.body22 ], [ 0, %wait_on_buffer.exit.out_crit_edge ], [ -5, %do.body52 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_compute_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_write_block(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_sync_jbd(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_from_disk(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_bh(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_read_blocks_end(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__func__.ocfs2_write_block, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/buffer_head_io.c", i32 53, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_read_blocks_sync, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/buffer_head_io.c", i32 112, i32 5}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/buffer_head_io.c", i32 127, i32 4}
!7 = !{ptr @__func__.ocfs2_read_blocks, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/buffer_head_io.c", i32 212, i32 3}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/buffer_head_io.c", i32 217, i32 3}
!11 = !{ptr @__func__.ocfs2_write_super_or_backup, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/buffer_head_io.c", i32 439, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2686, i32 1}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2676, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2678, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2700, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2680, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2682, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2684, i32 1}
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
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2161152523, i64 2161153012, i64 2161152560, i64 2161152616, i64 2161152650, i64 2161152674, i64 2161152715, i64 2161152736, i64 2161152764, i64 2161152798}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2161154122, i64 2161154611, i64 2161154159, i64 2161154215, i64 2161154249, i64 2161154273, i64 2161154314, i64 2161154335, i64 2161154363, i64 2161154397}
!55 = !{i64 2148670481, i64 2148670513, i64 2148670542, i64 2148670576, i64 2148670607, i64 2148670630}
!56 = !{i64 2148759586}
!57 = !{i64 2148661623, i64 2148661649, i64 2148661678, i64 2148661712, i64 2148661743, i64 2148661766}
!58 = !{i64 2148486221, i64 2148486226, i64 2148486239, i64 2148486283, i64 2148486317, i64 2148486338}
!59 = !{i64 2160886951}
!60 = !{i64 2160887166}
!61 = !{i64 2149482628}
!62 = !{i64 2149483664}
!63 = !{i64 2160791529}
!64 = !{i64 2160791756}
!65 = !{i64 2160812616}
!66 = !{i64 2160812837}
!67 = !{i64 2154336200}
!68 = !{i64 2148664088, i64 2148664114, i64 2148664143, i64 2148664177, i64 2148664208, i64 2148664231}
!69 = !{i64 2161157720, i64 2161158210, i64 2161157757, i64 2161157813, i64 2161157847, i64 2161157871, i64 2161157912, i64 2161157933, i64 2161157961, i64 2161157995}
!70 = !{i64 2161159370, i64 2161159860, i64 2161159407, i64 2161159463, i64 2161159497, i64 2161159521, i64 2161159562, i64 2161159583, i64 2161159611, i64 2161159645}
!71 = !{i64 2161162942, i64 2161163432, i64 2161162979, i64 2161163035, i64 2161163069, i64 2161163093, i64 2161163134, i64 2161163155, i64 2161163183, i64 2161163217}
!72 = !{i64 2160904210}
!73 = !{i64 2160904459}
!74 = !{i64 2160830265}
!75 = !{i64 2160830502}
!76 = !{i64 2160848206}
!77 = !{i64 2160848463}
!78 = !{i64 2160865974}
!79 = !{i64 2160866233}
!80 = !{i64 2161166044, i64 2161166534, i64 2161166081, i64 2161166137, i64 2161166171, i64 2161166195, i64 2161166236, i64 2161166257, i64 2161166285, i64 2161166319}
!81 = !{i64 2161164442, i64 2161164932, i64 2161164479, i64 2161164535, i64 2161164569, i64 2161164593, i64 2161164634, i64 2161164655, i64 2161164683, i64 2161164717}
