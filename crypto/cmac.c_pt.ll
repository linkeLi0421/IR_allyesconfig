; ModuleID = '/llk/IR_all_yes/crypto/cmac.c_pt.bc'
source_filename = "../crypto/cmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.shash_instance = type { ptr, [124 x i8], %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { [256 x i8], %struct.crypto_instance }
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
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@crypto_cmac_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @cmac_create, [128 x i8] c"cmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cmac__173_311_crypto_cmac_module_init4 = internal global ptr @crypto_cmac_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_cmac_module_exit = internal global ptr @crypto_cmac_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [22 x i8] c"cmac.file=crypto/cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [17 x i8] c"cmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [43 x i8] c"cmac.description=CMAC keyed hash algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [16 x i8] c"cmac.alias=cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [23 x i8] c"cmac.alias=crypto-cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns179 = internal constant [31 x i8] c"cmac.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"crypto_cmac_tmpl\00", align 1
@___asan_gen_.3 = private constant [17 x i8] c"../crypto/cmac.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 295, i32 31 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_import_ns179, ptr @__UNIQUE_ID_license175, ptr @__exitcall_crypto_cmac_module_exit, ptr @__initcall__kmod_cmac__173_311_crypto_cmac_module_init4, ptr @crypto_cmac_module_exit, ptr @crypto_cmac_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_cmac_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cmac_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cmac_tmpl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cmac_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cmac_tmpl) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !25
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 14, ptr noundef nonnull %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #7
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %or1.i = or i32 %5, 15
  %call.i = call i32 @crypto_grab_spawn(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 1, i32 noundef %or1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end11.err_free_inst_crit_edge [
    i32 16, label %if.end11.sw.epilog_crit_edge
    i32 8, label %if.end11.sw.epilog_crit_edge98
  ]

if.end11.sw.epilog_crit_edge98:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst

sw.epilog:                                        ; preds = %if.end11.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge98
  %name = getelementptr inbounds %struct.crypto_template, ptr %tmpl, i32 0, i32 4
  %call14 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef %name, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.epilog.err_free_inst_crit_edge

sw.epilog.err_free_inst_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst

if.end17:                                         ; preds = %sw.epilog
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_alignmask, align 4
  %13 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_alignmask18 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %cra_alignmask18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %cra_alignmask18, align 4
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cra_priority, align 32
  %cra_priority20 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %cra_priority20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cra_priority20, align 32
  %18 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize23 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %cra_blocksize23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cra_blocksize23, align 4
  %21 = load i32, ptr %cra_blocksize, align 4
  %digestsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 128
  %22 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %digestsize, align 128
  %23 = add i32 %12, 128
  %add32 = and i32 %23, -128
  %24 = load i32, ptr %cra_blocksize, align 4
  %mul = shl i32 %24, 1
  %add34 = add i32 %mul, %add32
  %descsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 40
  %25 = ptrtoint ptr %descsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add34, ptr %descsize, align 8
  %26 = load i32, ptr %cra_blocksize, align 4
  %mul48 = shl i32 %26, 1
  %add49 = add i32 %mul48, %add32
  %cra_ctxsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add49, ptr %cra_ctxsize, align 8
  %cra_init = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  %28 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cmac_init_tfm, ptr %cra_init, align 64
  %cra_exit = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  %29 = ptrtoint ptr %cra_exit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cmac_exit_tfm, ptr %cra_exit, align 4
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_cmac_digest_init, ptr %13, align 128
  %update = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @crypto_cmac_digest_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @crypto_cmac_digest_final, ptr %final, align 8
  %setkey = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %33 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @crypto_cmac_digest_setkey, ptr %setkey, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @shash_free_singlespawn_instance, ptr %call7.i.i, align 128
  %call53 = call i32 @shash_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end17.cleanup_crit_edge, label %if.end17.err_free_inst_crit_edge

if.end17.err_free_inst_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_inst

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_inst:                                    ; preds = %if.end17.err_free_inst_crit_edge, %sw.epilog.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end4.err_free_inst_crit_edge ], [ %call14, %sw.epilog.err_free_inst_crit_edge ], [ %call53, %if.end17.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmac_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %__ctx.i = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @crypto_spawn_tfm(ptr noundef %__ctx.i, i32 noundef 1, i32 noundef 15) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmac_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_cmac_digest_init(ptr noundef %pdesc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i, align 4
  %ctx4 = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 1, i32 1
  %8 = ptrtoint ptr %ctx4 to i32
  %add5 = add i32 %5, %8
  %neg = xor i32 %5, -1
  %and = and i32 %add5, %neg
  %9 = inttoptr i32 %and to ptr
  %add.ptr = getelementptr i8, ptr %9, i32 %7
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %__ctx.i, align 4
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_update(ptr noundef %pdesc, ptr noundef %p, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i.i, align 4
  %ctx5 = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 1, i32 1
  %10 = ptrtoint ptr %ctx5 to i32
  %add6 = add i32 %5, %10
  %neg = xor i32 %5, -1
  %and = and i32 %add6, %neg
  %11 = inttoptr i32 %and to ptr
  %add.ptr = getelementptr i8, ptr %11, i32 %9
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__ctx.i, align 4
  %add10 = add i32 %13, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %9)
  %cmp.not = icmp ugt i32 %add10, %9
  %add.ptr16 = getelementptr i8, ptr %11, i32 %13
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %add.ptr16, ptr %p, i32 %len)
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__ctx.i, align 4
  %add14 = add i32 %16, %len
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %sub18 = sub i32 %9, %13
  %17 = call ptr @memcpy(ptr %add.ptr16, ptr %p, i32 %sub18)
  %18 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__ctx.i, align 4
  %sub20 = sub i32 %9, %19
  %sub21 = sub i32 %len, %sub20
  %add.ptr24 = getelementptr i8, ptr %p, i32 %sub20
  tail call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef %11, i32 noundef %9) #7
  tail call void @crypto_cipher_encrypt_one(ptr noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr) #7
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %9)
  %cmp26101 = icmp ugt i32 %sub21, %9
  br i1 %cmp26101, label %if.end.if.else.i99_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.if.else.i99_crit_edge:                     ; preds = %if.end
  br label %if.else.i99

