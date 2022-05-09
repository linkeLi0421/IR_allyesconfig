; ModuleID = '/llk/IR_all_yes/drivers/md/dm-path-selector.c_pt.bc'
source_filename = "../drivers/md/dm-path-selector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_register_path_selector\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_register_path_selector\09\09\09\09"
module asm "\09.long\09__crc_dm_register_path_selector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_register_path_selector:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_register_path_selector\22\09\09\09\09\09"
module asm "__kstrtabns_dm_register_path_selector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_unregister_path_selector\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_unregister_path_selector\09\09\09\09"
module asm "\09.long\09__crc_dm_unregister_path_selector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_unregister_path_selector:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_unregister_path_selector\22\09\09\09\09\09"
module asm "__kstrtabns_dm_unregister_path_selector:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ps_internal = type { %struct.path_selector_type, %struct.list_head }
%struct.path_selector_type = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dm-%s\00", [26 x i8] zeroinitializer }, align 32
@_ps_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @_ps_lock, i64 56), ptr getelementptr (i8, ptr @_ps_lock, i64 56) }, ptr @_ps_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@_path_selectors = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @_path_selectors, ptr @_path_selectors }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_dm_register_path_selector = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_register_path_selector = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_register_path_selector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_register_path_selector to i32), ptr @__kstrtab_dm_register_path_selector, ptr @__kstrtabns_dm_register_path_selector }, section "___ksymtab_gpl+dm_register_path_selector", align 4
@__kstrtab_dm_unregister_path_selector = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_unregister_path_selector = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_unregister_path_selector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_unregister_path_selector to i32), ptr @__kstrtab_dm_unregister_path_selector, ptr @__kstrtabns_dm_unregister_path_selector }, section "___ksymtab_gpl+dm_unregister_path_selector", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_ps_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_ps_lock\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 63, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"_ps_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"_path_selectors\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 26, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [33 x i8] c"../drivers/md/dm-path-selector.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 27, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_dm_register_path_selector, ptr @__ksymtab_dm_unregister_path_selector, ptr @.str, ptr @_ps_lock, ptr @_path_selectors, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ps_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_path_selectors to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_path_selector(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @_ps_lock) #4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ @_path_selectors, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @_path_selectors
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then2_crit_edge, label %for.body.i.i

for.cond.i.i.if.then2_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

for.body.i.i:                                     ; preds = %for.cond.i.i
  %psi.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -52
  %1 = ptrtoint ptr %psi.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psi.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %2) #7
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__find_path_selector_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

__find_path_selector_type.exit.i:                 ; preds = %for.body.i.i
  %psi.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -52
  %tobool.not.i = icmp eq ptr %psi.0.i.i.le, null
  br i1 %tobool.not.i, label %__find_path_selector_type.exit.i.if.then2_crit_edge, label %land.lhs.true.i

__find_path_selector_type.exit.i.if.then2_crit_edge: ; preds = %__find_path_selector_type.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

land.lhs.true.i:                                  ; preds = %__find_path_selector_type.exit.i
  %module.i = getelementptr i8, ptr %.pn.i.i, i32 -48
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #4
  br i1 %call1.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i.if.then2_crit_edge

land.lhs.true.i.if.then2_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then2:                                         ; preds = %land.lhs.true.i.if.then2_crit_edge, %__find_path_selector_type.exit.i.if.then2_crit_edge, %for.cond.i.i.if.then2_crit_edge
  tail call void @up_read(ptr noundef nonnull @_ps_lock) #4
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull %name) #4
  tail call void @down_read(ptr noundef nonnull @_ps_lock) #4
  br label %for.cond.i.i15

for.cond.i.i15:                                   ; preds = %for.body.i.i19.for.cond.i.i15_crit_edge, %if.then2
  %.pn.in.i.i12 = phi ptr [ @_path_selectors, %if.then2 ], [ %.pn.i.i13, %for.body.i.i19.for.cond.i.i15_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i13 = load ptr, ptr %.pn.in.i.i12, align 4
  %cmp.not.i.i14 = icmp eq ptr %.pn.i.i13, @_path_selectors
  br i1 %cmp.not.i.i14, label %for.cond.i.i15.cleanup.sink.split_crit_edge, label %for.body.i.i19

for.cond.i.i15.cleanup.sink.split_crit_edge:      ; preds = %for.cond.i.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.body.i.i19:                                   ; preds = %for.cond.i.i15
  %psi.0.i.i16 = getelementptr i8, ptr %.pn.i.i13, i32 -52
  %6 = ptrtoint ptr %psi.0.i.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psi.0.i.i16, align 4
  %call.i.i17 = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %7) #7
  %tobool.not.i.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i.i18, label %__find_path_selector_type.exit.i22, label %for.body.i.i19.for.cond.i.i15_crit_edge

for.body.i.i19.for.cond.i.i15_crit_edge:          ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i15

__find_path_selector_type.exit.i22:               ; preds = %for.body.i.i19
  %psi.0.i.i16.le = getelementptr i8, ptr %.pn.i.i13, i32 -52
  %tobool.not.i21 = icmp eq ptr %psi.0.i.i16.le, null
  br i1 %tobool.not.i21, label %__find_path_selector_type.exit.i22.cleanup.sink.split_crit_edge, label %land.lhs.true.i26

