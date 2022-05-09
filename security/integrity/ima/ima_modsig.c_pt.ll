; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_modsig.c_pt.bc'
source_filename = "../security/integrity/ima/ima_modsig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_signature = type { i8, i8, i8, i8, i8, [3 x i8], i32 }
%struct.modsig = type { ptr, i32, ptr, i32, i32, [0 x i8] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"~Module signature appended~\0A\00", [35 x i8] zeroinitializer }, align 32
@func_tokens = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../security/integrity/ima/ima_modsig.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 54, i32 16 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_read_modsig(i32 noundef %func, ptr noundef %buf, i64 noundef %buf_len, ptr nocapture noundef writeonly %modsig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 41, i64 %buf_len)
  %cmp = icmp slt i64 %buf_len, 41
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx.ext = trunc i64 %buf_len to i32
  %add.ptr = getelementptr i8, ptr %buf, i32 %idx.ext
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -28
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(28) %add.ptr1, ptr noundef nonnull dereferenceable(28) @.str, i32 28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 -12
  %conv = add i32 %idx.ext, -28
  %arrayidx = getelementptr [0 x ptr], ptr @func_tokens, i32 0, i32 %func
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @mod_check_sig(ptr noundef %add.ptr4, i32 noundef %conv, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %sig_len9 = getelementptr inbounds %struct.module_signature, ptr %add.ptr4, i32 0, i32 6
  %2 = ptrtoint ptr %sig_len9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sig_len9, align 4
  %add12 = add i32 %3, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add12, i32 noundef 3520) #9
  %tobool14.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool14.not, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %add.neg = add i32 %idx.ext, -40
  %idx.ext17 = sub i32 %add.neg, %3
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %idx.ext17
  %call19 = tail call ptr @pkcs7_parse_message(ptr noundef %add.ptr18, i32 noundef %3) #5
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call19, ptr %call9.i.i, align 128
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call19 to i32
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %raw_pkcs7 = getelementptr inbounds %struct.modsig, ptr %call9.i.i, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %raw_pkcs7, ptr %add.ptr18, i32 %3)
  %raw_pkcs7_len = getelementptr inbounds %struct.modsig, ptr %call9.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %raw_pkcs7_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %raw_pkcs7_len, align 16
  %hash_algo = getelementptr inbounds %struct.modsig, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %hash_algo, align 4
  %9 = ptrtoint ptr %modsig to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %modsig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then22, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then22 ], [ 0, %if.end25 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_check_sig(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pkcs7_parse_message(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_collect_modsig(ptr noundef %modsig, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_pkcs7_len = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 4
  %0 = ptrtoint ptr %raw_pkcs7_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_pkcs7_len, align 4
  %2 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modsig, align 4
  %4 = trunc i64 %size to i32
  %add1.neg = add i32 %4, -40
  %conv2 = sub i32 %add1.neg, %1
  %call = tail call i32 @pkcs7_supply_detached_data(ptr noundef %3, ptr noundef %buf, i32 noundef %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %modsig, align 4
  %digest = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 2
  %digest_size = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 3
  %hash_algo = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 1
  %call4 = tail call i32 @pkcs7_get_digest(ptr noundef %6, ptr noundef %digest, ptr noundef %digest_size, ptr noundef %hash_algo) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_supply_detached_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_get_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_modsig_verify(ptr noundef %keyring, ptr nocapture noundef readonly %modsig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modsig, align 4
  %call = tail call i32 @verify_pkcs7_message_sig(ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %keyring, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_message_sig(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_get_modsig_digest(ptr nocapture noundef readonly %modsig, ptr nocapture noundef writeonly %algo, ptr nocapture noundef writeonly %digest, ptr nocapture noundef writeonly %digest_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_algo = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 1
  %0 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_algo, align 4
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %algo, align 4
  %digest1 = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 2
  %3 = ptrtoint ptr %digest1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %digest1, align 4
  %5 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %digest, align 4
  %digest_size2 = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 3
  %6 = ptrtoint ptr %digest_size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digest_size2, align 4
  %8 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %digest_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_get_raw_modsig(ptr noundef %modsig, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %data_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_pkcs7 = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %raw_pkcs7, ptr %data, align 4
  %raw_pkcs7_len = getelementptr inbounds %struct.modsig, ptr %modsig, i32 0, i32 4
  %1 = ptrtoint ptr %raw_pkcs7_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %raw_pkcs7_len, align 4
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_free_modsig(ptr noundef %modsig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %modsig, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modsig, align 4
  tail call void @pkcs7_free_message(ptr noundef %1) #5
  tail call void @kfree(ptr noundef nonnull %modsig) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkcs7_free_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_modsig.c", i32 54, i32 16}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
