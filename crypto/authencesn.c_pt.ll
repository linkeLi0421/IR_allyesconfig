; ModuleID = '/llk/IR_all_yes/crypto/authencesn.c_pt.bc'
source_filename = "../crypto/authencesn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
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
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }

@crypto_authenc_esn_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_authenc_esn_create, [128 x i8] c"authencesn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_authencesn__342_479_crypto_authenc_esn_module_init4 = internal global ptr @crypto_authenc_esn_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_authenc_esn_module_exit = internal global ptr @crypto_authenc_esn_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file343 = internal constant [34 x i8] c"authencesn.file=crypto/authencesn\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [23 x i8] c"authencesn.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [66 x i8] c"authencesn.author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [77 x i8] c"authencesn.description=AEAD wrapper for IPsec with extended sequence numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace347 = internal constant [28 x i8] c"authencesn.alias=authencesn\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto348 = internal constant [35 x i8] c"authencesn.alias=crypto-authencesn\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"authencesn(%s,%s)\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"crypto_authenc_esn_tmpl\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 463, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../crypto/authencesn.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 425, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto348, ptr @__UNIQUE_ID_alias_userspace347, ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__exitcall_crypto_authenc_esn_module_exit, ptr @__initcall__kmod_authencesn__342_479_crypto_authenc_esn_module_init4, ptr @crypto_authenc_esn_module_exit, ptr @crypto_authenc_esn_tmpl, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_authenc_esn_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_authenc_esn_tmpl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_authenc_esn_tmpl) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
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
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 952) #11
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
  %14 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name26 = getelementptr i8, ptr %7, i32 40
  %cra_name29 = getelementptr i8, ptr %13, i32 40
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_name26, ptr noundef %cra_name29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call31)
  %cmp = icmp sgt i32 %call31, 127
  br i1 %cmp, label %if.end22.err_free_inst_crit_edge, label %if.end33

if.end22.err_free_inst_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end33:                                         ; preds = %if.end22
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name36 = getelementptr i8, ptr %7, i32 168
  %cra_driver_name39 = getelementptr i8, ptr %13, i32 168
  %call41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_driver_name36, ptr noundef %cra_driver_name39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call41)
  %cmp42 = icmp sgt i32 %call41, 127
  br i1 %cmp42, label %if.end33.err_free_inst_crit_edge, label %if.end44

if.end33.err_free_inst_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end44:                                         ; preds = %if.end33
  %cra_priority = getelementptr i8, ptr %13, i32 32
  %15 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cra_priority, align 32
  %mul = mul i32 %16, 10
  %cra_priority46 = getelementptr i8, ptr %7, i32 32
  %17 = ptrtoint ptr %cra_priority46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_priority46, align 32
  %add = add i32 %mul, %18
  %cra_priority48 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %cra_priority48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %cra_priority48, align 32
  %cra_blocksize = getelementptr i8, ptr %13, i32 20
  %20 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize51 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %cra_blocksize51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cra_blocksize51, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %23 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask53 = getelementptr i8, ptr %13, i32 28
  %25 = ptrtoint ptr %cra_alignmask53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask53, align 4
  %or = or i32 %26, %24
  %cra_alignmask55 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %cra_alignmask55, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %cra_ctxsize, align 8
  %ivsize.i = getelementptr i8, ptr %13, i32 -100
  %29 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ivsize.i, align 4
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %31 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %13, i32 -96
  %32 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %34 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %chunksize, align 32
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 128
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %37 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %38 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @crypto_authenc_esn_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %39 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @crypto_authenc_esn_exit_tfm, ptr %exit, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @crypto_authenc_esn_setkey, ptr %14, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %41 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @crypto_authenc_esn_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %42 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @crypto_authenc_esn_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %43 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @crypto_authenc_esn_decrypt, ptr %decrypt, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @crypto_authenc_esn_free, ptr %call7.i.i, align 128
  %call59 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end44.cleanup_crit_edge, label %if.end44.err_free_inst_crit_edge

if.end44.err_free_inst_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_inst:                                    ; preds = %if.end44.err_free_inst_crit_edge, %if.end33.err_free_inst_crit_edge, %if.end22.err_free_inst_crit_edge, %if.end12.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call9, %if.end4.err_free_inst_crit_edge ], [ %call19, %if.end12.err_free_inst_crit_edge ], [ -36, %if.end22.err_free_inst_crit_edge ], [ -36, %if.end33.err_free_inst_crit_edge ], [ %call59, %if.end44.err_free_inst_crit_edge ]
  %enc.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %enc.i) #8
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
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
  %call.i62 = tail call ptr @crypto_spawn_tfm2(ptr noundef %enc7) #8
  %cmp.i63 = icmp ugt ptr %call.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.end.err_free_ahash_crit_edge, label %if.end12

