; ModuleID = '/llk/IR_all_yes/crypto/ecdsa.c_pt.bc'
source_filename = "../crypto/ecdsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.69, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.69 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.asn1_decoder = type opaque
%struct.ecdsa_signature_ctx = type { ptr, [8 x i64], [8 x i64] }
%struct.ecc_curve = type { ptr, %struct.ecc_point, ptr, ptr, ptr, ptr }
%struct.ecc_point = type { ptr, ptr, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__initcall__kmod_ecdsa_generic__226_370_ecdsa_init4 = internal global ptr @ecdsa_init, section ".initcall4.init", align 4
@__exitcall_ecdsa_exit = internal global ptr @ecdsa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [40 x i8] c"ecdsa_generic.file=crypto/ecdsa_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [26 x i8] c"ecdsa_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [59 x i8] c"ecdsa_generic.author=Stefan Berger <stefanb@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [50 x i8] c"ecdsa_generic.description=ECDSA generic algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [34 x i8] c"ecdsa_generic.alias=ecdsa-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [41 x i8] c"ecdsa_generic.alias=crypto-ecdsa-generic\00", section ".modinfo", align 1
@ecdsa_nist_p192 = internal global %struct.akcipher_alg { ptr null, ptr @ecdsa_verify, ptr null, ptr null, ptr @ecdsa_set_pub_key, ptr null, ptr @ecdsa_max_size, ptr @ecdsa_nist_p192_init_tfm, ptr @ecdsa_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 160, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdsa-nist-p192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdsa-nist-p192-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, align 128
@ecdsa_nist_p192_registered = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ecdsa_nist_p256 = internal global %struct.akcipher_alg { ptr null, ptr @ecdsa_verify, ptr null, ptr null, ptr @ecdsa_set_pub_key, ptr null, ptr @ecdsa_max_size, ptr @ecdsa_nist_p256_init_tfm, ptr @ecdsa_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 160, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdsa-nist-p256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdsa-nist-p256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, align 128
@ecdsa_nist_p384 = internal global %struct.akcipher_alg { ptr null, ptr @ecdsa_verify, ptr null, ptr null, ptr @ecdsa_set_pub_key, ptr null, ptr @ecdsa_max_size, ptr @ecdsa_nist_p384_init_tfm, ptr @ecdsa_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 160, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdsa-nist-p384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdsa-nist-p384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.69 zeroinitializer, [120 x i8] undef } }, align 128
@ecdsasignature_decoder = external dso_local constant %struct.asn1_decoder, align 1
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"ecdsa_nist_p192_registered\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../crypto/ecdsa.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 333, i32 13 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_ecdsa_exit, ptr @__initcall__kmod_ecdsa_generic__226_370_ecdsa_init4, ptr @ecdsa_nist_p192_registered], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecdsa_nist_p192_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecdsa_get_signature_r(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %rs.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %r = getelementptr inbounds %struct.ecdsa_signature_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv, 3
  %sub.i = sub i32 %vlen, %mul.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rs.i) #7
  %4 = call ptr @memset(ptr %rs.i, i32 255, i32 64)
  %tobool.not.i = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not.i = icmp eq i32 %vlen, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.ecdsa_get_signature_rs.exit_crit_edge, label %if.end.i

entry.ecdsa_get_signature_rs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.i = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %phi.cmp.i = icmp eq i32 %sub.i, 1
  %diff.0.i = and i1 %phi.cmp.i, %cmp3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13.not5.i = icmp ne i8 %3, 0
  %or.cond18.i = and i1 %cmp13.not5.i, %diff.0.i
  br i1 %or.cond18.i, label %if.end20.i.thread, label %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge

if.then2.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end20.i.thread:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %d.0.idx.i = zext i1 %cmp3.i to i32
  %d.0.i = getelementptr i8, ptr %value, i32 %d.0.idx.i
  %sub6.i = sext i1 %cmp3.i to i32
  %vlen.addr.0.i = add i32 %sub6.i, %vlen
  %7 = call ptr @memcpy(ptr %rs.i, ptr %d.0.i, i32 %vlen.addr.0.i)
  br label %for.body.i.i.preheader

if.end11.i:                                       ; preds = %if.end.i
  %sub12.i = sub i32 0, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub12.i)
  %cmp13.not.i = icmp ugt i32 %mul.i, %sub12.i
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge

