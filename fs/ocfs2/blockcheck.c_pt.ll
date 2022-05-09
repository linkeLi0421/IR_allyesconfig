; ModuleID = '/llk/IR_all_yes/fs/ocfs2/blockcheck.c_pt.bc'
source_filename = "../fs/ocfs2/blockcheck.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__func__.ocfs2_block_check_validate = private unnamed_addr constant [27 x i8] c"ocfs2_block_check_validate\00", align 1
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CRC32 failed: stored: 0x%x, computed 0x%x. Applying ECC.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Fixed CRC32 failed: stored: 0x%x, computed 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.ocfs2_block_check_validate_bhs = private unnamed_addr constant [31 x i8] c"ocfs2_block_check_validate_bhs\00", align 1
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CRC32 failed: stored: %u, computed %u.  Applying ECC.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Fixed CRC32 failed: stored: %u, computed %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blockcheck\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blocks_checked\00", [17 x i8] zeroinitializer }, align 32
@blockcheck_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blockcheck_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"checksums_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ecc_recoveries\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@__func__.ocfs2_blockcheck_inc_check = private unnamed_addr constant [27 x i8] c"ocfs2_blockcheck_inc_check\00", align 1
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Block check count has wrapped\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ocfs2_blockcheck_inc_failure = private unnamed_addr constant [29 x i8] c"ocfs2_blockcheck_inc_failure\00", align 1
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Checksum failure count has wrapped\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ocfs2_blockcheck_inc_recover = private unnamed_addr constant [29 x i8] c"ocfs2_blockcheck_inc_recover\00", align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ECC recovery count has wrapped\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 400, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 415, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 513, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 546, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 245, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 248, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"blockcheck_fops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 251, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 254, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 294, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 310, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [25 x i8] c"../fs/ocfs2/blockcheck.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 326, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @blockcheck_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blockcheck_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_hamming_encode(i32 noundef %parity, ptr noundef %data, i32 noundef %d, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d)
  %tobool.not = icmp eq i32 %d, 0
  br i1 %tobool.not, label %do.body4, label %for.cond.preheader, !prof !39

for.cond.preheader:                               ; preds = %entry
  %call.i16 = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16, i32 %d)
  %cmp17 = icmp ult i32 %call.i16, %d
  br i1 %cmp17, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body:                                         ; preds = %calc_code_bit.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call.i20 = phi i32 [ %call.i, %calc_code_bit.exit.for.body_crit_edge ], [ %call.i16, %for.cond.preheader.for.body_crit_edge ]
  %parity.addr.019 = phi i32 [ %xor, %calc_code_bit.exit.for.body_crit_edge ], [ %parity, %for.cond.preheader.for.body_crit_edge ]
  %p.018 = phi i32 [ %p.1.i, %calc_code_bit.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %call.i20, 1
  %add.i = add i32 %add, %nr
  %add1.i = add i32 %add.i, %p.018
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body
  %b.0.i = phi i32 [ %add1.i, %for.body ], [ %add2.i, %for.cond.i.for.cond.i_crit_edge ]
  %p.1.i = phi i32 [ %p.018, %for.body ], [ %inc3.i, %for.cond.i.for.cond.i_crit_edge ]
  %shl.i = shl nuw i32 1, %p.1.i
  %add2.i = add i32 %b.0.i, 1
  %cmp.i = icmp ult i32 %shl.i, %add2.i
  %inc3.i = add i32 %p.1.i, 1
  br i1 %cmp.i, label %for.cond.i.for.cond.i_crit_edge, label %calc_code_bit.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

calc_code_bit.exit:                               ; preds = %for.cond.i
  %xor = xor i32 %b.0.i, %parity.addr.019
  %call.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %d, i32 noundef %add) #6
  %cmp = icmp ult i32 %call.i, %d
  br i1 %cmp, label %calc_code_bit.exit.for.body_crit_edge, label %calc_code_bit.exit.for.end_crit_edge

calc_code_bit.exit.for.end_crit_edge:             ; preds = %calc_code_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

calc_code_bit.exit.for.body_crit_edge:            ; preds = %calc_code_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %calc_code_bit.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %parity.addr.0.lcssa = phi i32 [ %parity, %for.cond.preheader.for.end_crit_edge ], [ %xor, %calc_code_bit.exit.for.end_crit_edge ]
  ret i32 %parity.addr.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_hamming_encode_block(ptr noundef %data, i32 noundef %blocksize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %blocksize, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  br i1 %tobool.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !39

for.cond.preheader.i:                             ; preds = %entry
  %call.i16.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i, i32 %mul)
  %cmp17.i = icmp ult i32 %call.i16.i, %mul
  br i1 %cmp17.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge

