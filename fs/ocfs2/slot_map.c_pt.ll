; ModuleID = '/llk/IR_all_yes/fs/ocfs2/slot_map.c_pt.bc'
source_filename = "../fs/ocfs2/slot_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_slot_info = type { i32, i32, ptr, i32, ptr, i32, [0 x %struct.ocfs2_slot] }
%struct.ocfs2_slot = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_extended_slot = type { i8, [3 x i8], i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
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

@__func__.ocfs2_init_slot_info = private unnamed_addr constant [21 x i8] c"ocfs2_init_slot_info\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_find_slot = private unnamed_addr constant [16 x i8] c"ocfs2_find_slot\00", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no free slots available!\0A\00", [38 x i8] zeroinitializer }, align 32
@ocfs2_find_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.ocfs2_find_slot, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016ocfs2: Slot %d on device (%s) was already allocated to this node!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ocfs2/slot_map.c\00", [44 x i8] zeroinitializer }, align 32
@ocfs2_find_slot._entry_ptr = internal global ptr @ocfs2_find_slot._entry, section ".printk_index", align 4
@__func__.ocfs2_put_slot = private unnamed_addr constant [15 x i8] c"ocfs2_put_slot\00", align 1
@__tracepoint_ocfs2_refresh_slot_info = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_refresh_slot_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_update_disk_slot = private unnamed_addr constant [23 x i8] c"ocfs2_update_disk_slot\00", align 1
@__func__.ocfs2_map_slot_buffers = private unnamed_addr constant [23 x i8] c"ocfs2_map_slot_buffers\00", align 1
@__func__.ocfs2_slot_map_physical_size = private unnamed_addr constant [29 x i8] c"ocfs2_slot_map_physical_size\00", align 1
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Slot map file is too small!  (size %llu, needed %llu)\0A\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_map_slot_buffers = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_map_slot_buffers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_map_slot_buffers_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_map_slot_buffers_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_find_slot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_find_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 410, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 474, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 479, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1626, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [23 x i8] c"../fs/ocfs2/slot_map.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 221, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ocfs2_find_slot._entry, ptr @ocfs2_find_slot._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_find_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_refresh_slot_info(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %si_blocks = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %si_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %do.body4, label %do.body11, !prof !47

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #9, !srcloc !48
  unreachable

do.body11:                                        ; preds = %do.body
  %si_bh = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %si_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si_bh, align 4
  %cmp12 = icmp eq ptr %5, null
  br i1 %cmp12, label %do.body20, label %do.end28, !prof !47

do.body20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end28:                                         ; preds = %do.body11
  tail call fastcc void @trace_ocfs2_refresh_slot_info(i32 noundef %3)
  %si_inode = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %si_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %si_inode, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %7, i32 -56
  %8 = ptrtoint ptr %si_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %si_blocks, align 4
  %10 = ptrtoint ptr %si_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_bh, align 4
  %call32 = tail call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i, i64 noundef -1, i32 noundef %9, ptr noundef %11, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  tail call fastcc void @ocfs2_update_slot_info(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then34 ], [ %call32, %do.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_refresh_slot_info(i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_refresh_slot_info, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_refresh_slot_info, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %call42 = tail call i32 @__traceiter_ocfs2_refresh_slot_info(ptr noundef null, i32 noundef %num) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_refresh_slot_info, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_refresh_slot_info, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_refresh_slot_info.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_refresh_slot_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1626, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
declare dso_local i32 @ocfs2_read_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_update_slot_info(ptr nocapture noundef %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %si_blocks.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 3
  %2 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp40.not.i = icmp eq i32 %3, 0
  br i1 %cmp40.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %si_bh.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 4
  %si_slots_per_block.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 1
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slotno.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %slotno.1.lcssa.i, %for.inc9.i.for.body.i_crit_edge ]
  %b.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si_bh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %b.041.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i, align 4
  %10 = ptrtoint ptr %si_slots_per_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %si_slots_per_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp234.i = icmp sgt i32 %11, 0
  br i1 %cmp234.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.for.inc9.i_crit_edge

for.body.i.for.inc9.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc9.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %slotno.137.i = phi i32 [ %inc8.i, %for.inc.i.land.rhs.i_crit_edge ], [ %slotno.042.i, %for.body.i.land.rhs.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %for.body.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slotno.137.i, i32 %13)
  %cmp3.i = icmp ult i32 %slotno.137.i, %13
  br i1 %cmp3.i, label %for.body4.i, label %land.rhs.i.for.inc9.i_crit_edge

land.rhs.i.for.inc9.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc9.i

for.body4.i:                                      ; preds = %land.rhs.i
  %arrayidx5.i = getelementptr [0 x %struct.ocfs2_extended_slot], ptr %9, i32 0, i32 %i.035.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slotno.137.i)
  %cmp.i26.i = icmp slt i32 %slotno.137.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body4.i
  br i1 %cmp.i26.i, label %do.body3.i.i, label %ocfs2_set_slot.exit.i, !prof !47

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

ocfs2_set_slot.exit.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %es_node_num.i = getelementptr [0 x %struct.ocfs2_extended_slot], ptr %9, i32 0, i32 %i.035.i, i32 2
  %16 = ptrtoint ptr %es_node_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %es_node_num.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %arrayidx.i.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %slotno.137.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx.i.i, align 4
  %sl_node_num.i.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %slotno.137.i, i32 1
  %20 = ptrtoint ptr %sl_node_num.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %sl_node_num.i.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body4.i
  br i1 %cmp.i26.i, label %do.body3.i30.i, label %ocfs2_invalidate_slot.exit.i, !prof !47

do.body3.i30.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

ocfs2_invalidate_slot.exit.i:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i31.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %slotno.137.i
  %21 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i31.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %ocfs2_invalidate_slot.exit.i, %ocfs2_set_slot.exit.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %inc8.i = add nuw i32 %slotno.137.i, 1
  %22 = ptrtoint ptr %si_slots_per_block.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %si_slots_per_block.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %23
  br i1 %cmp2.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.inc9.i_crit_edge

for.inc.i.for.inc9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc9.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc9.i:                                       ; preds = %for.inc.i.for.inc9.i_crit_edge, %land.rhs.i.for.inc9.i_crit_edge, %for.body.i.for.inc9.i_crit_edge
  %slotno.1.lcssa.i = phi i32 [ %slotno.042.i, %for.body.i.for.inc9.i_crit_edge ], [ %inc8.i, %for.inc.i.for.inc9.i_crit_edge ], [ %slotno.137.i, %land.rhs.i.for.inc9.i_crit_edge ]
  %inc10.i = add nuw i32 %b.041.i, 1
  %24 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %si_blocks.i, align 4
  %cmp.i = icmp ult i32 %inc10.i, %25
  br i1 %cmp.i, label %for.inc9.i.for.body.i_crit_edge, label %for.inc9.i.if.end_crit_edge

for.inc9.i.if.end_crit_edge:                      ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else:                                          ; preds = %entry
  %si_bh.i3 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 4
  %26 = ptrtoint ptr %si_bh.i3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %si_bh.i3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %b_data.i4 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.i4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.i4, align 4
  %si_num_slots.i5 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 5
  %32 = ptrtoint ptr %si_num_slots.i5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %si_num_slots.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp22.not.i = icmp eq i32 %33, 0
  br i1 %cmp22.not.i, label %if.else.if.end_crit_edge, label %if.else.for.body.i7_crit_edge

if.else.for.body.i7_crit_edge:                    ; preds = %if.else
  br label %for.body.i7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i7:                                      ; preds = %for.inc.i17.for.body.i7_crit_edge, %if.else.for.body.i7_crit_edge
  %i.023.i = phi i32 [ %inc.i15, %for.inc.i17.for.body.i7_crit_edge ], [ 0, %if.else.for.body.i7_crit_edge ]
  %arrayidx1.i = getelementptr [0 x i16], ptr %31, i32 0, i32 %i.023.i
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp2.i6 = icmp eq i16 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i)
  %cmp.i.i = icmp slt i32 %i.023.i, 0
  br i1 %cmp2.i6, label %if.then.i8, label %if.else.i12