if.end11.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %vlen)
  %tobool17.not.i = icmp eq i32 %mul.i, %vlen
  br i1 %tobool17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %rs.i, i32 0, i32 %sub12.i)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %arrayidx.i = getelementptr [64 x i8], ptr %rs.i, i32 0, i32 %sub12.i
  %9 = call ptr @memcpy(ptr %arrayidx.i, ptr %value, i32 %vlen)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not.i.i = icmp eq i8 %3, 0
  br i1 %cmp7.not.i.i, label %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge, label %if.end20.i.for.body.i.i.preheader_crit_edge

if.end20.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

if.end20.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

for.body.i.i.preheader:                           ; preds = %if.end20.i.for.body.i.i.preheader_crit_edge, %if.end20.i.thread
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %10 = xor i32 %i.08.i.i, -1
  %sub1.i.i = add nsw i32 %10, %conv
  %arrayidx.i.i = getelementptr i64, ptr %rs.i, i32 %sub1.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr i64, ptr %r, i32 %i.08.i.i
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx2.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

ecdsa_get_signature_rs.exit:                      ; preds = %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge, %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge, %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge, %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge, %entry.ecdsa_get_signature_rs.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ecdsa_get_signature_rs.exit_crit_edge ], [ -22, %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge ], [ -22, %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge ], [ 0, %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge ], [ 0, %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rs.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecdsa_get_signature_s(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %rs.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s = getelementptr inbounds %struct.ecdsa_signature_ctx, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv, 3
  %sub.i = sub i32 %vlen, %mul.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rs.i) #7
  %4 = call ptr @memset(ptr %rs.i, i32 255, i32 64)
  %tobool.not.i = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not.i = icmp eq i32 %vlen, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.ecdsa_get_signature_rs.exit_crit_edge, label %if.end.i

entry.ecdsa_get_signature_rs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.i = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %phi.cmp.i = icmp eq i32 %sub.i, 1
  %diff.0.i = and i1 %phi.cmp.i, %cmp3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13.not5.i = icmp ne i8 %3, 0
  %or.cond18.i = and i1 %cmp13.not5.i, %diff.0.i
  br i1 %or.cond18.i, label %if.end20.i.thread, label %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge

if.then2.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end20.i.thread:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %d.0.idx.i = zext i1 %cmp3.i to i32
  %d.0.i = getelementptr i8, ptr %value, i32 %d.0.idx.i
  %sub6.i = sext i1 %cmp3.i to i32
  %vlen.addr.0.i = add i32 %sub6.i, %vlen
  %7 = call ptr @memcpy(ptr %rs.i, ptr %d.0.i, i32 %vlen.addr.0.i)
  br label %for.body.i.i.preheader

if.end11.i:                                       ; preds = %if.end.i
  %sub12.i = sub i32 0, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub12.i)
  %cmp13.not.i = icmp ugt i32 %mul.i, %sub12.i
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge

if.end11.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

if.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %vlen)
  %tobool17.not.i = icmp eq i32 %mul.i, %vlen
  br i1 %tobool17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %rs.i, i32 0, i32 %sub12.i)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %arrayidx.i = getelementptr [64 x i8], ptr %rs.i, i32 0, i32 %sub12.i
  %9 = call ptr @memcpy(ptr %arrayidx.i, ptr %value, i32 %vlen)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not.i.i = icmp eq i8 %3, 0
  br i1 %cmp7.not.i.i, label %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge, label %if.end20.i.for.body.i.i.preheader_crit_edge

if.end20.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

if.end20.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

for.body.i.i.preheader:                           ; preds = %if.end20.i.for.body.i.i.preheader_crit_edge, %if.end20.i.thread
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %10 = xor i32 %i.08.i.i, -1
  %sub1.i.i = add nsw i32 %10, %conv
  %arrayidx.i.i = getelementptr i64, ptr %rs.i, i32 %sub1.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr i64, ptr %s, i32 %i.08.i.i
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx2.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecdsa_get_signature_rs.exit

