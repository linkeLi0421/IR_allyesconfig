; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_seqnum.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_seqnum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xdr_netobj = type { i32, ptr }

@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@krb5_get_seq_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RPC:       krb5_get_seq_num:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"krb5_get_seq_num\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/sunrpc/auth_gss/gss_krb5_seqnum.c\00", [58 x i8] zeroinitializer }, align 32
@krb5_get_seq_num._entry_ptr = internal global ptr @krb5_get_seq_num._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [41 x i8] c"../net/sunrpc/auth_gss/gss_krb5_seqnum.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 81, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @krb5_get_seq_num._entry, ptr @krb5_get_seq_num._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_get_seq_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krb5_make_seq_num(ptr nocapture noundef readnone %kctx, ptr noundef %key, i32 noundef %direction, i32 noundef %seqnum, ptr noundef %cksum, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %seqnum to i8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %call7.i, align 8
  %shr = lshr i32 %seqnum, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %arrayidx3, align 1
  %shr4 = lshr i32 %seqnum, 16
  %conv6 = trunc i32 %shr4 to i8
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %arrayidx7, align 2
  %shr8 = lshr i32 %seqnum, 24
  %conv10 = trunc i32 %shr8 to i8
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv10, ptr %arrayidx11, align 1
  %conv12 = trunc i32 %direction to i8
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 4
  %5 = zext i8 %conv12 to i32
  %6 = call ptr @memset(ptr %arrayidx13, i32 %5, i32 4)
  %call20 = tail call i32 @krb5_encrypt(ptr noundef %key, ptr noundef %cksum, ptr noundef nonnull %call7.i, ptr noundef %buf, i32 noundef 8) #4
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_encrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krb5_get_seq_num(ptr nocapture noundef readonly %kctx, ptr noundef %cksum, ptr noundef %buf, ptr nocapture noundef writeonly %direction, ptr nocapture noundef writeonly %seqnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %seq = getelementptr inbounds %struct.krb5_ctx, ptr %kctx, i32 0, i32 5
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !15

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3136, i32 noundef 8) #7
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %do.end5.cleanup_crit_edge, label %if.end9

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %call10 = tail call i32 @krb5_decrypt(ptr noundef %1, ptr noundef %cksum, ptr noundef %buf, ptr noundef nonnull %call7.i, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13:                                         ; preds = %if.end9
  %arrayidx = getelementptr i8, ptr %call7.i, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %5 to i32
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 5
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %if.end13
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 6
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %9)
  %cmp21.not = icmp eq i8 %5, %9
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %arrayidx26 = getelementptr i8, ptr %call7.i, i32 7
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %11)
  %cmp28.not = icmp eq i8 %5, %11
  br i1 %cmp28.not, label %if.end31, label %lor.lhs.false23.out_crit_edge

lor.lhs.false23.out_crit_edge:                    ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end31:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %direction, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i, align 8
  %conv35 = zext i8 %14 to i32
  %arrayidx36 = getelementptr i8, ptr %call7.i, i32 1
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv37, 8
  %or = or i32 %shl, %conv35
  %arrayidx38 = getelementptr i8, ptr %call7.i, i32 2
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx38, align 2
  %conv39 = zext i8 %18 to i32
  %shl40 = shl nuw nsw i32 %conv39, 16
  %or41 = or i32 %or, %shl40
  %arrayidx42 = getelementptr i8, ptr %call7.i, i32 3
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %20 to i32
  %shl44 = shl nuw i32 %conv43, 24
  %or45 = or i32 %or41, %shl44
  %21 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or45, ptr %seqnum, align 4
  br label %out

out:                                              ; preds = %if.end31, %lor.lhs.false23.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge
  %code.0 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ 0, %if.end31 ], [ 39756043, %lor.lhs.false23.out_crit_edge ], [ 39756043, %lor.lhs.false.out_crit_edge ], [ 39756043, %if.end13.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %code.0, %out ], [ -12, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_seqnum.c", i32 81, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @krb5_get_seq_num._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @krb5_get_seq_num._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
