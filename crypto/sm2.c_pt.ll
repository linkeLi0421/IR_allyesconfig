; ModuleID = '/llk/IR_all_yes/crypto/sm2.c_pt.bc'
source_filename = "../crypto/sm2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sm2_compute_z_digest\22, \22a\22\09"
module asm "\09.weak\09__crc_sm2_compute_z_digest\09\09\09\09"
module asm "\09.long\09__crc_sm2_compute_z_digest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm2_compute_z_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22sm2_compute_z_digest\22\09\09\09\09\09"
module asm "__kstrtabns_sm2_compute_z_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.asn1_decoder = type opaque
%struct.sm2_signature_ctx = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.gcry_mpi_point = type { ptr, ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__kstrtab_sm2_compute_z_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm2_compute_z_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_sm2_compute_z_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm2_compute_z_digest to i32), ptr @__kstrtab_sm2_compute_z_digest, ptr @__kstrtabns_sm2_compute_z_digest }, section "___ksymtab+sm2_compute_z_digest", align 4
@__initcall__kmod_sm2_generic__226_454_sm2_init4 = internal global ptr @sm2_init, section ".initcall4.init", align 4
@__exitcall_sm2_exit = internal global ptr @sm2_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [36 x i8] c"sm2_generic.file=crypto/sm2_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [24 x i8] c"sm2_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [67 x i8] c"sm2_generic.author=Tianjia Zhang <tianjia.zhang@linux.alibaba.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [46 x i8] c"sm2_generic.description=SM2 generic algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [30 x i8] c"sm2_generic.alias=sm2-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [37 x i8] c"sm2_generic.alias=crypto-sm2-generic\00", section ".modinfo", align 1
@sm2_z_digest_update.zero = internal constant { [32 x i8], [32 x i8] } zeroinitializer, align 32
@sm2 = internal global %struct.akcipher_alg { ptr null, ptr @sm2_verify, ptr null, ptr null, ptr @sm2_set_pub_key, ptr null, ptr @sm2_max_size, ptr @sm2_init_tfm, ptr @sm2_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 132, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sm2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sm2-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@sm2signature_decoder = external dso_local constant %struct.asn1_decoder, align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sm2p256v1\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0xfffffffeffffffffffffffffffffffffffffffff00000000ffffffffffffffff\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0xfffffffeffffffffffffffffffffffffffffffff00000000fffffffffffffffc\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0x28e9fa9e9d9f5e344d5a9e4bcf6509a7f39789f515ab8f92ddbcbd414d940e93\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0xfffffffeffffffffffffffffffffffff7203df6b21c6052b53bbf40939d54123\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0x32c4ae2c1f1981195f9904466a39c9948fe30bbff2660be1715a4589334c74c7\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"0xbc3736a2f4f6779c59bdcee36b692153d0a9877cc62a474002df32e52139f0a0\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 219, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 49, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 54, i32 9 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 55, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 56, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 57, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 58, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [16 x i8] c"../crypto/sm2.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 59, i32 9 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_sm2_exit, ptr @__initcall__kmod_sm2_generic__226_454_sm2_init4, ptr @__ksymtab_sm2_compute_z_digest, ptr @sm2_z_digest_update.zero, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm2_z_digest_update.zero to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm2_get_signature_r(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @mpi_read_raw_data(ptr noundef nonnull %value, i32 noundef %vlen) #5
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %context, align 4
  %tobool3.not = icmp eq ptr %call, null
  %. = select i1 %tobool3.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm2_get_signature_s(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %tobool1.not = icmp eq i32 %vlen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @mpi_read_raw_data(ptr noundef nonnull %value, i32 noundef %vlen) #5
  %sig_s = getelementptr inbounds %struct.sm2_signature_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %sig_s to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %sig_s, align 4
  %tobool3.not = icmp eq ptr %call, null
  %. = select i1 %tobool3.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm2_compute_z_digest(ptr noundef %tfm, ptr noundef %id, i32 noundef %id_len, ptr noundef %dgst) #0 align 64 {
entry:
  %entl = alloca [2 x i8], align 1
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %entl) #5
  %0 = getelementptr inbounds [2 x i8], ptr %entl, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #5
  %1 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %id_len)
  %cmp = icmp ugt i32 %id_len, 8191
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %Q = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %2 = ptrtoint ptr %Q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Q, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = lshr i32 %id_len, 5
  %conv2 = trunc i32 %4 to i8
  %5 = ptrtoint ptr %entl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %entl, align 1
  %id_len.tr = trunc i32 %id_len to i8
  %conv4 = shl i8 %id_len.tr, 3
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %0, align 1
  %p = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %call6 = tail call i32 @mpi_get_nbits(ptr noundef %8) #5
  %add = add i32 %call6, 7
  %div51 = lshr i32 %add, 3
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 0, i32 2
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1937774191, ptr %__ctx.i.i, align 8
  %arrayidx2.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1226093241, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 388252375, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -628488704, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 3
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1452330820, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 372324522, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 4
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -477237683, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1325724082, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %__desc_desc, i32 5
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %count.i, align 8
  %call9 = call i32 @crypto_sm3_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %entl, i32 noundef 2) #5
  %call10 = call i32 @crypto_sm3_update(ptr noundef nonnull %__desc_desc, ptr noundef %id, i32 noundef %id_len) #5
  %a = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %18 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a, align 4
  %call11 = call fastcc i32 @sm2_z_digest_update(ptr noundef nonnull %__desc_desc, ptr noundef %19, i32 noundef %div51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.end
  %b = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %20 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b, align 4
  %call14 = call fastcc i32 @sm2_z_digest_update(ptr noundef nonnull %__desc_desc, ptr noundef %21, i32 noundef %div51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %G = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %22 = ptrtoint ptr %G to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %G, align 4
  %call17 = call fastcc i32 @sm2_z_digest_update_point(ptr noundef nonnull %__desc_desc, ptr noundef %23, ptr noundef %__crt_ctx.i, i32 noundef %div51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %24 = ptrtoint ptr %Q to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %Q, align 4
  %call21 = call fastcc i32 @sm2_z_digest_update_point(ptr noundef nonnull %__desc_desc, ptr noundef %25, ptr noundef %__crt_ctx.i, i32 noundef %div51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call i32 @crypto_sm3_final(ptr noundef nonnull %__desc_desc, ptr noundef %dgst) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %entl) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_get_nbits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sm3_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm2_z_digest_update(ptr noundef %desc, ptr noundef %m, i32 noundef %pbytes) unnamed_addr #0 align 64 {
entry:
  %inlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inlen) #5
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inlen, align 4, !annotation !45
  %call = call ptr @mpi_get_buffer(ptr noundef %m, ptr noundef nonnull %inlen, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pbytes)
  %cmp = icmp ult i32 %2, %pbytes
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 %pbytes, %2
  %call2 = call i32 @crypto_sm3_update(ptr noundef %desc, ptr noundef nonnull @sm2_z_digest_update.zero, i32 noundef %sub) #5
  %3 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inlen, align 4
  %call3 = call i32 @crypto_sm3_update(ptr noundef %desc, ptr noundef nonnull %call, i32 noundef %4) #5
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pbytes)
  %cmp4 = icmp ugt i32 %2, %pbytes
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %call, i32 %2
  %idx.neg = sub i32 0, %pbytes
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call7 = call i32 @crypto_sm3_update(ptr noundef %desc, ptr noundef %add.ptr6, i32 noundef %pbytes) #5
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call i32 @crypto_sm3_update(ptr noundef %desc, ptr noundef nonnull %call, i32 noundef %2) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then5, %if.then1
  call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inlen) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm2_z_digest_update_point(ptr noundef %desc, ptr noundef %point, ptr noundef %ec, i32 noundef %pbytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mpi_alloc(i32 noundef 0) #5
  %call.i14 = tail call ptr @mpi_alloc(i32 noundef 0) #5
  %call2 = tail call i32 @mpi_ec_get_affine(ptr noundef %call.i, ptr noundef %call.i14, ptr noundef %point, ptr noundef %ec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call fastcc i32 @sm2_z_digest_update(ptr noundef %desc, ptr noundef %call.i, i32 noundef %pbytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call fastcc i32 @sm2_z_digest_update(ptr noundef %desc, ptr noundef %call.i14, i32 noundef %pbytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ -22, %land.lhs.true.if.end_crit_edge ], [ %spec.select, %land.lhs.true5 ]
  tail call void @mpi_free(ptr noundef %call.i) #5
  tail call void @mpi_free(ptr noundef %call.i14) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sm3_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm2_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @sm2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm2_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @sm2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_get_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_ec_get_affine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm2_verify(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %sG.i = alloca %struct.gcry_mpi_point, align 4
  %tP.i = alloca %struct.gcry_mpi_point, align 4
  %sig = alloca %struct.sm2_signature_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sig) #5
  %2 = getelementptr inbounds %struct.sm2_signature_ctx, ptr %sig, i32 0, i32 1
  %Q = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 24
  %3 = ptrtoint ptr %Q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %Q, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_len, align 4
  %7 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_len, align 32
  %add = add i32 %6, %8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 8
  %11 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_len, align 32
  %13 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_len, align 4
  %add12 = add i32 %14, %12
  %conv = zext i32 %add12 to i64
  %call13 = tail call i32 @sg_nents_for_len(ptr noundef %10, i64 noundef %conv) #5
  %15 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_len, align 32
  %17 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_len, align 4
  %add16 = add i32 %18, %16
  %call17 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %10, i32 noundef %call13, ptr noundef nonnull %call9.i, i32 noundef %add16, i32 noundef 0) #5
  %19 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sig, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %2, align 4
  %21 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_len, align 32
  %call19 = call i32 @asn1_ber_decoder(ptr noundef nonnull @sm2signature_decoder, ptr noundef nonnull %sig, ptr noundef nonnull %call9.i, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end22:                                         ; preds = %if.end8
  %23 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_len, align 32
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %24
  %25 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_len, align 4
  %call25 = call ptr @mpi_read_raw_data(ptr noundef %add.ptr, i32 noundef %26) #5
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end22.error_crit_edge, label %if.end28

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end28:                                         ; preds = %if.end22
  %27 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sig, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sG.i) #5
  %31 = ptrtoint ptr %sG.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %sG.i, align 4, !annotation !45
  %32 = getelementptr inbounds %struct.gcry_mpi_point, ptr %sG.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %32, align 4, !annotation !45
  %34 = getelementptr inbounds %struct.gcry_mpi_point, ptr %sG.i, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %34, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tP.i) #5
  %36 = ptrtoint ptr %tP.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %tP.i, align 4, !annotation !45
  %37 = getelementptr inbounds %struct.gcry_mpi_point, ptr %tP.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %37, align 4, !annotation !45
  %39 = getelementptr inbounds %struct.gcry_mpi_point, ptr %tP.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %39, align 4, !annotation !45
  call void @mpi_point_init(ptr noundef nonnull %sG.i) #5
  call void @mpi_point_init(ptr noundef nonnull %tP.i) #5
  %call.i.i = call ptr @mpi_alloc(i32 noundef 0) #5
  %call.i49.i = call ptr @mpi_alloc(i32 noundef 0) #5
  %call.i50.i = call ptr @mpi_alloc(i32 noundef 0) #5
  %call3.i = call i32 @mpi_cmp_ui(ptr noundef %28, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i58 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i58, label %if.end28._sm2_verify.exit_crit_edge, label %lor.lhs.false.i

if.end28._sm2_verify.exit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

lor.lhs.false.i:                                  ; preds = %if.end28
  %n.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %41 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %n.i, align 4
  %call4.i = call i32 @mpi_cmp(ptr noundef %28, ptr noundef %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp5.i, label %lor.lhs.false.i._sm2_verify.exit_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i._sm2_verify.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %call7.i59 = call i32 @mpi_cmp_ui(ptr noundef %30, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i59)
  %cmp8.i = icmp slt i32 %call7.i59, 0
  br i1 %cmp8.i, label %lor.lhs.false6.i._sm2_verify.exit_crit_edge, label %lor.lhs.false9.i

lor.lhs.false6.i._sm2_verify.exit_crit_edge:      ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %43 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %n.i, align 4
  %call11.i = call i32 @mpi_cmp(ptr noundef %30, ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp sgt i32 %call11.i, 0
  br i1 %cmp12.i, label %lor.lhs.false9.i._sm2_verify.exit_crit_edge, label %if.end.i60

lor.lhs.false9.i._sm2_verify.exit_crit_edge:      ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

if.end.i60:                                       ; preds = %lor.lhs.false9.i
  %45 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %n.i, align 4
  call void @mpi_addm(ptr noundef %call.i50.i, ptr noundef %28, ptr noundef %30, ptr noundef %46) #5
  %call14.i = call i32 @mpi_cmp_ui(ptr noundef %call.i50.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end.i60._sm2_verify.exit_crit_edge, label %if.end17.i

if.end.i60._sm2_verify.exit_crit_edge:            ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

if.end17.i:                                       ; preds = %if.end.i60
  %G.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 12
  %47 = ptrtoint ptr %G.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %G.i, align 4
  call void @mpi_ec_mul_point(ptr noundef nonnull %sG.i, ptr noundef %30, ptr noundef %48, ptr noundef %__crt_ctx.i) #5
  %49 = ptrtoint ptr %Q to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %Q, align 4
  call void @mpi_ec_mul_point(ptr noundef nonnull %tP.i, ptr noundef %call.i50.i, ptr noundef %50, ptr noundef %__crt_ctx.i) #5
  call void @mpi_ec_add_points(ptr noundef nonnull %sG.i, ptr noundef nonnull %sG.i, ptr noundef nonnull %tP.i, ptr noundef %__crt_ctx.i) #5
  %call18.i = call i32 @mpi_ec_get_affine(ptr noundef %call.i.i, ptr noundef %call.i49.i, ptr noundef nonnull %sG.i, ptr noundef %__crt_ctx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %if.end20.i, label %if.end17.i._sm2_verify.exit_crit_edge

if.end17.i._sm2_verify.exit_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_sm2_verify.exit

if.end20.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %n.i, align 4
  call void @mpi_addm(ptr noundef %call.i50.i, ptr noundef nonnull %call25, ptr noundef %call.i.i, ptr noundef %52) #5
  %call22.i = call i32 @mpi_cmp(ptr noundef %call.i50.i, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  %spec.select.i = select i1 %tobool23.not.i, i32 0, i32 -129
  br label %_sm2_verify.exit

_sm2_verify.exit:                                 ; preds = %if.end20.i, %if.end17.i._sm2_verify.exit_crit_edge, %if.end.i60._sm2_verify.exit_crit_edge, %lor.lhs.false9.i._sm2_verify.exit_crit_edge, %lor.lhs.false6.i._sm2_verify.exit_crit_edge, %lor.lhs.false.i._sm2_verify.exit_crit_edge, %if.end28._sm2_verify.exit_crit_edge
  %rc.0.i = phi i32 [ -22, %if.end28._sm2_verify.exit_crit_edge ], [ -22, %lor.lhs.false.i._sm2_verify.exit_crit_edge ], [ -22, %lor.lhs.false6.i._sm2_verify.exit_crit_edge ], [ -22, %lor.lhs.false9.i._sm2_verify.exit_crit_edge ], [ -22, %if.end.i60._sm2_verify.exit_crit_edge ], [ -74, %if.end17.i._sm2_verify.exit_crit_edge ], [ %spec.select.i, %if.end20.i ]
  call void @mpi_point_free_parts(ptr noundef nonnull %sG.i) #5
  call void @mpi_point_free_parts(ptr noundef nonnull %tP.i) #5
  call void @mpi_free(ptr noundef %call.i.i) #5
  call void @mpi_free(ptr noundef %call.i49.i) #5
  call void @mpi_free(ptr noundef %call.i50.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tP.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sG.i) #5
  call void @mpi_free(ptr noundef nonnull %call25) #5
  br label %error

error:                                            ; preds = %_sm2_verify.exit, %if.end22.error_crit_edge, %if.end8.error_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end8.error_crit_edge ], [ %rc.0.i, %_sm2_verify.exit ], [ -12, %if.end22.error_crit_edge ]
  %53 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sig, align 4
  call void @mpi_free(ptr noundef %54) #5
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  call void @mpi_free(ptr noundef %56) #5
  call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sig) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm2_set_pub_key(ptr nocapture noundef readonly %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @mpi_read_raw_data(ptr noundef %key, i32 noundef %keylen) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mpi_normalize(ptr noundef nonnull %call1) #5
  %Q = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %0 = ptrtoint ptr %Q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Q, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #5
  %call.i = tail call i32 @mpi_get_nbits(ptr noundef nonnull %call1) #5
  %add.i = add i32 %call.i, 7
  %div49.i = lshr i32 %add.i, 3
  %2 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div49.i, ptr %n.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div49.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.sm2_ecc_os2ec.exit_crit_edge, label %if.end.i

if.end.sm2_ecc_os2ec.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sm2_ecc_os2ec.exit

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n.i, align 4
  %call2.i = call i32 @mpi_print(i32 noundef 5, ptr noundef nonnull %call9.i.i, i32 noundef %4, ptr noundef nonnull %n.i, ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_freebuf.i_crit_edge

if.end.i.err_freebuf.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freebuf.i

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end5.i.err_freebuf.i_crit_edge, label %lor.lhs.false.i

if.end5.i.err_freebuf.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freebuf.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %sub.i = add i32 %6, -1
  %rem.i = and i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool6.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %lor.lhs.false.i.err_freebuf.i_crit_edge

lor.lhs.false.i.err_freebuf.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freebuf.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp9.not.i = icmp eq i8 %8, 4
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.err_freebuf.i_crit_edge

if.end8.i.err_freebuf.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freebuf.i

if.end12.i:                                       ; preds = %if.end8.i
  %div1450.i = lshr i32 %sub.i, 1
  %9 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div1450.i, ptr %n.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 1
  %call15.i = call ptr @mpi_read_raw_data(ptr noundef %add.ptr.i, i32 noundef %div1450.i) #5
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end12.i.err_freebuf.i_crit_edge, label %if.end18.i

if.end12.i.err_freebuf.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freebuf.i

if.end18.i:                                       ; preds = %if.end12.i
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i, i32 %11
  %call21.i = call ptr @mpi_read_raw_data(ptr noundef %add.ptr20.i, i32 noundef %11) #5
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end18.i.err_freex.i_crit_edge, label %if.end24.i

if.end18.i.err_freex.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_freex.i

if.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_normalize(ptr noundef nonnull %call15.i) #5
  call void @mpi_normalize(ptr noundef nonnull %call21.i) #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call26.i = call ptr @mpi_set(ptr noundef %13, ptr noundef nonnull %call15.i) #5
  %y27.i = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %y27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %y27.i, align 4
  %call28.i = call ptr @mpi_set(ptr noundef %15, ptr noundef nonnull %call21.i) #5
  %z.i = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %z.i, align 4
  %call29.i = call ptr @mpi_set_ui(ptr noundef %17, i32 noundef 1) #5
  call void @mpi_free(ptr noundef nonnull %call21.i) #5
  br label %err_freex.i

err_freex.i:                                      ; preds = %if.end24.i, %if.end18.i.err_freex.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.end24.i ], [ -12, %if.end18.i.err_freex.i_crit_edge ]
  call void @mpi_free(ptr noundef nonnull %call15.i) #5
  br label %err_freebuf.i

err_freebuf.i:                                    ; preds = %err_freex.i, %if.end12.i.err_freebuf.i_crit_edge, %if.end8.i.err_freebuf.i_crit_edge, %lor.lhs.false.i.err_freebuf.i_crit_edge, %if.end5.i.err_freebuf.i_crit_edge, %if.end.i.err_freebuf.i_crit_edge
  %rc.1.i = phi i32 [ %call2.i, %if.end.i.err_freebuf.i_crit_edge ], [ -22, %if.end5.i.err_freebuf.i_crit_edge ], [ -22, %lor.lhs.false.i.err_freebuf.i_crit_edge ], [ -22, %if.end8.i.err_freebuf.i_crit_edge ], [ %rc.0.i, %err_freex.i ], [ -12, %if.end12.i.err_freebuf.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %sm2_ecc_os2ec.exit

sm2_ecc_os2ec.exit:                               ; preds = %err_freebuf.i, %if.end.sm2_ecc_os2ec.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.1.i, %err_freebuf.i ], [ -12, %if.end.sm2_ecc_os2ec.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #5
  call void @mpi_free(ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %sm2_ecc_os2ec.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sm2_ecc_os2ec.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm2_max_size(ptr nocapture noundef readnone %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm2_init_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.1) #5
  %call3.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.2) #5
  %call5.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.3) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %tobool6.not.i = icmp eq ptr %call3.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  %tobool8.not.i = icmp eq ptr %call5.i, null
  %or.cond77.i = select i1 %or.cond.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond77.i, label %entry.sm2_ec_ctx_init.exit_crit_edge, label %if.end.i

entry.sm2_ec_ctx_init.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sm2_ec_ctx_init.exit

if.end.i:                                         ; preds = %entry
  %call9.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.5) #5
  %call10.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.6) #5
  %tobool11.not.i = icmp eq ptr %call9.i, null
  %tobool13.not.i = icmp eq ptr %call10.i, null
  %or.cond78.i = select i1 %tobool11.not.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond78.i, label %if.end.i.free.i_crit_edge, label %if.end15.i

if.end.i.free.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call ptr @mpi_point_new(i32 noundef 0) #5
  %Q.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %0 = ptrtoint ptr %Q.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call16.i, ptr %Q.i, align 4
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %if.end15.i.free.i_crit_edge, label %if.end20.i

if.end15.i.free.i_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end20.i:                                       ; preds = %if.end15.i
  %call21.i = tail call ptr @mpi_point_new(i32 noundef 0) #5
  %G.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %1 = ptrtoint ptr %G.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call21.i, ptr %G.i, align 4
  %tobool23.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %Q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %Q.i, align 4
  tail call void @mpi_point_release(ptr noundef %3) #5
  br label %free.i

if.end26.i:                                       ; preds = %if.end20.i
  %4 = ptrtoint ptr %call21.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call21.i, align 4
  %call29.i = tail call ptr @mpi_set(ptr noundef %5, ptr noundef nonnull %call9.i) #5
  %6 = ptrtoint ptr %G.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %G.i, align 4
  %y31.i = getelementptr inbounds %struct.gcry_mpi_point, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %y31.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %y31.i, align 4
  %call32.i = tail call ptr @mpi_set(ptr noundef %9, ptr noundef nonnull %call10.i) #5
  %10 = ptrtoint ptr %G.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %G.i, align 4
  %z.i = getelementptr inbounds %struct.gcry_mpi_point, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %z.i, align 4
  %call34.i = tail call ptr @mpi_set_ui(ptr noundef %13, i32 noundef 1) #5
  %call35.i = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.4) #5
  %n36.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %14 = ptrtoint ptr %n36.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35.i, ptr %n36.i, align 4
  %tobool38.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end42.i

if.then39.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %Q.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %Q.i, align 4
  tail call void @mpi_point_release(ptr noundef %16) #5
  %17 = ptrtoint ptr %G.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %G.i, align 4
  tail call void @mpi_point_release(ptr noundef %18) #5
  br label %free.i

if.end42.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %h43.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %19 = ptrtoint ptr %h43.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %h43.i, align 4
  %name.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str, ptr %name.i, align 4
  tail call void @mpi_ec_init(ptr noundef %__crt_ctx.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull %call3.i, ptr noundef nonnull %call5.i) #5
  br label %free.i

free.i:                                           ; preds = %if.end42.i, %if.then39.i, %if.then24.i, %if.end15.i.free.i_crit_edge, %if.end.i.free.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.end42.i ], [ -22, %if.then39.i ], [ -12, %if.then24.i ], [ -12, %if.end15.i.free.i_crit_edge ], [ -22, %if.end.i.free.i_crit_edge ]
  tail call void @mpi_free(ptr noundef %call9.i) #5
  tail call void @mpi_free(ptr noundef %call10.i) #5
  br label %sm2_ec_ctx_init.exit

sm2_ec_ctx_init.exit:                             ; preds = %free.i, %entry.sm2_ec_ctx_init.exit_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %free.i ], [ -22, %entry.sm2_ec_ctx_init.exit_crit_edge ]
  tail call void @mpi_free(ptr noundef %call.i) #5
  tail call void @mpi_free(ptr noundef %call3.i) #5
  tail call void @mpi_free(ptr noundef %call5.i) #5
  ret i32 %rc.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm2_exit_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @mpi_ec_deinit(ptr noundef %__crt_ctx.i) #5
  %0 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 132)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_point_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_addm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_ec_mul_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_ec_add_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_point_free_parts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_print(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_scanval(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_point_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_point_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_ec_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_ec_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_sm2_compute_z_digest, !1, !"__ksymtab_sm2_compute_z_digest", i1 false, i1 false}
!1 = !{!"../crypto/sm2.c", i32 294, i32 1}
!2 = !{ptr @__initcall__kmod_sm2_generic__226_454_sm2_init4, !3, !"__initcall__kmod_sm2_generic__226_454_sm2_init4", i1 false, i1 false}
!3 = !{!"../crypto/sm2.c", i32 454, i32 1}
!4 = !{ptr @__exitcall_sm2_exit, !5, !"__exitcall_sm2_exit", i1 false, i1 false}
!5 = !{!"../crypto/sm2.c", i32 455, i32 1}
!6 = !{ptr @__UNIQUE_ID_file227, !7, !"__UNIQUE_ID_file227", i1 false, i1 false}
!7 = !{!"../crypto/sm2.c", i32 457, i32 1}
!8 = !{ptr @__UNIQUE_ID_license228, !7, !"__UNIQUE_ID_license228", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author229, !10, !"__UNIQUE_ID_author229", i1 false, i1 false}
!10 = !{!"../crypto/sm2.c", i32 458, i32 1}
!11 = !{ptr @__UNIQUE_ID_description230, !12, !"__UNIQUE_ID_description230", i1 false, i1 false}
!12 = !{!"../crypto/sm2.c", i32 459, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_userspace231, !14, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!14 = !{!"../crypto/sm2.c", i32 460, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto232, !14, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!16 = !{ptr @sm2_z_digest_update.zero, !17, !"zero", i1 false, i1 false}
!17 = !{!"../crypto/sm2.c", i32 219, i32 29}
!18 = !{ptr @sm2, !19, !"sm2", i1 false, i1 false}
!19 = !{!"../crypto/sm2.c", i32 429, i32 28}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/sm2.c", i32 49, i32 10}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/sm2.c", i32 54, i32 9}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../crypto/sm2.c", i32 55, i32 9}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/sm2.c", i32 56, i32 9}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/sm2.c", i32 57, i32 9}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/sm2.c", i32 58, i32 9}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/sm2.c", i32 59, i32 9}
!34 = distinct !{null, !35, !"sm2_ecp", i1 false, i1 false}
!35 = !{!"../crypto/sm2.c", i32 48, i32 38}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{!"branch_weights", i32 1, i32 2000}
