; ModuleID = '/llk/IR_all_yes/crypto/cts.c_pt.bc'
source_filename = "../crypto/cts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.74, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }

@crypto_cts_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_cts_create, [128 x i8] c"cts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cts__239_405_crypto_cts_module_init4 = internal global ptr @crypto_cts_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_cts_module_exit = internal global ptr @crypto_cts_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [20 x i8] c"cts.file=crypto/cts\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"cts.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [52 x i8] c"cts.description=CTS-CBC CipherText Stealing for CBC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [14 x i8] c"cts.alias=cts\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [21 x i8] c"cts.alias=crypto-cts\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cbc(\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cts\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"crypto_cts_tmpl\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 389, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 353, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [16 x i8] c"../crypto/cts.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 356, i32 60 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_crypto_cts_module_exit, ptr @__initcall__kmod_cts__239_405_crypto_cts_module_init4, ptr @crypto_cts_module_exit, ptr @crypto_cts_tmpl, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_cts_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cts_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cts_tmpl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cts_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cts_tmpl) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cts_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !27
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
  %cra_blocksize = getelementptr i8, ptr %7, i32 20
  %10 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end15, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end15:                                         ; preds = %if.end11
  %cra_name = getelementptr i8, ptr %7, i32 40
  %call17 = call i32 @strncmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(5) @.str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.err_free_inst_crit_edge

if.end15.err_free_inst_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end20:                                         ; preds = %if.end15
  %call23 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef nonnull @.str.1, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.err_free_inst_crit_edge

if.end20.err_free_inst_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end26:                                         ; preds = %if.end20
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %12 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_priority, align 32
  %14 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority29 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %cra_priority29, align 32
  %16 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize33 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %cra_blocksize33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cra_blocksize33, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %19 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask36 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %cra_alignmask36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cra_alignmask36, align 4
  %22 = load i32, ptr %cra_blocksize, align 4
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %23 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ivsize, align 4
  %chunksize.i = getelementptr i8, ptr %7, i32 -96
  %24 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %26 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %chunksize, align 32
  %min_keysize.i = getelementptr i8, ptr %7, i32 -108
  %27 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_keysize.i, align 4
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %29 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr i8, ptr %7, i32 -104
  %30 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_keysize.i, align 8
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %32 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_keysize, align 8
  %cra_ctxsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_cts_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @crypto_cts_exit_tfm, ptr %exit, align 16
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @crypto_cts_setkey, ptr %14, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @crypto_cts_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %38 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @crypto_cts_decrypt, ptr %decrypt, align 8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @crypto_cts_free, ptr %call7.i.i, align 128
  %call43 = call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end26.cleanup_crit_edge, label %if.end26.err_free_inst_crit_edge