for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i:                                       ; preds = %calc_code_bit.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call.i20.i = phi i32 [ %call.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ %call.i16.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %parity.addr.019.i = phi i32 [ %xor.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %p.018.i = phi i32 [ %p.1.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %call.i20.i, 1
  %add1.i.i = add i32 %p.018.i, %add.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.body.i
  %b.0.i.i = phi i32 [ %add1.i.i, %for.body.i ], [ %add2.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %p.1.i.i = phi i32 [ %p.018.i, %for.body.i ], [ %inc3.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %p.1.i.i
  %add2.i.i = add i32 %b.0.i.i, 1
  %cmp.i.i = icmp ult i32 %shl.i.i, %add2.i.i
  %inc3.i.i = add i32 %p.1.i.i, 1
  br i1 %cmp.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %calc_code_bit.exit.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

calc_code_bit.exit.i:                             ; preds = %for.cond.i.i
  %xor.i = xor i32 %b.0.i.i, %parity.addr.019.i
  %call.i.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul, i32 noundef %add.i) #6
  %cmp.i = icmp ult i32 %call.i.i, %mul
  br i1 %cmp.i, label %calc_code_bit.exit.i.for.body.i_crit_edge, label %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge

calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

calc_code_bit.exit.i.for.body.i_crit_edge:        ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ocfs2_hamming_encode.exit:                        ; preds = %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge
  %parity.addr.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge ], [ %xor.i, %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge ]
  ret i32 %parity.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_hamming_fix(ptr noundef %data, i32 noundef %d, i32 noundef %nr, i32 noundef %fix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d)
  %tobool.not = icmp eq i32 %d, 0
  br i1 %tobool.not, label %do.body4, label %cond.false, !prof !39

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %fix) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %cond.false.cleanup_crit_edge, label %if.end295

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end295:                                        ; preds = %cond.false
  %add296 = add i32 %nr, 1
  %add.i = add i32 %add296, %d
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end295
  %b.0.i = phi i32 [ %add.i, %if.end295 ], [ %add2.i, %for.cond.i.for.cond.i_crit_edge ]
  %p.1.i = phi i32 [ 0, %if.end295 ], [ %inc3.i, %for.cond.i.for.cond.i_crit_edge ]
  %shl.i = shl nuw i32 1, %p.1.i
  %add2.i = add i32 %b.0.i, 1
  %cmp.i = icmp ult i32 %shl.i, %add2.i
  %inc3.i = add i32 %p.1.i, 1
  br i1 %cmp.i, label %for.cond.i.for.cond.i_crit_edge, label %calc_code_bit.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

calc_code_bit.exit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %b.0.i, i32 %fix)
  %cmp298.not = icmp ugt i32 %b.0.i, %fix
  br i1 %cmp298.not, label %calc_code_bit.exit.for.cond.i708_crit_edge, label %calc_code_bit.exit.cleanup_crit_edge

calc_code_bit.exit.cleanup_crit_edge:             ; preds = %calc_code_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

calc_code_bit.exit.for.cond.i708_crit_edge:       ; preds = %calc_code_bit.exit
  br label %for.cond.i708

for.cond.i708:                                    ; preds = %for.cond.i708.for.cond.i708_crit_edge, %calc_code_bit.exit.for.cond.i708_crit_edge
  %b.0.i702 = phi i32 [ %add2.i705, %for.cond.i708.for.cond.i708_crit_edge ], [ %add296, %calc_code_bit.exit.for.cond.i708_crit_edge ]
  %p.1.i703 = phi i32 [ %inc3.i707, %for.cond.i708.for.cond.i708_crit_edge ], [ 0, %calc_code_bit.exit.for.cond.i708_crit_edge ]
  %shl.i704 = shl nuw i32 1, %p.1.i703
  %add2.i705 = add i32 %b.0.i702, 1
  %cmp.i706 = icmp ult i32 %shl.i704, %add2.i705
  %inc3.i707 = add i32 %p.1.i703, 1
  br i1 %cmp.i706, label %for.cond.i708.for.cond.i708_crit_edge, label %calc_code_bit.exit709

for.cond.i708.for.cond.i708_crit_edge:            ; preds = %for.cond.i708
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i708

calc_code_bit.exit709:                            ; preds = %for.cond.i708
  call void @__sanitizer_cov_trace_cmp4(i32 %b.0.i702, i32 %fix)
  %cmp303.not = icmp ugt i32 %b.0.i702, %fix
  br i1 %cmp303.not, label %calc_code_bit.exit709.cleanup_crit_edge, label %while.cond.preheader.preheader

calc_code_bit.exit709.cleanup_crit_edge:          ; preds = %calc_code_bit.exit709
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.preheader:                   ; preds = %calc_code_bit.exit709
  %umax = call i32 @llvm.umax.i32(i32 %d, i32 1)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.preheader
  %b.0719 = phi i32 [ %inc, %for.inc.while.cond.preheader_crit_edge ], [ %b.0.i702, %while.cond.preheader.preheader ]
  %i.0718 = phi i32 [ %inc611, %for.inc.while.cond.preheader_crit_edge ], [ 0, %while.cond.preheader.preheader ]
  br label %cond.false597

cond.false597:                                    ; preds = %cond.false597.cond.false597_crit_edge, %while.cond.preheader
  %b.1 = phi i32 [ %inc, %cond.false597.cond.false597_crit_edge ], [ %b.0719, %while.cond.preheader ]
  %call.i710 = tail call i32 @__sw_hweight32(i32 noundef %b.1) #6
  %cmp601 = icmp eq i32 %call.i710, 1
  %inc = add i32 %b.1, 1
  br i1 %cmp601, label %cond.false597.cond.false597_crit_edge, label %while.end

cond.false597.cond.false597_crit_edge:            ; preds = %cond.false597
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false597

while.end:                                        ; preds = %cond.false597
  call void @__sanitizer_cov_trace_cmp4(i32 %b.1, i32 %fix)
  %cmp603 = icmp eq i32 %b.1, %fix
  br i1 %cmp603, label %if.then605, label %for.inc

if.then605:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %div3.i.i = lshr i32 %i.0718, 5
  %arrayidx.i.i = getelementptr i32, ptr %data, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %i.0718, 31
  %and.i.i = xor i32 %xor.i, 24
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool607.not = icmp eq i32 %3, 0
  %or.i.i.i = or i32 %1, %2
  %neg.i.i.i = xor i32 %2, -1
  %and.i.i.i = and i32 %1, %neg.i.i.i
  %or.i.i.i.sink = select i1 %tobool607.not, i32 %or.i.i.i, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i.i.i.sink, ptr %arrayidx.i.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %while.end
  %inc611 = add nuw i32 %i.0718, 1
  %exitcond.not = icmp eq i32 %inc611, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then605, %calc_code_bit.exit709.cleanup_crit_edge, %calc_code_bit.exit.cleanup_crit_edge, %cond.false.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_hamming_fix_block(ptr noundef %data, i32 noundef %blocksize, i32 noundef %fix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %blocksize, 3
  tail call void @ocfs2_hamming_fix(ptr noundef %data, i32 noundef %mul, i32 noundef 0, i32 noundef %fix)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_blockcheck_stats_debugfs_install(ptr noundef %stats, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef %parent) #6
  %b_debug_dir.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 4
  %0 = ptrtoint ptr %b_debug_dir.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %b_debug_dir.i, align 8
  %b_check_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 1
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext -32512, ptr noundef %call.i, ptr noundef %b_check_count.i, ptr noundef nonnull @blockcheck_fops) #6
  %b_failure_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 2
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext -32512, ptr noundef %call.i, ptr noundef %b_failure_count.i, ptr noundef nonnull @blockcheck_fops) #6
  %b_recover_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 3
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext -32512, ptr noundef %call.i, ptr noundef %b_recover_count.i, ptr noundef nonnull @blockcheck_fops) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_blockcheck_stats_debugfs_remove(ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %stats, null
  br i1 %tobool.not.i, label %entry.ocfs2_blockcheck_debug_remove.exit_crit_edge, label %if.then.i

entry.ocfs2_blockcheck_debug_remove.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_blockcheck_debug_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %b_debug_dir.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 4
  %0 = ptrtoint ptr %b_debug_dir.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_debug_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %b_debug_dir.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %b_debug_dir.i, align 8
  br label %ocfs2_blockcheck_debug_remove.exit

ocfs2_blockcheck_debug_remove.exit:               ; preds = %if.then.i, %entry.ocfs2_blockcheck_debug_remove.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_block_check_compute(ptr noundef %data, i32 noundef %blocksize, ptr nocapture noundef writeonly %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %bc, align 4
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %blocksize) #9
  %mul.i = shl i32 %blocksize, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !39

for.cond.preheader.i.i:                           ; preds = %entry
  %call.i16.i.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i.i, i32 %mul.i)
  %cmp17.i.i = icmp ult i32 %call.i16.i.i, %mul.i
  br i1 %cmp17.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.do.end8_crit_edge

