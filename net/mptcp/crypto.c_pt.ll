; ModuleID = '/llk/IR_all_yes/net/mptcp/crypto.c_pt.bc'
source_filename = "../net/mptcp/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@mptcp_crypto_hmac_sha.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mptcp/crypto.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/mptcp/crypto.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 51, i32 6 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_crypto_key_sha(i64 noundef %key, ptr noundef writeonly %token, ptr noundef writeonly %idsn) local_unnamed_addr #0 align 64 {
entry:
  %mptcp_hashed_key = alloca [8 x i32], align 4
  %input = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mptcp_hashed_key) #4
  %0 = getelementptr inbounds [8 x i32], ptr %mptcp_hashed_key, i32 0, i32 6
  %1 = call ptr @memset(ptr %mptcp_hashed_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input) #4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %key, ptr %input, align 8
  call void @sha256(ptr noundef nonnull %input, i32 noundef 8, ptr noundef nonnull %mptcp_hashed_key) #4
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %mptcp_hashed_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mptcp_hashed_key, align 4
  %5 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %token, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %idsn, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %0, align 4
  %8 = ptrtoint ptr %idsn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %idsn, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mptcp_hashed_key) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_crypto_hmac_sha(i64 noundef %key1, i64 noundef %key2, ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %hmac) local_unnamed_addr #0 align 64 {
