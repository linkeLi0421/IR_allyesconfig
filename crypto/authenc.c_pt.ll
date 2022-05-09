; ModuleID = '/llk/IR_all_yes/crypto/authenc.c_pt.bc'
source_filename = "../crypto/authenc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_authenc_extractkeys\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_authenc_extractkeys\09\09\09\09"
module asm "\09.long\09__crc_crypto_authenc_extractkeys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_authenc_extractkeys:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_authenc_extractkeys\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_authenc_extractkeys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rtattr = type { i16, i16 }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.aead_instance = type { ptr, [124 x i8], %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.122, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.120, ptr, ptr, ptr, ptr, %union.anon.121, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.120 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.121 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }

@__kstrtab_crypto_authenc_extractkeys = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_authenc_extractkeys = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_authenc_extractkeys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_authenc_extractkeys to i32), ptr @__kstrtab_crypto_authenc_extractkeys, ptr @__kstrtabns_crypto_authenc_extractkeys }, section "___ksymtab_gpl+crypto_authenc_extractkeys", align 4
@crypto_authenc_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_authenc_create, [128 x i8] c"authenc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_authenc__343_464_crypto_authenc_module_init4 = internal global ptr @crypto_authenc_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_authenc_module_exit = internal global ptr @crypto_authenc_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file344 = internal constant [28 x i8] c"authenc.file=crypto/authenc\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [20 x i8] c"authenc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [50 x i8] c"authenc.description=Simple AEAD wrapper for IPsec\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace347 = internal constant [22 x i8] c"authenc.alias=authenc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto348 = internal constant [29 x i8] c"authenc.alias=crypto-authenc\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"authenc(%s,%s)\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"crypto_authenc_tmpl\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 448, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [20 x i8] c"../crypto/authenc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 410, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto348, ptr @__UNIQUE_ID_alias_userspace347, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_crypto_authenc_module_exit, ptr @__initcall__kmod_authenc__343_464_crypto_authenc_module_init4, ptr @__ksymtab_crypto_authenc_extractkeys, ptr @crypto_authenc_module_exit, ptr @crypto_authenc_tmpl, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_authenc_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_authenc_extractkeys(ptr nocapture noundef writeonly %keys, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ugt i32 %keylen, 3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %key, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp1 = icmp ult i16 %1, 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %keylen)
  %cmp6.not = icmp ugt i32 %conv, %keylen
  %or.cond = or i1 %cmp1, %cmp6.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %rta_type = getelementptr inbounds %struct.rtattr, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %rta_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rta_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp9.not = icmp eq i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp15.not = icmp eq i16 %1, 8
  %or.cond55 = select i1 %cmp9.not, i1 %cmp15.not, i1 false
  br i1 %or.cond55, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %enckeylen19 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %6 = ptrtoint ptr %enckeylen19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %enckeylen19, align 4
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %key, align 2
  %conv21 = zext i16 %8 to i32
  %sub25 = sub i32 %keylen, %conv21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25, i32 %5)
  %cmp27 = icmp ult i32 %sub25, %5
  br i1 %cmp27, label %do.end.cleanup_crit_edge, label %if.end30

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr22 = getelementptr i8, ptr %key, i32 %conv21
  %sub32 = sub i32 %sub25, %5
  %authkeylen = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %9 = ptrtoint ptr %authkeylen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub32, ptr %authkeylen, align 4
  %10 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr22, ptr %keys, align 4
  %add.ptr34 = getelementptr i8, ptr %add.ptr22, i32 %sub32
  %enckey = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %11 = ptrtoint ptr %enckey to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr34, ptr %enckey, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_module_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_authenc_tmpl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_module_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_authenc_tmpl) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_create(ptr noundef %tmpl, ptr noundef %tb) #4 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !27
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 956) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call8 = call ptr @crypto_attr_alg_name(ptr noundef %3) #8
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call9 = call i32 @crypto_grab_ahash(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call8, i32 noundef 0, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end12:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -128
  %enc15 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %arrayidx17 = getelementptr ptr, ptr %tb, i32 2
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17, align 4
  %call18 = call ptr @crypto_attr_alg_name(ptr noundef %9) #8
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %call19 = call i32 @crypto_grab_skcipher(ptr noundef %enc15, ptr noundef %base.i, ptr noundef %call18, i32 noundef 0, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end12.err_free_inst_crit_edge

if.end12.err_free_inst_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end22:                                         ; preds = %if.end12
  %alg.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 32
  %12 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 128
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %16 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cra_alignmask, align 4
  %mul124 = add i32 %17, %15
  %add27 = shl i32 %mul124, 1
  %neg = xor i32 %17, -1
  %and = and i32 %add27, %neg
  %reqoff = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 52
  %18 = ptrtoint ptr %reqoff to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %reqoff, align 8
  %19 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name32 = getelementptr i8, ptr %7, i32 40
  %cra_name35 = getelementptr i8, ptr %13, i32 40
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_name32, ptr noundef %cra_name35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call37)
  %cmp = icmp sgt i32 %call37, 127
  br i1 %cmp, label %if.end22.err_free_inst_crit_edge, label %if.end39

if.end22.err_free_inst_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end39:                                         ; preds = %if.end22
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name42 = getelementptr i8, ptr %7, i32 168
  %cra_driver_name45 = getelementptr i8, ptr %13, i32 168
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_driver_name42, ptr noundef %cra_driver_name45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, 127
  br i1 %cmp48, label %if.end39.err_free_inst_crit_edge, label %if.end50

if.end39.err_free_inst_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end50:                                         ; preds = %if.end39
  %cra_priority = getelementptr i8, ptr %13, i32 32
  %20 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_priority, align 32
  %mul52 = mul i32 %21, 10
  %cra_priority53 = getelementptr i8, ptr %7, i32 32
  %22 = ptrtoint ptr %cra_priority53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cra_priority53, align 32
  %add54 = add i32 %mul52, %23
  %cra_priority56 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %24 = ptrtoint ptr %cra_priority56 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add54, ptr %cra_priority56, align 32
  %cra_blocksize = getelementptr i8, ptr %13, i32 20
  %25 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize59 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %cra_blocksize59 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cra_blocksize59, align 4
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask62 = getelementptr i8, ptr %13, i32 28
  %30 = ptrtoint ptr %cra_alignmask62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_alignmask62, align 4
  %or = or i32 %31, %29
  %cra_alignmask64 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %cra_alignmask64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %cra_alignmask64, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12, ptr %cra_ctxsize, align 8
  %ivsize.i = getelementptr i8, ptr %13, i32 -100
  %34 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ivsize.i, align 4
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %36 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %13, i32 -96
  %37 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %39 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %chunksize, align 32
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i, align 128
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %42 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %43 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @crypto_authenc_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %44 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @crypto_authenc_exit_tfm, ptr %exit, align 4
  %45 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @crypto_authenc_setkey, ptr %19, align 128
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %46 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @crypto_authenc_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %47 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @crypto_authenc_decrypt, ptr %decrypt, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @crypto_authenc_free, ptr %call7.i.i, align 128
  %call69 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end50.cleanup_crit_edge, label %if.end50.err_free_inst_crit_edge

if.end50.err_free_inst_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_inst:                                    ; preds = %if.end50.err_free_inst_crit_edge, %if.end39.err_free_inst_crit_edge, %if.end22.err_free_inst_crit_edge, %if.end12.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call9, %if.end4.err_free_inst_crit_edge ], [ %call19, %if.end12.err_free_inst_crit_edge ], [ -36, %if.end22.err_free_inst_crit_edge ], [ -36, %if.end39.err_free_inst_crit_edge ], [ %call69, %if.end50.err_free_inst_crit_edge ]
  %enc.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %enc.i) #8
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end50.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_init_tfm(ptr nocapture noundef %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %enc7 = getelementptr i8, ptr %1, i32 668
  %call.i50 = tail call ptr @crypto_spawn_tfm2(ptr noundef %enc7) #8
  %cmp.i51 = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.end.err_free_ahash_crit_edge, label %if.end12

if.end.err_free_ahash_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_ahash

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @crypto_get_default_null_skcipher() #8
  %cmp.i52 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %err_free_skcipher, label %if.end17

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %enc19 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %enc19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i50, ptr %enc19, align 4
  %null20 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %5 = ptrtoint ptr %null20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %null20, align 4
  %reqoff = getelementptr i8, ptr %1, i32 696
  %6 = ptrtoint ptr %reqoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqoff, align 4
  %add = add i32 %7, 80
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqsize.i, align 32
  %add22 = add i32 %9, 128
  %10 = ptrtoint ptr %call.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i50, align 128
  %add24 = add i32 %11, 128
  %12 = tail call i32 @llvm.umax.i32(i32 %add22, i32 %add24)
  %add25 = add i32 %add, %12
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %13 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add25, ptr %reqsize1.i, align 4
  br label %cleanup

err_free_skcipher:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i50, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i50, ptr noundef %base.i.i) #8
  br label %err_free_ahash