for.cond.preheader.i.i.do.end8_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i.i:                                     ; preds = %calc_code_bit.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %call.i20.i.i = phi i32 [ %call.i.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ %call.i16.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %parity.addr.019.i.i = phi i32 [ %xor.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %p.018.i.i = phi i32 [ %p.1.i.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw i32 %call.i20.i.i, 1
  %add1.i.i.i = add i32 %p.018.i.i, %add.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.i
  %b.0.i.i.i = phi i32 [ %add1.i.i.i, %for.body.i.i ], [ %add2.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %p.1.i.i.i = phi i32 [ %p.018.i.i, %for.body.i.i ], [ %inc3.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %p.1.i.i.i
  %add2.i.i.i = add i32 %b.0.i.i.i, 1
  %cmp.i.i.i = icmp ult i32 %shl.i.i.i, %add2.i.i.i
  %inc3.i.i.i = add i32 %p.1.i.i.i, 1
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, label %calc_code_bit.exit.i.i

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i

calc_code_bit.exit.i.i:                           ; preds = %for.cond.i.i.i
  %xor.i.i = xor i32 %b.0.i.i.i, %parity.addr.019.i.i
  %call.i.i.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i, i32 noundef %add.i.i) #6
  %cmp.i.i = icmp ult i32 %call.i.i.i, %mul.i
  br i1 %cmp.i.i, label %calc_code_bit.exit.i.i.for.body.i.i_crit_edge, label %ocfs2_hamming_encode_block.exit

calc_code_bit.exit.i.i.for.body.i.i_crit_edge:    ; preds = %calc_code_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ocfs2_hamming_encode_block.exit:                  ; preds = %calc_code_bit.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i.i)
  %cmp = icmp ugt i32 %xor.i.i, 65535
  br i1 %cmp, label %do.body3, label %ocfs2_hamming_encode_block.exit.do.end8_crit_edge, !prof !39

ocfs2_hamming_encode_block.exit.do.end8_crit_edge: ; preds = %ocfs2_hamming_encode_block.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.body3:                                         ; preds = %ocfs2_hamming_encode_block.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

do.end8:                                          ; preds = %ocfs2_hamming_encode_block.exit.do.end8_crit_edge, %for.cond.preheader.i.i.do.end8_crit_edge
  %parity.addr.0.lcssa.i.i16 = phi i32 [ %xor.i.i, %ocfs2_hamming_encode_block.exit.do.end8_crit_edge ], [ 0, %for.cond.preheader.i.i.do.end8_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %call)
  %2 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bc, align 4
  %conv = trunc i32 %parity.addr.0.lcssa.i.i16 to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %bc_ecc = getelementptr inbounds %struct.ocfs2_block_check, ptr %bc, i32 0, i32 1
  %4 = ptrtoint ptr %bc_ecc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %bc_ecc, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_block_check_validate(ptr noundef %data, i32 noundef %blocksize, ptr nocapture noundef %bc, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %_m.i48 = alloca i64, align 8
  %_m.i41 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m12 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %stats, null
  br i1 %tobool.not.i, label %entry.ocfs2_blockcheck_inc_check.exit_crit_edge, label %if.end.i

entry.ocfs2_blockcheck_inc_check.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_blockcheck_inc_check.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_check_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %b_check_count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_check_count.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %b_check_count.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i)
  %tobool3.not.i = icmp eq i64 %inc.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.ocfs2_blockcheck_inc_check.exit_crit_edge

if.end.i.ocfs2_blockcheck_inc_check.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_blockcheck_inc_check.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #6
  %2 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2305843009213693952, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_check, i32 noundef 294, ptr noundef nonnull @.str.9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #6
  br label %ocfs2_blockcheck_inc_check.exit

ocfs2_blockcheck_inc_check.exit:                  ; preds = %do.body.i, %if.end.i.ocfs2_blockcheck_inc_check.exit_crit_edge, %entry.ocfs2_blockcheck_inc_check.exit_crit_edge
  %3 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bc, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %bc_ecc2 = getelementptr inbounds %struct.ocfs2_block_check, ptr %bc, i32 0, i32 1
  %6 = ptrtoint ptr %bc_ecc2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bc_ecc2, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %bc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %bc, align 4
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %blocksize) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp = icmp eq i32 %call, %5
  br i1 %cmp, label %ocfs2_blockcheck_inc_check.exit.out_crit_edge, label %if.end

ocfs2_blockcheck_inc_check.exit.out_crit_edge:    ; preds = %ocfs2_blockcheck_inc_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %ocfs2_blockcheck_inc_check.exit
  br i1 %tobool.not.i, label %if.end.ocfs2_blockcheck_inc_failure.exit_crit_edge, label %if.end.i45

if.end.ocfs2_blockcheck_inc_failure.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_blockcheck_inc_failure.exit

if.end.i45:                                       ; preds = %if.end
  call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_failure_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 2
  %10 = ptrtoint ptr %b_failure_count.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %b_failure_count.i, align 8
  %inc.i43 = add i64 %11, 1
  store i64 %inc.i43, ptr %b_failure_count.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i43)
  %tobool3.not.i44 = icmp eq i64 %inc.i43, 0
  br i1 %tobool3.not.i44, label %do.body.i46, label %if.end.i45.ocfs2_blockcheck_inc_failure.exit_crit_edge

if.end.i45.ocfs2_blockcheck_inc_failure.exit_crit_edge: ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_blockcheck_inc_failure.exit

do.body.i46:                                      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i41) #6
  %12 = ptrtoint ptr %_m.i41 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2305843009213693952, ptr %_m.i41, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i41, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_failure, i32 noundef 310, ptr noundef nonnull @.str.10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i41) #6
  br label %ocfs2_blockcheck_inc_failure.exit

