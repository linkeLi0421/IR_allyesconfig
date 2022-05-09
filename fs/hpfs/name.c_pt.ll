; ModuleID = '/llk/IR_all_yes/fs/hpfs/name.c_pt.bc'
source_filename = "../fs/hpfs/name.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }

@hpfs_translate_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013hpfs: Long name flag mismatch - name \00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpfs_translate_name\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hpfs/name.c\00", [17 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry_ptr = internal global ptr @hpfs_translate_name._entry, section ".printk_index", align 4
@hpfs_translate_name._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%c\00", [27 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry_ptr.5 = internal global ptr @hpfs_translate_name._entry.3, section ".printk_index", align 4
@hpfs_translate_name._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01c misidentified as %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry_ptr.8 = internal global ptr @hpfs_translate_name._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\013hpfs: It's nothing serious. It could happen because of bug in OS/2.\0ASet checks=normal to disable this message.\0A\00", [46 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry_ptr.13 = internal global ptr @hpfs_translate_name._entry.11, section ".printk_index", align 4
@hpfs_translate_name._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013hpfs: can't allocate memory for name conversion buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@hpfs_translate_name._entry_ptr.16 = internal global ptr @hpfs_translate_name._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 46]
@__sancov_gen_cov_switch_values.18 = internal global [11 x i64] [i64 9, i64 8, i64 34, i64 42, i64 47, i64 58, i64 60, i64 62, i64 63, i64 92, i64 124]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 46]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 8, i64 43, i64 44, i64 46, i64 59, i64 61, i64 91, i64 93]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 8, i64 43, i64 44, i64 59, i64 61, i64 91, i64 93]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 60, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 62, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 63, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 64, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [18 x i8] c"../fs/hpfs/name.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 68, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @hpfs_translate_name._entry, ptr @hpfs_translate_name._entry.11, ptr @hpfs_translate_name._entry.14, ptr @hpfs_translate_name._entry.3, ptr @hpfs_translate_name._entry.6, ptr @hpfs_translate_name._entry_ptr, ptr @hpfs_translate_name._entry_ptr.13, ptr @hpfs_translate_name._entry_ptr.16, ptr @hpfs_translate_name._entry_ptr.5, ptr @hpfs_translate_name._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_translate_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_translate_name._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_translate_name._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_translate_name._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_translate_name._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @hpfs_upcase(ptr noundef readonly %dir, i8 noundef zeroext %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %a to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %a)
  %0 = icmp sgt i8 %a, -2
  br i1 %0, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add nsw i8 %a, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %1)
  %2 = icmp ult i8 %1, 26
  %sub.i = add nsw i8 %a, -32
  %cond.i = select i1 %2, i8 %sub.i, i8 %a
  br label %upcase.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %dir, null
  br i1 %tobool.not.i, label %if.end.i.upcase.exit_crit_edge, label %if.end15.i

if.end.i.upcase.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %upcase.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub17.i = add nsw i32 %conv.i, -128
  %arrayidx.i = getelementptr i8, ptr %dir, i32 %sub17.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  br label %upcase.exit

upcase.exit:                                      ; preds = %if.end15.i, %if.end.i.upcase.exit_crit_edge, %if.then.i
  %retval.0.i = phi i8 [ %cond.i, %if.then.i ], [ %4, %if.end15.i ], [ %a, %if.end.i.upcase.exit_crit_edge ]
  ret i8 %retval.0.i
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_chk_name(ptr nocapture noundef readonly %name, ptr nocapture noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %1)
  %cmp = icmp ugt i32 %1, 254
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.land.rhs.i.preheader_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true7.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.land.rhs.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %4)
  %cmp1.i = icmp eq i8 %4, 46
  br i1 %cmp1.i, label %land.lhs.true.i.hpfs_adjust_length.exit_crit_edge, label %land.lhs.true.i.land.rhs.i.preheader_crit_edge

land.lhs.true.i.land.rhs.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.preheader

land.lhs.true.i.hpfs_adjust_length.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_adjust_length.exit

