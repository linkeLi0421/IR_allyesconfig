; ModuleID = '/llk/IR_all_yes/crypto/rsa.c_pt.bc'
source_filename = "../crypto/rsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_rsa_generic__226_285_rsa_init4 = internal global ptr @rsa_init, section ".initcall4.init", align 4
@__exitcall_rsa_exit = internal global ptr @rsa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace227 = internal constant [22 x i8] c"rsa_generic.alias=rsa\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto228 = internal constant [29 x i8] c"rsa_generic.alias=crypto-rsa\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [36 x i8] c"rsa_generic.file=crypto/rsa_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [24 x i8] c"rsa_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [46 x i8] c"rsa_generic.description=RSA generic algorithm\00", section ".modinfo", align 1
@rsa = internal global %struct.akcipher_alg { ptr null, ptr null, ptr @rsa_enc, ptr @rsa_dec, ptr @rsa_set_pub_key, ptr @rsa_set_priv_key, ptr @rsa_max_size, ptr null, ptr @rsa_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 12, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"rsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rsa-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@rsa_pkcs1pad_tmpl = external dso_local global %struct.crypto_template, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias_crypto228, ptr @__UNIQUE_ID_alias_userspace227, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_rsa_exit, ptr @__initcall__kmod_rsa_generic__226_285_rsa_init4], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsa_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @rsa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @crypto_register_template(ptr noundef nonnull @rsa_pkcs1pad_tmpl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @rsa) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsa_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_unregister_template(ptr noundef nonnull @rsa_pkcs1pad_tmpl) #5
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @rsa) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsa_enc(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %sign = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %call2 = tail call ptr @mpi_alloc(i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sign) #5
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sign, align 4, !annotation !23
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.err_free_c_crit_edge, label %lor.rhs, !prof !24

if.end.err_free_c_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

lor.rhs:                                          ; preds = %if.end
  %e = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %lor.rhs.err_free_c_crit_edge, label %if.end9, !prof !24

lor.rhs.err_free_c_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

if.end9:                                          ; preds = %lor.rhs
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 8
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_len, align 32
  %call10 = tail call ptr @mpi_read_raw_from_sgl(ptr noundef %8, i32 noundef %10) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.err_free_c_crit_edge, label %if.end13

if.end9.err_free_c_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

if.end13:                                         ; preds = %if.end9
  %call.i = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %call10, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end13.err_free_m_crit_edge, label %lor.lhs.false.i

if.end13.err_free_m_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

lor.lhs.false.i:                                  ; preds = %if.end13
  %11 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1.i = tail call i32 @mpi_cmp(ptr noundef nonnull %call10, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %lor.lhs.false.i.err_free_m_crit_edge, label %_rsa_enc.exit

lor.lhs.false.i.err_free_m_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

_rsa_enc.exit:                                    ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %e, align 4
  %15 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4.i = tail call i32 @mpi_powm(ptr noundef nonnull %call2, ptr noundef nonnull %call10, ptr noundef %14, ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool15.not = icmp eq i32 %call4.i, 0
  br i1 %tobool15.not, label %if.end17, label %_rsa_enc.exit.err_free_m_crit_edge

_rsa_enc.exit.err_free_m_crit_edge:               ; preds = %_rsa_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

if.end17:                                         ; preds = %_rsa_enc.exit
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_len, align 4
  %call18 = call i32 @mpi_write_to_sgl(ptr noundef nonnull %call2, ptr noundef %18, i32 noundef %20, ptr noundef nonnull %sign) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_free_m_crit_edge

if.end17.err_free_m_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sign, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  %spec.select = select i1 %cmp, i32 -74, i32 0
  br label %err_free_m

err_free_m:                                       ; preds = %if.end21, %if.end17.err_free_m_crit_edge, %_rsa_enc.exit.err_free_m_crit_edge, %lor.lhs.false.i.err_free_m_crit_edge, %if.end13.err_free_m_crit_edge
  %ret.0 = phi i32 [ %call4.i, %_rsa_enc.exit.err_free_m_crit_edge ], [ %call18, %if.end17.err_free_m_crit_edge ], [ %spec.select, %if.end21 ], [ -22, %lor.lhs.false.i.err_free_m_crit_edge ], [ -22, %if.end13.err_free_m_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call10) #5
  br label %err_free_c

err_free_c:                                       ; preds = %err_free_m, %if.end9.err_free_c_crit_edge, %lor.rhs.err_free_c_crit_edge, %if.end.err_free_c_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_m ], [ -12, %if.end9.err_free_c_crit_edge ], [ -22, %lor.rhs.err_free_c_crit_edge ], [ -22, %if.end.err_free_c_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_c, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_c ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sign) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsa_dec(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %sign = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %call2 = tail call ptr @mpi_alloc(i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sign) #5
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sign, align 4, !annotation !23
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.err_free_m_crit_edge, label %lor.rhs, !prof !24

if.end.err_free_m_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

lor.rhs:                                          ; preds = %if.end
  %d = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %lor.rhs.err_free_m_crit_edge, label %if.end9, !prof !24

lor.rhs.err_free_m_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

if.end9:                                          ; preds = %lor.rhs
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 8
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_len, align 32
  %call10 = tail call ptr @mpi_read_raw_from_sgl(ptr noundef %8, i32 noundef %10) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.err_free_m_crit_edge, label %if.end13

if.end9.err_free_m_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_m

if.end13:                                         ; preds = %if.end9
  %call.i = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %call10, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end13.err_free_c_crit_edge, label %lor.lhs.false.i

if.end13.err_free_c_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

lor.lhs.false.i:                                  ; preds = %if.end13
  %11 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1.i = tail call i32 @mpi_cmp(ptr noundef nonnull %call10, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %lor.lhs.false.i.err_free_c_crit_edge, label %_rsa_dec.exit

lor.lhs.false.i.err_free_c_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

_rsa_dec.exit:                                    ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 4
  %15 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4.i = tail call i32 @mpi_powm(ptr noundef nonnull %call2, ptr noundef nonnull %call10, ptr noundef %14, ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool15.not = icmp eq i32 %call4.i, 0
  br i1 %tobool15.not, label %if.end17, label %_rsa_dec.exit.err_free_c_crit_edge

_rsa_dec.exit.err_free_c_crit_edge:               ; preds = %_rsa_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

if.end17:                                         ; preds = %_rsa_dec.exit
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_len, align 4
  %call18 = call i32 @mpi_write_to_sgl(ptr noundef nonnull %call2, ptr noundef %18, i32 noundef %20, ptr noundef nonnull %sign) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_free_c_crit_edge

if.end17.err_free_c_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_c

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sign, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  %spec.select = select i1 %cmp, i32 -74, i32 0
  br label %err_free_c

err_free_c:                                       ; preds = %if.end21, %if.end17.err_free_c_crit_edge, %_rsa_dec.exit.err_free_c_crit_edge, %lor.lhs.false.i.err_free_c_crit_edge, %if.end13.err_free_c_crit_edge
  %ret.0 = phi i32 [ %call4.i, %_rsa_dec.exit.err_free_c_crit_edge ], [ %call18, %if.end17.err_free_c_crit_edge ], [ %spec.select, %if.end21 ], [ -22, %lor.lhs.false.i.err_free_c_crit_edge ], [ -22, %if.end13.err_free_c_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call10) #5
  br label %err_free_m

err_free_m:                                       ; preds = %err_free_c, %if.end9.err_free_m_crit_edge, %lor.rhs.err_free_m_crit_edge, %if.end.err_free_m_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_c ], [ -12, %if.end9.err_free_m_crit_edge ], [ -22, %lor.rhs.err_free_m_crit_edge ], [ -22, %if.end.err_free_m_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_m, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_m ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sign) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsa_set_pub_key(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %raw_key = alloca %struct.rsa_key, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_key) #5
  %0 = call ptr @memset(ptr %raw_key, i32 0, i32 64)
  %d.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %1 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d.i, align 4
  tail call void @mpi_free(ptr noundef %2) #5
  %e.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %e.i, align 4
  tail call void @mpi_free(ptr noundef %4) #5
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @mpi_free(ptr noundef %6) #5
  %7 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %d.i, align 4
  %8 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %e.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %__crt_ctx.i, align 4
  %call1 = call i32 @rsa_parse_pub_key(ptr noundef nonnull %raw_key, ptr noundef %key, i32 noundef %keylen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 1
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 9
  %12 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %e_sz, align 4
  %call2 = call ptr @mpi_read_raw_data(ptr noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %e.i, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %raw_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raw_key, align 4
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 8
  %17 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_sz, align 4
  %call8 = call ptr @mpi_read_raw_data(ptr noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %__crt_ctx.i, align 4
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end13

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end7
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %call8, i32 0, i32 1
  %20 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlimbs.i, align 4
  %mul.i = shl i32 %21, 5
  %22 = add i32 %mul.i, -512
  %23 = call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %24 = icmp ult i32 %23, 8
  br i1 %24, label %switch.hole_check, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.hole_check.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end13.cleanup.sink.split_crit_edge ], [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ -12, %if.end.cleanup.sink.split_crit_edge ], [ -22, %switch.hole_check.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d.i, align 4
  call void @mpi_free(ptr noundef %26) #5
  %27 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %e.i, align 4
  call void @mpi_free(ptr noundef %28) #5
  %29 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_ctx.i, align 4
  call void @mpi_free(ptr noundef %30) #5
  %31 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %d.i, align 4
  %32 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %e.i, align 4
  %33 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %__crt_ctx.i, align 4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end13
  %switch.maskindex = trunc i32 %23 to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %34 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %switch.lobit.not = icmp eq i8 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup.sink.split_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check.cleanup.sink.split_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_key) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsa_set_priv_key(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %raw_key = alloca %struct.rsa_key, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_key) #5
  %0 = call ptr @memset(ptr %raw_key, i32 0, i32 64)
  %d.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %1 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d.i, align 4
  tail call void @mpi_free(ptr noundef %2) #5
  %e.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %e.i, align 4
  tail call void @mpi_free(ptr noundef %4) #5
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @mpi_free(ptr noundef %6) #5
  %7 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %d.i, align 4
  %8 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %e.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %__crt_ctx.i, align 4
  %call1 = call i32 @rsa_parse_priv_key(ptr noundef nonnull %raw_key, ptr noundef %key, i32 noundef %keylen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 2
  %10 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d, align 4
  %d_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 10
  %12 = ptrtoint ptr %d_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_sz, align 4
  %call2 = call ptr @mpi_read_raw_data(ptr noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %d.i, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %e = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 1
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 9
  %17 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %e_sz, align 4
  %call8 = call ptr @mpi_read_raw_data(ptr noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %e.i, align 4
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end13

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %raw_key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raw_key, align 4
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 8
  %22 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_sz, align 4
  %call14 = call ptr @mpi_read_raw_data(ptr noundef %21, i32 noundef %23) #5
  %24 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %__crt_ctx.i, align 4
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.end13.cleanup.sink.split_crit_edge, label %if.end19

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end13
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %call14, i32 0, i32 1
  %25 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlimbs.i, align 4
  %mul.i = shl i32 %26, 5
  %27 = add i32 %mul.i, -512
  %28 = call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %29 = icmp ult i32 %28, 8
  br i1 %29, label %switch.hole_check, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.hole_check.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end19.cleanup.sink.split_crit_edge ], [ -12, %if.end13.cleanup.sink.split_crit_edge ], [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ -12, %if.end.cleanup.sink.split_crit_edge ], [ -22, %switch.hole_check.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d.i, align 4
  call void @mpi_free(ptr noundef %31) #5
  %32 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %e.i, align 4
  call void @mpi_free(ptr noundef %33) #5
  %34 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_ctx.i, align 4
  call void @mpi_free(ptr noundef %35) #5
  %36 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %d.i, align 4
  %37 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %e.i, align 4
  %38 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %__crt_ctx.i, align 4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end19
  %switch.maskindex = trunc i32 %28 to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %39 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %switch.lobit.not = icmp eq i8 %39, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup.sink.split_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check.cleanup.sink.split_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_key) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsa_max_size(ptr nocapture noundef readonly %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs.i, align 4
  %mul.i = shl i32 %3, 2
  ret i32 %mul.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsa_exit_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %d.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d.i, align 4
  tail call void @mpi_free(ptr noundef %1) #5
  %e.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.i, align 4
  tail call void @mpi_free(ptr noundef %3) #5
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @mpi_free(ptr noundef %5) #5
  %6 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %d.i, align 4
  %7 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %e.i, align 4
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %__crt_ctx.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_from_sgl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_write_to_sgl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_pub_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_priv_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_rsa_generic__226_285_rsa_init4, !1, !"__initcall__kmod_rsa_generic__226_285_rsa_init4", i1 false, i1 false}
!1 = !{!"../crypto/rsa.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_rsa_exit, !3, !"__exitcall_rsa_exit", i1 false, i1 false}
!3 = !{!"../crypto/rsa.c", i32 286, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias_userspace227, !5, !"__UNIQUE_ID_alias_userspace227", i1 false, i1 false}
!5 = !{!"../crypto/rsa.c", i32 287, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias_crypto228, !5, !"__UNIQUE_ID_alias_crypto228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file229, !8, !"__UNIQUE_ID_file229", i1 false, i1 false}
!8 = !{!"../crypto/rsa.c", i32 288, i32 1}
!9 = !{ptr @__UNIQUE_ID_license230, !8, !"__UNIQUE_ID_license230", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../crypto/rsa.c", i32 289, i32 1}
!12 = !{ptr @rsa, !13, !"rsa", i1 false, i1 false}
!13 = !{!"../crypto/rsa.c", i32 246, i32 28}
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