ecdsa_get_signature_rs.exit:                      ; preds = %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge, %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge, %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge, %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge, %entry.ecdsa_get_signature_rs.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ecdsa_get_signature_rs.exit_crit_edge ], [ -22, %if.then2.i.ecdsa_get_signature_rs.exit_crit_edge ], [ -22, %if.end11.i.ecdsa_get_signature_rs.exit_crit_edge ], [ 0, %if.end20.i.ecdsa_get_signature_rs.exit_crit_edge ], [ 0, %for.body.i.i.ecdsa_get_signature_rs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rs.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_init() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @ecdsa_nist_p192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr @ecdsa_nist_p192_registered, align 1
  %call1 = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @ecdsa_nist_p256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nist_p256_error_crit_edge

entry.nist_p256_error_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nist_p256_error

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @ecdsa_nist_p384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %nist_p384_error

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nist_p384_error:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecdsa_nist_p256) #7
  br label %nist_p256_error

nist_p256_error:                                  ; preds = %nist_p384_error, %entry.nist_p256_error_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.nist_p256_error_crit_edge ], [ %call2, %nist_p384_error ]
  %0 = load i8, ptr @ecdsa_nist_p192_registered, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %nist_p256_error.cleanup_crit_edge, label %if.then7

nist_p256_error.cleanup_crit_edge:                ; preds = %nist_p256_error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %nist_p256_error
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecdsa_nist_p192) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %nist_p256_error.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then7 ], [ %ret.0, %nist_p256_error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecdsa_exit() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @ecdsa_nist_p192_registered, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecdsa_nist_p192) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecdsa_nist_p256) #7
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecdsa_nist_p384) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_verify(ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  %s1.i = alloca [8 x i64], align 8
  %u1.i = alloca [8 x i64], align 8
  %u2.i = alloca [8 x i64], align 8
  %x1.i = alloca [8 x i64], align 8
  %y1.i = alloca [8 x i64], align 8
  %res.i = alloca %struct.ecc_point, align 4
  %sig_ctx = alloca %struct.ecdsa_signature_ctx, align 8
  %rawhash = alloca [64 x i8], align 1
  %hash = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %curve = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curve, align 4
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %sig_ctx) #7
  %6 = call ptr @memset(ptr %sig_ctx, i32 0, i32 136)
  %7 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curve, align 4
  %9 = ptrtoint ptr %sig_ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sig_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rawhash) #7
  %10 = call ptr @memset(ptr %rawhash, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash) #7
  %11 = call ptr @memset(ptr %hash, i32 255, i32 64)
  %pub_key_set = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %12 = ptrtoint ptr %pub_key_set to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pub_key_set, align 8, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_len, align 4
  %16 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_len, align 32
  %add = add i32 %15, %17
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 8
  %20 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_len, align 32
  %22 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_len, align 4
  %add14 = add i32 %23, %21
  %conv15 = zext i32 %add14 to i64
  %call16 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %conv15) #7
  %24 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_len, align 32
  %26 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_len, align 4
  %add19 = add i32 %27, %25
  %call20 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %19, i32 noundef %call16, ptr noundef nonnull %call9.i, i32 noundef %add19, i32 noundef 0) #7
  %28 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_len, align 32
  %call22 = call i32 @asn1_ber_decoder(ptr noundef nonnull @ecdsasignature_decoder, ptr noundef nonnull %sig_ctx, ptr noundef nonnull %call9.i, i32 noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end10.error_crit_edge, label %if.end25

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end25:                                         ; preds = %if.end10
  %30 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_len, align 4
  %sub = sub i32 %mul, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp27 = icmp sgt i32 %sub, -1
  br i1 %cmp27, label %if.then29, label %if.then37

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %31)
  %tobool30.not = icmp eq i32 %mul, %31
  br i1 %tobool30.not, label %if.then29.if.end32_crit_edge, label %if.then31

if.then29.if.end32_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call ptr @memset(ptr %rawhash, i32 0, i32 %sub)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29.if.end32_crit_edge
  %arrayidx = getelementptr [64 x i8], ptr %rawhash, i32 0, i32 %sub
  %33 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_len, align 32
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %34
  %35 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr, i32 %31)
  br label %if.end41

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_len, align 32
  %add.ptr39 = getelementptr i8, ptr %call9.i, i32 %37
  %38 = call ptr @memcpy(ptr %rawhash, ptr %add.ptr39, i32 %mul)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end32
  %39 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %curve, align 4
  %ndigits46 = getelementptr inbounds %struct.ecc_curve, ptr %40, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %ndigits46 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ndigits46, align 4
  %conv47 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp7.not.i = icmp eq i8 %42, 0
  br i1 %cmp7.not.i, label %if.end41.ecc_swap_digits.exit_crit_edge, label %if.end41.for.body.i_crit_edge

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