if.end.err_free_ahash_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_ahash

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @crypto_get_default_null_skcipher() #8
  %cmp.i64 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %err_free_skcipher, label %if.end17

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %auth18 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %auth18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %auth18, align 4
  %enc19 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %enc19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i62, ptr %enc19, align 4
  %null20 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %5 = ptrtoint ptr %null20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %null20, align 4
  %__crt_alg.i.i65 = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i65 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i65, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  %mul = shl i32 %9, 1
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_alignmask.i.i, align 4
  %add23 = add i32 %mul, %11
  %neg = xor i32 %11, -1
  %and = and i32 %add23, %neg
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %__crt_ctx.i.i, align 4
  %add28 = add i32 %and, 80
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reqsize.i, align 32
  %add30 = add i32 %14, 128
  %15 = ptrtoint ptr %call.i62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i62, align 128
  %add32 = add i32 %16, 128
  %17 = tail call i32 @llvm.umax.i32(i32 %add30, i32 %add32)
  %add33 = add i32 %add28, %17
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %18 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add33, ptr %reqsize1.i, align 4
  br label %cleanup

err_free_skcipher:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i62, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i62, ptr noundef %base.i.i) #8
  br label %err_free_ahash

err_free_ahash:                                   ; preds = %err_free_skcipher, %if.end.err_free_ahash_crit_edge
  %err.0.in = phi ptr [ %call.i62, %if.end.err_free_ahash_crit_edge ], [ %call13, %err_free_skcipher ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %base.i.i69 = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i69) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_ahash, %if.end17, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %err_free_ahash ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %auth = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #8
  %enc = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc, align 4
  %base.i.i2 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i2) #8
  tail call void @crypto_put_default_null_skcipher() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_setkey(ptr nocapture noundef readonly %authenc_esn, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %auth1 = getelementptr inbounds %struct.crypto_aead, ptr %authenc_esn, i32 1, i32 1
  %0 = ptrtoint ptr %auth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth1, align 4
  %enc2 = getelementptr inbounds %struct.crypto_aead, ptr %authenc_esn, i32 1, i32 2
  %2 = ptrtoint ptr %enc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #8
  %4 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %5 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %6 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call3 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %9, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i19 = getelementptr inbounds %struct.crypto_aead, ptr %authenc_esn, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i19, align 128
  %and = and i32 %11, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %12 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keys, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %call5 = call i32 @crypto_ahash_setkey(ptr noundef %1, ptr noundef %13, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i21 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i21, align 128
  %and.i.i22 = and i32 %17, -1048321
  store i32 %and.i.i22, ptr %base.i.i21, align 128
  %18 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i.i19, align 128
  %and9 = and i32 %19, 1048320
  %or.i.i25 = or i32 %and9, %and.i.i22
  store i32 %or.i.i25, ptr %base.i.i21, align 128
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  %call10 = call i32 @crypto_skcipher_setkey(ptr noundef %3, ptr noundef %21, i32 noundef %23) #8
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call5, %if.end.out_crit_edge ], [ %call10, %if.end7 ]
  %24 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #8, !srcloc !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #8
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_authenc_esn_setauthsize(ptr nocapture noundef readnone %authenc_esn, i32 noundef %authsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %authsize, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %1 = icmp ult i32 %0, 3
  %retval.0 = select i1 %1, i32 -22, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %__skreq_desc.i = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i.i, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %3
  %enc3 = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %enc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc3, align 4
  %assoclen4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoclen4, align 8
  %cryptlen5 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %cryptlen5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cryptlen5, align 4
  tail call void @sg_init_table(ptr noundef %__ctx.i, i32 noundef 2) #8
  %src10 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src10, align 4
  %call11 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %11, i32 noundef %7) #8
  %12 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src10, align 4
  %dst13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %14 = ptrtoint ptr %dst13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst13, align 8
  %cmp.not = icmp eq ptr %13, %15
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__skreq_desc.i) #8
  %18 = call ptr @memset(ptr %__skreq_desc.i, i32 255, i32 512)
  %null.i = getelementptr i8, ptr %17, i32 140
  %19 = ptrtoint ptr %null.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %null.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %20, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %flags.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 2
  %27 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %13, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 3
  %28 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %15, ptr %dst2.i.i, align 4
  %29 = ptrtoint ptr %__skreq_desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %7, ptr %__skreq_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 1
  %30 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
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
  %dst16 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  call void @sg_init_table(ptr noundef %dst16, i32 noundef 2) #8
  %31 = ptrtoint ptr %dst13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst13, align 8
  %call21 = call ptr @scatterwalk_ffwd(ptr noundef %dst16, ptr noundef %32, i32 noundef %7) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry.if.end22_crit_edge
  %dst.0 = phi ptr [ %call21, %if.end ], [ %call11, %entry.if.end22_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @crypto_authenc_esn_encrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %flags4.i, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %39 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 2
  %41 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call11, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 3
  %42 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dst.0, ptr %dst2.i, align 4
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %add.ptr, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 1
  %44 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %40, ptr %iv4.i, align 4
  %call24 = call i32 @crypto_skcipher_encrypt(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %call29 = call fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %req, i32 noundef %46)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end27 ], [ %call3.i, %if.then.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_decrypt(ptr noundef %req) #2 align 64 {
entry:
  %__skreq_desc.i = alloca [512 x i8], align 128
  %tmp = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__crt_ctx.i.i, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %3
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 128
  %auth4 = getelementptr i8, ptr %1, i32 132
  %6 = ptrtoint ptr %auth4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth4, align 4
  %8 = ptrtoint ptr %tail to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_alignmask.i.i, align 4
  %add8 = add i32 %12, %8
  %neg = xor i32 %12, -1
  %and = and i32 %add8, %neg
  %13 = inttoptr i32 %and to ptr
  %assoclen12 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen12, align 8
  %cryptlen13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %cryptlen13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cryptlen13, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.ptr15 = getelementptr i8, ptr %13, i32 %19
  %dst16 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %20 = ptrtoint ptr %dst16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst16, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  %23 = getelementptr inbounds [2 x i32], ptr %tmp, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !27
  %sub17 = sub i32 %17, %5
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 4
  %cmp.not = icmp eq ptr %26, %21
  %.pre = add i32 %sub17, %15
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__skreq_desc.i) #8
  %27 = call ptr @memset(ptr %__skreq_desc.i, i32 255, i32 512)
  %null.i = getelementptr i8, ptr %1, i32 140
  %28 = ptrtoint ptr %null.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %null.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %flags.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 2
  %36 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %26, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 3
  %37 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %21, ptr %dst2.i.i, align 4
  %38 = ptrtoint ptr %__skreq_desc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.pre, ptr %__skreq_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i, i32 0, i32 1
  %39 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %iv4.i.i, align 4
  %call3.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__skreq_desc.i) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__skreq_desc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.then.if.end21_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %40 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src, align 4
  call void @scatterwalk_map_and_copy(ptr noundef %add.ptr15, ptr noundef %41, i32 noundef %.pre, i32 noundef %5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %if.end21.tail43_crit_edge, label %if.end26

if.end21.tail43_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %tail43

if.end26:                                         ; preds = %if.end21
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %21, i32 noundef 0, i32 noundef 8, i32 noundef 0) #8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %21, i32 noundef 4, i32 noundef 4, i32 noundef 1) #8
  call void @scatterwalk_map_and_copy(ptr noundef %23, ptr noundef %21, i32 noundef %.pre, i32 noundef 4, i32 noundef 1) #8
  %dst32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  call void @sg_init_table(ptr noundef %dst32, i32 noundef 2) #8
  %call36 = call ptr @scatterwalk_ffwd(ptr noundef %dst32, ptr noundef %21, i32 noundef 4) #8
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 3
  %42 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 2
  %43 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call36, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 1
  %44 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.pre, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 3
  %45 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %13, ptr %result3.i, align 32
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 1
  %48 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @authenc_esn_verify_ahash_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 2
  %49 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 4
  %50 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %flags4.i, align 4
  %call39 = call i32 @crypto_ahash_digest(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end26.tail43_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26.tail43_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %tail43

tail43:                                           ; preds = %if.end26.tail43_crit_edge, %if.end21.tail43_crit_edge
  %flags.i101 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %51 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i101, align 4
  %call45 = call fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %req, i32 noundef %52)
  br label %cleanup

