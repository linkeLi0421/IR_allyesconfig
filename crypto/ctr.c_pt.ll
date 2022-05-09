; ModuleID = '/llk/IR_all_yes/crypto/ctr.c_pt.bc'
source_filename = "../crypto/ctr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.47, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.45, ptr, ptr, ptr, ptr, %union.anon.46, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.45 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.46 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.47 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_walk = type { %union.anon.49, %union.anon.49, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.anon.51 = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_rfc3686_req_ctx = type { [16 x i8], [112 x i8], %struct.skcipher_request }

@crypto_ctr_tmpls = internal global { [2 x %struct.crypto_template], [88 x i8] } { [2 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_ctr_create, [128 x i8] c"ctr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_rfc3686_create, [128 x i8] c"rfc3686\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [88 x i8] zeroinitializer }, align 32
@__initcall__kmod_ctr__175_355_crypto_ctr_module_init4 = internal global ptr @crypto_ctr_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_ctr_module_exit = internal global ptr @crypto_ctr_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file176 = internal constant [20 x i8] c"ctr.file=crypto/ctr\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [16 x i8] c"ctr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [51 x i8] c"ctr.description=CTR block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [18 x i8] c"ctr.alias=rfc3686\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [25 x i8] c"ctr.alias=crypto-rfc3686\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace181 = internal constant [14 x i8] c"ctr.alias=ctr\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto182 = internal constant [21 x i8] c"ctr.alias=crypto-ctr\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns183 = internal constant [30 x i8] c"ctr.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rfc3686(%s)\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"crypto_ctr_tmpls\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 331, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [16 x i8] c"../crypto/ctr.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 294, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_crypto182, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_alias_userspace181, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_import_ns183, ptr @__UNIQUE_ID_license177, ptr @__exitcall_crypto_ctr_module_exit, ptr @__initcall__kmod_ctr__175_355_crypto_ctr_module_init4, ptr @crypto_ctr_module_exit, ptr @crypto_ctr_tmpls, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_ctr_tmpls to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ctr_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_ctr_tmpls, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ctr_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_ctr_tmpls, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ctr_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %tmpl, ptr noundef %tb) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alg.i.i, align 4
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  %rem = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end8, label %if.end.out_free_inst_crit_edge

if.end.out_free_inst_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_inst

if.end8:                                          ; preds = %if.end
  %cra_blocksize9 = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %cra_blocksize9, align 4
  %6 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize, align 4
  %chunksize = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 32
  %8 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %chunksize, align 32
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @crypto_ctr_crypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %10 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crypto_ctr_crypt, ptr %decrypt, align 8
  %call11 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end8.out_free_inst_crit_edge

if.end8.out_free_inst_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_inst

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_free_inst:                                    ; preds = %if.end8.out_free_inst_crit_edge, %if.end.out_free_inst_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_free_inst_crit_edge ], [ %call11, %if.end8.out_free_inst_crit_edge ]
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 128
  tail call void %12(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_inst, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %out_free_inst ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !30
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 5, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 924) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #6
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i.i, align 8
  %ivsize.i = getelementptr i8, ptr %7, i32 -100
  %8 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.not = icmp eq i32 %9, 16
  br i1 %cmp.not, label %if.end15, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end15:                                         ; preds = %if.end11
  %cra_blocksize = getelementptr i8, ptr %7, i32 20
  %10 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp16.not = icmp eq i32 %11, 1
  br i1 %cmp16.not, label %if.end18, label %if.end15.err_free_inst_crit_edge

if.end15.err_free_inst_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end18:                                         ; preds = %if.end15
  %12 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name21 = getelementptr i8, ptr %7, i32 40
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_name21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, 127
  br i1 %cmp24, label %if.end18.err_free_inst_crit_edge, label %if.end26

if.end18.err_free_inst_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end26:                                         ; preds = %if.end18
  %cra_driver_name = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name30 = getelementptr i8, ptr %7, i32 168
  %call32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cra_driver_name30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 127
  br i1 %cmp33, label %if.end26.err_free_inst_crit_edge, label %if.end35

if.end26.err_free_inst_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end35:                                         ; preds = %if.end26
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %13 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_priority, align 32
  %cra_priority38 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cra_priority38, align 32
  %cra_blocksize40 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %cra_blocksize40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cra_blocksize40, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %17 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask43 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %cra_alignmask43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cra_alignmask43, align 4
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %20 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %ivsize, align 4
  %chunksize.i = getelementptr i8, ptr %7, i32 -96
  %21 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %23 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %chunksize, align 32
  %min_keysize.i = getelementptr i8, ptr %7, i32 -108
  %24 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_keysize.i, align 4
  %add = add i32 %25, 4
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %26 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr i8, ptr %7, i32 -104
  %27 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_keysize.i, align 8
  %add47 = add i32 %28, 4
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %29 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add47, ptr %max_keysize, align 8
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_rfc3686_setkey, ptr %12, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @crypto_rfc3686_crypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @crypto_rfc3686_crypt, ptr %decrypt, align 8
  %cra_ctxsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_rfc3686_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @crypto_rfc3686_exit_tfm, ptr %exit, align 16
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @crypto_rfc3686_free, ptr %call7.i.i, align 128
  %call49 = call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end35.cleanup_crit_edge, label %if.end35.err_free_inst_crit_edge