if.then.i8:                                       ; preds = %for.body.i7
  br i1 %cmp.i.i, label %do.body3.i.i9, label %ocfs2_invalidate_slot.exit.i11, !prof !47

do.body3.i.i9:                                    ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

ocfs2_invalidate_slot.exit.i11:                   ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i10 = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %i.023.i
  %36 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.i.i10, align 4
  br label %for.inc.i17

if.else.i12:                                      ; preds = %for.body.i7
  br i1 %cmp.i.i, label %do.body3.i20.i, label %ocfs2_set_slot.exit.i14, !prof !47

do.body3.i20.i:                                   ; preds = %if.else.i12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

ocfs2_set_slot.exit.i14:                          ; preds = %if.else.i12
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i16 @llvm.bswap.i16(i16 %35) #9
  %conv.i = zext i16 %37 to i32
  %arrayidx.i21.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %i.023.i
  %38 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx.i21.i, align 4
  %sl_node_num.i.i13 = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %i.023.i, i32 1
  %39 = ptrtoint ptr %sl_node_num.i.i13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %sl_node_num.i.i13, align 4
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %ocfs2_set_slot.exit.i14, %ocfs2_invalidate_slot.exit.i11
  %inc.i15 = add nuw i32 %i.023.i, 1
  %40 = ptrtoint ptr %si_num_slots.i5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %si_num_slots.i5, align 4
  %cmp.i16 = icmp ult i32 %inc.i15, %41
  br i1 %cmp.i16, label %for.inc.i17.for.body.i7_crit_edge, label %for.inc.i17.if.end_crit_edge

for.inc.i17.if.end_crit_edge:                     ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i17.for.body.i7_crit_edge:                ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i7

if.end:                                           ; preds = %for.inc.i17.if.end_crit_edge, %if.else.if.end_crit_edge, %for.inc9.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_node_num_to_slot(ptr noundef %osb, i32 noundef %node_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %entry.__ocfs2_node_num_to_slot.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__ocfs2_node_num_to_slot.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_node_num_to_slot.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.011.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sl_node_num.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.011.i, i32 1
  %6 = ptrtoint ptr %sl_node_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sl_node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %node_num)
  %cmp3.i = icmp eq i32 %7, %node_num
  br i1 %cmp3.i, label %land.lhs.true.i.__ocfs2_node_num_to_slot.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.__ocfs2_node_num_to_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_node_num_to_slot.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.__ocfs2_node_num_to_slot.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.__ocfs2_node_num_to_slot.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_node_num_to_slot.exit

__ocfs2_node_num_to_slot.exit:                    ; preds = %for.inc.i.__ocfs2_node_num_to_slot.exit_crit_edge, %land.lhs.true.i.__ocfs2_node_num_to_slot.exit_crit_edge, %entry.__ocfs2_node_num_to_slot.exit_crit_edge
  %ret.0.i = phi i32 [ -2, %entry.__ocfs2_node_num_to_slot.exit_crit_edge ], [ -2, %for.inc.i.__ocfs2_node_num_to_slot.exit_crit_edge ], [ %i.011.i, %land.lhs.true.i.__ocfs2_node_num_to_slot.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_slot_to_node_num_locked(ptr noundef %osb, i32 noundef %slot_num, ptr nocapture noundef writeonly %node_num) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %osb_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %osb_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body10, !prof !47

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_num)
  %cmp = icmp slt i32 %slot_num, 0
  br i1 %cmp, label %do.body18, label %do.body27, !prof !47

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 292, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

do.body27:                                        ; preds = %do.body10
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %4 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_slots, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %slot_num)
  %cmp28.not = icmp ugt i32 %5, %slot_num
  br i1 %cmp28.not, label %do.end44, label %do.body36, !prof !51

do.body36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end44:                                         ; preds = %do.body27
  %arrayidx = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %slot_num
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool45.not = icmp eq i32 %7, 0
  br i1 %tobool45.not, label %do.end44.cleanup_crit_edge, label %if.end47

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %sl_node_num = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %slot_num, i32 1
  %8 = ptrtoint ptr %sl_node_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sl_node_num, align 4
  %10 = ptrtoint ptr %node_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %node_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -2, %do.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_clear_slot(ptr noundef %osb, i32 noundef %slot_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_num)
  %cmp.i = icmp slt i32 %slot_num, 0
  br i1 %cmp.i, label %if.end.do.body3.i_crit_edge, label %lor.rhs.i, !prof !47

if.end.do.body3.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.end
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %slot_num)
  %cmp1.not.i = icmp ugt i32 %3, %slot_num
  br i1 %cmp1.not.i, label %ocfs2_invalidate_slot.exit, label %lor.rhs.i.do.body3.i_crit_edge, !prof !51

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.end.do.body3.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

ocfs2_invalidate_slot.exit:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %slot_num
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  %5 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slot_info, align 8
  %call = tail call fastcc i32 @ocfs2_update_disk_slot(ptr noundef %osb, ptr noundef %6, i32 noundef %slot_num)
  br label %cleanup