if.else.i99:                                      ; preds = %if.else.i99.if.else.i99_crit_edge, %if.end.if.else.i99_crit_edge
  %p.addr.0103 = phi ptr [ %add.ptr27, %if.else.i99.if.else.i99_crit_edge ], [ %add.ptr24, %if.end.if.else.i99_crit_edge ]
  %len.addr.0102 = phi i32 [ %sub28, %if.else.i99.if.else.i99_crit_edge ], [ %sub21, %if.end.if.else.i99_crit_edge ]
  tail call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef %p.addr.0103, i32 noundef %9) #7
  tail call void @crypto_cipher_encrypt_one(ptr noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr) #7
  %add.ptr27 = getelementptr i8, ptr %p.addr.0103, i32 %9
  %sub28 = sub i32 %len.addr.0102, %9
  %cmp26 = icmp ugt i32 %sub28, %9
  br i1 %cmp26, label %if.else.i99.if.else.i99_crit_edge, label %if.else.i99.while.end_crit_edge

if.else.i99.while.end_crit_edge:                  ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else.i99.if.else.i99_crit_edge:                ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i99

while.end:                                        ; preds = %if.else.i99.while.end_crit_edge, %if.end.while.end_crit_edge
  %len.addr.0.lcssa = phi i32 [ %sub21, %if.end.while.end_crit_edge ], [ %sub28, %if.else.i99.while.end_crit_edge ]
  %p.addr.0.lcssa = phi ptr [ %add.ptr24, %if.end.while.end_crit_edge ], [ %add.ptr27, %if.else.i99.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.then29

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call ptr @memcpy(ptr %11, ptr %p.addr.0.lcssa, i32 %len.addr.0.lcssa)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then29, %if.then
  %len.addr.0.lcssa.sink = phi i32 [ %len.addr.0.lcssa, %if.then29 ], [ %add14, %if.then ]
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len.addr.0.lcssa.sink, ptr %__ctx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_final(ptr noundef %pdesc, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i.i, align 4
  %ctx10 = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 1, i32 1
  %10 = ptrtoint ptr %ctx10 to i32
  %add14 = add i32 %5, %10
  %neg17 = xor i32 %5, -1
  %and18 = and i32 %add14, %neg17
  %11 = inttoptr i32 %and18 to ptr
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.not = icmp eq i32 %13, %9
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then:                                          ; preds = %entry
  %add.ptr20 = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %add.ptr20, align 1
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__ctx.i, align 4
  %17 = xor i32 %16, -1
  %sub23 = add i32 %9, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %tobool.not = icmp eq i32 %sub23, 0
  br i1 %tobool.not, label %if.then.if.end26_crit_edge, label %if.then24

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %add.ptr20, i32 1
  %18 = call ptr @memset(ptr %incdec.ptr, i32 0, i32 %sub23)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %offset.0 = phi i32 [ 0, %entry.if.end26_crit_edge ], [ %9, %if.then24 ], [ %9, %if.then.if.end26_crit_edge ]
  %add.ptr = getelementptr i8, ptr %11, i32 %9
  %or = or i32 %5, 7
  %ctx5 = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %19 = ptrtoint ptr %ctx5 to i32
  %add6 = add i32 %or, %19
  %neg = xor i32 %or, -1
  %and = and i32 %add6, %neg
  %20 = inttoptr i32 %and to ptr
  tail call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef %11, i32 noundef %9) #7
  %add.ptr2771 = getelementptr i8, ptr %20, i32 %offset.0
  tail call void @__crypto_xor(ptr noundef %add.ptr, ptr noundef %add.ptr, ptr noundef %add.ptr2771, i32 noundef %9) #7
  tail call void @crypto_cipher_encrypt_one(ptr noundef %7, ptr noundef %out, ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_setkey(ptr noundef %parent, ptr noundef %inkey, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_alignmask.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  %ctx3 = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1, i32 1
  %6 = ptrtoint ptr %ctx3 to i32
  %or = or i32 %3, 7
  %add4 = add i32 %or, %6
  %neg = xor i32 %or, -1
  %and = and i32 %add4, %neg
  %7 = inttoptr i32 %and to ptr
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call8 = tail call i32 @crypto_cipher_setkey(ptr noundef %9, ptr noundef %inkey, i32 noundef %keylen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %7, i32 0, i32 %5)
  %11 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %12, ptr noundef %7, ptr noundef %7) #7
  %13 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 8, label %sw.bb32
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i64, ptr %7, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %isneg91 = icmp slt i64 %17, 0
  %or19 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %15, i64 1)
  %shl22 = shl i64 %15, 1
  %conv23 = select i1 %isneg91, i64 135, i64 0
  %xor = xor i64 %shl22, %conv23
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or19, ptr %7, align 8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %xor, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or19)
  %isneg91.1 = icmp slt i64 %or19, 0
  %or19.1 = tail call i64 @llvm.fshl.i64(i64 %or19, i64 %shl22, i64 1)
  %shl22.1 = shl i64 %xor, 1
  %conv23.1 = select i1 %isneg91.1, i64 135, i64 0
  %xor.1 = xor i64 %shl22.1, %conv23.1
  %arrayidx27.1 = getelementptr i64, ptr %7, i32 2
  %20 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or19.1, ptr %arrayidx27.1, align 8
  br label %cleanup.sink.split

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %isneg = icmp slt i64 %22, 0
  %shl45 = shl i64 %22, 1
  %conv46 = select i1 %isneg, i64 27, i64 0
  %xor47 = xor i64 %conv46, %shl45
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %xor47, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xor47)
  %isneg.1 = icmp slt i64 %xor47, 0
  %shl45.1 = shl i64 %xor47, 1
  %conv46.1 = select i1 %isneg.1, i64 27, i64 0
  %xor47.1 = xor i64 %conv46.1, %shl45.1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb32, %sw.bb
  %.sink = phi i32 [ 1, %sw.bb32 ], [ 3, %sw.bb ]
  %xor47.1.sink = phi i64 [ %xor47.1, %sw.bb32 ], [ %xor.1, %sw.bb ]
  %arrayidx50.1 = getelementptr i64, ptr %7, i32 %.sink
  %24 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %xor47.1.sink, ptr %arrayidx50.1, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_cmac__173_311_crypto_cmac_module_init4, !1, !"__initcall__kmod_cmac__173_311_crypto_cmac_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/cmac.c", i32 311, i32 1}
!2 = !{ptr @__exitcall_crypto_cmac_module_exit, !3, !"__exitcall_crypto_cmac_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/cmac.c", i32 312, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/cmac.c", i32 314, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/cmac.c", i32 315, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/cmac.c", i32 316, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_import_ns179, !13, !"__UNIQUE_ID_import_ns179", i1 false, i1 false}
!13 = !{!"../crypto/cmac.c", i32 317, i32 1}
!14 = !{ptr @crypto_cmac_tmpl, !15, !"crypto_cmac_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/cmac.c", i32 295, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