err_free_ahash:                                   ; preds = %err_free_skcipher, %if.end.err_free_ahash_crit_edge
  %err.0.in = phi ptr [ %call.i50, %if.end.err_free_ahash_crit_edge ], [ %call13, %err_free_skcipher ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %base.i.i53 = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i53) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_ahash, %if.end17, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %err_free_ahash ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_exit_tfm(ptr nocapture noundef readonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #8
  %enc = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc, align 4
  %base.i.i2 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i2) #8
  tail call void @crypto_put_default_null_skcipher() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_setkey(ptr nocapture noundef readonly %authenc, ptr noundef %key, i32 noundef %keylen) #4 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %enc2 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 1
  %2 = ptrtoint ptr %enc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #8
  %4 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %5 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %6 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp.i = icmp ugt i32 %keylen, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i:                                  ; preds = %entry
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %key, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp1.i = icmp ult i16 %8, 4
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %keylen)
  %cmp6.not.i = icmp ugt i32 %conv.i, %keylen
  %or.cond.i = or i1 %cmp1.i, %cmp6.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.out_crit_edge, label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i
  %rta_type.i = getelementptr inbounds %struct.rtattr, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %rta_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rta_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp9.not.i = icmp eq i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp15.not.i = icmp eq i16 %8, 8
  %or.cond55.i = select i1 %cmp9.not.i, i1 %cmp15.not.i, i1 false
  br i1 %or.cond55.i, label %do.end.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end.i:                                         ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %6, align 4
  %sub25.i = sub i32 %keylen, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25.i, i32 %12)
  %cmp27.i = icmp ult i32 %sub25.i, %12
  br i1 %cmp27.i, label %do.end.i.out_crit_edge, label %if.end

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %do.end.i
  %add.ptr22.i = getelementptr i8, ptr %key, i32 %conv.i
  %sub32.i = sub i32 %sub25.i, %12
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub32.i, ptr %5, align 4
  %15 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr22.i, ptr %keys, align 4
  %add.ptr34.i = getelementptr i8, ptr %add.ptr22.i, i32 %sub32.i
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr34.i, ptr %4, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %18, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i19 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3
  %19 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i.i19, align 128
  %and = and i32 %20, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call5 = tail call i32 @crypto_ahash_setkey(ptr noundef %1, ptr noundef %add.ptr22.i, i32 noundef %sub32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i21 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base.i.i21, align 128
  %and.i.i22 = and i32 %22, -1048321
  store i32 %and.i.i22, ptr %base.i.i21, align 128
  %23 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i.i19, align 128
  %and9 = and i32 %24, 1048320
  %or.i.i25 = or i32 %and9, %and.i.i22
  store i32 %or.i.i25, ptr %base.i.i21, align 128
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %6, align 4
  %call10 = tail call i32 @crypto_skcipher_setkey(ptr noundef %3, ptr noundef %26, i32 noundef %28) #8
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %do.end.i.out_crit_edge, %if.end.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.out_crit_edge ], [ %call10, %if.end7 ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ], [ -22, %do.end.i.out_crit_edge ]
  %29 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #8, !srcloc !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_encrypt(ptr noundef %req) #4 align 64 {
