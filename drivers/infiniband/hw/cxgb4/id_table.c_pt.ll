; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/id_table.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/id_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@c4iw_id_table_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&alloc->lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/id_table.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 92, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @c4iw_id_table_alloc.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_id_table_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_id_alloc(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #2
  %table = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %max = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 3
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %last = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 2
  %4 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last, align 4
  %call5 = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef %5) #2
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %7)
  %cmp7.not = icmp ult i32 %call5, %7
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %call11 = tail call i32 @_find_first_zero_bit_be(ptr noundef %9, i32 noundef %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %obj.0 = phi i32 [ %call11, %if.then ], [ %call5, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %obj.0, i32 %11)
  %cmp13 = icmp ult i32 %obj.0, %11
  br i1 %cmp13, label %if.then15, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end33

if.then15:                                        ; preds = %if.end
  %12 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alloc, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #4
  %call18 = tail call i32 @prandom_u32() #2
  %rem = and i32 %call18, 15
  %14 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last, align 4
  %add = add i32 %15, %rem
  br label %if.end22

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #4
  %add20 = add nuw i32 %obj.0, 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %storemerge = phi i32 [ %add20, %if.else ], [ %add, %if.then17 ]
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %17)
  %cmp25.not = icmp ult i32 %storemerge, %17
  %spec.store.select = select i1 %cmp25.not, i32 %storemerge, i32 0
  %18 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select, ptr %last, align 4
  %19 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table, align 4
  %rem.i = and i32 %obj.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %obj.0, 5
  %add.ptr.i = getelementptr i32, ptr %20, i32 %div2.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %22, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %start = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start, align 4
  %add31 = add i32 %24, %obj.0
  br label %if.end33

if.end33:                                         ; preds = %if.end22, %if.end.if.end33_crit_edge
  %obj.1 = phi i32 [ %add31, %if.end22 ], [ -1, %if.end.if.end33_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #2
  ret i32 %obj.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_id_free(ptr noundef %alloc, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %sub = sub i32 %obj, %1
  %lock = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #2
  %table = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 5
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %3, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_id_table_alloc(ptr noundef %alloc, i32 noundef %start, i32 noundef %num, i32 noundef %reserved, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %start1 = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 1
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %start, ptr %start1, align 4
  %1 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %flags, ptr %alloc, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @prandom_u32() #2
  %rem = and i32 %call, 15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rem.sink = phi i32 [ %rem, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rem.sink, ptr %2, align 4
  %max = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 3
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num, ptr %max, align 4
  %lock = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @c4iw_id_table_alloc.__key, i16 noundef signext 3) #2
  %call5 = tail call ptr @bitmap_zalloc(i32 noundef %num, i32 noundef 3264) #2
  %table = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 5
  %5 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %table, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc, align 4
  %and11 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else11.i, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.else11.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @__bitmap_set(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef %reserved) #2
  br label %return

return:                                           ; preds = %if.else11.i, %if.end9.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.return_crit_edge ], [ 0, %if.end9.return_crit_edge ], [ 0, %if.else11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_id_table_free(ptr nocapture noundef readonly %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.c4iw_id_table, ptr %alloc, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  tail call void @bitmap_free(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @c4iw_id_table_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/id_table.c", i32 92, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
