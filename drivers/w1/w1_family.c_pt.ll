; ModuleID = '/llk/IR_all_yes/drivers/w1/w1_family.c_pt.bc'
source_filename = "../drivers/w1/w1_family.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+w1_register_family\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_register_family\09\09\09\09"
module asm "\09.long\09__crc_w1_register_family\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_register_family\22\09\09\09\09\09"
module asm "__kstrtabns_w1_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+w1_unregister_family\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_unregister_family\09\09\09\09"
module asm "\09.long\09__crc_w1_unregister_family\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_unregister_family\22\09\09\09\09\09"
module asm "__kstrtabns_w1_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_flock\00", [23 x i8] zeroinitializer }, align 32
@w1_flock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@w1_families = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @w1_families, ptr @w1_families }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_w1_register_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_register_family = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_register_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_register_family to i32), ptr @__kstrtab_w1_register_family, ptr @__kstrtabns_w1_register_family }, section "___ksymtab+w1_register_family", align 4
@w1_unregister_family._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Waiting for family %u to become free: refcnt=%d.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w1_unregister_family\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/w1/w1_family.c\00", [41 x i8] zeroinitializer }, align 32
@w1_unregister_family._entry_ptr = internal global ptr @w1_unregister_family._entry, section ".printk_index", align 4
@__kstrtab_w1_unregister_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_unregister_family = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_unregister_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_unregister_family to i32), ptr @__kstrtab_w1_unregister_family, ptr @__kstrtabns_w1_unregister_family }, section "___ksymtab+w1_unregister_family", align 4
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"w1_flock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 14, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"w1_families\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [26 x i8] c"../drivers/w1/w1_family.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 74, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_w1_register_family, ptr @__ksymtab_w1_unregister_family, ptr @w1_unregister_family._entry, ptr @w1_unregister_family._entry_ptr, ptr @.str, ptr @w1_flock, ptr @w1_families, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_flock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_families to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_unregister_family._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_register_family(ptr noundef %newf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @w1_flock) #6
  %fid1 = getelementptr inbounds %struct.w1_family, ptr %newf, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ent.0.in = phi ptr [ @w1_families, %entry ], [ %ent.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ent.0 = load ptr, ptr %ent.0.in, align 4
  %cmp.i.not = icmp eq ptr %ent.0, @w1_families
  br i1 %cmp.i.not, label %if.then6, label %for.body

for.body:                                         ; preds = %for.cond
  %fid = getelementptr inbounds %struct.w1_family, ptr %ent.0, i32 0, i32 1
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fid, align 4
  %3 = ptrtoint ptr %fid1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fid1, align 4
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %for.body.if.end7_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %for.cond
  %refcnt = getelementptr inbounds %struct.w1_family, ptr %newf, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %refcnt, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @w1_families, i32 0, i32 1), align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %newf, ptr noundef %6, ptr noundef nonnull @w1_families) #6
  br i1 %call.i.i15, label %if.end.i.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %newf, ptr getelementptr inbounds (%struct.list_head, ptr @w1_families, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %newf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @w1_families, ptr %newf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %newf, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %newf, ptr %6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.then6.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %ret.017 = phi i32 [ 0, %if.then6.if.end7_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.if.end7_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @w1_flock) #6
  tail call void @w1_reconnect_slaves(ptr noundef %newf, i32 noundef 1) #6
  ret i32 %ret.017
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_reconnect_slaves(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_unregister_family(ptr noundef %fent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @w1_flock) #6
  %fid1 = getelementptr inbounds %struct.w1_family, ptr %fent, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ent.0.in = phi ptr [ @w1_families, %entry ], [ %ent.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ent.0 = load ptr, ptr %ent.0.in, align 4
  %cmp.i.not = icmp eq ptr %ent.0, @w1_families
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fid = getelementptr inbounds %struct.w1_family, ptr %ent.0, i32 0, i32 1
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fid, align 4
  %3 = ptrtoint ptr %fid1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fid1, align 4
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fent) #6
  br i1 %call.i.i27, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fent, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %fent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fent, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %fent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fent, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fent, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @w1_flock) #6
  tail call void @w1_reconnect_slaves(ptr noundef %fent, i32 noundef 0) #6
  %refcnt = getelementptr inbounds %struct.w1_family, ptr %fent, i32 0, i32 4
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #6
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not29 = icmp eq i32 %14, 0
  br i1 %tobool6.not29, label %for.end.while.end_crit_edge, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  br label %do.end

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %for.end.do.end_crit_edge
  %15 = ptrtoint ptr %fid1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fid1, align 4
  %conv9 = zext i8 %16 to i32
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #6
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcnt, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv9, i32 noundef %18) #9
  %call13 = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end.if.end17_crit_edge, label %if.then15

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  tail call void @flush_signals(ptr noundef %22) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.if.end17_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #6
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %refcnt, align 4
  %tobool6.not = icmp eq i32 %24, 0
  br i1 %tobool6.not, label %if.end17.while.end_crit_edge, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %for.end.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @w1_family_registered(i8 noundef zeroext %fid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ent.0.in = phi ptr [ @w1_families, %entry ], [ %ent.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ent.0 = load ptr, ptr %ent.0.in, align 4
  %cmp.i.not = icmp eq ptr %ent.0, @w1_families
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fid1 = getelementptr inbounds %struct.w1_family, ptr %ent.0, i32 0, i32 1
  %1 = ptrtoint ptr %fid1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fid1, align 4
  %cmp = icmp eq i8 %2, %fid
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %ent.0, %for.body.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_family_put(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @w1_flock) #6
  %refcnt.i = getelementptr inbounds %struct.w1_family, ptr %f, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #6, !srcloc !25
  tail call void @_raw_spin_unlock(ptr noundef nonnull @w1_flock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__w1_family_get(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  %refcnt = getelementptr inbounds %struct.w1_family, ptr %f, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/w1/w1_family.c", i32 14, i32 1}
!2 = !{ptr @w1_flock, !1, !"w1_flock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_w1_register_family, !4, !"__ksymtab_w1_register_family", i1 false, i1 false}
!4 = !{!"../drivers/w1/w1_family.c", i32 48, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/w1/w1_family.c", i32 74, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @w1_unregister_family._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @w1_unregister_family._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_w1_unregister_family, !12, !"__ksymtab_w1_unregister_family", i1 false, i1 false}
!12 = !{!"../drivers/w1/w1_family.c", i32 81, i32 1}
!13 = !{ptr @w1_families, !14, !"w1_families", i1 false, i1 false}
!14 = !{!"../drivers/w1/w1_family.c", i32 15, i32 8}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148480424, i64 2148480450, i64 2148480479, i64 2148480513, i64 2148480544, i64 2148480567}
!26 = !{i64 2152519047}
!27 = !{i64 2148477959, i64 2148477985, i64 2148478014, i64 2148478048, i64 2148478079, i64 2148478102}
!28 = !{i64 2152519224}
