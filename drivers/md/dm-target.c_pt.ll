; ModuleID = '/llk/IR_all_yes/drivers/md/dm-target.c_pt.bc'
source_filename = "../drivers/md/dm-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dm_register_target\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_register_target\09\09\09\09"
module asm "\09.long\09__crc_dm_register_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_register_target:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_register_target\22\09\09\09\09\09"
module asm "__kstrtabns_dm_register_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_unregister_target\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_unregister_target\09\09\09\09"
module asm "\09.long\09__crc_dm_unregister_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_unregister_target:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_unregister_target\22\09\09\09\09\09"
module asm "__kstrtabns_dm_unregister_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }

@_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @_lock, i64 56), ptr getelementptr (i8, ptr @_lock, i64 56) }, ptr @_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@_targets = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @_targets, ptr @_targets }, [24 x i8] zeroinitializer }, align 32
@dm_unregister_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\012device-mapper: target: Unregistering unrecognised target: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_unregister_target\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/dm-target.c\00", [41 x i8] zeroinitializer }, align 32
@dm_unregister_target._entry_ptr = internal global ptr @dm_unregister_target._entry, section ".printk_index", align 4
@error_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 8, ptr @.str.6, ptr null, [3 x i32] [i32 1, i32 5, i32 0], ptr @io_err_ctr, ptr @io_err_dtr, ptr @io_err_map, ptr @io_err_clone_and_map_rq, ptr @io_err_release_clone_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @io_err_dax_direct_access, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_dm_register_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_register_target = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_register_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_register_target to i32), ptr @__kstrtab_dm_register_target, ptr @__kstrtabns_dm_register_target }, section "___ksymtab+dm_register_target", align 4
@__kstrtab_dm_unregister_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_unregister_target = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_unregister_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_unregister_target to i32), ptr @__kstrtab_dm_unregister_target, ptr @__kstrtabns_dm_unregister_target }, section "___ksymtab+dm_unregister_target", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dm-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_lock.wait_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_lock\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"_targets\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 16, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 99, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"error_target\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 150, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 17, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [26 x i8] c"../drivers/md/dm-target.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 151, i32 10 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dm_register_target, ptr @__ksymtab_dm_unregister_target, ptr @dm_unregister_target._entry, ptr @dm_unregister_target._entry_ptr, ptr @_lock, ptr @_targets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @error_target, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_targets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_unregister_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_target_type(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @_lock) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ @_targets, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @_targets
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then_crit_edge, label %for.body.i.i

for.cond.i.i.if.then_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name1.i.i = getelementptr i8, ptr %.pn.i.i, i32 -104
  %1 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i.i, align 8
  %call.i.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %2) #10
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__find_target_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__find_target_type.exit.i:                        ; preds = %for.body.i.i
  %tt.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -112
  %tobool.not.i = icmp eq ptr %tt.0.le.i.i, null
  br i1 %tobool.not.i, label %__find_target_type.exit.i.if.then_crit_edge, label %land.lhs.true.i

__find_target_type.exit.i.if.then_crit_edge:      ; preds = %__find_target_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.i:                                  ; preds = %__find_target_type.exit.i
  %module.i = getelementptr i8, ptr %.pn.i.i, i32 -100
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #7
  br i1 %call1.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %__find_target_type.exit.i.if.then_crit_edge, %for.cond.i.i.if.then_crit_edge
  tail call void @up_read(ptr noundef nonnull @_lock) #7
  %call.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name) #7
  tail call void @down_read(ptr noundef nonnull @_lock) #7
  br label %for.cond.i.i8

for.cond.i.i8:                                    ; preds = %for.body.i.i12.for.cond.i.i8_crit_edge, %if.then
  %.pn.in.i.i5 = phi ptr [ @_targets, %if.then ], [ %.pn.i.i6, %for.body.i.i12.for.cond.i.i8_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i6 = load ptr, ptr %.pn.in.i.i5, align 4
  %cmp.not.i.i7 = icmp eq ptr %.pn.i.i6, @_targets
  br i1 %cmp.not.i.i7, label %for.cond.i.i8.if.end_crit_edge, label %for.body.i.i12

for.cond.i.i8.if.end_crit_edge:                   ; preds = %for.cond.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.i12:                                   ; preds = %for.cond.i.i8
  %name1.i.i9 = getelementptr i8, ptr %.pn.i.i6, i32 -104
  %6 = ptrtoint ptr %name1.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1.i.i9, align 8
  %call.i.i10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %7) #10
  %tobool.not.i.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i.i11, label %__find_target_type.exit.i15, label %for.body.i.i12.for.cond.i.i8_crit_edge

for.body.i.i12.for.cond.i.i8_crit_edge:           ; preds = %for.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i8

__find_target_type.exit.i15:                      ; preds = %for.body.i.i12
  %tt.0.le.i.i13 = getelementptr i8, ptr %.pn.i.i6, i32 -112
  %tobool.not.i14 = icmp eq ptr %tt.0.le.i.i13, null
  br i1 %tobool.not.i14, label %__find_target_type.exit.i15.if.end_crit_edge, label %land.lhs.true.i19