land.lhs.true7.i:                                 ; preds = %if.end
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %6)
  %cmp10.i = icmp eq i8 %6, 46
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true7.i.land.rhs.i.preheader_crit_edge

land.lhs.true7.i.land.rhs.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.preheader

land.lhs.true12.i:                                ; preds = %land.lhs.true7.i
  %arrayidx13.i = getelementptr i8, ptr %name, i32 1
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp15.i = icmp eq i8 %8, 46
  br i1 %cmp15.i, label %land.lhs.true12.i.hpfs_adjust_length.exit_crit_edge, label %land.lhs.true12.i.land.rhs.i.preheader_crit_edge

land.lhs.true12.i.land.rhs.i.preheader_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.preheader

land.lhs.true12.i.hpfs_adjust_length.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_adjust_length.exit

land.rhs.i.preheader:                             ; preds = %land.lhs.true12.i.land.rhs.i.preheader_crit_edge, %land.lhs.true7.i.land.rhs.i.preheader_crit_edge, %land.lhs.true.i.land.rhs.i.preheader_crit_edge, %if.end.land.rhs.i.preheader_crit_edge
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.i.preheader
  %9 = phi i32 [ %sub.i, %while.body.i.land.rhs.i_crit_edge ], [ %1, %land.rhs.i.preheader ]
  %sub.i = add i32 %9, -1
  %arrayidx20.i = getelementptr i8, ptr %name, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %11, label %land.rhs.i.hpfs_adjust_length.exit_crit_edge [
    i8 46, label %land.rhs.i.while.body.i_crit_edge
    i8 32, label %land.rhs.i.while.body.i_crit_edge50
  ]

land.rhs.i.while.body.i_crit_edge50:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

land.rhs.i.hpfs_adjust_length.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_adjust_length.exit

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.i.while.body.i_crit_edge50
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i, ptr %len, align 4
  %tobool19.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool19.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

hpfs_adjust_length.exit:                          ; preds = %land.rhs.i.hpfs_adjust_length.exit_crit_edge, %land.lhs.true12.i.hpfs_adjust_length.exit_crit_edge, %land.lhs.true.i.hpfs_adjust_length.exit_crit_edge
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %hpfs_adjust_length.exit.cleanup_crit_edge, label %hpfs_adjust_length.exit.for.body_crit_edge

hpfs_adjust_length.exit.for.body_crit_edge:       ; preds = %hpfs_adjust_length.exit
  br label %for.body

hpfs_adjust_length.exit.cleanup_crit_edge:        ; preds = %hpfs_adjust_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hpfs_adjust_length.exit.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %hpfs_adjust_length.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %name, i32 %i.045
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %.fr = freeze i8 %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.fr)
  %cmp.i = icmp ult i8 %.fr, 32
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %switch.early.test

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test:                                ; preds = %for.body
  %17 = zext i8 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %.fr, label %for.inc [
    i8 124, label %switch.early.test.cleanup_crit_edge
    i8 92, label %switch.early.test.cleanup_crit_edge51
    i8 63, label %switch.early.test.cleanup_crit_edge52
    i8 62, label %switch.early.test.cleanup_crit_edge53
    i8 60, label %switch.early.test.cleanup_crit_edge54
    i8 58, label %switch.early.test.cleanup_crit_edge55
    i8 47, label %switch.early.test.cleanup_crit_edge56
    i8 42, label %switch.early.test.cleanup_crit_edge57
    i8 34, label %switch.early.test.cleanup_crit_edge58
  ]

switch.early.test.cleanup_crit_edge58:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge57:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge56:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge55:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge54:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge53:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge52:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge51:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %switch.early.test
  %inc = add nuw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %.pr
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %18 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %.pr, label %for.end.if.end28_crit_edge [
    i32 1, label %if.then8
    i32 2, label %if.then17
  ]

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then8:                                         ; preds = %for.end
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %20)
  %cmp10 = icmp eq i8 %20, 46
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.if.end28_crit_edge

