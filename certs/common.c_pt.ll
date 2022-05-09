; ModuleID = '/llk/IR_all_yes/certs/common.c_pt.bc'
source_filename = "../certs/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asymmetric\00", [21 x i8] zeroinitializer }, align 32
@load_certificate_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Problem loading in-kernel X.509 certificate (%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"load_certificate_list\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"certs/common.c\00", [17 x i8] zeroinitializer }, align 32
@load_certificate_list._entry_ptr = internal global ptr @load_certificate_list._entry, section ".printk_index", align 4
@load_certificate_list._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015Loaded X.509 cert '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@load_certificate_list._entry_ptr.6 = internal global ptr @load_certificate_list._entry.4, section ".printk_index", align 4
@load_certificate_list._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Problem parsing in-kernel X.509 certificate list\0A\00", [44 x i8] zeroinitializer }, align 32
@load_certificate_list._entry_ptr.9 = internal global ptr @load_certificate_list._entry.7, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 32, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 42, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 45, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [18 x i8] c"../certs/common.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 55, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @load_certificate_list._entry, ptr @load_certificate_list._entry.4, ptr @load_certificate_list._entry.7, ptr @load_certificate_list._entry_ptr, ptr @load_certificate_list._entry_ptr.6, ptr @load_certificate_list._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_certificate_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_certificate_list._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_certificate_list._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @load_certificate_list(ptr noundef %cert_list, i32 noundef %list_size, ptr noundef %keyring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cert_list, i32 %list_size
  %cmp59 = icmp ugt ptr %add.ptr, %cert_list
  br i1 %cmp59, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %0 = ptrtoint ptr %keyring to i32
  %or.i = or i32 %0, 1
  %1 = inttoptr i32 %or.i to ptr
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %p.060 = phi ptr [ %cert_list, %while.body.lr.ph ], [ %add.ptr33, %if.end32.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %p.060 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub)
  %cmp1 = icmp slt i32 %sub.ptr.sub, 4
  br i1 %cmp1, label %while.body.do.end36_crit_edge, label %if.end

while.body.do.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end36

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %p.060 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.060, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %3)
  %cmp2.not = icmp eq i8 %3, 48
  br i1 %cmp2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %p.060, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %5)
  %cmp6.not = icmp eq i8 %5, -126
  br i1 %cmp6.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.do.end36_crit_edge

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end36

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %arrayidx10 = getelementptr i8, ptr %p.060, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %arrayidx12 = getelementptr i8, ptr %p.060, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %or = or i32 %shl, %conv13
  %add = add nuw nsw i32 %or, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub)
  %cmp17 = icmp ugt i32 %add, %sub.ptr.sub
  br i1 %cmp17, label %if.end9.do.end36_crit_edge, label %if.end20

if.end9.do.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end36

if.end20:                                         ; preds = %if.end9
  %call21 = tail call ptr @key_create_or_update(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef null, ptr noundef %p.060, i32 noundef %add, i32 noundef 520290304, i32 noundef 14) #3
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %call21 to i32
  br i1 %cmp.i, label %do.end, label %do.end28

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10) #6
  br label %if.end32

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %and.i = and i32 %10, -2
  %11 = inttoptr i32 %and.i to ptr
  %description = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 16, i32 0, i32 4
  %12 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %description, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %13) #6
  tail call void @key_put(ptr noundef %11) #3
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %do.end
  %add.ptr33 = getelementptr i8, ptr %p.060, i32 %add
  %cmp = icmp ult ptr %add.ptr33, %add.ptr
  br i1 %cmp, label %if.end32.while.body_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

do.end36:                                         ; preds = %if.end9.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %while.body.do.end36_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../certs/common.c", i32 32, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../certs/common.c", i32 42, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @load_certificate_list._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @load_certificate_list._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../certs/common.c", i32 45, i32 4}
!10 = !{ptr @load_certificate_list._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @load_certificate_list._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../certs/common.c", i32 55, i32 2}
!14 = !{ptr @load_certificate_list._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @load_certificate_list._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