cleanup:                                          ; preds = %ocfs2_invalidate_slot.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %ocfs2_invalidate_slot.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_update_disk_slot(ptr noundef %osb, ptr nocapture noundef readonly %si, i32 noundef %slot_num) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %si_slots_per_block.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 1
  %2 = ptrtoint ptr %si_slots_per_block.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_slots_per_block.i, align 4
  %.frozen = freeze i32 %3
  %div.i = sdiv i32 %slot_num, %.frozen
  %si_blocks.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 3
  %4 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %si_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !51

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #9, !srcloc !61
  unreachable

do.end8.i:                                        ; preds = %if.then
  %6 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %slot_num, %6
  %si_bh.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 4
  %7 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %si_bh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %div.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data.i, align 4
  %arrayidx9.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %slot_num
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i, align 4
  %conv.i = trunc i32 %14 to i8
  %arrayidx10.i = getelementptr [0 x %struct.ocfs2_extended_slot], ptr %12, i32 0, i32 %rem.i.decomposed
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx10.i, align 4
  %16 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not.i = icmp eq i32 %16, 0
  br i1 %tobool14.not.i, label %do.end8.i.ocfs2_update_disk_slot_extended.exit_crit_edge, label %if.then15.i

do.end8.i.ocfs2_update_disk_slot_extended.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_update_disk_slot_extended.exit

if.then15.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sl_node_num.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %slot_num, i32 1
  %17 = ptrtoint ptr %sl_node_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sl_node_num.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %es_node_num.i = getelementptr [0 x %struct.ocfs2_extended_slot], ptr %12, i32 0, i32 %rem.i.decomposed, i32 2
  %20 = ptrtoint ptr %es_node_num.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %es_node_num.i, align 4
  br label %ocfs2_update_disk_slot_extended.exit

ocfs2_update_disk_slot_extended.exit:             ; preds = %if.then15.i, %do.end8.i.ocfs2_update_disk_slot_extended.exit_crit_edge
  %21 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %si_bh.i, align 4
  %arrayidx22.i = getelementptr ptr, ptr %22, i32 %div.i
  br label %if.end

if.else:                                          ; preds = %entry
  %si_bh.i32 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 4
  %23 = ptrtoint ptr %si_bh.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %si_bh.i32, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %b_data.i33 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i33, align 4
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 5
  %29 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.not.i = icmp eq i32 %30, 0
  br i1 %cmp1.not.i, label %if.else.ocfs2_update_disk_slot_old.exit_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.ocfs2_update_disk_slot_old.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_update_disk_slot_old.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %i.02.i
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sl_node_num.i34 = getelementptr %struct.ocfs2_slot_info, ptr %si, i32 0, i32 6, i32 %i.02.i, i32 1
  %33 = ptrtoint ptr %sl_node_num.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sl_node_num.i34, align 4
  %conv.i35 = trunc i32 %34 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i35) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i16 [ %35, %if.then.i ], [ -1, %for.body.i.for.inc.i_crit_edge ]
  %36 = getelementptr [0 x i16], ptr %28, i32 0, i32 %i.02.i
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %.sink.i, ptr %36, align 2
  %inc.i = add nuw i32 %i.02.i, 1
  %38 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %si_num_slots.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ocfs2_update_disk_slot_old.exit_crit_edge

for.inc.i.ocfs2_update_disk_slot_old.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_update_disk_slot_old.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ocfs2_update_disk_slot_old.exit:                  ; preds = %for.inc.i.ocfs2_update_disk_slot_old.exit_crit_edge, %if.else.ocfs2_update_disk_slot_old.exit_crit_edge
  %40 = ptrtoint ptr %si_bh.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %si_bh.i32, align 4
  br label %if.end

if.end:                                           ; preds = %ocfs2_update_disk_slot_old.exit, %ocfs2_update_disk_slot_extended.exit
  %bh.0.in = phi ptr [ %41, %ocfs2_update_disk_slot_old.exit ], [ %arrayidx22.i, %ocfs2_update_disk_slot_extended.exit ]
  %42 = ptrtoint ptr %bh.0.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %bh.0 = load ptr, ptr %bh.0.in, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  %si_inode = getelementptr inbounds %struct.ocfs2_slot_info, ptr %si, i32 0, i32 2
  %43 = ptrtoint ptr %si_inode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %si_inode, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %44, i32 -56
  %call2 = tail call i32 @ocfs2_write_block(ptr noundef %osb, ptr noundef %bh.0, ptr noundef %ip_metadata_cache.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %45 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.body [
    i32 -512, label %if.then3.if.end17_crit_edge
    i32 -4, label %if.then3.if.end17_crit_edge36
    i32 -28, label %if.then3.if.end17_crit_edge37
    i32 -122, label %if.then3.if.end17_crit_edge38
  ]

if.then3.if.end17_crit_edge38:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3.if.end17_crit_edge37:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3.if.end17_crit_edge36:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %46 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_update_disk_slot, i32 noundef 199, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end17

if.end17:                                         ; preds = %do.body, %if.then3.if.end17_crit_edge, %if.then3.if.end17_crit_edge36, %if.then3.if.end17_crit_edge37, %if.then3.if.end17_crit_edge38, %if.end.if.end17_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_init_slot_info(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i = alloca i64, align 8
  %blkno.i = alloca i64, align 8
  %bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m101.i = alloca i64, align 8
  %_m135.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m36 = alloca i64, align 8
  %_m68 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %0 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slots, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #9
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 24) #9
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_init_slot_info, i32 noundef 410, ptr noundef nonnull @.str, i64 noundef -12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %7, 256
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %call9.i.i, align 128
  %9 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_slots, align 8
  %si_num_slots = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %si_num_slots to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %si_num_slots, align 4
  %call16 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 2, i32 noundef 65535) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.body35, label %if.end46

do.body35:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #9
  %12 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m36, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.ocfs2_init_slot_info, i32 noundef 421, ptr noundef nonnull @.str, i64 noundef -22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #9
  br label %if.end.i126

if.end46:                                         ; preds = %if.end13
  %si_inode = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %si_inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %si_inode, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i) #9
  %14 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %blkno.i, align 8, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #9
  %15 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !62
  %16 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i.i.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  %18 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_slots, align 8
  %..i.i = select i1 %tobool.not.i.i, i32 1, i32 3
  %mul2.i.i = shl i32 %19, %..i.i
  %bytes_needed.0.i.i = zext i32 %mul2.i.i to i64
  %call4.i.i = tail call fastcc i64 @i_size_read(ptr noundef nonnull %call16) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i.i, i64 %bytes_needed.0.i.i)
  %cmp.i.i121 = icmp ult i64 %call4.i.i, %bytes_needed.0.i.i
  br i1 %cmp.i.i121, label %if.then50.thread137, label %if.end.i