cleanup:                                          ; preds = %tail43, %if.end26.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %tail43 ], [ %call3.i, %if.then.cleanup_crit_edge ], [ %call39, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_free(ptr noundef %inst) #2 align 64 {
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
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_encrypt_done(ptr nocapture noundef readonly %req, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end_crit_edge ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.addr.0)
  %cmp.not.i = icmp eq i32 %err.addr.0, -115
  br i1 %cmp.not.i, label %if.end.authenc_esn_request_complete.exit_crit_edge, label %if.then.i

if.end.authenc_esn_request_complete.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenc_esn_request_complete.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %err.addr.0) #8
  br label %authenc_esn_request_complete.exit

authenc_esn_request_complete.exit:                ; preds = %if.then.i, %if.end.authenc_esn_request_complete.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %req, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca [2 x i32], align 4
  %tmp = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %auth3 = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %auth3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auth3, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__crt_ctx.i.i, align 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 128
  %assoclen12 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen12, align 8
  %cryptlen13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen13, align 4
  %dst14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %dst14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  %19 = getelementptr inbounds [2 x i32], ptr %tmp, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %add.ptr = getelementptr i8, ptr %tail, i32 %9
  %21 = ptrtoint ptr %tail to i32
  %add5 = add i32 %7, %21
  %neg = xor i32 %7, -1
  %and = and i32 %add5, %neg
  %22 = inttoptr i32 %and to ptr
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %17, i32 noundef 0, i32 noundef 8, i32 noundef 0) #8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %17, i32 noundef 4, i32 noundef 4, i32 noundef 1) #8
  %add19 = add i32 %15, %13
  call void @scatterwalk_map_and_copy(ptr noundef %19, ptr noundef %17, i32 noundef %add19, i32 noundef 4, i32 noundef 1) #8
  %dst20 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  call void @sg_init_table(ptr noundef %dst20, i32 noundef 2) #8
  %call24 = call ptr @scatterwalk_ffwd(ptr noundef %dst20, ptr noundef %17, i32 noundef 4) #8
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 3
  %23 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call24, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add19, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %add.ptr, i32 0, i32 3
  %26 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %result3.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @authenc_esn_geniv_ahash_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %add.ptr, i32 0, i32 4
  %29 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %flags, ptr %flags4.i, align 4
  %call26 = call i32 @crypto_ahash_digest(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 -128
  %auth3.i = getelementptr i8, ptr %31, i32 132
  %32 = ptrtoint ptr %auth3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %auth3.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %33, i32 0, i32 10, i32 3
  %34 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add5.i = add i32 %37, %21
  %neg.i = xor i32 %37, -1
  %and.i = and i32 %add5.i, %neg.i
  %38 = inttoptr i32 %and.i to ptr
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i, align 128
  %41 = ptrtoint ptr %assoclen12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assoclen12, align 8
  %43 = ptrtoint ptr %cryptlen13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cryptlen13, align 4
  %45 = ptrtoint ptr %dst14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %47 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %tmp.i, align 4, !annotation !27
  %48 = getelementptr inbounds [2 x i32], ptr %tmp.i, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4, !annotation !27
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp.i, ptr noundef %46, i32 noundef 4, i32 noundef 4, i32 noundef 0) #8
  %add15.i = add i32 %44, %42
  call void @scatterwalk_map_and_copy(ptr noundef %48, ptr noundef %46, i32 noundef %add15.i, i32 noundef 4, i32 noundef 0) #8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp.i, ptr noundef %46, i32 noundef 0, i32 noundef 8, i32 noundef 1) #8
  call void @scatterwalk_map_and_copy(ptr noundef %38, ptr noundef %46, i32 noundef %add15.i, i32 noundef %40, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.false ], [ %call26, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @authenc_esn_geniv_ahash_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  %tmp.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %auth3.i = getelementptr i8, ptr %3, i32 132
  %4 = ptrtoint ptr %auth3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auth3.i, align 4
  %tail.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 36
  %6 = ptrtoint ptr %tail.i to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add5.i = add i32 %10, %6
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %add5.i, %neg.i
  %11 = inttoptr i32 %and.i to ptr
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 128
  %assoclen10.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen10.i, align 8
  %cryptlen11.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %cryptlen11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cryptlen11.i, align 4
  %dst12.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dst12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst12.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmp.i, align 4, !annotation !27
  %21 = getelementptr inbounds [2 x i32], ptr %tmp.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !27
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp.i, ptr noundef %19, i32 noundef 4, i32 noundef 4, i32 noundef 0) #8
  %add15.i = add i32 %17, %15
  call void @scatterwalk_map_and_copy(ptr noundef %21, ptr noundef %19, i32 noundef %add15.i, i32 noundef 4, i32 noundef 0) #8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp.i, ptr noundef %19, i32 noundef 0, i32 noundef 8, i32 noundef 1) #8
  call void @scatterwalk_map_and_copy(ptr noundef %11, ptr noundef %19, i32 noundef %add15.i, i32 noundef %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %complete.i, align 8
  call void %24(ptr noundef %1, i32 noundef %err) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @authenc_esn_verify_ahash_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %1, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ %err, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond)
  %cmp.not.i = icmp eq i32 %cond, -115
  br i1 %cmp.not.i, label %cond.end.authenc_esn_request_complete.exit_crit_edge, label %if.then.i