entry:
  %__skreq_desc.i = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %enc5 = getelementptr i8, ptr %1, i32 132
  %4 = ptrtoint ptr %enc5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc5, align 4
  %cryptlen6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %cryptlen6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cryptlen6, align 4
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %reqoff = getelementptr i8, ptr %3, i32 696
  %8 = ptrtoint ptr %reqoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqoff, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %9
  %src9 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src9, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen, align 8
  %call10 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %11, i32 noundef %13) #8
  %14 = ptrtoint ptr %src9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src9, align 4
  %dst12 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %dst12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst12, align 8
  %cmp.not = icmp eq ptr %15, %17
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__skreq_desc.i) #8
  %20 = call ptr @memset(ptr %__skreq_desc.i, i32 255, i32 512)
  %null.i = getelementptr i8, ptr %19, i32 136
  %21 = ptrtoint ptr %null.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %null.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %22, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %flags.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %flags4.i.i, align 4
  %29 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assoclen, align 8
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 2
  %31 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %15, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 3
  %32 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %17, ptr %dst2.i.i, align 4
  %33 = ptrtoint ptr %__skreq_desc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %__skreq_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 1
  %34 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %iv4.i.i, align 4
  %call3.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__skreq_desc.i) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__skreq_desc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dst15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %35 = ptrtoint ptr %dst12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst12, align 8
  %37 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen, align 8
  %call19 = call ptr @scatterwalk_ffwd(ptr noundef %dst15, ptr noundef %36, i32 noundef %38) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %dst.0 = phi ptr [ %call19, %if.end ], [ %call10, %entry.if.end20_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @crypto_authenc_encrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %flags4.i, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %45 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 2
  %47 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call10, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 3
  %48 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dst.0, ptr %dst2.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %7, ptr %add.ptr, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 1
  %50 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %46, ptr %iv4.i, align 4
  %call22 = call i32 @crypto_skcipher_encrypt(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %53 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %54, i32 12
  %55 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %__crt_ctx.i.i.i = getelementptr i8, ptr %54, i32 128
  %57 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %reqoff.i = getelementptr i8, ptr %56, i32 696
  %59 = ptrtoint ptr %reqoff.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reqoff.i, align 4
  %add.ptr.i = getelementptr i8, ptr %tail, i32 %60
  %61 = ptrtoint ptr %tail to i32
  %__crt_alg.i.i51.i = getelementptr inbounds %struct.crypto_ahash, ptr %58, i32 0, i32 10, i32 3
  %62 = ptrtoint ptr %__crt_alg.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %__crt_alg.i.i51.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %reass.add.i = shl i32 %65, 1
  %add11.i = add i32 %reass.add.i, %61
  %neg.i = xor i32 %65, -1
  %and.i = and i32 %add11.i, %neg.i
  %66 = inttoptr i32 %and.i to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %58, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 3
  %67 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %68 = ptrtoint ptr %dst12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst12, align 8
  %70 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %assoclen, align 8
  %72 = ptrtoint ptr %cryptlen6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cryptlen6, align 4
  %add15.i = add i32 %73, %71
  %src1.i.i67 = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 2
  %74 = ptrtoint ptr %src1.i.i67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %69, ptr %src1.i.i67, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 1
  %75 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add15.i, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 3
  %76 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %66, ptr %result3.i.i, align 32
  %complete.i.i68 = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 1
  %77 = ptrtoint ptr %complete.i.i68 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @authenc_geniv_ahash_done, ptr %complete.i.i68, align 8
  %data2.i.i69 = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 2
  %78 = ptrtoint ptr %data2.i.i69 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %req, ptr %data2.i.i69, align 4
  %flags4.i.i70 = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 4
  %79 = ptrtoint ptr %flags4.i.i70 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %52, ptr %flags4.i.i70, align 4
  %call16.i = call i32 @crypto_ahash_digest(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 -128
  %80 = ptrtoint ptr %dst12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dst12, align 8
  %82 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %assoclen, align 8
  %84 = ptrtoint ptr %cryptlen6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cryptlen6, align 4
  %add20.i = add i32 %85, %83
  %86 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @scatterwalk_map_and_copy(ptr noundef %66, ptr noundef %81, i32 noundef %add20.i, i32 noundef %87, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.then.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call16.i, %if.end25.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_decrypt(ptr noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %reqoff = getelementptr i8, ptr %5, i32 696
  %8 = ptrtoint ptr %reqoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqoff, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %9
  %10 = ptrtoint ptr %tail to i32
  %__crt_alg.i.i51 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i51, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_alignmask.i.i, align 4
  %reass.add = shl i32 %14, 1
  %add12 = add i32 %reass.add, %10
  %neg = xor i32 %14, -1
  %and = and i32 %add12, %neg
  %15 = inttoptr i32 %and to ptr
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 3
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cryptlen, align 4
  %add16 = sub i32 %20, %3
  %sub17 = add i32 %add16, %22
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 1
  %24 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub17, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 3
  %25 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %result3.i, align 32
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @authenc_verify_ahash_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 2
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 4
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %flags4.i, align 4
  %call19 = tail call i32 @crypto_ahash_digest(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end ], [ %call19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_free(ptr noundef %inst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  %enc = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %enc) #8
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #8
  tail call void @kfree(ptr noundef %inst) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_encrypt_done(ptr nocapture noundef readonly %req, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %6 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %tail.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 36
  %reqoff.i = getelementptr i8, ptr %5, i32 696
  %8 = ptrtoint ptr %reqoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqoff.i, align 4
  %add.ptr.i = getelementptr i8, ptr %tail.i, i32 %9
  %10 = ptrtoint ptr %tail.i to i32
  %__crt_alg.i.i51.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i51.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %reass.add.i = shl i32 %14, 1
  %add11.i = add i32 %reass.add.i, %10
  %neg.i = xor i32 %14, -1
  %and.i = and i32 %add11.i, %neg.i
  %15 = inttoptr i32 %and.i to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 3
  %16 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst.i, align 8
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cryptlen.i, align 4
  %add15.i = add i32 %22, %20
  %src1.i.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add15.i, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr.i, i32 0, i32 3
  %25 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %result3.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @authenc_geniv_ahash_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 2
  %27 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr.i, i32 0, i32 4
  %28 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flags4.i.i, align 4
  %call16.i = tail call i32 @crypto_ahash_digest(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %out.thread, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %29 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst.i, align 8
  %31 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %assoclen.i, align 8
  %33 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cryptlen.i, align 4
  %add20.i = add i32 %34, %32
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i, align 128
  tail call void @scatterwalk_map_and_copy(ptr noundef %15, ptr noundef %30, i32 noundef %add20.i, i32 noundef %36, i32 noundef 1) #8
  br label %if.then.i

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call16.i, %if.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.addr.0)
  %cmp.not.i = icmp eq i32 %err.addr.0, -115
  br i1 %cmp.not.i, label %out.authenc_request_complete.exit_crit_edge, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

out.authenc_request_complete.exit_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenc_request_complete.exit

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %out.thread
  %err.addr.07 = phi i32 [ 0, %out.thread ], [ %err.addr.0, %out.if.then.i_crit_edge ]
  %complete.i.i3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %complete.i.i3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %complete.i.i3, align 8
  tail call void %38(ptr noundef %1, i32 noundef %err.addr.07) #8
  br label %authenc_request_complete.exit

authenc_request_complete.exit:                    ; preds = %if.then.i, %out.authenc_request_complete.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @authenc_geniv_ahash_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %tail = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 36
  %reqoff = getelementptr i8, ptr %5, i32 696
  %6 = ptrtoint ptr %reqoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqoff, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %7
  %result = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %dst = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 8
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen, align 4
  %add = add i32 %15, %13
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 128
  tail call void @scatterwalk_map_and_copy(ptr noundef %9, ptr noundef %11, i32 noundef %add, i32 noundef %17, i32 noundef 1) #8
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %complete.i, align 8
  tail call void %19(ptr noundef %1, i32 noundef %err) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @authenc_verify_ahash_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.addr.0)
  %cmp.not.i = icmp eq i32 %err.addr.0, -115
  br i1 %cmp.not.i, label %out.authenc_request_complete.exit_crit_edge, label %if.then.i

out.authenc_request_complete.exit_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenc_request_complete.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %err.addr.0) #8
  br label %authenc_request_complete.exit

authenc_request_complete.exit:                    ; preds = %if.then.i, %out.authenc_request_complete.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %reqoff = getelementptr i8, ptr %3, i32 696
  %4 = ptrtoint ptr %reqoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqoff, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %5
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 128
  %result = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %add.ptr10 = getelementptr i8, ptr %9, i32 %7
  %src11 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src11, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr10, ptr noundef %11, i32 noundef %13, i32 noundef %7, i32 noundef 0) #8
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %result, align 32
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %add.ptr10, ptr noundef %15, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %16 = ptrtoint ptr %src11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src11, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %assoclen, align 8
  %call17 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %src11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src11, align 4
  %dst19 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %22 = ptrtoint ptr %dst19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst19, align 8
  %cmp.not = icmp eq ptr %21, %23
  br i1 %cmp.not, label %if.end.if.end26_crit_edge, label %if.then20

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dst21 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %24 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen, align 8
  %call25 = tail call ptr @scatterwalk_ffwd(ptr noundef %dst21, ptr noundef %23, i32 noundef %25) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end.if.end26_crit_edge
  %dst.0 = phi ptr [ %call25, %if.then20 ], [ %call17, %if.end.if.end26_crit_edge ]
  %enc = getelementptr i8, ptr %1, i32 132
  %26 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enc, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i, ptr %result, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %nbytes, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %30, ptr %flags4.i, align 4
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cryptlen, align 4
  %sub = sub i32 %39, %7
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 2
  %42 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call17, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 3
  %43 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dst.0, ptr %dst2.i, align 4
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %add.ptr, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 1
  %45 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %iv4.i, align 4
  %call29 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end26 ], [ -74, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_crypto_authenc_extractkeys, !1, !"__ksymtab_crypto_authenc_extractkeys", i1 false, i1 false}
!1 = !{!"../crypto/authenc.c", i32 82, i32 1}
!2 = !{ptr @__initcall__kmod_authenc__343_464_crypto_authenc_module_init4, !3, !"__initcall__kmod_authenc__343_464_crypto_authenc_module_init4", i1 false, i1 false}
!3 = !{!"../crypto/authenc.c", i32 464, i32 1}
!4 = !{ptr @__exitcall_crypto_authenc_module_exit, !5, !"__exitcall_crypto_authenc_module_exit", i1 false, i1 false}
!5 = !{!"../crypto/authenc.c", i32 465, i32 1}
!6 = !{ptr @__UNIQUE_ID_file344, !7, !"__UNIQUE_ID_file344", i1 false, i1 false}
!7 = !{!"../crypto/authenc.c", i32 467, i32 1}
!8 = !{ptr @__UNIQUE_ID_license345, !7, !"__UNIQUE_ID_license345", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description346, !10, !"__UNIQUE_ID_description346", i1 false, i1 false}
!10 = !{!"../crypto/authenc.c", i32 468, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace347, !12, !"__UNIQUE_ID_alias_userspace347", i1 false, i1 false}
!12 = !{!"../crypto/authenc.c", i32 469, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto348, !12, !"__UNIQUE_ID_alias_crypto348", i1 false, i1 false}
!14 = !{ptr @crypto_authenc_tmpl, !15, !"crypto_authenc_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/authenc.c", i32 448, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/authenc.c", i32 410, i32 8}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i64 2149242884}