if.end41.ecc_swap_digits.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end41.for.body.i_crit_edge ]
  %43 = xor i32 %i.08.i, -1
  %sub1.i = add nsw i32 %43, %conv47
  %arrayidx.i = getelementptr i64, ptr %rawhash, i32 %sub1.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i64, ptr %hash, i32 %i.08.i
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx2.i, align 8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv47
  br i1 %exitcond.not.i, label %for.body.i.ecc_swap_digits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ecc_swap_digits.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit

ecc_swap_digits.exit:                             ; preds = %for.body.i.ecc_swap_digits.exit_crit_edge, %if.end41.ecc_swap_digits.exit_crit_edge
  %r = getelementptr inbounds %struct.ecdsa_signature_ctx, ptr %sig_ctx, i32 0, i32 1
  %s = getelementptr inbounds %struct.ecdsa_signature_ctx, ptr %sig_ctx, i32 0, i32 2
  %47 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curve, align 4
  %g.i = getelementptr inbounds %struct.ecc_curve, ptr %48, i32 0, i32 1
  %ndigits2.i = getelementptr inbounds %struct.ecc_curve, ptr %48, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %ndigits2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ndigits2.i, align 4
  %conv.i = zext i8 %50 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %s1.i) #7
  %51 = call ptr @memset(ptr %s1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %u1.i) #7
  %52 = call ptr @memset(ptr %u1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %u2.i) #7
  %53 = call ptr @memset(ptr %u2.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %x1.i) #7
  %54 = call ptr @memset(ptr %x1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %y1.i) #7
  %55 = call ptr @memset(ptr %y1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res.i) #7
  %56 = getelementptr inbounds i8, ptr %res.i, i32 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %56, align 4
  %58 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %x1.i, ptr %res.i, align 4
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %res.i, i32 0, i32 1
  %59 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %y1.i, ptr %y.i, align 4
  store i8 %50, ptr %56, align 4
  %call.i = call zeroext i1 @vli_is_zero(ptr noundef %r, i32 noundef %conv.i) #7
  br i1 %call.i, label %ecc_swap_digits.exit._ecdsa_verify.exit_crit_edge, label %lor.lhs.false.i

ecc_swap_digits.exit._ecdsa_verify.exit_crit_edge: ; preds = %ecc_swap_digits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ecdsa_verify.exit

lor.lhs.false.i:                                  ; preds = %ecc_swap_digits.exit
  %n.i = getelementptr inbounds %struct.ecc_curve, ptr %48, i32 0, i32 3
  %60 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %n.i, align 4
  %call7.i88 = call i32 @vli_cmp(ptr noundef %r, ptr noundef %61, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i88)
  %cmp.i89 = icmp sgt i32 %call7.i88, -1
  br i1 %cmp.i89, label %lor.lhs.false.i._ecdsa_verify.exit_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i._ecdsa_verify.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ecdsa_verify.exit

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %call10.i = call zeroext i1 @vli_is_zero(ptr noundef %s, i32 noundef %conv.i) #7
  br i1 %call10.i, label %lor.lhs.false9.i._ecdsa_verify.exit_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i._ecdsa_verify.exit_crit_edge:    ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ecdsa_verify.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %62 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %n.i, align 4
  %call14.i = call i32 @vli_cmp(ptr noundef %s, ptr noundef %63, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14.i)
  %cmp15.i = icmp sgt i32 %call14.i, -1
  br i1 %cmp15.i, label %lor.lhs.false12.i._ecdsa_verify.exit_crit_edge, label %if.end.i90

lor.lhs.false12.i._ecdsa_verify.exit_crit_edge:   ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ecdsa_verify.exit

