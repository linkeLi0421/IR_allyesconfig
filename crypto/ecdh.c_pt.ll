; ModuleID = '/llk/IR_all_yes/crypto/ecdh.c_pt.bc'
source_filename = "../crypto/ecdh.c"
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
%struct.ecdh = type { ptr, i16 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__initcall__kmod_ecdh_generic__228_238_ecdh_init4 = internal global ptr @ecdh_init, section ".initcall4.init", align 4
@__exitcall_ecdh_exit = internal global ptr @ecdh_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace229 = internal constant [24 x i8] c"ecdh_generic.alias=ecdh\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto230 = internal constant [31 x i8] c"ecdh_generic.alias=crypto-ecdh\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [38 x i8] c"ecdh_generic.file=crypto/ecdh_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"ecdh_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [48 x i8] c"ecdh_generic.description=ECDH generic algorithm\00", section ".modinfo", align 1
@ecdh_nist_p192 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p192_init_tfm, ptr null, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p192-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@ecdh_nist_p192_registered = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ecdh_nist_p256 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p256_init_tfm, ptr null, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@ecdh_nist_p384 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p384_init_tfm, ptr null, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"ecdh_nist_p192_registered\00", align 1
@___asan_gen_.2 = private constant [17 x i8] c"../crypto/ecdh.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 201, i32 13 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto230, ptr @__UNIQUE_ID_alias_userspace229, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ecdh_exit, ptr @__initcall__kmod_ecdh_generic__228_238_ecdh_init4, ptr @ecdh_nist_p192_registered], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecdh_nist_p192_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdh_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr @ecdh_nist_p192_registered, align 1
  %call1 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nist_p256_error_crit_edge

entry.nist_p256_error_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nist_p256_error

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %nist_p384_error

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nist_p384_error:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p256) #7
  br label %nist_p256_error

nist_p256_error:                                  ; preds = %nist_p384_error, %entry.nist_p256_error_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.nist_p256_error_crit_edge ], [ %call2, %nist_p384_error ]
  %0 = load i8, ptr @ecdh_nist_p192_registered, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %nist_p256_error.cleanup_crit_edge, label %if.then7

