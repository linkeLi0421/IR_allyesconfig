; ModuleID = '/llk/IR_all_yes/crypto/dh.c_pt.bc'
source_filename = "../crypto/dh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.dh = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_dh_generic__226_276_dh_init4 = internal global ptr @dh_init, section ".initcall4.init", align 4
@__exitcall_dh_exit = internal global ptr @dh_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace227 = internal constant [20 x i8] c"dh_generic.alias=dh\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto228 = internal constant [27 x i8] c"dh_generic.alias=crypto-dh\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [34 x i8] c"dh_generic.file=crypto/dh_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"dh_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [44 x i8] c"dh_generic.description=DH generic algorithm\00", section ".modinfo", align 1
@dh = internal global %struct.kpp_alg { ptr @dh_set_secret, ptr @dh_compute_value, ptr @dh_compute_value, ptr @dh_max_size, ptr null, ptr @dh_exit_tfm, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 16, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"dh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"dh-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias_crypto228, ptr @__UNIQUE_ID_alias_userspace227, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_dh_exit, ptr @__initcall__kmod_dh_generic__226_276_dh_init4], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dh_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_kpp(ptr noundef nonnull @dh) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dh_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @dh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dh_set_secret(ptr nocapture noundef %tfm, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %params = alloca %struct.dh, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #4
  %0 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 4
  %4 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 6
  %5 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 7
  %6 = call ptr @memset(ptr %params, i32 255, i32 32)
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @mpi_free(ptr noundef %8) #4
  %q.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %9 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q.i, align 4
  tail call void @mpi_free(ptr noundef %10) #4
  %g.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %11 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g.i, align 4
  tail call void @mpi_free(ptr noundef %12) #4
  %xa.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %13 = ptrtoint ptr %xa.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xa.i, align 4
  tail call void @mpi_free(ptr noundef %14) #4
  %15 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 16)
  %call1 = call i32 @crypto_dh_decode_key(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_clear_ctx_crit_edge, label %if.end

entry.err_clear_ctx_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds %struct.dh, ptr %params, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %shl.i = shl i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %shl.i)
  %cmp.i.i = icmp ugt i32 %shl.i, 1535
  br i1 %cmp.i.i, label %if.end.i, label %if.end.err_clear_ctx_crit_edge

if.end.err_clear_ctx_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

if.end.i:                                         ; preds = %if.end
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %call2.i = call ptr @mpi_read_raw_data(ptr noundef %20, i32 noundef %18) #4
  %21 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2.i, ptr %__crt_ctx.i.i, align 4
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_clear_ctx_crit_edge, label %if.end7.i

if.end.i.err_clear_ctx_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

if.end7.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %tobool8.not.i = icmp eq ptr %23, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %call13.i = call ptr @mpi_read_raw_data(ptr noundef nonnull %23, i32 noundef %25) #4
  %26 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call13.i, ptr %q.i, align 4
  %tobool16.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool16.not.i, label %if.then10.i.err_clear_ctx_crit_edge, label %if.then10.i.if.end19.i_crit_edge

if.then10.i.if.end19.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then10.i.err_clear_ctx_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

if.end19.i:                                       ; preds = %if.then10.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge, %if.end7.i.if.end19.i_crit_edge
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %call20.i = call ptr @mpi_read_raw_data(ptr noundef %28, i32 noundef %30) #4
  %31 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20.i, ptr %g.i, align 4
  %tobool23.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool23.not.i, label %if.end19.i.err_clear_ctx_crit_edge, label %if.end5

if.end19.i.err_clear_ctx_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

if.end5:                                          ; preds = %if.end19.i
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %params, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %call6 = call ptr @mpi_read_raw_data(ptr noundef %33, i32 noundef %35) #4
  %36 = ptrtoint ptr %xa.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6, ptr %xa.i, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.err_clear_ctx_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.err_clear_ctx_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_clear_ctx

