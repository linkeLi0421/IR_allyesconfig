; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/tpm_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/tpm_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.asymmetric_key_parser = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.tpm_parse_context = type { ptr, i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }

@tpm_key_parser = internal global { %struct.asymmetric_key_parser, [44 x i8] } { %struct.asymmetric_key_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @tpm_key_preparse }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_tpm_key_parser__213_98_tpm_key_init6 = internal global ptr @tpm_key_init, section ".initcall6.init", align 4
@__exitcall_tpm_key_exit = internal global ptr @tpm_key_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description214 = internal constant [55 x i8] c"tpm_key_parser.description=TPM private key-blob parser\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [58 x i8] c"tpm_key_parser.file=crypto/asymmetric_keys/tpm_key_parser\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [30 x i8] c"tpm_key_parser.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpm_parser\00", [21 x i8] zeroinitializer }, align 32
@asym_tpm_subtype = external dso_local global %struct.asymmetric_key_subtype, align 4
@tpm_decoder = external dso_local constant %struct.asn1_decoder, align 1
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"tpm_key_parser\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 82, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../crypto/asymmetric_keys/tpm_parser.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 84, i32 10 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_tpm_key_exit, ptr @__initcall__kmod_tpm_key_parser__213_98_tpm_key_init6, ptr @tpm_key_exit, ptr @tpm_key_parser, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_key_parser to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tpm_note_key(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %context, align 4
  %blob_len = getelementptr inbounds %struct.tpm_parse_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %blob_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %blob_len, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpm_key_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unregister_asymmetric_key_parser(ptr noundef nonnull @tpm_key_parser) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_asymmetric_key_parser(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_key_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_asymmetric_key_parser(ptr noundef nonnull @tpm_key_parser) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_key_preparse(ptr nocapture noundef %prep) #4 align 64 {
entry:
  %ctx.i = alloca %struct.tpm_parse_context, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %1)
  %cmp = icmp ugt i32 %1, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx.i) #5
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ctx.i, align 8
  %call.i = call i32 @asn1_ber_decoder(ptr noundef nonnull @tpm_decoder, ptr noundef nonnull %ctx.i, ptr noundef %3, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %error.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = getelementptr inbounds %struct.tpm_parse_context, ptr %ctx.i, i32 0, i32 1
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %call1.i = call ptr @tpm_key_create(ptr noundef %7, i32 noundef %9) #5
  br label %tpm_parse.exit

error.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = inttoptr i32 %call.i to ptr
  br label %tpm_parse.exit

tpm_parse.exit:                                   ; preds = %error.i, %if.end.i
  %retval.0.i = phi ptr [ %10, %error.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx.i) #5
  %cmp.i21 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then3, label %if.end5

if.then3:                                         ; preds = %tpm_parse.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end5:                                          ; preds = %tpm_parse.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asym_tpm_subtype to i32))
  %12 = load ptr, ptr @asym_tpm_subtype, align 4
  call void @__module_get(ptr noundef %12) #5
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @asym_tpm_subtype, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx7, align 8
  %15 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %payload, align 8
  %arrayidx11 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx11, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %17 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %quotalen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then3 ], [ 0, %if.end5 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_key_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_asymmetric_key_parser(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_tpm_key_parser__213_98_tpm_key_init6, !1, !"__initcall__kmod_tpm_key_parser__213_98_tpm_key_init6", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 98, i32 1}
!2 = !{ptr @__exitcall_tpm_key_exit, !3, !"__exitcall_tpm_key_exit", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 99, i32 1}
!4 = !{ptr @__UNIQUE_ID_description214, !5, !"__UNIQUE_ID_description214", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 101, i32 1}
!6 = !{ptr @__UNIQUE_ID_file215, !7, !"__UNIQUE_ID_file215", i1 false, i1 false}
!7 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 102, i32 1}
!8 = !{ptr @__UNIQUE_ID_license216, !7, !"__UNIQUE_ID_license216", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 84, i32 10}
!11 = !{ptr @tpm_key_parser, !12, !"tpm_key_parser", i1 false, i1 false}
!12 = !{!"../crypto/asymmetric_keys/tpm_parser.c", i32 82, i32 37}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