if.then50.thread137:                              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #9
  %20 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %call9.i.i122 = tail call fastcc i64 @i_size_read(ptr noundef nonnull %call16) #9
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_slot_map_physical_size, i32 noundef 223, ptr noundef nonnull @.str.7, i64 noundef %call9.i.i122, i64 noundef %bytes_needed.0.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #9
  br label %if.end.i126

if.end.i:                                         ; preds = %if.end46
  %21 = ptrtoint ptr %si_inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %si_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %26, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add nuw nsw i64 %conv.i.i, %bytes_needed.0.i.i
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %28 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr.i.i)
  %cmp.i = icmp ugt i64 %shr.i.i, 4294967295
  br i1 %cmp.i, label %do.body6.i, label %do.end12.i, !prof !47

do.body6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 351, 0\0A.popsection", ""() #9, !srcloc !63
  unreachable

do.end12.i:                                       ; preds = %if.end.i
  %conv.i = trunc i64 %shr.i.i to i32
  %si_blocks.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %si_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool14.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool14.not.i, label %do.end12.i.bail_crit_edge, label %if.end16.i

do.end12.i.bail_crit_edge:                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end16.i:                                       ; preds = %do.end12.i
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not.i = icmp eq i32 %31, 0
  %sb19.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %32 = ptrtoint ptr %sb19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sb19.i, align 4
  %s_blocksize20.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize20.i, align 16
  %..i = select i1 %tobool17.not.i, i32 1, i32 3
  %div196.i = lshr i32 %35, %..i
  %36 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div196.i, ptr %36, align 4
  %38 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_slots, align 8
  %div26.i = udiv i32 %39, %div196.i
  %conv27.i = zext i32 %div26.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %conv27.i)
  %cmp28.i = icmp ult i64 %shr.i.i, %conv27.i
  br i1 %cmp28.i, label %do.body37.i, label %do.end45.i, !prof !47

do.body37.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #9, !srcloc !64
  unreachable

do.end45.i:                                       ; preds = %if.end16.i
  tail call fastcc void @trace_ocfs2_map_slot_buffers(i64 noundef %bytes_needed.0.i.i, i32 noundef %conv.i) #9
  %40 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %si_blocks.i, align 4
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 4) #9
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !47

kcalloc.exit.thread.i:                            ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %si_bh203.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %si_bh203.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %si_bh203.i, align 16
  br label %if.then50.thread

if.end7.i.i.i:                                    ; preds = %do.end45.i
  %45 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #12
  %si_bh.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i, ptr %si_bh.i, align 16
  %tobool50.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool50.not.i, label %if.end7.i.i.i.if.then50.thread_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then50.thread_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.thread

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %47 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %si_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp76208.not.i = icmp eq i32 %48, 0
  br i1 %cmp76208.not.i, label %for.cond.preheader.i.bail_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.bail_crit_edge:              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then50.thread:                                 ; preds = %if.end7.i.i.i.if.then50.thread_crit_edge, %kcalloc.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %49 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_map_slot_buffers, i32 noundef 372, ptr noundef nonnull @.str, i64 noundef -12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #9
  br label %do.body67

for.body.i:                                       ; preds = %if.end145.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0209.i = phi i32 [ %inc.i, %if.end145.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %si_inode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %si_inode, align 8
  %conv79.i = zext i32 %i.0209.i to i64
  %call80.i = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %51, i64 noundef %conv79.i, ptr noundef nonnull %blkno.i, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 0
  br i1 %cmp81.i, label %if.then83.i, label %if.end111.i

if.then83.i:                                      ; preds = %for.body.i
  %52 = zext i32 %call80.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call80.i, label %do.body100.i [
    i32 -512, label %if.then83.i.if.then50_crit_edge
    i32 -4, label %if.then83.i.if.then50_crit_edge160
    i32 -28, label %if.then83.i.if.then50_crit_edge161
    i32 -122, label %if.then83.i.if.then50_crit_edge162
  ]

if.then83.i.if.then50_crit_edge162:               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then83.i.if.then50_crit_edge161:               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then83.i.if.then50_crit_edge160:               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then83.i.if.then50_crit_edge:                  ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

do.body100.i:                                     ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101.i) #9
  %53 = ptrtoint ptr %_m101.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1152921504606846976, ptr %_m101.i, align 8
  %conv105.i = sext i32 %call80.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101.i, ptr noundef nonnull @__func__.ocfs2_map_slot_buffers, i32 noundef 380, ptr noundef nonnull @.str, i64 noundef %conv105.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101.i) #9
  br label %if.then50

if.end111.i:                                      ; preds = %for.body.i
  %54 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %blkno.i, align 8
  call fastcc void @trace_ocfs2_map_slot_buffers_block(i64 noundef %55, i32 noundef %i.0209.i) #9
  %56 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bh.i, align 4
  %57 = ptrtoint ptr %si_inode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %si_inode, align 8
  %ip_metadata_cache.i.i = getelementptr i8, ptr %58, i32 -56
  %59 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %blkno.i, align 8
  %call114.i = call i32 @ocfs2_read_blocks(ptr noundef %ip_metadata_cache.i.i, i64 noundef %60, i32 noundef 1, ptr noundef nonnull %bh.i, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %if.then117.i, label %if.end145.i

if.then117.i:                                     ; preds = %if.end111.i
  %61 = zext i32 %call114.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call114.i, label %do.body134.i [
    i32 -512, label %if.then117.i.if.then50_crit_edge
    i32 -4, label %if.then117.i.if.then50_crit_edge163
    i32 -28, label %if.then117.i.if.then50_crit_edge164
    i32 -122, label %if.then117.i.if.then50_crit_edge165
  ]

if.then117.i.if.then50_crit_edge165:              ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then117.i.if.then50_crit_edge164:              ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then117.i.if.then50_crit_edge163:              ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then117.i.if.then50_crit_edge:                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

do.body134.i:                                     ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m135.i) #9
  %62 = ptrtoint ptr %_m135.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1152921504606846976, ptr %_m135.i, align 8
  %conv139.i = sext i32 %call114.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m135.i, ptr noundef nonnull @__func__.ocfs2_map_slot_buffers, i32 noundef 390, ptr noundef nonnull @.str, i64 noundef %conv139.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m135.i) #9
  br label %if.then50