ocfs2_blockcheck_inc_failure.exit:                ; preds = %do.body.i46, %if.end.i45.ocfs2_blockcheck_inc_failure.exit_crit_edge, %if.end.ocfs2_blockcheck_inc_failure.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_block_check_validate, i32 noundef 402, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  %mul.i = shl i32 %blocksize, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !39

for.cond.preheader.i.i:                           ; preds = %ocfs2_blockcheck_inc_failure.exit
  %call.i16.i.i = call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i.i, i32 %mul.i)
  %cmp17.i.i = icmp ult i32 %call.i16.i.i, %mul.i
  br i1 %cmp17.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.ocfs2_hamming_encode_block.exit_crit_edge

for.cond.preheader.i.i.ocfs2_hamming_encode_block.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode_block.exit

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

do.body4.i.i:                                     ; preds = %ocfs2_blockcheck_inc_failure.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i.i:                                     ; preds = %calc_code_bit.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %call.i20.i.i = phi i32 [ %call.i.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ %call.i16.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %parity.addr.019.i.i = phi i32 [ %xor.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %p.018.i.i = phi i32 [ %p.1.i.i.i, %calc_code_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw i32 %call.i20.i.i, 1
  %add1.i.i.i = add i32 %p.018.i.i, %add.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.i
  %b.0.i.i.i = phi i32 [ %add1.i.i.i, %for.body.i.i ], [ %add2.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %p.1.i.i.i = phi i32 [ %p.018.i.i, %for.body.i.i ], [ %inc3.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %p.1.i.i.i
  %add2.i.i.i = add i32 %b.0.i.i.i, 1
  %cmp.i.i.i = icmp ult i32 %shl.i.i.i, %add2.i.i.i
  %inc3.i.i.i = add i32 %p.1.i.i.i, 1
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, label %calc_code_bit.exit.i.i

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i

calc_code_bit.exit.i.i:                           ; preds = %for.cond.i.i.i
  %xor.i.i = xor i32 %b.0.i.i.i, %parity.addr.019.i.i
  %call.i.i.i = call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i, i32 noundef %add.i.i) #6
  %cmp.i.i = icmp ult i32 %call.i.i.i, %mul.i
  br i1 %cmp.i.i, label %calc_code_bit.exit.i.i.for.body.i.i_crit_edge, label %calc_code_bit.exit.i.i.ocfs2_hamming_encode_block.exit_crit_edge

calc_code_bit.exit.i.i.ocfs2_hamming_encode_block.exit_crit_edge: ; preds = %calc_code_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode_block.exit

calc_code_bit.exit.i.i.for.body.i.i_crit_edge:    ; preds = %calc_code_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ocfs2_hamming_encode_block.exit:                  ; preds = %calc_code_bit.exit.i.i.ocfs2_hamming_encode_block.exit_crit_edge, %for.cond.preheader.i.i.ocfs2_hamming_encode_block.exit_crit_edge
  %parity.addr.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.ocfs2_hamming_encode_block.exit_crit_edge ], [ %xor.i.i, %calc_code_bit.exit.i.i.ocfs2_hamming_encode_block.exit_crit_edge ]
  %conv = zext i16 %8 to i32
  %xor = xor i32 %parity.addr.0.lcssa.i.i, %conv
  call void @ocfs2_hamming_fix(ptr noundef %data, i32 noundef %mul.i, i32 noundef 0, i32 noundef %xor) #6
  %call6 = call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %blocksize) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %5)
  %cmp7 = icmp eq i32 %call6, %5
  br i1 %cmp7, label %if.then9, label %do.body11

if.then9:                                         ; preds = %ocfs2_hamming_encode_block.exit
  br i1 %tobool.not.i, label %if.then9.out_crit_edge, label %if.end.i52

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i52:                                       ; preds = %if.then9
  call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_recover_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 3
  %14 = ptrtoint ptr %b_recover_count.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %b_recover_count.i, align 8
  %inc.i50 = add i64 %15, 1
  store i64 %inc.i50, ptr %b_recover_count.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i50)
  %tobool3.not.i51 = icmp eq i64 %inc.i50, 0
  br i1 %tobool3.not.i51, label %do.body.i53, label %if.end.i52.out_crit_edge