entry:
  %input = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %input) #4
  %0 = getelementptr inbounds i8, ptr %input, i32 64
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp sgt i32 %len, 32
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b113 = load i1, ptr @mptcp_crypto_hmac_sha.__already_done, align 1
  br i1 %.b113, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !12

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mptcp_crypto_hmac_sha.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef null) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %key1be.sroa.0.0.extract.shift = lshr i64 %key1, 56
  %key1be.sroa.0.0.extract.trunc = trunc i64 %key1be.sroa.0.0.extract.shift to i8
  %key1be.sroa.6.0.extract.shift = lshr i64 %key1, 48
  %key1be.sroa.6.0.extract.trunc = trunc i64 %key1be.sroa.6.0.extract.shift to i8
  %key1be.sroa.9.0.extract.shift = lshr i64 %key1, 40
  %key1be.sroa.9.0.extract.trunc = trunc i64 %key1be.sroa.9.0.extract.shift to i8
  %key1be.sroa.12.0.extract.shift = lshr i64 %key1, 32
  %key1be.sroa.12.0.extract.trunc = trunc i64 %key1be.sroa.12.0.extract.shift to i8
  %key1be.sroa.15.0.extract.shift = lshr i64 %key1, 24
  %key1be.sroa.15.0.extract.trunc = trunc i64 %key1be.sroa.15.0.extract.shift to i8
  %key1be.sroa.18.0.extract.shift = lshr i64 %key1, 16
  %key1be.sroa.18.0.extract.trunc = trunc i64 %key1be.sroa.18.0.extract.shift to i8
  %key1be.sroa.21.0.extract.shift = lshr i64 %key1, 8
  %key1be.sroa.21.0.extract.trunc = trunc i64 %key1be.sroa.21.0.extract.shift to i8
  %key1be.sroa.24.0.extract.trunc = trunc i64 %key1 to i8
  %key2be.sroa.0.0.extract.shift = lshr i64 %key2, 56
  %key2be.sroa.0.0.extract.trunc = trunc i64 %key2be.sroa.0.0.extract.shift to i8
  %key2be.sroa.6.0.extract.shift = lshr i64 %key2, 48
  %key2be.sroa.6.0.extract.trunc = trunc i64 %key2be.sroa.6.0.extract.shift to i8
  %key2be.sroa.9.0.extract.shift = lshr i64 %key2, 40
  %key2be.sroa.9.0.extract.trunc = trunc i64 %key2be.sroa.9.0.extract.shift to i8
  %key2be.sroa.12.0.extract.shift = lshr i64 %key2, 32
  %key2be.sroa.12.0.extract.trunc = trunc i64 %key2be.sroa.12.0.extract.shift to i8
  %key2be.sroa.15.0.extract.shift = lshr i64 %key2, 24
  %key2be.sroa.15.0.extract.trunc = trunc i64 %key2be.sroa.15.0.extract.shift to i8
  %key2be.sroa.18.0.extract.shift = lshr i64 %key2, 16
  %key2be.sroa.18.0.extract.trunc = trunc i64 %key2be.sroa.18.0.extract.shift to i8
  %key2be.sroa.21.0.extract.shift = lshr i64 %key2, 8
  %key2be.sroa.21.0.extract.trunc = trunc i64 %key2be.sroa.21.0.extract.shift to i8
  %key2be.sroa.24.0.extract.trunc = trunc i64 %key2 to i8
  %2 = getelementptr inbounds i8, ptr %input, i32 16
  %3 = call ptr @memset(ptr %2, i32 54, i32 48)
  %xor112 = xor i8 %key1be.sroa.0.0.extract.trunc, 54
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %xor112, ptr %input, align 1
  %arrayidx41.1 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 1
  %xor112.1 = xor i8 %key1be.sroa.6.0.extract.trunc, 54
  %5 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %xor112.1, ptr %arrayidx41.1, align 1
  %arrayidx41.2 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 2
  %xor112.2 = xor i8 %key1be.sroa.9.0.extract.trunc, 54
  %6 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %xor112.2, ptr %arrayidx41.2, align 1
  %arrayidx41.3 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 3
  %xor112.3 = xor i8 %key1be.sroa.12.0.extract.trunc, 54
  %7 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %xor112.3, ptr %arrayidx41.3, align 1
  %arrayidx41.4 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 4
  %xor112.4 = xor i8 %key1be.sroa.15.0.extract.trunc, 54
  %8 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %xor112.4, ptr %arrayidx41.4, align 1
  %arrayidx41.5 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 5
  %xor112.5 = xor i8 %key1be.sroa.18.0.extract.trunc, 54
  %9 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %xor112.5, ptr %arrayidx41.5, align 1
  %arrayidx41.6 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 6
  %xor112.6 = xor i8 %key1be.sroa.21.0.extract.trunc, 54
  %10 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %xor112.6, ptr %arrayidx41.6, align 1
  %arrayidx41.7 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 7
  %xor112.7 = xor i8 %key1be.sroa.24.0.extract.trunc, 54
  %11 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %xor112.7, ptr %arrayidx41.7, align 1
  %arrayidx50 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 8
  %xor52111 = xor i8 %key2be.sroa.0.0.extract.trunc, 54
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %xor52111, ptr %arrayidx50, align 1
  %arrayidx50.1 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 9
  %xor52111.1 = xor i8 %key2be.sroa.6.0.extract.trunc, 54
  %13 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %xor52111.1, ptr %arrayidx50.1, align 1
  %arrayidx50.2 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 10
  %xor52111.2 = xor i8 %key2be.sroa.9.0.extract.trunc, 54
  %14 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %xor52111.2, ptr %arrayidx50.2, align 1
  %arrayidx50.3 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 11
  %xor52111.3 = xor i8 %key2be.sroa.12.0.extract.trunc, 54
  %15 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %xor52111.3, ptr %arrayidx50.3, align 1
  %arrayidx50.4 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 12
  %xor52111.4 = xor i8 %key2be.sroa.15.0.extract.trunc, 54
  %16 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %xor52111.4, ptr %arrayidx50.4, align 1
  %arrayidx50.5 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 13
  %xor52111.5 = xor i8 %key2be.sroa.18.0.extract.trunc, 54
  %17 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %xor52111.5, ptr %arrayidx50.5, align 1
  %arrayidx50.6 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 14
  %xor52111.6 = xor i8 %key2be.sroa.21.0.extract.trunc, 54
  %18 = ptrtoint ptr %arrayidx50.6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %xor52111.6, ptr %arrayidx50.6, align 1
  %arrayidx50.7 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 15
  %xor52111.7 = xor i8 %key2be.sroa.24.0.extract.trunc, 54
  %19 = ptrtoint ptr %arrayidx50.7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %xor52111.7, ptr %arrayidx50.7, align 1
  %20 = tail call i32 @llvm.smin.i32(i32 %len, i32 32)
  %arrayidx57 = getelementptr inbounds [96 x i8], ptr %input, i32 0, i32 64
  %21 = call ptr @memcpy(ptr %arrayidx57, ptr %msg, i32 %20)
  %add59 = add nsw i32 %20, 64
  call void @sha256(ptr noundef nonnull %input, i32 noundef %add59, ptr noundef %arrayidx57) #4
  %22 = getelementptr inbounds i8, ptr %input, i32 16
  %23 = call ptr @memset(ptr %22, i32 92, i32 48)
  %xor70110 = xor i8 %key1be.sroa.0.0.extract.trunc, 92
  %24 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %xor70110, ptr %input, align 1
  %xor70110.1 = xor i8 %key1be.sroa.6.0.extract.trunc, 92
  %25 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %xor70110.1, ptr %arrayidx41.1, align 1
  %xor70110.2 = xor i8 %key1be.sroa.9.0.extract.trunc, 92
  %26 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %xor70110.2, ptr %arrayidx41.2, align 1
  %xor70110.3 = xor i8 %key1be.sroa.12.0.extract.trunc, 92
  %27 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %xor70110.3, ptr %arrayidx41.3, align 1
  %xor70110.4 = xor i8 %key1be.sroa.15.0.extract.trunc, 92
  %28 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %xor70110.4, ptr %arrayidx41.4, align 1
  %xor70110.5 = xor i8 %key1be.sroa.18.0.extract.trunc, 92
  %29 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %xor70110.5, ptr %arrayidx41.5, align 1
  %xor70110.6 = xor i8 %key1be.sroa.21.0.extract.trunc, 92
  %30 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %xor70110.6, ptr %arrayidx41.6, align 1
  %xor70110.7 = xor i8 %key1be.sroa.24.0.extract.trunc, 92
  %31 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %xor70110.7, ptr %arrayidx41.7, align 1
  %xor84109 = xor i8 %key2be.sroa.0.0.extract.trunc, 92
  %32 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %xor84109, ptr %arrayidx50, align 1
  %xor84109.1 = xor i8 %key2be.sroa.6.0.extract.trunc, 92
  %33 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %xor84109.1, ptr %arrayidx50.1, align 1
  %xor84109.2 = xor i8 %key2be.sroa.9.0.extract.trunc, 92
  %34 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xor84109.2, ptr %arrayidx50.2, align 1
  %xor84109.3 = xor i8 %key2be.sroa.12.0.extract.trunc, 92
  %35 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %xor84109.3, ptr %arrayidx50.3, align 1
  %xor84109.4 = xor i8 %key2be.sroa.15.0.extract.trunc, 92
  %36 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %xor84109.4, ptr %arrayidx50.4, align 1
  %xor84109.5 = xor i8 %key2be.sroa.18.0.extract.trunc, 92
  %37 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %xor84109.5, ptr %arrayidx50.5, align 1
  %xor84109.6 = xor i8 %key2be.sroa.21.0.extract.trunc, 92
  %38 = ptrtoint ptr %arrayidx50.6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %xor84109.6, ptr %arrayidx50.6, align 1
  %xor84109.7 = xor i8 %key2be.sroa.24.0.extract.trunc, 92
  %39 = ptrtoint ptr %arrayidx50.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %xor84109.7, ptr %arrayidx50.7, align 1
  call void @sha256(ptr noundef nonnull %input, i32 noundef 96, ptr noundef %hmac) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %input) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/mptcp/crypto.c", i32 51, i32 6}
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
!12 = !{!"branch_weights", i32 2000, i32 1}