nist_p256_error.cleanup_crit_edge:                ; preds = %nist_p256_error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %nist_p256_error
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p192) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %nist_p256_error.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then7 ], [ %ret.0, %nist_p256_error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecdh_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @ecdh_nist_p192_registered, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p192) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p256) #7
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p384) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdh_set_secret(ptr noundef %tfm, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %params = alloca %struct.ecdh, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #7
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %params, align 8, !annotation !30
  %call1 = call i32 @crypto_ecdh_decode_key(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %key_size = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %1 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %key_size, align 4
  %conv = zext i16 %2 to i32
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %ndigits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ndigits, align 4
  %mul = shl i32 %4, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp2 = icmp ult i32 %mul, %conv
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 8
  %tobool.not = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool6.not = icmp eq i16 %2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__crt_ctx.i.i, align 8
  %private_key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %call9 = call i32 @ecc_gen_privkey(i32 noundef %8, i32 noundef %4, ptr noundef %private_key) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %private_key11 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %9 = call ptr @memcpy(ptr %private_key11, ptr %6, i32 %conv)
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__crt_ctx.i.i, align 8
  %call22 = call i32 @ecc_is_key_valid(i32 noundef %11, i32 noundef %4, ptr noundef %private_key11, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %key_size, align 4
  %conv29 = zext i16 %13 to i32
  %14 = call ptr @memset(ptr %private_key11, i32 0, i32 %conv29)
  call void asm sideeffect "", "r,~{memory}"(ptr %private_key11) #7, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end10.cleanup_crit_edge, %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then25 ], [ %call9, %if.then7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdh_compute_value(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %ndigits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndigits, align 4
  %shl = shl i32 %3, 3
  %mul = shl i32 %3, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.end8.i110

if.end8.i110:                                     ; preds = %if.end
  %call9.i109 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3264) #10
  %tobool6.not = icmp eq ptr %call9.i109, null
  br i1 %tobool6.not, label %if.end8.i110.free_pubkey_crit_edge, label %if.end8

if.end8.i110.free_pubkey_crit_edge:               ; preds = %if.end8.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pubkey

if.end8:                                          ; preds = %if.end8.i110
  %src_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_len, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp.not = icmp eq i32 %mul, %7
  br i1 %cmp.not, label %if.end10, label %if.end8.free_all_crit_edge

if.end8.free_all_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_all

if.end10:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 8
  %conv = zext i32 %mul to i64
  %call13 = tail call i32 @sg_nents_for_len(ptr noundef %9, i64 noundef %conv) #7
  %call14 = tail call i32 @sg_copy_to_buffer(ptr noundef %9, i32 noundef %call13, ptr noundef nonnull %call9.i, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %mul)
  %cmp15.not = icmp eq i32 %call14, %mul
  br i1 %cmp15.not, label %if.end18, label %if.end10.free_all_crit_edge

if.end10.free_all_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_all

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__crt_ctx.i.i, align 8
  %12 = ptrtoint ptr %ndigits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndigits, align 4
  %private_key = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %call20 = tail call i32 @crypto_ecdh_shared_secret(i32 noundef %11, i32 noundef %13, ptr noundef %private_key, ptr noundef nonnull %call9.i, ptr noundef nonnull %call9.i109) #7
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__crt_ctx.i.i, align 8
  %16 = ptrtoint ptr %ndigits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndigits, align 4
  %private_key23 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %call25 = tail call i32 @ecc_make_pub_key(i32 noundef %15, i32 noundef %17, ptr noundef %private_key23, ptr noundef nonnull %call9.i) #7
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end18
  %shared_secret.0 = phi ptr [ %call9.i109, %if.end18 ], [ null, %if.else ]
  %buf.0 = phi ptr [ %call9.i109, %if.end18 ], [ %call9.i, %if.else ]
  %nbytes.0 = phi i32 [ %shl, %if.end18 ], [ %mul, %if.else ]
  %ret.0 = phi i32 [ %call20, %if.end18 ], [ %call25, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp27 = icmp slt i32 %ret.0, 0
  br i1 %cmp27, label %if.end26.free_all_crit_edge, label %if.end30

if.end26.free_all_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_all

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_len, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %nbytes.0, i32 %19)
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %conv34 = zext i32 %20 to i64
  %call35 = tail call i32 @sg_nents_for_len(ptr noundef %22, i64 noundef %conv34) #7
  %call36 = tail call i32 @sg_copy_from_buffer(ptr noundef %22, i32 noundef %call35, ptr noundef nonnull %buf.0, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %20)
  %cmp37.not = icmp eq i32 %call36, %20
  %spec.select = select i1 %cmp37.not, i32 %ret.0, i32 -22
  br label %free_all

free_all:                                         ; preds = %if.end30, %if.end26.free_all_crit_edge, %if.end10.free_all_crit_edge, %if.end8.free_all_crit_edge
  %shared_secret.1 = phi ptr [ %call9.i109, %if.end8.free_all_crit_edge ], [ %call9.i109, %if.end10.free_all_crit_edge ], [ %shared_secret.0, %if.end26.free_all_crit_edge ], [ %shared_secret.0, %if.end30 ]
  %ret.1 = phi i32 [ -22, %if.end8.free_all_crit_edge ], [ -22, %if.end10.free_all_crit_edge ], [ %ret.0, %if.end26.free_all_crit_edge ], [ %spec.select, %if.end30 ]
  tail call void @kfree_sensitive(ptr noundef %shared_secret.1) #7
  br label %free_pubkey

free_pubkey:                                      ; preds = %free_all, %if.end8.i110.free_pubkey_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_all ], [ -12, %if.end8.i110.free_pubkey_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_pubkey, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %free_pubkey ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ecdh_max_size(ptr nocapture noundef readonly %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %ndigits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndigits, align 4
  %shl = shl i32 %1, 4
  ret i32 %shl
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p192_init_tfm(ptr nocapture noundef writeonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %__crt_ctx.i.i, align 8
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %ndigits, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_decode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_gen_privkey(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_is_key_valid(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_shared_secret(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_make_pub_key(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p256_init_tfm(ptr nocapture noundef writeonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %__crt_ctx.i.i, align 8
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %ndigits, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p384_init_tfm(ptr nocapture noundef writeonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %__crt_ctx.i.i, align 8
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %ndigits, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_ecdh_generic__228_238_ecdh_init4, !1, !"__initcall__kmod_ecdh_generic__228_238_ecdh_init4", i1 false, i1 false}
!1 = !{!"../crypto/ecdh.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_ecdh_exit, !3, !"__exitcall_ecdh_exit", i1 false, i1 false}
!3 = !{!"../crypto/ecdh.c", i32 239, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias_userspace229, !5, !"__UNIQUE_ID_alias_userspace229", i1 false, i1 false}
!5 = !{!"../crypto/ecdh.c", i32 240, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias_crypto230, !5, !"__UNIQUE_ID_alias_crypto230", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../crypto/ecdh.c", i32 241, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description233, !11, !"__UNIQUE_ID_description233", i1 false, i1 false}
!11 = !{!"../crypto/ecdh.c", i32 242, i32 1}
!12 = !{ptr @ecdh_nist_p192, !13, !"ecdh_nist_p192", i1 false, i1 false}
!13 = !{!"../crypto/ecdh.c", i32 136, i32 23}
!14 = !{ptr @ecdh_nist_p192_registered, !15, !"ecdh_nist_p192_registered", i1 false, i1 false}
!15 = !{!"../crypto/ecdh.c", i32 201, i32 13}
!16 = !{ptr @ecdh_nist_p256, !17, !"ecdh_nist_p256", i1 false, i1 false}
!17 = !{!"../crypto/ecdh.c", i32 161, i32 23}
!18 = !{ptr @ecdh_nist_p384, !19, !"ecdh_nist_p384", i1 false, i1 false}
!19 = !{!"../crypto/ecdh.c", i32 186, i32 23}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{!"auto-init"}
!31 = !{i64 2149014448}