__find_target_type.exit.i15.if.end_crit_edge:     ; preds = %__find_target_type.exit.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i19:                                ; preds = %__find_target_type.exit.i15
  call void @__sanitizer_cov_trace_pc() #9
  %module.i16 = getelementptr i8, ptr %.pn.i.i6, i32 -100
  %8 = ptrtoint ptr %module.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i16, align 4
  %call1.i17 = tail call zeroext i1 @try_module_get(ptr noundef %9) #7
  %spec.select.i18 = select i1 %call1.i17, ptr %tt.0.le.i.i13, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i19, %__find_target_type.exit.i15.if.end_crit_edge, %for.cond.i.i8.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %tt.0 = phi ptr [ %tt.0.le.i.i, %land.lhs.true.i.if.end_crit_edge ], [ null, %__find_target_type.exit.i15.if.end_crit_edge ], [ %spec.select.i18, %land.lhs.true.i19 ], [ null, %for.cond.i.i8.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_lock) #7
  ret ptr %tt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_put_target_type(ptr nocapture noundef readonly %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @_lock) #7
  %module = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 2
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %1) #7
  tail call void @up_read(ptr noundef nonnull @_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_target_iterate(ptr nocapture noundef readonly %iter_func, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @_lock) #7
  %.pn7 = load ptr, ptr @_targets, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @_targets
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %tt.0 = getelementptr i8, ptr %.pn9, i32 -112
  tail call void %iter_func(ptr noundef %tt.0, ptr noundef %param) #7
  %0 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @_targets
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_register_target(ptr noundef %tt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_lock) #7
  %name = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_targets, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_targets
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %name1.i = getelementptr i8, ptr %.pn.i, i32 -104
  %3 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_target_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__find_target_type.exit:                          ; preds = %for.body.i
  %tt.0.le.i = getelementptr i8, ptr %.pn.i, i32 -112
  %tobool.not = icmp eq ptr %tt.0.le.i, null
  br i1 %tobool.not, label %__find_target_type.exit.if.else_crit_edge, label %__find_target_type.exit.if.end_crit_edge

__find_target_type.exit.if.end_crit_edge:         ; preds = %__find_target_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__find_target_type.exit.if.else_crit_edge:        ; preds = %__find_target_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %__find_target_type.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %list = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 25
  %5 = load ptr, ptr @_targets, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @_targets, ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 25, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @_targets, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @_targets, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %__find_target_type.exit.if.end_crit_edge
  %rv.0 = phi i32 [ -17, %__find_target_type.exit.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @up_write(ptr noundef nonnull @_lock) #7
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_unregister_target(ptr noundef %tt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_lock) #7
  %name = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_targets, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_targets
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %name1.i = getelementptr i8, ptr %.pn.i, i32 -104
  %3 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_target_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__find_target_type.exit:                          ; preds = %for.body.i
  %tt.0.le.i = getelementptr i8, ptr %.pn.i, i32 -112
  %tobool.not = icmp eq ptr %tt.0.le.i, null
  br i1 %tobool.not, label %__find_target_type.exit.do.end_crit_edge, label %if.end

__find_target_type.exit.do.end_crit_edge:         ; preds = %__find_target_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %__find_target_type.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

if.end:                                           ; preds = %__find_target_type.exit
  %list = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 25, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.target_type, ptr %tt, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @_lock) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_target_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @error_target)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_target_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_unregister_target(ptr noundef nonnull @error_target)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @io_err_ctr(ptr nocapture noundef writeonly %tt, i32 noundef %argc, ptr nocapture noundef readnone %args) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %tt, i32 0, i32 6
  %0 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_discard_bios, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @io_err_dtr(ptr nocapture noundef %tt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @io_err_map(ptr nocapture noundef readnone %tt, ptr nocapture noundef readnone %bio) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @io_err_clone_and_map_rq(ptr nocapture noundef readnone %ti, ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %map_context, ptr nocapture noundef readnone %clone) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @io_err_release_clone_rq(ptr nocapture noundef %clone, ptr nocapture noundef %map_context) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @io_err_dax_direct_access(ptr nocapture noundef readnone %ti, i32 noundef %pgoff, i32 noundef %nr_pages, ptr nocapture noundef readnone %kaddr, ptr nocapture noundef readnone %pfn) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-target.c", i32 99, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_unregister_target._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_unregister_target._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_dm_register_target, !7, !"__ksymtab_dm_register_target", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-target.c", i32 172, i32 1}
!8 = !{ptr @__ksymtab_dm_unregister_target, !9, !"__ksymtab_dm_unregister_target", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-target.c", i32 173, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-target.c", i32 46, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-target.c", i32 17, i32 8}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_lock, !13, !"_lock", i1 false, i1 false}
!16 = !{ptr @_targets, !17, !"_targets", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-target.c", i32 16, i32 8}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-target.c", i32 151, i32 10}
!20 = !{ptr @error_target, !21, !"error_target", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-target.c", i32 150, i32 27}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2155560532, i64 2155561019, i64 2155560569, i64 2155560625, i64 2155560659, i64 2155560683, i64 2155560724, i64 2155560745, i64 2155560773, i64 2155560807}