if.end.i52.out_crit_edge:                         ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body.i53:                                      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i48) #6
  %16 = ptrtoint ptr %_m.i48 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2305843009213693952, ptr %_m.i48, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i48, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_recover, i32 noundef 326, ptr noundef nonnull @.str.11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i48) #6
  br label %out

do.body11:                                        ; preds = %ocfs2_hamming_encode_block.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12) #6
  %17 = ptrtoint ptr %_m12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m12, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12, ptr noundef nonnull @__func__.ocfs2_block_check_validate, i32 noundef 416, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %call6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12) #6
  br label %out

out:                                              ; preds = %do.body11, %do.body.i53, %if.end.i52.out_crit_edge, %if.then9.out_crit_edge, %ocfs2_blockcheck_inc_check.exit.out_crit_edge
  %rc.0 = phi i32 [ 0, %ocfs2_blockcheck_inc_check.exit.out_crit_edge ], [ -5, %do.body11 ], [ 0, %if.then9.out_crit_edge ], [ 0, %if.end.i52.out_crit_edge ], [ 0, %do.body.i53 ]
  %18 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %bc, align 4
  %19 = ptrtoint ptr %bc_ecc2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %7, ptr %bc_ecc2, align 4
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_block_check_compute_bhs(ptr nocapture noundef readonly %bhs, i32 noundef %nr, ptr nocapture noundef writeonly %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp = icmp slt i32 %nr, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !39

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 447, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool8.not = icmp eq i32 %nr, 0
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %for.body.preheader

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %do.end7
  %0 = ptrtoint ptr %bc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %bc, align 4
  br label %for.body

for.body:                                         ; preds = %ocfs2_hamming_encode.exit.for.body_crit_edge, %for.body.preheader
  %ecc.068 = phi i32 [ %conv22, %ocfs2_hamming_encode.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %crc.067 = phi i32 [ %call, %ocfs2_hamming_encode.exit.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %i.066 = phi i32 [ %inc, %ocfs2_hamming_encode.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %i.066
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size, align 8
  %call = tail call i32 @crc32_le(i32 noundef %crc.067, ptr noundef %4, i32 noundef %6) #9
  %mul = shl i32 %6, 3
  %mul20 = mul i32 %mul, %i.066
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  br i1 %tobool.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !39

for.cond.preheader.i:                             ; preds = %for.body
  %call.i16.i = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef %mul, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i, i32 %mul)
  %cmp17.i = icmp ult i32 %call.i16.i, %mul
  br i1 %cmp17.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge

for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i:                                       ; preds = %calc_code_bit.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call.i20.i = phi i32 [ %call.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ %call.i16.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %parity.addr.019.i = phi i32 [ %xor.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ %ecc.068, %for.cond.preheader.i.for.body.i_crit_edge ]
  %p.018.i = phi i32 [ %p.1.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %call.i20.i, 1
  %add.i.i = add i32 %add.i, %mul20
  %add1.i.i = add i32 %add.i.i, %p.018.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.body.i
  %b.0.i.i = phi i32 [ %add1.i.i, %for.body.i ], [ %add2.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %p.1.i.i = phi i32 [ %p.018.i, %for.body.i ], [ %inc3.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %p.1.i.i
  %add2.i.i = add i32 %b.0.i.i, 1
  %cmp.i.i = icmp ult i32 %shl.i.i, %add2.i.i
  %inc3.i.i = add i32 %p.1.i.i, 1
  br i1 %cmp.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %calc_code_bit.exit.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

calc_code_bit.exit.i:                             ; preds = %for.cond.i.i
  %xor.i = xor i32 %b.0.i.i, %parity.addr.019.i
  %call.i.i = tail call i32 @_find_next_bit_le(ptr noundef %4, i32 noundef %mul, i32 noundef %add.i) #6
  %cmp.i = icmp ult i32 %call.i.i, %mul
  br i1 %cmp.i, label %calc_code_bit.exit.i.for.body.i_crit_edge, label %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge

calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

calc_code_bit.exit.i.for.body.i_crit_edge:        ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ocfs2_hamming_encode.exit:                        ; preds = %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge
  %parity.addr.0.lcssa.i = phi i32 [ %ecc.068, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge ], [ %xor.i, %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge ]
  %conv22 = and i32 %parity.addr.0.lcssa.i, 65535
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %do.end41, label %ocfs2_hamming_encode.exit.for.body_crit_edge

ocfs2_hamming_encode.exit.for.body_crit_edge:     ; preds = %ocfs2_hamming_encode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end41:                                         ; preds = %ocfs2_hamming_encode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = trunc i32 %parity.addr.0.lcssa.i to i16
  %7 = tail call i32 @llvm.bswap.i32(i32 %call)
  %8 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bc, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %phi.cast)
  %bc_ecc = getelementptr inbounds %struct.ocfs2_block_check, ptr %bc, i32 0, i32 1
  %10 = ptrtoint ptr %bc_ecc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %bc_ecc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_block_check_validate_bhs(ptr nocapture noundef readonly %bhs, i32 noundef %nr, ptr nocapture noundef %bc, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %_m.i146 = alloca i64, align 8
  %_m.i139 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m74 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp = icmp slt i32 %nr, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !39

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool8.not = icmp eq i32 %nr, 0
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %tobool.not.i = icmp eq ptr %stats, null
  br i1 %tobool.not.i, label %if.end10.for.body.preheader_crit_edge, label %if.end.i

if.end10.for.body.preheader_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end.i:                                         ; preds = %if.end10
  tail call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_check_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %b_check_count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_check_count.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %b_check_count.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i)
  %tobool3.not.i = icmp eq i64 %inc.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.for.body.preheader_crit_edge

if.end.i.for.body.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #6
  %2 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2305843009213693952, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_check, i32 noundef 294, ptr noundef nonnull @.str.9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body.i, %if.end.i.for.body.preheader_crit_edge, %if.end10.for.body.preheader_crit_edge
  %3 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bc, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %bc_ecc12 = getelementptr inbounds %struct.ocfs2_block_check, ptr %bc, i32 0, i32 1
  %6 = ptrtoint ptr %bc_ecc12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bc_ecc12, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %bc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %bc, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %crc.0155 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %i.0154 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %i.0154
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size, align 8
  %call = call i32 @crc32_le(i32 noundef %crc.0155, ptr noundef %13, i32 noundef %15) #9
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp15 = icmp eq i32 %call, %5
  br i1 %cmp15, label %for.end.out_crit_edge, label %if.end17

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %for.end
  br i1 %tobool.not.i, label %if.end17.for.body26.preheader_crit_edge, label %if.end.i143

if.end17.for.body26.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.preheader

if.end.i143:                                      ; preds = %if.end17
  call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_failure_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 2
  %16 = ptrtoint ptr %b_failure_count.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_failure_count.i, align 8
  %inc.i141 = add i64 %17, 1
  store i64 %inc.i141, ptr %b_failure_count.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i141)
  %tobool3.not.i142 = icmp eq i64 %inc.i141, 0
  br i1 %tobool3.not.i142, label %do.body.i144, label %if.end.i143.for.body26.preheader_crit_edge

if.end.i143.for.body26.preheader_crit_edge:       ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.preheader

do.body.i144:                                     ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i139) #6
  %18 = ptrtoint ptr %_m.i139 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 2305843009213693952, ptr %_m.i139, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i139, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_failure, i32 noundef 310, ptr noundef nonnull @.str.10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i139) #6
  br label %for.body26.preheader

for.body26.preheader:                             ; preds = %do.body.i144, %if.end.i143.for.body26.preheader_crit_edge, %if.end17.for.body26.preheader_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %19 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_block_check_validate_bhs, i32 noundef 515, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %for.body26

for.body26:                                       ; preds = %ocfs2_hamming_encode.exit.for.body26_crit_edge, %for.body26.preheader
  %ecc.0158 = phi i32 [ %conv36, %ocfs2_hamming_encode.exit.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %i.1157 = phi i32 [ %inc38, %ocfs2_hamming_encode.exit.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %arrayidx27 = getelementptr ptr, ptr %bhs, i32 %i.1157
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx27, align 4
  %b_data28 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data28, align 4
  %b_size30 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %b_size30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b_size30, align 8
  %mul = shl i32 %25, 3
  %mul34 = mul i32 %mul, %i.1157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i145 = icmp eq i32 %mul, 0
  br i1 %tobool.not.i145, label %do.body4.i, label %for.cond.preheader.i, !prof !39

for.cond.preheader.i:                             ; preds = %for.body26
  %call.i16.i = call i32 @_find_next_bit_le(ptr noundef %23, i32 noundef %mul, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i, i32 %mul)
  %cmp17.i = icmp ult i32 %call.i16.i, %mul
  br i1 %cmp17.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge

for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.body4.i:                                       ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i:                                       ; preds = %calc_code_bit.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call.i20.i = phi i32 [ %call.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ %call.i16.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %parity.addr.019.i = phi i32 [ %xor.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ %ecc.0158, %for.cond.preheader.i.for.body.i_crit_edge ]
  %p.018.i = phi i32 [ %p.1.i.i, %calc_code_bit.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %call.i20.i, 1
  %add.i.i = add i32 %add.i, %mul34
  %add1.i.i = add i32 %add.i.i, %p.018.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.body.i
  %b.0.i.i = phi i32 [ %add1.i.i, %for.body.i ], [ %add2.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %p.1.i.i = phi i32 [ %p.018.i, %for.body.i ], [ %inc3.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %p.1.i.i
  %add2.i.i = add i32 %b.0.i.i, 1
  %cmp.i.i = icmp ult i32 %shl.i.i, %add2.i.i
  %inc3.i.i = add i32 %p.1.i.i, 1
  br i1 %cmp.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %calc_code_bit.exit.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

calc_code_bit.exit.i:                             ; preds = %for.cond.i.i
  %xor.i = xor i32 %b.0.i.i, %parity.addr.019.i
  %call.i.i = call i32 @_find_next_bit_le(ptr noundef %23, i32 noundef %mul, i32 noundef %add.i) #6
  %cmp.i = icmp ult i32 %call.i.i, %mul
  br i1 %cmp.i, label %calc_code_bit.exit.i.for.body.i_crit_edge, label %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge

calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge: ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_hamming_encode.exit

calc_code_bit.exit.i.for.body.i_crit_edge:        ; preds = %calc_code_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ocfs2_hamming_encode.exit:                        ; preds = %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge
  %parity.addr.0.lcssa.i = phi i32 [ %ecc.0158, %for.cond.preheader.i.ocfs2_hamming_encode.exit_crit_edge ], [ %xor.i, %calc_code_bit.exit.i.ocfs2_hamming_encode.exit_crit_edge ]
  %conv36 = and i32 %parity.addr.0.lcssa.i, 65535
  %inc38 = add nuw nsw i32 %i.1157, 1
  %exitcond166.not = icmp eq i32 %inc38, %nr
  br i1 %exitcond166.not, label %for.body44.preheader, label %ocfs2_hamming_encode.exit.for.body26_crit_edge

ocfs2_hamming_encode.exit.for.body26_crit_edge:   ; preds = %ocfs2_hamming_encode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.body44.preheader:                             ; preds = %ocfs2_hamming_encode.exit
  %conv40 = zext i16 %8 to i32
  %xor = xor i32 %conv36, %conv40
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.preheader
  %i.2161 = phi i32 [ %inc55, %for.body44.for.body44_crit_edge ], [ 0, %for.body44.preheader ]
  %arrayidx45 = getelementptr ptr, ptr %bhs, i32 %i.2161
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx45, align 4
  %b_data46 = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data46, align 4
  %b_size48 = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %b_size48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_size48, align 8
  %mul49 = shl i32 %31, 3
  %mul53 = mul i32 %mul49, %i.2161
  call void @ocfs2_hamming_fix(ptr noundef %29, i32 noundef %mul49, i32 noundef %mul53, i32 noundef %xor)
  %inc55 = add nuw nsw i32 %i.2161, 1
  %exitcond167.not = icmp eq i32 %inc55, %nr
  br i1 %exitcond167.not, label %for.body44.for.body60_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.body44.for.body60_crit_edge:                  ; preds = %for.body44
  br label %for.body60

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body44.for.body60_crit_edge
  %crc.1164 = phi i32 [ %call65, %for.body60.for.body60_crit_edge ], [ -1, %for.body44.for.body60_crit_edge ]
  %i.3163 = phi i32 [ %inc67, %for.body60.for.body60_crit_edge ], [ 0, %for.body44.for.body60_crit_edge ]
  %arrayidx61 = getelementptr ptr, ptr %bhs, i32 %i.3163
  %32 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx61, align 4
  %b_data62 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data62, align 4
  %b_size64 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %b_size64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_size64, align 8
  %call65 = call i32 @crc32_le(i32 noundef %crc.1164, ptr noundef %35, i32 noundef %37) #9
  %inc67 = add nuw nsw i32 %i.3163, 1
  %exitcond168.not = icmp eq i32 %inc67, %nr
  br i1 %exitcond168.not, label %for.end68, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.end68:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %5)
  %cmp69 = icmp eq i32 %call65, %5
  br i1 %cmp69, label %if.then71, label %do.body73

if.then71:                                        ; preds = %for.end68
  br i1 %tobool.not.i, label %if.then71.out_crit_edge, label %if.end.i150

if.then71.out_crit_edge:                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i150:                                      ; preds = %if.then71
  call void @_raw_spin_lock(ptr noundef nonnull %stats) #6
  %b_recover_count.i = getelementptr inbounds %struct.ocfs2_blockcheck_stats, ptr %stats, i32 0, i32 3
  %38 = ptrtoint ptr %b_recover_count.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %b_recover_count.i, align 8
  %inc.i148 = add i64 %39, 1
  store i64 %inc.i148, ptr %b_recover_count.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull %stats) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i148)
  %tobool3.not.i149 = icmp eq i64 %inc.i148, 0
  br i1 %tobool3.not.i149, label %do.body.i151, label %if.end.i150.out_crit_edge

if.end.i150.out_crit_edge:                        ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body.i151:                                     ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i146) #6
  %40 = ptrtoint ptr %_m.i146 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 2305843009213693952, ptr %_m.i146, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i146, ptr noundef nonnull @__func__.ocfs2_blockcheck_inc_recover, i32 noundef 326, ptr noundef nonnull @.str.11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i146) #6
  br label %out

do.body73:                                        ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #6
  %41 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m74, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.ocfs2_block_check_validate_bhs, i32 noundef 547, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %call65) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #6
  br label %out

out:                                              ; preds = %do.body73, %do.body.i151, %if.end.i150.out_crit_edge, %if.then71.out_crit_edge, %for.end.out_crit_edge
  %rc.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ -5, %do.body73 ], [ 0, %if.then71.out_crit_edge ], [ 0, %if.end.i150.out_crit_edge ], [ 0, %do.body.i151 ]
  %42 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %4, ptr %bc, align 4
  %43 = ptrtoint ptr %bc_ecc12 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %7, ptr %bc_ecc12, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_compute_meta_ecc(ptr nocapture noundef readonly %sb, ptr noundef %data, ptr nocapture noundef writeonly %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %7 = ptrtoint ptr %bc to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %bc, align 4
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %6) #9
  %mul.i.i = shl i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not.i.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %for.cond.preheader.i.i.i, !prof !39

for.cond.preheader.i.i.i:                         ; preds = %if.then
  %call.i16.i.i.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i.i.i, i32 %mul.i.i)
  %cmp17.i.i.i = icmp ult i32 %call.i16.i.i.i, %mul.i.i
  br i1 %cmp17.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.ocfs2_block_check_compute.exit_crit_edge

for.cond.preheader.i.i.i.ocfs2_block_check_compute.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_block_check_compute.exit

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

do.body4.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

for.body.i.i.i:                                   ; preds = %calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %call.i20.i.i.i = phi i32 [ %call.i.i.i.i, %calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i16.i.i.i, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %parity.addr.019.i.i.i = phi i32 [ %xor.i.i.i, %calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %p.018.i.i.i = phi i32 [ %p.1.i.i.i.i, %calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %add.i.i.i = add nuw i32 %call.i20.i.i.i, 1
  %add1.i.i.i.i = add i32 %p.018.i.i.i, %add.i.i.i
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge, %for.body.i.i.i
  %b.0.i.i.i.i = phi i32 [ %add1.i.i.i.i, %for.body.i.i.i ], [ %add2.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %p.1.i.i.i.i = phi i32 [ %p.018.i.i.i, %for.body.i.i.i ], [ %inc3.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl nuw i32 1, %p.1.i.i.i.i
  %add2.i.i.i.i = add i32 %b.0.i.i.i.i, 1
  %cmp.i.i.i.i = icmp ult i32 %shl.i.i.i.i, %add2.i.i.i.i
  %inc3.i.i.i.i = add i32 %p.1.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge, label %calc_code_bit.exit.i.i.i

for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.i.i

calc_code_bit.exit.i.i.i:                         ; preds = %for.cond.i.i.i.i
  %xor.i.i.i = xor i32 %b.0.i.i.i.i, %parity.addr.019.i.i.i
  %call.i.i.i.i = tail call i32 @_find_next_bit_le(ptr noundef %data, i32 noundef %mul.i.i, i32 noundef %add.i.i.i) #6
  %cmp.i.i.i = icmp ult i32 %call.i.i.i.i, %mul.i.i
  br i1 %cmp.i.i.i, label %calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge, label %ocfs2_hamming_encode_block.exit.i

calc_code_bit.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %calc_code_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

ocfs2_hamming_encode_block.exit.i:                ; preds = %calc_code_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i.i.i)
  %cmp.i = icmp ugt i32 %xor.i.i.i, 65535
  br i1 %cmp.i, label %do.body3.i, label %ocfs2_hamming_encode_block.exit.i.ocfs2_block_check_compute.exit_crit_edge, !prof !39

ocfs2_hamming_encode_block.exit.i.ocfs2_block_check_compute.exit_crit_edge: ; preds = %ocfs2_hamming_encode_block.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocfs2_block_check_compute.exit

do.body3.i:                                       ; preds = %ocfs2_hamming_encode_block.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/blockcheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

ocfs2_block_check_compute.exit:                   ; preds = %ocfs2_hamming_encode_block.exit.i.ocfs2_block_check_compute.exit_crit_edge, %for.cond.preheader.i.i.i.ocfs2_block_check_compute.exit_crit_edge
  %parity.addr.0.lcssa.i.i16.i = phi i32 [ %xor.i.i.i, %ocfs2_hamming_encode_block.exit.i.ocfs2_block_check_compute.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.ocfs2_block_check_compute.exit_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %call.i) #6
  %9 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bc, align 4
  %conv.i = trunc i32 %parity.addr.0.lcssa.i.i16.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %bc_ecc.i = getelementptr inbounds %struct.ocfs2_block_check, ptr %bc, i32 0, i32 1
  %11 = ptrtoint ptr %bc_ecc.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %bc_ecc.i, align 4
  br label %if.end

if.end:                                           ; preds = %ocfs2_block_check_compute.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_validate_meta_ecc(ptr nocapture noundef readonly %sb, ptr noundef %data, ptr nocapture noundef %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %osb_ecc_stats = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 59
  %call1 = tail call i32 @ocfs2_block_check_validate(ptr noundef %data, i32 noundef %6, ptr noundef %bc, ptr noundef %osb_ecc_stats)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_compute_meta_ecc_bhs(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bhs, i32 noundef %nr, ptr nocapture noundef writeonly %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocfs2_block_check_compute_bhs(ptr noundef %bhs, i32 noundef %nr, ptr noundef %bc)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_validate_meta_ecc_bhs(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bhs, i32 noundef %nr, ptr nocapture noundef %bc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %osb_ecc_stats = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 59
  %call1 = tail call i32 @ocfs2_block_check_validate_bhs(ptr noundef %bhs, i32 noundef %nr, ptr noundef %bc, ptr noundef %osb_ecc_stats)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blockcheck_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @blockcheck_u64_get, ptr noundef null, ptr noundef nonnull @.str.8) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @blockcheck_u64_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %val, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__func__.ocfs2_block_check_validate, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/blockcheck.c", i32 400, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/blockcheck.c", i32 415, i32 2}
!5 = !{ptr @__func__.ocfs2_block_check_validate_bhs, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/blockcheck.c", i32 513, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/blockcheck.c", i32 546, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/blockcheck.c", i32 245, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/blockcheck.c", i32 248, i32 22}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/blockcheck.c", i32 251, i32 22}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/blockcheck.c", i32 254, i32 22}
!18 = !{ptr @blockcheck_fops, !19, !"blockcheck_fops", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/blockcheck.c", i32 230, i32 1}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.ocfs2_blockcheck_inc_check, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/blockcheck.c", i32 294, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.ocfs2_blockcheck_inc_failure, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/blockcheck.c", i32 310, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.ocfs2_blockcheck_inc_recover, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/blockcheck.c", i32 326, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2154760737, i64 2154761223, i64 2154760774, i64 2154760830, i64 2154760864, i64 2154760888, i64 2154760929, i64 2154760950, i64 2154760978, i64 2154761012}
!41 = !{i64 2154762337, i64 2154762823, i64 2154762374, i64 2154762430, i64 2154762464, i64 2154762488, i64 2154762529, i64 2154762550, i64 2154762578, i64 2154762612}
!42 = !{i64 2154773221, i64 2154773707, i64 2154773258, i64 2154773314, i64 2154773348, i64 2154773372, i64 2154773413, i64 2154773434, i64 2154773462, i64 2154773496}
!43 = !{i64 2154776156, i64 2154776642, i64 2154776193, i64 2154776249, i64 2154776283, i64 2154776307, i64 2154776348, i64 2154776369, i64 2154776397, i64 2154776431}
!44 = !{i64 2154779568, i64 2154780054, i64 2154779605, i64 2154779661, i64 2154779695, i64 2154779719, i64 2154779760, i64 2154779781, i64 2154779809, i64 2154779843}