err_clear_ctx:                                    ; preds = %if.end5.err_clear_ctx_crit_edge, %if.end19.i.err_clear_ctx_crit_edge, %if.then10.i.err_clear_ctx_crit_edge, %if.end.i.err_clear_ctx_crit_edge, %if.end.err_clear_ctx_crit_edge, %entry.err_clear_ctx_crit_edge
  %37 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @mpi_free(ptr noundef %38) #4
  %39 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %q.i, align 4
  call void @mpi_free(ptr noundef %40) #4
  %41 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %g.i, align 4
  call void @mpi_free(ptr noundef %42) #4
  %43 = ptrtoint ptr %xa.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xa.i, align 4
  call void @mpi_free(ptr noundef %44) #4
  %45 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %err_clear_ctx, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err_clear_ctx ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dh_compute_value(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %sign = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %call2 = tail call ptr @mpi_alloc(i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sign) #4
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sign, align 4, !annotation !23
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %3 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xa, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.err_free_val_crit_edge, label %if.end8, !prof !24

if.end.err_free_val_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_val

if.end8:                                          ; preds = %if.end
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 8
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %src_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_len, align 32
  %call12 = tail call ptr @mpi_read_raw_from_sgl(ptr noundef nonnull %6, i32 noundef %8) #4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then10.err_free_val_crit_edge, label %if.end15

if.then10.err_free_val_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_val

if.end15:                                         ; preds = %if.then10
  %9 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end15.err_free_base_crit_edge, label %if.end.i, !prof !24

if.end15.err_free_base_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end.i:                                         ; preds = %if.end15
  %call.i = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %call12, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end.i.err_free_base_crit_edge, label %lor.lhs.false.i

if.end.i.err_free_base_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call5.i = tail call i32 @mpi_cmp(ptr noundef nonnull %call12, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.i = icmp sgt i32 %call5.i, -1
  br i1 %cmp6.i, label %lor.lhs.false.i.err_free_base_crit_edge, label %if.end8.i

lor.lhs.false.i.err_free_base_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %q.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %13 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end20_crit_edge, label %if.then10.i

if.end8.i.if.end20_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then10.i:                                      ; preds = %if.end8.i
  %call11.i = tail call ptr @mpi_alloc(i32 noundef 0) #4
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.then10.i.err_free_base_crit_edge, label %if.end14.i

if.then10.i.err_free_base_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end14.i:                                       ; preds = %if.then10.i
  %15 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q.i, align 4
  %17 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call17.i = tail call i32 @mpi_powm(ptr noundef nonnull %call11.i, ptr noundef nonnull %call12, ptr noundef %16, ptr noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mpi_free(ptr noundef nonnull %call11.i) #4
  br label %err_free_base

if.end20.i:                                       ; preds = %if.end14.i
  %call21.i = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %call11.i, i32 noundef 1) #4
  tail call void @mpi_free(ptr noundef nonnull %call11.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.end20.i.if.end20_crit_edge, label %if.end20.i.err_free_base_crit_edge

if.end20.i.err_free_base_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end20.i.if.end20_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %g = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %19 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end20.i.if.end20_crit_edge, %if.end8.i.if.end20_crit_edge
  %base.0 = phi ptr [ %20, %if.else ], [ %call12, %if.end8.i.if.end20_crit_edge ], [ %call12, %if.end20.i.if.end20_crit_edge ]
  %21 = ptrtoint ptr %xa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xa, align 4
  %23 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call.i58 = tail call i32 @mpi_powm(ptr noundef nonnull %call2, ptr noundef %base.0, ptr noundef %22, ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool22.not = icmp eq i32 %call.i58, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.err_free_base_crit_edge

if.end20.err_free_base_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end24:                                         ; preds = %if.end20
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst_len, align 4
  %call25 = call i32 @mpi_write_to_sgl(ptr noundef nonnull %call2, ptr noundef %26, i32 noundef %28, ptr noundef nonnull %sign) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.err_free_base_crit_edge

if.end24.err_free_base_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_base

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sign, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp slt i32 %30, 0
  %spec.select = select i1 %cmp, i32 -74, i32 0
  br label %err_free_base

err_free_base:                                    ; preds = %if.end28, %if.end24.err_free_base_crit_edge, %if.end20.err_free_base_crit_edge, %if.end20.i.err_free_base_crit_edge, %if.then19.i, %if.then10.i.err_free_base_crit_edge, %lor.lhs.false.i.err_free_base_crit_edge, %if.end.i.err_free_base_crit_edge, %if.end15.err_free_base_crit_edge
  %base.1 = phi ptr [ %base.0, %if.end20.err_free_base_crit_edge ], [ %base.0, %if.end24.err_free_base_crit_edge ], [ %base.0, %if.end28 ], [ %call12, %if.end15.err_free_base_crit_edge ], [ %call12, %lor.lhs.false.i.err_free_base_crit_edge ], [ %call12, %if.end.i.err_free_base_crit_edge ], [ %call12, %if.end20.i.err_free_base_crit_edge ], [ %call12, %if.then19.i ], [ %call12, %if.then10.i.err_free_base_crit_edge ]
  %ret.0 = phi i32 [ %call.i58, %if.end20.err_free_base_crit_edge ], [ %call25, %if.end24.err_free_base_crit_edge ], [ %spec.select, %if.end28 ], [ -22, %if.end15.err_free_base_crit_edge ], [ -22, %lor.lhs.false.i.err_free_base_crit_edge ], [ -22, %if.end.i.err_free_base_crit_edge ], [ -22, %if.end20.i.err_free_base_crit_edge ], [ %call17.i, %if.then19.i ], [ -12, %if.then10.i.err_free_base_crit_edge ]
  %31 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src, align 8
  %tobool32.not = icmp eq ptr %32, null
  br i1 %tobool32.not, label %err_free_base.err_free_val_crit_edge, label %if.then33

err_free_base.err_free_val_crit_edge:             ; preds = %err_free_base
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_val

if.then33:                                        ; preds = %err_free_base
  call void @__sanitizer_cov_trace_pc() #6
  call void @mpi_free(ptr noundef %base.1) #4
  br label %err_free_val

err_free_val:                                     ; preds = %if.then33, %err_free_base.err_free_val_crit_edge, %if.then10.err_free_val_crit_edge, %if.end.err_free_val_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then33 ], [ %ret.0, %err_free_base.err_free_val_crit_edge ], [ -22, %if.end.err_free_val_crit_edge ], [ -22, %if.then10.err_free_val_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free_val, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_val ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sign) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dh_max_size(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs.i, align 4
  %mul.i = shl i32 %3, 2
  ret i32 %mul.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dh_exit_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @mpi_free(ptr noundef %1) #4
  %q.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  tail call void @mpi_free(ptr noundef %3) #4
  %g.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %g.i, align 4
  tail call void @mpi_free(ptr noundef %5) #4
  %xa.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %6 = ptrtoint ptr %xa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xa.i, align 4
  tail call void @mpi_free(ptr noundef %7) #4
  %8 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_dh_decode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_from_sgl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_write_to_sgl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_dh_generic__226_276_dh_init4, !1, !"__initcall__kmod_dh_generic__226_276_dh_init4", i1 false, i1 false}
!1 = !{!"../crypto/dh.c", i32 276, i32 1}
!2 = !{ptr @__exitcall_dh_exit, !3, !"__exitcall_dh_exit", i1 false, i1 false}
!3 = !{!"../crypto/dh.c", i32 277, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias_userspace227, !5, !"__UNIQUE_ID_alias_userspace227", i1 false, i1 false}
!5 = !{!"../crypto/dh.c", i32 278, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias_crypto228, !5, !"__UNIQUE_ID_alias_crypto228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file229, !8, !"__UNIQUE_ID_file229", i1 false, i1 false}
!8 = !{!"../crypto/dh.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license230, !8, !"__UNIQUE_ID_license230", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../crypto/dh.c", i32 280, i32 1}
!12 = !{ptr @dh, !13, !"dh", i1 false, i1 false}
!13 = !{!"../crypto/dh.c", i32 251, i32 23}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