if.end.i90:                                       ; preds = %lor.lhs.false12.i
  %64 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %n.i, align 4
  call void @vli_mod_inv(ptr noundef nonnull %s1.i, ptr noundef %s, ptr noundef %65, i32 noundef %conv.i) #7
  %66 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %n.i, align 4
  call void @vli_mod_mult_slow(ptr noundef nonnull %u1.i, ptr noundef nonnull %hash, ptr noundef nonnull %s1.i, ptr noundef %67, i32 noundef %conv.i) #7
  %68 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %n.i, align 4
  call void @vli_mod_mult_slow(ptr noundef nonnull %u2.i, ptr noundef %r, ptr noundef nonnull %s1.i, ptr noundef %69, i32 noundef %conv.i) #7
  %pub_key.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4
  call void @ecc_point_mult_shamir(ptr noundef nonnull %res.i, ptr noundef nonnull %u1.i, ptr noundef %g.i, ptr noundef nonnull %u2.i, ptr noundef %pub_key.i, ptr noundef %48) #7
  %70 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %res.i, align 4
  %72 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %n.i, align 4
  %call30.i = call i32 @vli_cmp(ptr noundef %71, ptr noundef %73, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 1
  br i1 %cmp31.i, label %if.then34.i, label %if.end.i90.if.end39.i_crit_edge, !prof !32

if.end.i90.if.end39.i_crit_edge:                  ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then34.i:                                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %res.i, align 4
  %76 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %n.i, align 4
  %call38.i = call i64 @vli_sub(ptr noundef %75, ptr noundef %75, ptr noundef %77, i32 noundef %conv.i) #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %if.end.i90.if.end39.i_crit_edge
  %78 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %res.i, align 4
  %call41.i = call i32 @vli_cmp(ptr noundef %79, ptr noundef %r, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  %..i = select i1 %tobool42.not.i, i32 0, i32 -129
  br label %_ecdsa_verify.exit

_ecdsa_verify.exit:                               ; preds = %if.end39.i, %lor.lhs.false12.i._ecdsa_verify.exit_crit_edge, %lor.lhs.false9.i._ecdsa_verify.exit_crit_edge, %lor.lhs.false.i._ecdsa_verify.exit_crit_edge, %ecc_swap_digits.exit._ecdsa_verify.exit_crit_edge
  %retval.0.i = phi i32 [ -74, %lor.lhs.false12.i._ecdsa_verify.exit_crit_edge ], [ -74, %lor.lhs.false9.i._ecdsa_verify.exit_crit_edge ], [ -74, %lor.lhs.false.i._ecdsa_verify.exit_crit_edge ], [ -74, %ecc_swap_digits.exit._ecdsa_verify.exit_crit_edge ], [ %..i, %if.end39.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %y1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %x1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %u2.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %u1.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %s1.i) #7
  br label %error

error:                                            ; preds = %_ecdsa_verify.exit, %if.end10.error_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end10.error_crit_edge ], [ %retval.0.i, %_ecdsa_verify.exit ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rawhash) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %sig_ctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_set_pub_key(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %arrayidx = getelementptr i8, ptr %key, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__crt_ctx.i, align 8
  %pub_key_set.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %pub_key_set.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pub_key_set.i.i, align 8
  %call.i.i = tail call ptr @ecc_get_curve(i32 noundef %1) #7
  %curve.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %curve.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %curve.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pub_key.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4
  %x2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %y3.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %ndigits5.i = getelementptr inbounds %struct.ecc_curve, ptr %call.i.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ndigits5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ndigits5.i, align 4
  %6 = ptrtoint ptr %pub_key.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %x2.i, ptr %pub_key.i, align 8
  %.compoundliteral.sroa.2.0.pub_key.sroa_idx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %y3.i, ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.pub_key.sroa_idx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 8
  %8 = ptrtoint ptr %.compoundliteral.sroa.3.0.pub_key.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %.compoundliteral.sroa.3.0.pub_key.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen)
  %cmp2 = icmp eq i32 %keylen, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sub = add i32 %keylen, 15
  %9 = and i32 %sub, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp7.not = icmp eq i8 %11, 4
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %dec = add i32 %keylen, -1
  %div46 = lshr i32 %dec, 4
  %12 = ptrtoint ptr %ndigits5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ndigits5.i, align 4
  %conv13 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div46, i32 %conv13)
  %cmp14.not = icmp eq i32 %div46, %conv13
  br i1 %cmp14.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %pub_key.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pub_key.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dec)
  %cmp7.not.i = icmp ult i32 %dec, 16
  br i1 %cmp7.not.i, label %if.end17.ecc_swap_digits.exit55_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.ecc_swap_digits.exit55_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit55

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.for.body.i_crit_edge ]
  %16 = xor i32 %i.08.i, -1
  %sub1.i = add i32 %div46, %16
  %arrayidx.i = getelementptr i64, ptr %arrayidx, i32 %sub1.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i64, ptr %15, i32 %i.08.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx2.i, align 8
  %inc.i = add nuw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div46
  br i1 %exitcond.not.i, label %for.body.i54.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i54.preheader:                           ; preds = %for.body.i
  %arrayidx18 = getelementptr i64, ptr %arrayidx, i32 %div46
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx.i, align 4
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %for.body.i54.preheader
  %i.08.i48 = phi i32 [ %inc.i52, %for.body.i54.for.body.i54_crit_edge ], [ 0, %for.body.i54.preheader ]
  %22 = xor i32 %i.08.i48, -1
  %sub1.i49 = add i32 %div46, %22
  %arrayidx.i50 = getelementptr i64, ptr %arrayidx18, i32 %sub1.i49
  %23 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx.i50, align 1
  %arrayidx2.i51 = getelementptr i64, ptr %21, i32 %i.08.i48
  %25 = ptrtoint ptr %arrayidx2.i51 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx2.i51, align 8
  %inc.i52 = add nuw i32 %i.08.i48, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %div46
  br i1 %exitcond.not.i53, label %for.body.i54.ecc_swap_digits.exit55_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i54