if.end35.err_free_inst_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_inst:                                    ; preds = %if.end35.err_free_inst_crit_edge, %if.end26.err_free_inst_crit_edge, %if.end18.err_free_inst_crit_edge, %if.end15.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %if.end15.err_free_inst_crit_edge ], [ -36, %if.end18.err_free_inst_crit_edge ], [ -36, %if.end26.err_free_inst_crit_edge ], [ %call49, %if.end35.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ctr_crypt(ptr noundef %req) #2 align 64 {
entry:
  %tmp.i44 = alloca [31 x i8], align 1
  %tmp.i = alloca [31 x i8], align 1
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #6
  %8 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call3 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #6
  %nbytes4 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %9 = ptrtoint ptr %nbytes4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp.not62 = icmp ult i32 %10, %7
  br i1 %cmp.not62, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %addr5 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %iv.i22 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %11 = ptrtoint ptr %tmp.i to i32
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %12 = phi i32 [ %10, %while.body.lr.ph ], [ %32, %if.end.while.body_crit_edge ]
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %15 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr5, align 4
  %cmp6 = icmp eq ptr %14, %16
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %cia_encrypt.i = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 11, i32 0, i32 3
  %19 = ptrtoint ptr %cia_encrypt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cia_encrypt.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_blocksize.i.i.i, align 4
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %25 = ptrtoint ptr %iv.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iv.i22, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %tmp.i) #6
  %add5.i = add i32 %24, %11
  %neg.i = xor i32 %24, -1
  %and.i = and i32 %add5.i, %neg.i
  %27 = inttoptr i32 %and.i to ptr
  %28 = call ptr @memset(ptr %tmp.i, i32 255, i32 31)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %nbytes.0.i = phi i32 [ %12, %if.then ], [ %sub10.i, %do.body.i.do.body.i_crit_edge ]
  %src.0.i = phi ptr [ %14, %if.then ], [ %add.ptr9.i, %do.body.i.do.body.i_crit_edge ]
  call void %20(ptr noundef %3, ptr noundef %27, ptr noundef %26) #6
  call void @__crypto_xor(ptr noundef %src.0.i, ptr noundef %src.0.i, ptr noundef %27, i32 noundef %22) #6
  call void @crypto_inc(ptr noundef %26, i32 noundef %22) #6
  %add.ptr9.i = getelementptr i8, ptr %src.0.i, i32 %22
  %sub10.i = sub i32 %nbytes.0.i, %22
  %cmp.not.i = icmp ult i32 %sub10.i, %22
  br i1 %cmp.not.i, label %crypto_ctr_crypt_inplace.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

crypto_ctr_crypt_inplace.exit:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %tmp.i) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  %29 = ptrtoint ptr %iv.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iv.i22, align 4
  br label %do.body.i30

do.body.i30:                                      ; preds = %do.body.i30.do.body.i30_crit_edge, %if.else
  %src.0.i27 = phi ptr [ %14, %if.else ], [ %add.ptr.i, %do.body.i30.do.body.i30_crit_edge ]
  %dst.0.i = phi ptr [ %16, %if.else ], [ %add.ptr7.i, %do.body.i30.do.body.i30_crit_edge ]
  %nbytes.0.i28 = phi i32 [ %12, %if.else ], [ %sub.i, %do.body.i30.do.body.i30_crit_edge ]
  call void %20(ptr noundef %3, ptr noundef %dst.0.i, ptr noundef %30) #6
  call void @__crypto_xor(ptr noundef %dst.0.i, ptr noundef %dst.0.i, ptr noundef %src.0.i27, i32 noundef %22) #6
  call void @crypto_inc(ptr noundef %30, i32 noundef %22) #6
  %add.ptr.i = getelementptr i8, ptr %src.0.i27, i32 %22
  %add.ptr7.i = getelementptr i8, ptr %dst.0.i, i32 %22
  %sub.i = sub i32 %nbytes.0.i28, %22
  %cmp.not.i42 = icmp ult i32 %sub.i, %22
  br i1 %cmp.not.i42, label %do.body.i30.if.end_crit_edge, label %do.body.i30.do.body.i30_crit_edge

do.body.i30.do.body.i30_crit_edge:                ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i30

