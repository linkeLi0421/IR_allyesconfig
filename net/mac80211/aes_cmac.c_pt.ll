; ModuleID = '/llk/IR_all_yes/net/mac80211/aes_cmac.c_pt.bc'
source_filename = "../net/mac80211/aes_cmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@zero = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmac(aes)\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 23, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../net/mac80211/aes_cmac.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 76, i32 27 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @zero, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac(ptr noundef %tfm, ptr noundef %aad, ptr noundef %data, i32 noundef %data_len, ptr nocapture noundef writeonly %mic) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %out = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #3
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #3
  %1 = call ptr @memset(ptr %out, i32 255, i32 16)
  %2 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tfm, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -256
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %8(ptr noundef nonnull %__desc_desc) #3
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  %call2 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %aad, i32 noundef 20) #3
  %9 = ptrtoint ptr %aad to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %aad, align 2
  %11 = and i16 %10, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp.i = icmp eq i16 %11, -32768
  br i1 %cmp.i, label %if.then, label %crypto_shash_init.exit.if.end_crit_edge

crypto_shash_init.exit.if.end_crit_edge:          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull @zero, i32 noundef 8) #3
  %add.ptr = getelementptr i8, ptr %data, i32 8
  br label %if.end

if.end:                                           ; preds = %if.then, %crypto_shash_init.exit.if.end_crit_edge
  %.sink = phi i32 [ -16, %if.then ], [ -8, %crypto_shash_init.exit.if.end_crit_edge ]
  %data.sink = phi ptr [ %add.ptr, %if.then ], [ %data, %crypto_shash_init.exit.if.end_crit_edge ]
  %sub7 = add i32 %.sink, %data_len
  %call8 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data.sink, i32 noundef %sub7) #3
  %call10 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef nonnull @zero, i32 noundef 8, ptr noundef nonnull %out) #3
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %out, align 8
  %14 = ptrtoint ptr %mic to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %mic, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #3
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac_256(ptr noundef %tfm, ptr noundef %aad, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #3
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %1 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tfm, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -256
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %7(ptr noundef nonnull %__desc_desc) #3
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  %call2 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %aad, i32 noundef 20) #3
  %8 = ptrtoint ptr %aad to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %aad, align 2
  %10 = and i16 %9, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp.i = icmp eq i16 %10, -32768
  br i1 %cmp.i, label %if.then, label %crypto_shash_init.exit.if.end_crit_edge

crypto_shash_init.exit.if.end_crit_edge:          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull @zero, i32 noundef 8) #3
  %add.ptr = getelementptr i8, ptr %data, i32 8
  br label %if.end

if.end:                                           ; preds = %if.then, %crypto_shash_init.exit.if.end_crit_edge
  %.sink = phi i32 [ -24, %if.then ], [ -16, %crypto_shash_init.exit.if.end_crit_edge ]
  %data.sink = phi ptr [ %add.ptr, %if.then ], [ %data, %crypto_shash_init.exit.if.end_crit_edge ]
  %sub7 = add i32 %.sink, %data_len
  %call8 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data.sink, i32 noundef %sub7) #3
  %call9 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef nonnull @zero, i32 noundef 16, ptr noundef %mic) #3
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee80211_aes_cmac_key_setup(ptr noundef %key, i32 noundef %key_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup6_crit_edge, label %if.then

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup6

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef %key, i32 noundef %key_len) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup6_crit_edge, label %cleanup

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup6

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #3
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup6

cleanup6:                                         ; preds = %cleanup, %if.then.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.1 = phi ptr [ %0, %cleanup ], [ %call, %entry.cleanup6_crit_edge ], [ %call, %if.then.cleanup6_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_cmac_key_free(ptr noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %tfm, ptr noundef %base.i.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/aes_cmac.c", i32 76, i32 27}
!2 = !{ptr @zero, !3, !"zero", i1 false, i1 false}
!3 = !{!"../net/mac80211/aes_cmac.c", i32 23, i32 17}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