for.body.i54.ecc_swap_digits.exit55_crit_edge:    ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit55

ecc_swap_digits.exit55:                           ; preds = %for.body.i54.ecc_swap_digits.exit55_crit_edge, %if.end17.ecc_swap_digits.exit55_crit_edge
  %26 = ptrtoint ptr %curve.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %curve.i.i, align 4
  %call22 = tail call i32 @ecc_is_pubkey_valid_full(ptr noundef %27, ptr noundef %pub_key.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  %frombool = zext i1 %cmp23 to i8
  %28 = ptrtoint ptr %pub_key_set.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %pub_key_set.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ecc_swap_digits.exit55, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %ecc_swap_digits.exit55 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ecdsa_max_size(ptr nocapture noundef readonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 8
  %0 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigits, align 8
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_nist_p192_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %__crt_ctx.i, align 8
  %call.i = tail call ptr @ecc_get_curve(i32 noundef 1) #7
  %curve.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %curve.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %curve.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool.not.i, i32 -22, i32 0
  ret i32 %..i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ecdsa_exit_tfm(ptr nocapture noundef writeonly %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pub_key_set.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %pub_key_set.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pub_key_set.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vli_is_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vli_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_mod_inv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_mod_mult_slow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecc_point_mult_shamir(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vli_sub(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_is_pubkey_valid_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecc_get_curve(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_nist_p256_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %__crt_ctx.i, align 8
  %call.i = tail call ptr @ecc_get_curve(i32 noundef 2) #7
  %curve.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %curve.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %curve.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool.not.i, i32 -22, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecdsa_nist_p384_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %__crt_ctx.i, align 8
  %call.i = tail call ptr @ecc_get_curve(i32 noundef 3) #7
  %curve.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %curve.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %curve.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool.not.i, i32 -22, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_ecdsa_generic__226_370_ecdsa_init4, !1, !"__initcall__kmod_ecdsa_generic__226_370_ecdsa_init4", i1 false, i1 false}
!1 = !{!"../crypto/ecdsa.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_ecdsa_exit, !3, !"__exitcall_ecdsa_exit", i1 false, i1 false}
!3 = !{!"../crypto/ecdsa.c", i32 371, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../crypto/ecdsa.c", i32 373, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author229, !8, !"__UNIQUE_ID_author229", i1 false, i1 false}
!8 = !{!"../crypto/ecdsa.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_description230, !10, !"__UNIQUE_ID_description230", i1 false, i1 false}
!10 = !{!"../crypto/ecdsa.c", i32 375, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace231, !12, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!12 = !{!"../crypto/ecdsa.c", i32 376, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto232, !12, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!14 = !{ptr @ecdsa_nist_p192, !15, !"ecdsa_nist_p192", i1 false, i1 false}
!15 = !{!"../crypto/ecdsa.c", i32 319, i32 28}
!16 = !{ptr @ecdsa_nist_p192_registered, !17, !"ecdsa_nist_p192_registered", i1 false, i1 false}
!17 = !{!"../crypto/ecdsa.c", i32 333, i32 13}
!18 = !{ptr @ecdsa_nist_p256, !19, !"ecdsa_nist_p256", i1 false, i1 false}
!19 = !{!"../crypto/ecdsa.c", i32 297, i32 28}
!20 = !{ptr @ecdsa_nist_p384, !21, !"ecdsa_nist_p384", i1 false, i1 false}
!21 = !{!"../crypto/ecdsa.c", i32 275, i32 28}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 1, i32 2000}