__find_path_selector_type.exit.i22.cleanup.sink.split_crit_edge: ; preds = %__find_path_selector_type.exit.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true.i26:                                ; preds = %__find_path_selector_type.exit.i22
  call void @__sanitizer_cov_trace_pc() #6
  %module.i23 = getelementptr i8, ptr %.pn.i.i13, i32 -48
  %8 = ptrtoint ptr %module.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i23, align 4
  %call1.i24 = tail call zeroext i1 @try_module_get(ptr noundef %9) #4
  %spec.select.i25 = select i1 %call1.i24, ptr %psi.0.i.i16.le, ptr null
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true.i26, %__find_path_selector_type.exit.i22.cleanup.sink.split_crit_edge, %for.cond.i.i15.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %psi.0.i.i.le, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ null, %__find_path_selector_type.exit.i22.cleanup.sink.split_crit_edge ], [ %spec.select.i25, %land.lhs.true.i26 ], [ null, %for.cond.i.i15.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_ps_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_put_path_selector(ptr noundef readonly %pst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pst, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @_ps_lock) #4
  %0 = ptrtoint ptr %pst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pst, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @_path_selectors, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_path_selectors
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %psi.0.i = getelementptr i8, ptr %.pn.i, i32 -52
  %3 = ptrtoint ptr %psi.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psi.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #7
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_path_selector_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

__find_path_selector_type.exit:                   ; preds = %for.body.i
  %psi.0.i.le = getelementptr i8, ptr %.pn.i, i32 -52
  %tobool1.not = icmp eq ptr %psi.0.i.le, null
  br i1 %tobool1.not, label %__find_path_selector_type.exit.out_crit_edge, label %if.end3

__find_path_selector_type.exit.out_crit_edge:     ; preds = %__find_path_selector_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %__find_path_selector_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  %module = getelementptr i8, ptr %.pn.i, i32 -48
  %5 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %6) #4
  br label %out

out:                                              ; preds = %if.end3, %__find_path_selector_type.exit.out_crit_edge, %for.cond.i.out_crit_edge
  tail call void @up_read(ptr noundef nonnull @_ps_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_register_path_selector(ptr nocapture noundef readonly %pst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i.i, ptr %pst, i32 52)
  tail call void @down_write(ptr noundef nonnull @_ps_lock) #4
  %2 = ptrtoint ptr %pst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pst, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @_path_selectors, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_path_selectors
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %psi.0.i = getelementptr i8, ptr %.pn.i, i32 -52
  %5 = ptrtoint ptr %psi.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psi.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %6) #7
  %tobool.not.i9 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i9, label %__find_path_selector_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

__find_path_selector_type.exit:                   ; preds = %for.body.i
  %psi.0.i.le = getelementptr i8, ptr %.pn.i, i32 -52
  %tobool2.not = icmp eq ptr %psi.0.i.le, null
  br i1 %tobool2.not, label %__find_path_selector_type.exit.if.else_crit_edge, label %if.then3

__find_path_selector_type.exit.if.else_crit_edge: ; preds = %__find_path_selector_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then3:                                         ; preds = %__find_path_selector_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %if.end4

if.else:                                          ; preds = %__find_path_selector_type.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %list = getelementptr inbounds %struct.ps_internal, ptr %call7.i.i.i, i32 0, i32 1
  %7 = load ptr, ptr @_path_selectors, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @_path_selectors, ptr noundef %7) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ps_internal, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @_path_selectors, ptr %prev3.i.i, align 8
  store volatile ptr %list, ptr @_path_selectors, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i, %if.else.if.end4_crit_edge, %if.then3
  %r.0 = phi i32 [ -17, %if.then3 ], [ 0, %if.else.if.end4_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @up_write(ptr noundef nonnull @_ps_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_unregister_path_selector(ptr nocapture noundef readonly %pst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_ps_lock) #4
  %0 = ptrtoint ptr %pst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pst, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_path_selectors, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @_path_selectors
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %psi.0.i = getelementptr i8, ptr %.pn.i, i32 -52
  %3 = ptrtoint ptr %psi.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psi.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #7
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__find_path_selector_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

__find_path_selector_type.exit:                   ; preds = %for.body.i
  %psi.0.i.le = getelementptr i8, ptr %.pn.i, i32 -52
  %tobool.not = icmp eq ptr %psi.0.i.le, null
  br i1 %tobool.not, label %__find_path_selector_type.exit.if.then_crit_edge, label %if.end

__find_path_selector_type.exit.if.then_crit_edge: ; preds = %__find_path_selector_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %__find_path_selector_type.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @up_write(ptr noundef nonnull @_ps_lock) #4
  br label %cleanup

if.end:                                           ; preds = %__find_path_selector_type.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @_ps_lock) #4
  tail call void @kfree(ptr noundef nonnull %psi.0.i.le) #4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-path-selector.c", i32 63, i32 3}
!2 = !{ptr @__ksymtab_dm_register_path_selector, !3, !"__ksymtab_dm_register_path_selector", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-path-selector.c", i32 139, i32 1}
!4 = !{ptr @__ksymtab_dm_unregister_path_selector, !5, !"__ksymtab_dm_unregister_path_selector", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-path-selector.c", i32 140, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-path-selector.c", i32 27, i32 8}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_ps_lock, !7, !"_ps_lock", i1 false, i1 false}
!10 = !{ptr @_path_selectors, !11, !"_path_selectors", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-path-selector.c", i32 26, i32 8}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