if.end145.i:                                      ; preds = %if.end111.i
  %63 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh.i, align 4
  %65 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %si_bh.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %66, i32 %i.0209.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0209.i, 1
  %68 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %si_blocks.i, align 4
  %cmp76.i = icmp ult i32 %inc.i, %69
  br i1 %cmp76.i, label %if.end145.i.for.body.i_crit_edge, label %if.end145.i.bail_crit_edge

if.end145.i.bail_crit_edge:                       ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end145.i.for.body.i_crit_edge:                 ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then50:                                        ; preds = %do.body134.i, %if.then117.i.if.then50_crit_edge, %if.then117.i.if.then50_crit_edge163, %if.then117.i.if.then50_crit_edge164, %if.then117.i.if.then50_crit_edge165, %do.body100.i, %if.then83.i.if.then50_crit_edge, %if.then83.i.if.then50_crit_edge160, %if.then83.i.if.then50_crit_edge161, %if.then83.i.if.then50_crit_edge162
  %status.1.i.ph = phi i32 [ %call114.i, %do.body134.i ], [ %call114.i, %if.then117.i.if.then50_crit_edge ], [ %call114.i, %if.then117.i.if.then50_crit_edge163 ], [ %call114.i, %if.then117.i.if.then50_crit_edge164 ], [ %call114.i, %if.then117.i.if.then50_crit_edge165 ], [ %call80.i, %do.body100.i ], [ %call80.i, %if.then83.i.if.then50_crit_edge ], [ %call80.i, %if.then83.i.if.then50_crit_edge160 ], [ %call80.i, %if.then83.i.if.then50_crit_edge161 ], [ %call80.i, %if.then83.i.if.then50_crit_edge162 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #9
  %70 = zext i32 %status.1.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %status.1.i.ph, label %if.then50.do.body67_crit_edge [
    i32 -512, label %if.then50.if.end.i126_crit_edge
    i32 -4, label %if.then50.if.end.i126_crit_edge166
    i32 -28, label %if.then50.if.end.i126_crit_edge167
    i32 -122, label %if.then50.if.end.i126_crit_edge168
  ]

if.then50.if.end.i126_crit_edge168:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then50.if.end.i126_crit_edge167:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then50.if.end.i126_crit_edge166:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then50.if.end.i126_crit_edge:                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then50.do.body67_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.body67:                                        ; preds = %if.then50.do.body67_crit_edge, %if.then50.thread
  %status.1.i.ph136 = phi i32 [ -12, %if.then50.thread ], [ %status.1.i.ph, %if.then50.do.body67_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #9
  %71 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 1152921504606846976, ptr %_m68, align 8
  %conv72 = sext i32 %status.1.i.ph136 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.ocfs2_init_slot_info, i32 noundef 428, ptr noundef nonnull @.str, i64 noundef %conv72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #9
  br label %if.end.i126

bail:                                             ; preds = %if.end145.i.bail_crit_edge, %for.cond.preheader.i.bail_crit_edge, %do.end12.i.bail_crit_edge
  %status.1.i = phi i32 [ 0, %do.end12.i.bail_crit_edge ], [ 0, %for.cond.preheader.i.bail_crit_edge ], [ %call114.i, %if.end145.i.bail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #9
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %72 = ptrtoint ptr %slot_info to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i.i, ptr %slot_info, align 8
  br label %cleanup

if.end.i126:                                      ; preds = %do.body67, %if.then50.if.end.i126_crit_edge, %if.then50.if.end.i126_crit_edge166, %if.then50.if.end.i126_crit_edge167, %if.then50.if.end.i126_crit_edge168, %if.then50.thread137, %do.body35
  %status.0.ph = phi i32 [ -28, %if.then50.thread137 ], [ %status.1.i.ph136, %do.body67 ], [ %status.1.i.ph, %if.then50.if.end.i126_crit_edge ], [ %status.1.i.ph, %if.then50.if.end.i126_crit_edge166 ], [ %status.1.i.ph, %if.then50.if.end.i126_crit_edge167 ], [ %status.1.i.ph, %if.then50.if.end.i126_crit_edge168 ], [ -22, %do.body35 ]
  %si_inode.i124 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %si_inode.i124 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %si_inode.i124, align 8
  call void @iput(ptr noundef %74) #9
  %si_bh.i125 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %si_bh.i125 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %si_bh.i125, align 16
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.end.i126.__ocfs2_free_slot_info.exit_crit_edge, label %for.cond.preheader.i128

if.end.i126.__ocfs2_free_slot_info.exit_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_free_slot_info.exit

for.cond.preheader.i128:                          ; preds = %if.end.i126
  %si_blocks.i127 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %call9.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %si_blocks.i127 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %si_blocks.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp225.not.i = icmp eq i32 %78, 0
  br i1 %cmp225.not.i, label %for.cond.preheader.i128.for.end.i_crit_edge, label %for.cond.preheader.i128.for.body.i130_crit_edge

for.cond.preheader.i128.for.body.i130_crit_edge:  ; preds = %for.cond.preheader.i128
  br label %for.body.i130

for.cond.preheader.i128.for.end.i_crit_edge:      ; preds = %for.cond.preheader.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i130:                                    ; preds = %for.inc.i.for.body.i130_crit_edge, %for.cond.preheader.i128.for.body.i130_crit_edge
  %i.026.i = phi i32 [ %inc.i131, %for.inc.i.for.body.i130_crit_edge ], [ 0, %for.cond.preheader.i128.for.body.i130_crit_edge ]
  %79 = ptrtoint ptr %si_bh.i125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %si_bh.i125, align 16
  %arrayidx.i129 = getelementptr ptr, ptr %80, i32 %i.026.i
  %81 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i129, align 4
  %tobool4.not.i = icmp eq ptr %82, null
  br i1 %tobool4.not.i, label %for.body.i130.for.inc.i_crit_edge, label %brelse.exit.i

for.body.i130.for.inc.i_crit_edge:                ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

brelse.exit.i:                                    ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %82) #9
  %83 = ptrtoint ptr %si_bh.i125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %si_bh.i125, align 16
  %arrayidx9.i = getelementptr ptr, ptr %84, i32 %i.026.i
  %85 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %brelse.exit.i, %for.body.i130.for.inc.i_crit_edge
  %inc.i131 = add nuw i32 %i.026.i, 1
  %86 = ptrtoint ptr %si_blocks.i127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %si_blocks.i127, align 4
  %cmp2.i = icmp ult i32 %inc.i131, %87
  br i1 %cmp2.i, label %for.inc.i.for.body.i130_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i130_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i130

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i128.for.end.i_crit_edge
  %88 = ptrtoint ptr %si_bh.i125 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %si_bh.i125, align 16
  call void @kfree(ptr noundef %89) #9
  br label %__ocfs2_free_slot_info.exit

__ocfs2_free_slot_info.exit:                      ; preds = %for.end.i, %if.end.i126.__ocfs2_free_slot_info.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__ocfs2_free_slot_info.exit, %bail, %do.body
  %retval.0 = phi i32 [ -12, %do.body ], [ %status.0.ph, %__ocfs2_free_slot_info.exit ], [ %status.1.i, %bail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_free_slot_info(ptr nocapture noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  store ptr null, ptr %slot_info, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.__ocfs2_free_slot_info.exit_crit_edge, label %if.end.i

entry.__ocfs2_free_slot_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_free_slot_info.exit

if.end.i:                                         ; preds = %entry
  %si_inode.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %si_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si_inode.i, align 4
  tail call void @iput(ptr noundef %3) #9
  %si_bh.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si_bh.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %for.cond.preheader.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %si_blocks.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %si_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp225.not.i = icmp eq i32 %7, 0
  br i1 %cmp225.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si_bh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.026.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %brelse.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

brelse.exit.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %11) #9
  %12 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %si_bh.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %13, i32 %i.026.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %brelse.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %15 = ptrtoint ptr %si_blocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %si_blocks.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %16
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %si_bh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si_bh.i, align 4
  tail call void @kfree(ptr noundef %18) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.end.i, %if.end.i.if.end12.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %__ocfs2_free_slot_info.exit

__ocfs2_free_slot_info.exit:                      ; preds = %if.end12.i, %entry.__ocfs2_free_slot_info.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_find_slot(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m34 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  tail call fastcc void @ocfs2_update_slot_info(ptr noundef %1)
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %entry.lor.rhs.i94_crit_edge

entry.lor.rhs.i94_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i94

ocfs2_mount_local.exit:                           ; preds = %entry
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %4 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt.i, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %ocfs2_mount_local.exit.lor.rhs.i94_crit_edge

ocfs2_mount_local.exit.lor.rhs.i94_crit_edge:     ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i94

if.else:                                          ; preds = %ocfs2_mount_local.exit
  %node_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 31
  %7 = ptrtoint ptr %node_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node_num, align 4
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not.i = icmp eq i32 %10, 0
  br i1 %cmp10.not.i, label %if.else.if.then2_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.then2_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.011.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i81 = icmp eq i32 %12, 0
  br i1 %tobool.not.i81, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sl_node_num.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.011.i, i32 1
  %13 = ptrtoint ptr %sl_node_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sl_node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp3.i = icmp eq i32 %14, %8
  br i1 %cmp3.i, label %__ocfs2_node_num_to_slot.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.if.then2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

__ocfs2_node_num_to_slot.exit:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011.i)
  %cmp = icmp slt i32 %i.011.i, 0
  br i1 %cmp, label %__ocfs2_node_num_to_slot.exit.if.then2_crit_edge, label %do.end13

__ocfs2_node_num_to_slot.exit.if.then2_crit_edge: ; preds = %__ocfs2_node_num_to_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %__ocfs2_node_num_to_slot.exit.if.then2_crit_edge, %for.inc.i.if.then2_crit_edge, %if.else.if.then2_crit_edge
  %preferred_slot = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 33
  %15 = ptrtoint ptr %preferred_slot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %preferred_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i = icmp sgt i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp1.i = icmp ugt i32 %10, %16
  %or.cond = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond, label %if.then.i, label %if.then2.if.end6.i_crit_edge

if.then2.if.end6.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then2
  %arrayidx.i84 = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i85 = icmp eq i32 %18, 0
  br i1 %tobool.not.i85, label %if.then.i.lor.rhs.i94_crit_edge, label %lor.lhs.false.i

if.then.i.lor.rhs.i94_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i94

lor.lhs.false.i:                                  ; preds = %if.then.i
  %sl_node_num.i86 = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %16, i32 1
  %19 = ptrtoint ptr %sl_node_num.i86 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sl_node_num.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.lor.rhs.i94_crit_edge, label %lor.lhs.false.i.if.end6.i_crit_edge

lor.lhs.false.i.if.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

lor.lhs.false.i.lor.rhs.i94_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i94

if.end6.i:                                        ; preds = %lor.lhs.false.i.if.end6.i_crit_edge, %if.then2.if.end6.i_crit_edge
  br i1 %cmp10.not.i, label %if.end6.i.if.then5_crit_edge, label %if.end6.i.for.body.i87_crit_edge

if.end6.i.for.body.i87_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i87

if.end6.i.if.then5_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

for.body.i87:                                     ; preds = %for.inc.i90.for.body.i87_crit_edge, %if.end6.i.for.body.i87_crit_edge
  %i.034.i = phi i32 [ %inc.i88, %for.inc.i90.for.body.i87_crit_edge ], [ 0, %if.end6.i.for.body.i87_crit_edge ]
  %arrayidx10.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.034.i
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not.i = icmp eq i32 %22, 0
  br i1 %tobool12.not.i, label %for.body.i87.__ocfs2_find_empty_slot.exit_crit_edge, label %lor.lhs.false13.i

for.body.i87.__ocfs2_find_empty_slot.exit_crit_edge: ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_find_empty_slot.exit

lor.lhs.false13.i:                                ; preds = %for.body.i87
  %sl_node_num16.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %i.034.i, i32 1
  %23 = ptrtoint ptr %sl_node_num16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sl_node_num16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp eq i32 %24, 0
  br i1 %tobool17.not.i, label %lor.lhs.false13.i.__ocfs2_find_empty_slot.exit_crit_edge, label %for.inc.i90

lor.lhs.false13.i.__ocfs2_find_empty_slot.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ocfs2_find_empty_slot.exit

for.inc.i90:                                      ; preds = %lor.lhs.false13.i
  %inc.i88 = add nuw i32 %i.034.i, 1
  %exitcond.not.i89 = icmp eq i32 %inc.i88, %10
  br i1 %exitcond.not.i89, label %for.inc.i90.if.then5_crit_edge, label %for.inc.i90.for.body.i87_crit_edge

for.inc.i90.for.body.i87_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i87

for.inc.i90.if.then5_crit_edge:                   ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

__ocfs2_find_empty_slot.exit:                     ; preds = %lor.lhs.false13.i.__ocfs2_find_empty_slot.exit_crit_edge, %for.body.i87.__ocfs2_find_empty_slot.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.034.i)
  %cmp4 = icmp slt i32 %i.034.i, 0
  br i1 %cmp4, label %__ocfs2_find_empty_slot.exit.if.then5_crit_edge, label %__ocfs2_find_empty_slot.exit.lor.rhs.i94_crit_edge

__ocfs2_find_empty_slot.exit.lor.rhs.i94_crit_edge: ; preds = %__ocfs2_find_empty_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i94

__ocfs2_find_empty_slot.exit.if.then5_crit_edge:  ; preds = %__ocfs2_find_empty_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %__ocfs2_find_empty_slot.exit.if.then5_crit_edge, %for.inc.i90.if.then5_crit_edge, %if.end6.i.if.then5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %25 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_find_slot, i32 noundef 474, ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %bail

do.end13:                                         ; preds = %__ocfs2_node_num_to_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev_str = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 61
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %i.011.i, ptr noundef %dev_str) #13
  br label %lor.rhs.i94

lor.rhs.i94:                                      ; preds = %do.end13, %__ocfs2_find_empty_slot.exit.lor.rhs.i94_crit_edge, %lor.lhs.false.i.lor.rhs.i94_crit_edge, %if.then.i.lor.rhs.i94_crit_edge, %ocfs2_mount_local.exit.lor.rhs.i94_crit_edge, %entry.lor.rhs.i94_crit_edge
  %slot.0 = phi i32 [ %i.034.i, %__ocfs2_find_empty_slot.exit.lor.rhs.i94_crit_edge ], [ %i.011.i, %do.end13 ], [ 0, %ocfs2_mount_local.exit.lor.rhs.i94_crit_edge ], [ 0, %entry.lor.rhs.i94_crit_edge ], [ %16, %lor.lhs.false.i.lor.rhs.i94_crit_edge ], [ %16, %if.then.i.lor.rhs.i94_crit_edge ]
  %si_num_slots.i93 = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %si_num_slots.i93 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %si_num_slots.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %slot.0)
  %cmp1.not.i = icmp ugt i32 %27, %slot.0
  br i1 %cmp1.not.i, label %ocfs2_set_slot.exit, label %do.body3.i, !prof !51