do.body.i30.if.end_crit_edge:                     ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body.i30.if.end_crit_edge, %crypto_ctr_crypt_inplace.exit
  %nbytes.0 = phi i32 [ %sub10.i, %crypto_ctr_crypt_inplace.exit ], [ %sub.i, %do.body.i30.if.end_crit_edge ]
  %call9 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %nbytes.0) #6
  %31 = ptrtoint ptr %nbytes4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes4, align 4
  %cmp.not = icmp ult i32 %32, %7
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call9, %if.end.while.end_crit_edge ]
  %.lcssa = phi i32 [ %10, %entry.while.end_crit_edge ], [ %32, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end13_crit_edge, label %if.then11

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i.i45 = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cra_blocksize.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cra_blocksize.i.i.i45, align 4
  %cra_alignmask.i.i.i46 = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %cra_alignmask.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cra_alignmask.i.i.i46, align 4
  %iv.i47 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %39 = ptrtoint ptr %iv.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iv.i47, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %tmp.i44) #6
  %41 = ptrtoint ptr %tmp.i44 to i32
  %add2.i = add i32 %38, %41
  %neg.i48 = xor i32 %38, -1
  %and.i49 = and i32 %add2.i, %neg.i48
  %42 = inttoptr i32 %and.i49 to ptr
  %addr.i50 = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %43 = call ptr @memset(ptr %tmp.i44, i32 255, i32 31)
  %44 = ptrtoint ptr %addr.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i50, align 4
  %addr7.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr7.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %3, ptr noundef %42, ptr noundef %40) #6
  call void @__crypto_xor(ptr noundef %47, ptr noundef %42, ptr noundef %45, i32 noundef %.lcssa) #6
  call void @crypto_inc(ptr noundef %40, i32 noundef %36) #6
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %tmp.i44) #6
  %call12 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %while.end.if.end13_crit_edge
  %err.1 = phi i32 [ %call12, %if.then11 ], [ %err.0.lcssa, %while.end.if.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_setkey(ptr nocapture noundef %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %nonce = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1, i32 1
  %sub = add i32 %keylen, -4
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nonce, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i14 = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i14, align 128
  %and = and i32 %8, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_crypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %8 = ptrtoint ptr %__ctx.i to i32
  %add5 = add i32 %7, %8
  %neg = xor i32 %7, -1
  %and = and i32 %add5, %neg
  %9 = inttoptr i32 %and to ptr
  %subreq8 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2
  %nonce = getelementptr i8, ptr %1, i32 132
  %10 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nonce, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %9, align 1
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %iv11 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %iv11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iv11, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %14, align 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %add.ptr, align 1
  %add.ptr13 = getelementptr i8, ptr %9, i32 12
  %18 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %add.ptr13, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 4, i32 3
  %19 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 4, i32 1
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 4, i32 2
  %27 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 4, i32 4
  %28 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req, align 128
  %src1.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %dst2.i, align 4
  %37 = ptrtoint ptr %subreq8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %subreq8, align 128
  %iv4.i = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %9, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %9, ptr %iv4.i, align 4
  %call16 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %subreq8) #6
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i, align 4
  %8 = add i32 %7, 256
  %add = and i32 %8, -128
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 128
  %add9 = add i32 %add, %10
  %11 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add9, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc3686_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc3686_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #6
  tail call void @kfree(ptr noundef %inst) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_ctr__175_355_crypto_ctr_module_init4, !1, !"__initcall__kmod_ctr__175_355_crypto_ctr_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/ctr.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_crypto_ctr_module_exit, !3, !"__exitcall_crypto_ctr_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/ctr.c", i32 356, i32 1}
!4 = !{ptr @__UNIQUE_ID_file176, !5, !"__UNIQUE_ID_file176", i1 false, i1 false}
!5 = !{!"../crypto/ctr.c", i32 358, i32 1}
!6 = !{ptr @__UNIQUE_ID_license177, !5, !"__UNIQUE_ID_license177", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description178, !8, !"__UNIQUE_ID_description178", i1 false, i1 false}
!8 = !{!"../crypto/ctr.c", i32 359, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace179, !10, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!10 = !{!"../crypto/ctr.c", i32 360, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto180, !10, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace181, !13, !"__UNIQUE_ID_alias_userspace181", i1 false, i1 false}
!13 = !{!"../crypto/ctr.c", i32 361, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto182, !13, !"__UNIQUE_ID_alias_crypto182", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_import_ns183, !16, !"__UNIQUE_ID_import_ns183", i1 false, i1 false}
!16 = !{!"../crypto/ctr.c", i32 362, i32 1}
!17 = !{ptr @crypto_ctr_tmpls, !18, !"crypto_ctr_tmpls", i1 false, i1 false}
!18 = !{!"../crypto/ctr.c", i32 331, i32 31}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/ctr.c", i32 294, i32 8}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