if.then8.if.end28_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %for.end
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %22)
  %cmp20 = icmp eq i8 %22, 46
  br i1 %cmp20, label %land.lhs.true, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then17
  %arrayidx22 = getelementptr i8, ptr %name, i32 1
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %24)
  %cmp24 = icmp eq i8 %24, 46
  br i1 %cmp24, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.then17.if.end28_crit_edge, %if.then8.if.end28_crit_edge, %for.end.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge51, %switch.early.test.cleanup_crit_edge52, %switch.early.test.cleanup_crit_edge53, %switch.early.test.cleanup_crit_edge54, %switch.early.test.cleanup_crit_edge55, %switch.early.test.cleanup_crit_edge56, %switch.early.test.cleanup_crit_edge57, %switch.early.test.cleanup_crit_edge58, %for.body.cleanup_crit_edge, %hpfs_adjust_length.exit.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -36, %entry.cleanup_crit_edge ], [ -22, %hpfs_adjust_length.exit.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge51 ], [ -22, %switch.early.test.cleanup_crit_edge52 ], [ -22, %switch.early.test.cleanup_crit_edge53 ], [ -22, %switch.early.test.cleanup_crit_edge54 ], [ -22, %switch.early.test.cleanup_crit_edge55 ], [ -22, %switch.early.test.cleanup_crit_edge56 ], [ -22, %switch.early.test.cleanup_crit_edge57 ], [ -22, %switch.early.test.cleanup_crit_edge58 ], [ -22, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_adjust_length(ptr nocapture noundef readonly %name, ptr nocapture noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %1, label %entry.land.rhs.preheader_crit_edge [
    i32 0, label %entry.while.end_crit_edge
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true7
  ]

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.land.rhs.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %4)
  %cmp1 = icmp eq i8 %4, 46
  br i1 %cmp1, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.land.rhs.preheader_crit_edge

land.lhs.true.land.rhs.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true7:                                   ; preds = %entry
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %6)
  %cmp10 = icmp eq i8 %6, 46
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true7.land.rhs.preheader_crit_edge

land.lhs.true7.land.rhs.preheader_crit_edge:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %arrayidx13 = getelementptr i8, ptr %name, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp15 = icmp eq i8 %8, 46
  br i1 %cmp15, label %land.lhs.true12.while.end_crit_edge, label %if.end18

land.lhs.true12.while.end_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end18:                                         ; preds = %land.lhs.true12
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.pr = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool19.not41 = icmp eq i32 %.pr.pr, 0
  br i1 %tobool19.not41, label %if.end18.while.end_crit_edge, label %if.end18.land.rhs.preheader_crit_edge

if.end18.land.rhs.preheader_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.preheader:                               ; preds = %if.end18.land.rhs.preheader_crit_edge, %land.lhs.true7.land.rhs.preheader_crit_edge, %land.lhs.true.land.rhs.preheader_crit_edge, %entry.land.rhs.preheader_crit_edge
  %.ph = phi i32 [ 2, %land.lhs.true7.land.rhs.preheader_crit_edge ], [ 1, %land.lhs.true.land.rhs.preheader_crit_edge ], [ %1, %entry.land.rhs.preheader_crit_edge ], [ %.pr.pr, %if.end18.land.rhs.preheader_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %10 = phi i32 [ %sub, %while.body.land.rhs_crit_edge ], [ %.ph, %land.rhs.preheader ]
  %sub = add i32 %10, -1
  %arrayidx20 = getelementptr i8, ptr %name, i32 %sub
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %12, label %land.rhs.while.end_crit_edge [
    i8 46, label %land.rhs.while.body_crit_edge
    i8 32, label %land.rhs.while.body_crit_edge45
  ]

land.rhs.while.body_crit_edge45:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge45
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %len, align 4
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end18.while.end_crit_edge, %land.lhs.true12.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_translate_name(ptr nocapture noundef readonly %s, ptr noundef readonly %from, i32 noundef %len, i32 noundef %lc, i32 noundef %lng) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chk, align 2
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @hpfs_is_name_long(ptr noundef %from, i32 noundef %len)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %lng)
  %cmp2.not = icmp eq i32 %call1, %lng
  br i1 %cmp2.not, label %if.then.if.end21_crit_edge, label %do.end

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %if.then
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp565.not = icmp eq i32 %len, 0
  br i1 %cmp565.not, label %do.end.do.end13_crit_edge, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  br label %do.end8