cond.end.authenc_esn_request_complete.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenc_esn_request_complete.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %cond) #8
  br label %authenc_esn_request_complete.exit

authenc_esn_request_complete.exit:                ; preds = %if.then.i, %cond.end.authenc_esn_request_complete.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %req, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [2 x i32], align 4
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
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %tail = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__crt_ctx.i.i, align 4
  %add.ptr = getelementptr i8, ptr %tail, i32 %5
  %auth4 = getelementptr i8, ptr %1, i32 132
  %6 = ptrtoint ptr %auth4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth4, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_alignmask.i.i, align 4
  %cryptlen12 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen12, align 4
  %sub13 = sub i32 %13, %3
  %assoclen14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen14, align 8
  %dst15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %dst15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst15, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  %21 = getelementptr inbounds [2 x i32], ptr %tmp, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.decrypt_crit_edge, label %if.end

entry.decrypt_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %decrypt

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %tail to i32
  %add8 = add i32 %11, %23
  %neg = xor i32 %11, -1
  %and = and i32 %add8, %neg
  %24 = inttoptr i32 %and to ptr
  %add.ptr17 = getelementptr i8, ptr %24, i32 %19
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %17, i32 noundef 4, i32 noundef 4, i32 noundef 0) #8
  %add21 = add i32 %15, %sub13
  call void @scatterwalk_map_and_copy(ptr noundef %21, ptr noundef %17, i32 noundef %add21, i32 noundef 4, i32 noundef 0) #8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tmp, ptr noundef %17, i32 noundef 0, i32 noundef 8, i32 noundef 1) #8
  %call.i = call i32 @__crypto_memneq(ptr noundef %add.ptr17, ptr noundef %24, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end.decrypt_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.decrypt_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %decrypt

decrypt:                                          ; preds = %if.end.decrypt_crit_edge, %entry.decrypt_crit_edge
  %dst27 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  call void @sg_init_table(ptr noundef %dst27, i32 noundef 2) #8
  %call31 = call ptr @scatterwalk_ffwd(ptr noundef %dst27, ptr noundef %17, i32 noundef %15) #8
  %enc = getelementptr i8, ptr %1, i32 136
  %25 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enc, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %26, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %flags, ptr %flags4.i, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %35 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 2
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call31, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 3
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call31, ptr %dst2.i, align 4
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub13, ptr %add.ptr, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %add.ptr, i32 0, i32 1
  %40 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %iv4.i, align 4
  %call33 = call i32 @crypto_skcipher_decrypt(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %decrypt, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %decrypt ], [ -74, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_authencesn__342_479_crypto_authenc_esn_module_init4, !1, !"__initcall__kmod_authencesn__342_479_crypto_authenc_esn_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/authencesn.c", i32 479, i32 1}
!2 = !{ptr @__exitcall_crypto_authenc_esn_module_exit, !3, !"__exitcall_crypto_authenc_esn_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/authencesn.c", i32 480, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../crypto/authencesn.c", i32 482, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author345, !8, !"__UNIQUE_ID_author345", i1 false, i1 false}
!8 = !{!"../crypto/authencesn.c", i32 483, i32 1}
!9 = !{ptr @__UNIQUE_ID_description346, !10, !"__UNIQUE_ID_description346", i1 false, i1 false}
!10 = !{!"../crypto/authencesn.c", i32 484, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace347, !12, !"__UNIQUE_ID_alias_userspace347", i1 false, i1 false}
!12 = !{!"../crypto/authencesn.c", i32 485, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto348, !12, !"__UNIQUE_ID_alias_crypto348", i1 false, i1 false}
!14 = !{ptr @crypto_authenc_esn_tmpl, !15, !"crypto_authenc_esn_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/authencesn.c", i32 463, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/authencesn.c", i32 425, i32 8}
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
!28 = !{i64 2149243995}
