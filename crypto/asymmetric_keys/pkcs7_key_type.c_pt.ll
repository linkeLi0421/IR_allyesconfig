; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/pkcs7_key_type.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_key_type.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }

@__UNIQUE_ID_file110 = internal constant [58 x i8] c"pkcs7_test_key.file=crypto/asymmetric_keys/pkcs7_test_key\00", section ".modinfo", align 1
@__UNIQUE_ID_license111 = internal constant [27 x i8] c"pkcs7_test_key.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description112 = internal constant [51 x i8] c"pkcs7_test_key.description=PKCS#7 testing key type\00", section ".modinfo", align 1
@__UNIQUE_ID_author113 = internal constant [36 x i8] c"pkcs7_test_key.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__param_str_usage = internal constant [21 x i8] c"pkcs7_test_key.usage\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@pkcs7_usage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_usage = internal constant %struct.kernel_param { ptr @__param_str_usage, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.6 { ptr @pkcs7_usage } }, section "__param", align 4
@__UNIQUE_ID_usagetype114 = internal constant [35 x i8] c"pkcs7_test_key.parmtype=usage:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pkcs7_usage115 = internal constant [83 x i8] c"pkcs7_test_key.parm=pkcs7_usage:Usage to specify when verifying the PKCS#7 message\00", section ".modinfo", align 1
@key_type_pkcs7 = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @pkcs7_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_pkcs7_test_key__116_94_pkcs7_key_init6 = internal global ptr @pkcs7_key_init, section ".initcall6.init", align 4
@__exitcall_pkcs7_key_cleanup = internal global ptr @pkcs7_key_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pkcs7_test\00", [21 x i8] zeroinitializer }, align 32
@pkcs7_preparse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013PKCS7key: Invalid usage type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkcs7_preparse\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"crypto/asymmetric_keys/pkcs7_key_type.c\00", [56 x i8] zeroinitializer }, align 32
@pkcs7_preparse._entry_ptr = internal global ptr @pkcs7_preparse._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"pkcs7_usage\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 20, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"key_type_pkcs7\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 70, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 71, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [43 x i8] c"../crypto/asymmetric_keys/pkcs7_key_type.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 56, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author113, ptr @__UNIQUE_ID_description112, ptr @__UNIQUE_ID_file110, ptr @__UNIQUE_ID_license111, ptr @__UNIQUE_ID_pkcs7_usage115, ptr @__UNIQUE_ID_usagetype114, ptr @__exitcall_pkcs7_key_cleanup, ptr @__initcall__kmod_pkcs7_test_key__116_94_pkcs7_key_init6, ptr @__param_usage, ptr @pkcs7_key_cleanup, ptr @pkcs7_preparse._entry, ptr @pkcs7_preparse._entry_ptr, ptr @pkcs7_usage, ptr @key_type_pkcs7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_usage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_pkcs7 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_preparse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pkcs7_key_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_pkcs7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs7_key_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_key_type(ptr noundef nonnull @key_type_pkcs7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs7_preparse(ptr noundef %prep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pkcs7_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp ugt i32 %0, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %3 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datalen, align 4
  %call1 = tail call i32 @verify_pkcs7_signature(ptr noundef null, i32 noundef 0, ptr noundef %2, i32 noundef %4, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef %0, ptr noundef nonnull @pkcs7_view_content, ptr noundef %prep) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_free_preparse(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_read(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_signature(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkcs7_view_content(ptr noundef %ctx, ptr noundef %data, i32 noundef %len, i32 noundef %asn1hdrlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  store ptr %data, ptr %data1, align 8
  store i32 %len, ptr %datalen, align 4
  %call = tail call i32 @user_preparse(ptr noundef %ctx) #4
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %data1, align 8
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %datalen, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_preparse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_file110, !1, !"__UNIQUE_ID_file110", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_license111, !1, !"__UNIQUE_ID_license111", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description112, !4, !"__UNIQUE_ID_description112", i1 false, i1 false}
!4 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 17, i32 1}
!5 = !{ptr @__UNIQUE_ID_author113, !6, !"__UNIQUE_ID_author113", i1 false, i1 false}
!6 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 18, i32 1}
!7 = !{ptr @__param_usage, !8, !"__param_usage", i1 false, i1 false}
!8 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_usagetype114, !8, !"__UNIQUE_ID_usagetype114", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_pkcs7_usage115, !11, !"__UNIQUE_ID_pkcs7_usage115", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 22, i32 1}
!12 = !{ptr @__initcall__kmod_pkcs7_test_key__116_94_pkcs7_key_init6, !13, !"__initcall__kmod_pkcs7_test_key__116_94_pkcs7_key_init6", i1 false, i1 false}
!13 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 94, i32 1}
!14 = !{ptr @__exitcall_pkcs7_key_cleanup, !15, !"__exitcall_pkcs7_key_cleanup", i1 false, i1 false}
!15 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 95, i32 1}
!16 = !{ptr @pkcs7_usage, !17, !"pkcs7_usage", i1 false, i1 false}
!17 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 20, i32 17}
!18 = !{ptr @__param_str_usage, !8, !"__param_str_usage", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 71, i32 12}
!21 = !{ptr @key_type_pkcs7, !22, !"key_type_pkcs7", i1 false, i1 false}
!22 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 70, i32 24}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/asymmetric_keys/pkcs7_key_type.c", i32 56, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pkcs7_preparse._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @pkcs7_preparse._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