do.end.do.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %i.066 = phi i32 [ %inc, %do.end8.do.end8_crit_edge ], [ 0, %do.end.do.end8_crit_edge ]
  %arrayidx = getelementptr i8, ptr %from, i32 %i.066
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #11
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %do.end8.do.end13_crit_edge, label %do.end8.do.end8_crit_edge

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end8.do.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13:                                         ; preds = %do.end8.do.end13_crit_edge, %do.end.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lng)
  %tobool.not = icmp eq i32 %lng, 0
  %cond = select i1 %tobool.not, ptr @.str.10, ptr @.str.9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end13, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lc)
  %tobool22.not = icmp eq i32 %lc, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end8.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end21
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #12
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %do.end30, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3567.not = icmp eq i32 %len, 0
  br i1 %cmp3567.not, label %for.cond34.preheader.cleanup_crit_edge, label %for.body37.preheader

for.cond34.preheader.cleanup_crit_edge:           ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body37.preheader:                             ; preds = %for.cond34.preheader
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sb_cp_table = getelementptr inbounds %struct.hpfs_sb_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sb_cp_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb_cp_table, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br label %for.body37

do.end30:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %cleanup

for.body37:                                       ; preds = %locase.exit.for.body37_crit_edge, %for.body37.preheader
  %i.168 = phi i32 [ %inc43, %locase.exit.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %arrayidx39 = getelementptr i8, ptr %from, i32 %i.168
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx39, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %11)
  %12 = icmp sgt i8 %11, -2
  br i1 %12, label %if.then.i63, label %if.end.i64

if.then.i63:                                      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  %13 = add nsw i8 %11, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %13)
  %14 = icmp ult i8 %13, 26
  %add.i = add i8 %11, 32
  %cond.i = select i1 %14, i8 %add.i, i8 %11
  br label %locase.exit

if.end.i64:                                       ; preds = %for.body37
  br i1 %tobool.not.i, label %if.end.i64.locase.exit_crit_edge, label %if.end15.i

if.end.i64.locase.exit_crit_edge:                 ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %locase.exit

if.end15.i:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %9, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  br label %locase.exit

locase.exit:                                      ; preds = %if.end15.i, %if.end.i64.locase.exit_crit_edge, %if.then.i63
  %retval.0.i = phi i8 [ %cond.i, %if.then.i63 ], [ %16, %if.end15.i ], [ %11, %if.end.i64.locase.exit_crit_edge ]
  %arrayidx41 = getelementptr i8, ptr %call9.i, i32 %i.168
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %retval.0.i, ptr %arrayidx41, align 1
  %inc43 = add nuw i32 %i.168, 1
  %exitcond69.not = icmp eq i32 %inc43, %len
  br i1 %exitcond69.not, label %locase.exit.cleanup_crit_edge, label %locase.exit.for.body37_crit_edge

locase.exit.for.body37_crit_edge:                 ; preds = %locase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