if.end26.err_free_inst_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_inst

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_inst:                                    ; preds = %if.end26.err_free_inst_crit_edge, %if.end20.err_free_inst_crit_edge, %if.end15.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %if.end15.err_free_inst_crit_edge ], [ %call23, %if.end20.err_free_inst_crit_edge ], [ %call43, %if.end26.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cts_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
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
  %__crt_alg.i.i33 = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i33, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize.i.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 128
  %add10 = add i32 %13, 383
  %and = and i32 %add10, -128
  %and16 = and i32 %7, -128
  %add17 = add i32 %11, %and16
  %add18 = add i32 %add17, %and
  %14 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add18, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cts_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
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
define internal i32 @crypto_cts_setkey(ptr nocapture noundef readonly %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i7 = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i7, align 128
  %and = and i32 %5, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call3 = tail call i32 @crypto_skcipher_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cts_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %subreq3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %10 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp ult i32 %7, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp5 = icmp eq i32 %7, %5
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %18 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %26 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %27 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %dst2.i, align 4
  %28 = ptrtoint ptr %subreq3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %5, ptr %subreq3, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %29 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %subreq3) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %sub = add i32 %7, -1
  %rem = urem i32 %sub, %5
  %sub11 = sub i32 %sub, %rem
  %offset12 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %30 = ptrtoint ptr %offset12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub11, ptr %offset12, align 8
  %flags14 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags14, align 4
  %complete.i55 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %33 = ptrtoint ptr %complete.i55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @crypto_cts_encrypt_done, ptr %complete.i55, align 8
  %data2.i56 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %34 = ptrtoint ptr %data2.i56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %req, ptr %data2.i56, align 4
  %flags4.i57 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %35 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %flags4.i57, align 4
  %src15 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %36 = ptrtoint ptr %src15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src15, align 8
  %dst16 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %38 = ptrtoint ptr %dst16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst16, align 4
  %iv17 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %40 = ptrtoint ptr %iv17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iv17, align 4
  %src1.i58 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %42 = ptrtoint ptr %src1.i58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %37, ptr %src1.i58, align 8
  %dst2.i59 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %43 = ptrtoint ptr %dst2.i59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %39, ptr %dst2.i59, align 4
  %44 = ptrtoint ptr %subreq3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub11, ptr %subreq3, align 128
  %iv4.i60 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %45 = ptrtoint ptr %iv4.i60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %iv4.i60, align 4
  %call18 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %subreq3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %cond.false, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call fastcc i32 @cts_cbc_encrypt(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end10.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ %call19, %cond.false ], [ %call18, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cts_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %subreq3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %10 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp ult i32 %7, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp5 = icmp eq i32 %7, %5
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %18 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %26 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %27 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %dst2.i, align 4
  %28 = ptrtoint ptr %subreq3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %5, ptr %subreq3, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %29 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %iv4.i, align 4
  %call9 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %subreq3) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %complete.i73 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %30 = ptrtoint ptr %complete.i73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_cts_decrypt_done, ptr %complete.i73, align 8
  %data2.i74 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %31 = ptrtoint ptr %data2.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %data2.i74, align 4
  %flags4.i75 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %32 = ptrtoint ptr %flags4.i75 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %12, ptr %flags4.i75, align 4
  %33 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_ctx.i.i, align 4
  %add.ptr.i = getelementptr %struct.skcipher_request, ptr %req, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 128
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %36
  %37 = ptrtoint ptr %add.ptr5.i to i32
  %38 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add7.i = add i32 %41, %37
  %neg.i = xor i32 %41, -1
  %and.i = and i32 %add7.i, %neg.i
  %42 = inttoptr i32 %and.i to ptr
  %sub = add i32 %7, -1
  %rem = urem i32 %sub, %5
  %sub14 = sub i32 %sub, %rem
  %offset15 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %43 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub14, ptr %offset15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %5)
  %cmp16.not = icmp ugt i32 %sub14, %5
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %iv18 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %44 = ptrtoint ptr %iv18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iv18, align 4
  %46 = call ptr @memcpy(ptr %42, ptr %45, i32 %5)
  br label %if.end21

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %src19 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %47 = ptrtoint ptr %src19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src19, align 8
  %mul.neg = mul i32 %5, -2
  %sub20 = add i32 %sub14, %mul.neg
  tail call void @scatterwalk_map_and_copy(ptr noundef %42, ptr noundef %48, i32 noundef %sub20, i32 noundef %5, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %src22 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %49 = ptrtoint ptr %src22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src22, align 8
  %dst23 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %51 = ptrtoint ptr %dst23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst23, align 4
  %iv24 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %53 = ptrtoint ptr %iv24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iv24, align 4
  %src1.i76 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %55 = ptrtoint ptr %src1.i76 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %src1.i76, align 8
  %dst2.i77 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %56 = ptrtoint ptr %dst2.i77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %dst2.i77, align 4
  %57 = ptrtoint ptr %subreq3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub14, ptr %subreq3, align 128
  %iv4.i78 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %58 = ptrtoint ptr %iv4.i78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %iv4.i78, align 4
  %call25 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %subreq3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %cond.false, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @cts_cbc_decrypt(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end21.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ %call26, %cond.false ], [ %call25, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cts_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #6
  tail call void @kfree(ptr noundef %inst) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cts_encrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @cts_cbc_encrypt(ptr noundef %1)
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.out_crit_edge [
    i32 -115, label %if.end.cleanup_crit_edge
    i32 -16, label %if.end.cleanup_crit_edge8
  ]

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %complete.i, align 8
  tail call void %4(ptr noundef %base.i, i32 noundef %err.addr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cts_cbc_encrypt(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %d = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %subreq2 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d) #6
  %offset4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %6 = call ptr @memset(ptr %d, i32 255, i32 32)
  %7 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset4, align 8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req, align 128
  %sub = sub i32 %10, %8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 4
  %sub6 = sub i32 %8, %5
  %call7 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %12, i32 noundef %sub6) #6
  %add.ptr = getelementptr i8, ptr %d, i32 %5
  call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %call7, i32 noundef 0, i32 noundef %5, i32 noundef 0) #6
  %13 = call ptr @memset(ptr %d, i32 0, i32 %5)
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %d, ptr noundef %15, i32 noundef %8, i32 noundef %sub, i32 noundef 0) #6
  %add = add i32 %sub, %5
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %d, ptr noundef %call7, i32 noundef 0, i32 noundef %add, i32 noundef 1) #6
  %16 = call ptr @memset(ptr %d, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %d) #6, !srcloc !28
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 1024
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cts_cbc_crypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %flags4.i, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %subreq2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %subreq2, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 4
  %call13 = call i32 @crypto_skcipher_encrypt(ptr noundef %subreq2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d) #6
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cts_cbc_crypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %base.i, i32 noundef %err) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cts_decrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @cts_cbc_decrypt(ptr noundef %1)
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call, label %if.end.out_crit_edge [
    i32 -115, label %if.end.cleanup_crit_edge
    i32 -16, label %if.end.cleanup_crit_edge8
  ]

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %complete.i, align 8
  tail call void %4(ptr noundef %base.i, i32 noundef %err.addr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cts_cbc_decrypt(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %d = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d) #6
  %offset4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %6 = call ptr @memset(ptr %d, i32 255, i32 32)
  %7 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset4, align 8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req, align 128
  %sub = sub i32 %10, %8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 4
  %sub6 = sub i32 %8, %5
  %call7 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %12, i32 noundef %sub6) #6
  %add.ptr = getelementptr i8, ptr %d, i32 %5
  call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %call7, i32 noundef 0, i32 noundef %5, i32 noundef 0) #6
  %13 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %14, i32 128
  %15 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.skcipher_request, ptr %req, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 128
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %18
  %19 = ptrtoint ptr %add.ptr5.i to i32
  %__crt_alg.i.i.i = getelementptr i8, ptr %14, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add7.i = add i32 %23, %19
  %neg.i = xor i32 %23, -1
  %and.i = and i32 %add7.i, %neg.i
  %24 = inttoptr i32 %and.i to ptr
  call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef %24, i32 noundef %5) #6
  %25 = call ptr @memset(ptr %d, i32 0, i32 %5)
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %d, ptr noundef %27, i32 noundef %8, i32 noundef %sub, i32 noundef 0) #6
  call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef nonnull %d, i32 noundef %sub) #6
  %subreq2 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %add.ptr18 = getelementptr i8, ptr %d, i32 %sub
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %sub
  %sub22 = sub i32 %5, %sub
  %28 = call ptr @memcpy(ptr %add.ptr18, ptr %add.ptr21, i32 %sub22)
  %add = add i32 %sub, %5
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %d, ptr noundef %call7, i32 noundef 0, i32 noundef %add, i32 noundef 1) #6
  %29 = call ptr @memset(ptr %d, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %d) #6, !srcloc !28
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 1024
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @cts_cbc_crypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %33 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %35 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %36 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7, ptr %dst2.i, align 4
  %37 = ptrtoint ptr %subreq2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %5, ptr %subreq2, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %38 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %24, ptr %iv4.i, align 4
  %call25 = call i32 @crypto_skcipher_decrypt(ptr noundef %subreq2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d) #6
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_cts__239_405_crypto_cts_module_init4, !1, !"__initcall__kmod_cts__239_405_crypto_cts_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/cts.c", i32 405, i32 1}
!2 = !{ptr @__exitcall_crypto_cts_module_exit, !3, !"__exitcall_crypto_cts_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/cts.c", i32 406, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/cts.c", i32 408, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/cts.c", i32 409, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/cts.c", i32 410, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @crypto_cts_tmpl, !13, !"crypto_cts_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/cts.c", i32 389, i32 31}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/cts.c", i32 353, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/cts.c", i32 356, i32 60}
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
!28 = !{i64 2149225525}