do.body3.i:                                       ; preds = %lor.rhs.i94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

ocfs2_set_slot.exit:                              ; preds = %lor.rhs.i94
  %node_num17 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 31
  %28 = ptrtoint ptr %node_num17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_num17, align 4
  %arrayidx.i95 = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %slot.0
  %30 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx.i95, align 4
  %sl_node_num.i96 = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %slot.0, i32 1
  %31 = ptrtoint ptr %sl_node_num.i96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %sl_node_num.i96, align 4
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %32 = ptrtoint ptr %slot_num to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %slot.0, ptr %slot_num, align 8
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  %33 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slot_num, align 8
  tail call fastcc void @trace_ocfs2_find_slot(i32 noundef %34)
  %35 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slot_num, align 8
  %call21 = tail call fastcc i32 @ocfs2_update_disk_slot(ptr noundef %osb, ptr noundef %1, i32 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %ocfs2_set_slot.exit.bail_crit_edge

ocfs2_set_slot.exit.bail_crit_edge:               ; preds = %ocfs2_set_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then23:                                        ; preds = %ocfs2_set_slot.exit
  %37 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call21, label %do.body33 [
    i32 -512, label %if.then23.if.end41_crit_edge
    i32 -4, label %if.then23.if.end41_crit_edge124
    i32 -28, label %if.then23.if.end41_crit_edge125
    i32 -122, label %if.then23.if.end41_crit_edge126
  ]

if.then23.if.end41_crit_edge126:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then23.if.end41_crit_edge125:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then23.if.end41_crit_edge124:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then23.if.end41_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.body33:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #9
  %38 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m34, align 8
  %conv = sext i32 %call21 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.ocfs2_find_slot, i32 noundef 492, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #9
  br label %if.end41

if.end41:                                         ; preds = %do.body33, %if.then23.if.end41_crit_edge, %if.then23.if.end41_crit_edge124, %if.then23.if.end41_crit_edge125, %if.then23.if.end41_crit_edge126
  call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  %39 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slot_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i97 = icmp slt i32 %40, 0
  br i1 %cmp.i97, label %if.end41.do.body3.i101_crit_edge, label %lor.rhs.i100, !prof !47

if.end41.do.body3.i101_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i101

lor.rhs.i100:                                     ; preds = %if.end41
  %41 = ptrtoint ptr %si_num_slots.i93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %si_num_slots.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp1.not.i99 = icmp ugt i32 %42, %40
  br i1 %cmp1.not.i99, label %ocfs2_invalidate_slot.exit, label %lor.rhs.i100.do.body3.i101_crit_edge, !prof !51

lor.rhs.i100.do.body3.i101_crit_edge:             ; preds = %lor.rhs.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i101

do.body3.i101:                                    ; preds = %lor.rhs.i100.do.body3.i101_crit_edge, %if.end41.do.body3.i101_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

ocfs2_invalidate_slot.exit:                       ; preds = %lor.rhs.i100
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i102 = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %40
  %43 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx.i102, align 4
  %44 = ptrtoint ptr %slot_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 65535, ptr %slot_num, align 8
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  br label %bail

bail:                                             ; preds = %ocfs2_invalidate_slot.exit, %ocfs2_set_slot.exit.bail_crit_edge, %if.then5
  %status.0 = phi i32 [ %call21, %ocfs2_invalidate_slot.exit ], [ %call21, %ocfs2_set_slot.exit.bail_crit_edge ], [ -22, %if.then5 ]
  ret i32 %status.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_find_slot(i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_slot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_find_slot, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %call42 = tail call i32 @__traceiter_ocfs2_find_slot(ptr noundef null, i32 noundef %num) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_slot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_find_slot, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_find_slot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_find_slot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1632, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
define dso_local void @ocfs2_put_slot(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 6
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #9
  tail call fastcc void @ocfs2_update_slot_info(ptr noundef nonnull %1)
  %slot_num1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %2 = ptrtoint ptr %slot_num1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_num1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.do.body3.i_crit_edge, label %lor.rhs.i, !prof !47

if.end.do.body3.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.end
  %si_num_slots.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %si_num_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %si_num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not.i = icmp ugt i32 %5, %3
  br i1 %cmp1.not.i, label %ocfs2_invalidate_slot.exit, label %lor.rhs.i.do.body3.i_crit_edge, !prof !51

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.end.do.body3.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/slot_map.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

ocfs2_invalidate_slot.exit:                       ; preds = %lor.rhs.i
  %arrayidx.i = getelementptr %struct.ocfs2_slot_info, ptr %1, i32 0, i32 6, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %slot_num1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %slot_num1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #9
  %call = tail call fastcc i32 @ocfs2_update_disk_slot(ptr noundef %osb, ptr noundef nonnull %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %ocfs2_invalidate_slot.exit.if.end19_crit_edge

ocfs2_invalidate_slot.exit.if.end19_crit_edge:    ; preds = %ocfs2_invalidate_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5:                                         ; preds = %ocfs2_invalidate_slot.exit
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call, label %do.body [
    i32 -512, label %if.then5.if.end19_crit_edge
    i32 -4, label %if.then5.if.end19_crit_edge39
    i32 -28, label %if.then5.if.end19_crit_edge40
    i32 -122, label %if.then5.if.end19_crit_edge41
  ]

if.then5.if.end19_crit_edge41:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5.if.end19_crit_edge40:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5.if.end19_crit_edge39:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_put_slot, i32 noundef 525, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end19

if.end19:                                         ; preds = %do.body, %if.then5.if.end19_crit_edge, %if.then5.if.end19_crit_edge39, %if.then5.if.end19_crit_edge40, %if.then5.if.end19_crit_edge41, %ocfs2_invalidate_slot.exit.if.end19_crit_edge
  %10 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slot_info, align 8
  store ptr null, ptr %slot_info, align 8
  %cmp.i.i = icmp eq ptr %11, null
  br i1 %cmp.i.i, label %if.end19.cleanup_crit_edge, label %if.end.i.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  %si_inode.i.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %si_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %si_inode.i.i, align 4
  call void @iput(ptr noundef %13) #9
  %si_bh.i.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %si_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %si_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %si_blocks.i.i = getelementptr inbounds %struct.ocfs2_slot_info, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %si_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %si_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp225.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp225.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %si_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %si_bh.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %i.026.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %brelse.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

brelse.exit.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %21) #9
  %22 = ptrtoint ptr %si_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %si_bh.i.i, align 4
  %arrayidx9.i.i = getelementptr ptr, ptr %23, i32 %i.026.i.i
  %24 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx9.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %brelse.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.026.i.i, 1
  %25 = ptrtoint ptr %si_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %si_blocks.i.i, align 4
  %cmp2.i.i = icmp ult i32 %inc.i.i, %26
  br i1 %cmp2.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %27 = ptrtoint ptr %si_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %si_bh.i.i, align 4
  call void @kfree(ptr noundef %28) #9
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %for.end.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i.i, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_refresh_slot_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_map_slot_buffers(i64 noundef %val1, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_map_slot_buffers, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %call42 = tail call i32 @__traceiter_ocfs2_map_slot_buffers(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_map_slot_buffers.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_map_slot_buffers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1628, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
declare dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_map_slot_buffers_block(i64 noundef %val1, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_map_slot_buffers_block, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %call42 = tail call i32 @__traceiter_ocfs2_map_slot_buffers_block(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_map_slot_buffers_block, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_map_slot_buffers_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_map_slot_buffers_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1630, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
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
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !72
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !47

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !73
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !75
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_map_slot_buffers(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_map_slot_buffers_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_find_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__func__.ocfs2_init_slot_info, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/slot_map.c", i32 410, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_find_slot, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/slot_map.c", i32 474, i32 5}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/slot_map.c", i32 479, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ocfs2_find_slot._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ocfs2_find_slot._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__func__.ocfs2_put_slot, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/slot_map.c", i32 525, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1626, i32 1}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.ocfs2_update_disk_slot, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/slot_map.c", i32 199, i32 3}
!23 = !{ptr @__func__.ocfs2_map_slot_buffers, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/slot_map.c", i32 372, i32 3}
!25 = !{ptr @__func__.ocfs2_slot_map_physical_size, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/slot_map.c", i32 221, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1628, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1630, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1632, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2161121216, i64 2161121700, i64 2161121253, i64 2161121309, i64 2161121343, i64 2161121367, i64 2161121408, i64 2161121429, i64 2161121457, i64 2161121491}
!49 = !{i64 2161122832, i64 2161123316, i64 2161122869, i64 2161122925, i64 2161122959, i64 2161122983, i64 2161123024, i64 2161123045, i64 2161123073, i64 2161123107}
!50 = !{i64 2148211316, i64 2148211321, i64 2148211334, i64 2148211378, i64 2148211412, i64 2148211433}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2157826192}
!53 = !{i64 2157826407}
!54 = !{i64 2149936020}
!55 = !{i64 2149937056}
!56 = !{i64 2161119138, i64 2161119621, i64 2161119175, i64 2161119231, i64 2161119265, i64 2161119289, i64 2161119330, i64 2161119351, i64 2161119379, i64 2161119413}
!57 = !{i64 2161117489, i64 2161117972, i64 2161117526, i64 2161117582, i64 2161117616, i64 2161117640, i64 2161117681, i64 2161117702, i64 2161117730, i64 2161117764}
!58 = !{i64 2161127591, i64 2161128075, i64 2161127628, i64 2161127684, i64 2161127718, i64 2161127742, i64 2161127783, i64 2161127804, i64 2161127832, i64 2161127866}
!59 = !{i64 2161129171, i64 2161129655, i64 2161129208, i64 2161129264, i64 2161129298, i64 2161129322, i64 2161129363, i64 2161129384, i64 2161129412, i64 2161129446}
!60 = !{i64 2161130779, i64 2161131263, i64 2161130816, i64 2161130872, i64 2161130906, i64 2161130930, i64 2161130971, i64 2161130992, i64 2161131020, i64 2161131054}
!61 = !{i64 2161124448, i64 2161124932, i64 2161124485, i64 2161124541, i64 2161124575, i64 2161124599, i64 2161124640, i64 2161124661, i64 2161124689, i64 2161124723}
!62 = !{!"auto-init"}
!63 = !{i64 2161132407, i64 2161132891, i64 2161132444, i64 2161132500, i64 2161132534, i64 2161132558, i64 2161132599, i64 2161132620, i64 2161132648, i64 2161132682}
!64 = !{i64 2161134063, i64 2161134547, i64 2161134100, i64 2161134156, i64 2161134190, i64 2161134214, i64 2161134255, i64 2161134276, i64 2161134304, i64 2161134338}
!65 = !{i64 2157881619}
!66 = !{i64 2157881818}
!67 = !{i64 2157843383}
!68 = !{i64 2157843610}
!69 = !{i64 2157864923}
!70 = !{i64 2157865162}
!71 = !{i64 995270, i64 995331}
!72 = !{i64 998002}
!73 = !{i64 998287}
!74 = !{i64 2152921726}
!75 = !{i64 2152921568}
!76 = !{i64 2152921896}
!77 = !{i64 2149769989}