locase.exit.cleanup_crit_edge:                    ; preds = %locase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %locase.exit.cleanup_crit_edge, %do.end30, %for.cond34.preheader.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  %retval.0 = phi ptr [ %from, %do.end30 ], [ %from, %if.end21.cleanup_crit_edge ], [ %call9.i, %for.cond34.preheader.cleanup_crit_edge ], [ %call9.i, %locase.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_is_name_long(ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp59.not = icmp eq i32 %len, 0
  br i1 %cmp59.not, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.060 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %name, i32 %i.060
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %1, label %for.inc [
    i8 46, label %land.rhs.for.end_crit_edge
    i8 43, label %land.rhs.cleanup_crit_edge
    i8 44, label %land.rhs.cleanup_crit_edge71
    i8 59, label %land.rhs.cleanup_crit_edge72
    i8 61, label %land.rhs.cleanup_crit_edge73
    i8 91, label %land.rhs.cleanup_crit_edge74
    i8 93, label %land.rhs.cleanup_crit_edge75
  ]

land.rhs.cleanup_crit_edge75:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.cleanup_crit_edge74:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.cleanup_crit_edge73:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.cleanup_crit_edge72:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.cleanup_crit_edge71:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %len, %for.inc.for.end_crit_edge ], [ %i.060, %land.rhs.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool4.not = icmp eq i32 %i.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.lcssa)
  %cmp5 = icmp sgt i32 %i.0.lcssa, 8
  %or.cond = or i1 %tobool4.not, %cmp5
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %len)
  %cmp9 = icmp eq i32 %i.0.lcssa, %len
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %for.cond13.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond13.preheader:                             ; preds = %if.end8
  %arrayidx22 = getelementptr i8, ptr %name, i32 %i.0.lcssa
  %3 = add nsw i32 %i.0.lcssa, 1
  %umax = call i32 @llvm.umax.i32(i32 %len, i32 %3)
  br label %for.cond13

for.cond13:                                       ; preds = %lor.lhs.false21.for.cond13_crit_edge, %for.cond13.preheader
  %j.0.in = phi i32 [ %j.0, %lor.lhs.false21.for.cond13_crit_edge ], [ %i.0.lcssa, %for.cond13.preheader ]
  %j.0 = add i32 %j.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %len)
  %cmp14 = icmp ult i32 %j.0, %len
  br i1 %cmp14, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr i8, ptr %name, i32 %j.0
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp19 = icmp eq i8 %5, 46
  br i1 %cmp19, label %for.body16.cleanup_crit_edge, label %lor.lhs.false21

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21:                                  ; preds = %for.body16
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx22, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %7, label %lor.lhs.false21.for.cond13_crit_edge [
    i8 43, label %lor.lhs.false21.cleanup_crit_edge
    i8 44, label %lor.lhs.false21.cleanup_crit_edge76
    i8 59, label %lor.lhs.false21.cleanup_crit_edge77
    i8 61, label %lor.lhs.false21.cleanup_crit_edge78
    i8 91, label %lor.lhs.false21.cleanup_crit_edge79
    i8 93, label %lor.lhs.false21.cleanup_crit_edge80
  ]

lor.lhs.false21.cleanup_crit_edge80:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.cleanup_crit_edge79:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.cleanup_crit_edge78:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.cleanup_crit_edge77:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.cleanup_crit_edge76:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21.for.cond13_crit_edge:             ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13

for.end29:                                        ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %umax, %i.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp30 = icmp sgt i32 %sub, 4
  %conv31 = zext i1 %cmp30 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge76, %lor.lhs.false21.cleanup_crit_edge77, %lor.lhs.false21.cleanup_crit_edge78, %lor.lhs.false21.cleanup_crit_edge79, %lor.lhs.false21.cleanup_crit_edge80, %for.body16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %land.rhs.cleanup_crit_edge71, %land.rhs.cleanup_crit_edge72, %land.rhs.cleanup_crit_edge73, %land.rhs.cleanup_crit_edge74, %land.rhs.cleanup_crit_edge75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv31, %for.end29 ], [ 1, %for.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %for.body16.cleanup_crit_edge ], [ 1, %lor.lhs.false21.cleanup_crit_edge ], [ 1, %lor.lhs.false21.cleanup_crit_edge76 ], [ 1, %lor.lhs.false21.cleanup_crit_edge77 ], [ 1, %lor.lhs.false21.cleanup_crit_edge78 ], [ 1, %lor.lhs.false21.cleanup_crit_edge79 ], [ 1, %lor.lhs.false21.cleanup_crit_edge80 ], [ 1, %land.rhs.cleanup_crit_edge ], [ 1, %land.rhs.cleanup_crit_edge71 ], [ 1, %land.rhs.cleanup_crit_edge72 ], [ 1, %land.rhs.cleanup_crit_edge73 ], [ 1, %land.rhs.cleanup_crit_edge74 ], [ 1, %land.rhs.cleanup_crit_edge75 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_compare_names(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %n1, i32 noundef %l1, ptr nocapture noundef readonly %n2, i32 noundef %l2, i32 noundef %last) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %l1, i32 %l2)
  %cmp = icmp ult i32 %l1, %l2
  %0 = tail call i32 @llvm.umin.i32(i32 %l1, i32 %l2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last)
  %tobool.not = icmp eq i32 %last, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp165.not = icmp eq i32 %0, 0
  br i1 %cmp165.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %sb_cp_table = getelementptr inbounds %struct.hpfs_sb_info, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %sb_cp_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sb_cp_table, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br label %for.body

for.cond:                                         ; preds = %upcase.exit54
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %retval.066 = phi i32 [ undef, %for.body.lr.ph ], [ %retval.1, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %n1, i32 %i.067
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %7 = icmp sgt i8 %6, -2
  br i1 %7, label %upcase.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body
  br i1 %tobool.not.i, label %upcase.exit.thread, label %upcase.exit.thread72

upcase.exit:                                      ; preds = %for.body
  %8 = add nsw i8 %6, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %8)
  %9 = icmp ult i8 %8, 26
  %sub.i = add nsw i8 %6, -32
  %cond.i = select i1 %9, i8 %sub.i, i8 %6
  %arrayidx5 = getelementptr i8, ptr %n2, i32 %i.067
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %11)
  %12 = icmp sgt i8 %11, -2
  br i1 %12, label %upcase.exit.if.then.i47_crit_edge, label %if.end.i49

upcase.exit.if.then.i47_crit_edge:                ; preds = %upcase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i47

upcase.exit.thread72:                             ; preds = %if.end.i
  %sub17.i = add nsw i32 %conv.i, -128
  %arrayidx.i = getelementptr i8, ptr %4, i32 %sub17.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %arrayidx574 = getelementptr i8, ptr %n2, i32 %i.067
  %15 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx574, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %16)
  %17 = icmp sgt i8 %16, -2
  br i1 %17, label %upcase.exit.thread72.if.then.i47_crit_edge, label %upcase.exit.thread72.if.end15.i52_crit_edge

upcase.exit.thread72.if.end15.i52_crit_edge:      ; preds = %upcase.exit.thread72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i52

upcase.exit.thread72.if.then.i47_crit_edge:       ; preds = %upcase.exit.thread72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i47

upcase.exit.thread:                               ; preds = %if.end.i
  %arrayidx556 = getelementptr i8, ptr %n2, i32 %i.067
  %18 = ptrtoint ptr %arrayidx556 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx556, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %20 = icmp sgt i8 %19, -2
  br i1 %20, label %upcase.exit.thread.if.then.i47_crit_edge, label %upcase.exit.thread.upcase.exit54_crit_edge

upcase.exit.thread.upcase.exit54_crit_edge:       ; preds = %upcase.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %upcase.exit54

upcase.exit.thread.if.then.i47_crit_edge:         ; preds = %upcase.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i47

if.then.i47:                                      ; preds = %upcase.exit.thread.if.then.i47_crit_edge, %upcase.exit.thread72.if.then.i47_crit_edge, %upcase.exit.if.then.i47_crit_edge
  %21 = phi i8 [ %19, %upcase.exit.thread.if.then.i47_crit_edge ], [ %11, %upcase.exit.if.then.i47_crit_edge ], [ %16, %upcase.exit.thread72.if.then.i47_crit_edge ]
  %retval.0.i60 = phi i8 [ %6, %upcase.exit.thread.if.then.i47_crit_edge ], [ %cond.i, %upcase.exit.if.then.i47_crit_edge ], [ %14, %upcase.exit.thread72.if.then.i47_crit_edge ]
  %22 = add nsw i8 %21, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %22)
  %23 = icmp ult i8 %22, 26
  %sub.i45 = add nsw i8 %21, -32
  %cond.i46 = select i1 %23, i8 %sub.i45, i8 %21
  br label %upcase.exit54

if.end.i49:                                       ; preds = %upcase.exit
  br i1 %tobool.not.i, label %if.end.i49.upcase.exit54_crit_edge, label %if.end.i49.if.end15.i52_crit_edge

if.end.i49.if.end15.i52_crit_edge:                ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i52

if.end.i49.upcase.exit54_crit_edge:               ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %upcase.exit54

if.end15.i52:                                     ; preds = %if.end.i49.if.end15.i52_crit_edge, %upcase.exit.thread72.if.end15.i52_crit_edge
  %retval.0.i7681 = phi i8 [ %cond.i, %if.end.i49.if.end15.i52_crit_edge ], [ %14, %upcase.exit.thread72.if.end15.i52_crit_edge ]
  %conv.i447780.in = phi i8 [ %11, %if.end.i49.if.end15.i52_crit_edge ], [ %16, %upcase.exit.thread72.if.end15.i52_crit_edge ]
  %conv.i447780 = zext i8 %conv.i447780.in to i32
  %sub17.i50 = add nsw i32 %conv.i447780, -128
  %arrayidx.i51 = getelementptr i8, ptr %4, i32 %sub17.i50
  %24 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i51, align 1
  br label %upcase.exit54

upcase.exit54:                                    ; preds = %if.end15.i52, %if.end.i49.upcase.exit54_crit_edge, %if.then.i47, %upcase.exit.thread.upcase.exit54_crit_edge
  %retval.0.i58 = phi i8 [ %retval.0.i60, %if.then.i47 ], [ %retval.0.i7681, %if.end15.i52 ], [ %cond.i, %if.end.i49.upcase.exit54_crit_edge ], [ %6, %upcase.exit.thread.upcase.exit54_crit_edge ]
  %retval.0.i53 = phi i8 [ %cond.i46, %if.then.i47 ], [ %25, %if.end15.i52 ], [ %11, %if.end.i49.upcase.exit54_crit_edge ], [ %19, %upcase.exit.thread.upcase.exit54_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i58, i8 %retval.0.i53)
  %cmp8 = icmp ult i8 %retval.0.i58, %retval.0.i53
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i58, i8 %retval.0.i53)
  %cmp14 = icmp ugt i8 %retval.0.i58, %retval.0.i53
  %.retval.0 = select i1 %cmp14, i32 1, i32 %retval.066
  %retval.1 = select i1 %cmp8, i32 -1, i32 %.retval.0
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i58, i8 %retval.0.i53)
  %.not = icmp eq i8 %retval.0.i58, %retval.0.i53
  br i1 %.not, label %for.cond, label %upcase.exit54.cleanup27_crit_edge

upcase.exit54.cleanup27_crit_edge:                ; preds = %upcase.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  br i1 %cmp, label %for.end.cleanup27_crit_edge, label %if.end22

for.end.cleanup27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %l1, i32 %l2)
  %cmp23 = icmp ugt i32 %l1, %l2
  %.42 = zext i1 %cmp23 to i32
  br label %cleanup27

cleanup27:                                        ; preds = %if.end22, %for.end.cleanup27_crit_edge, %upcase.exit54.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ -1, %entry.cleanup27_crit_edge ], [ -1, %for.end.cleanup27_crit_edge ], [ %.42, %if.end22 ], [ %retval.1, %upcase.exit54.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/name.c", i32 60, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hpfs_translate_name._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hpfs_translate_name._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/name.c", i32 62, i32 4}
!8 = !{ptr @hpfs_translate_name._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hpfs_translate_name._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/name.c", i32 63, i32 3}
!12 = !{ptr @hpfs_translate_name._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hpfs_translate_name._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/name.c", i32 64, i32 3}
!18 = !{ptr @hpfs_translate_name._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hpfs_translate_name._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hpfs/name.c", i32 68, i32 3}
!22 = !{ptr @hpfs_translate_name._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hpfs_translate_name._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
