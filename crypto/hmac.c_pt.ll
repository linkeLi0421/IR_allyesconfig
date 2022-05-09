; ModuleID = '/llk/IR_all_yes/crypto/hmac.c_pt.bc'
source_filename = "../crypto/hmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.shash_instance = type { ptr, [124 x i8], %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [256 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.75, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.73, ptr, ptr, ptr, ptr, %union.anon.74, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@hmac_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @hmac_create, [128 x i8] c"hmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_hmac__239_254_hmac_module_init4 = internal global ptr @hmac_module_init, section ".initcall4.init", align 4
@__exitcall_hmac_module_exit = internal global ptr @hmac_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [22 x i8] c"hmac.file=crypto/hmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [17 x i8] c"hmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [37 x i8] c"hmac.description=HMAC hash algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [16 x i8] c"hmac.alias=hmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [23 x i8] c"hmac.alias=crypto-hmac\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"hmac_tmpl\00", align 1
@___asan_gen_.2 = private constant [17 x i8] c"../crypto/hmac.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 238, i32 31 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_hmac_module_exit, ptr @__initcall__kmod_hmac__239_254_hmac_module_init4, ptr @hmac_module_exit, ptr @hmac_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmac_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hmac_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_template(ptr noundef nonnull @hmac_tmpl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @hmac_tmpl) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !23
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 14, ptr noundef nonnull %mask) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #5
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_shash(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -256
  %call.i = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %add.ptr.i.i) #5
  br i1 %call.i, label %crypto_shash_alg_needs_key.exit, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

crypto_shash_alg_needs_key.exit:                  ; preds = %if.end11
  %cra_flags.i = getelementptr i8, ptr %7, i32 16
  %8 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_alg_needs_key.exit.err_free_inst_crit_edge, label %crypto_shash_alg_needs_key.exit.if.end15_crit_edge

crypto_shash_alg_needs_key.exit.if.end15_crit_edge: ; preds = %crypto_shash_alg_needs_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

crypto_shash_alg_needs_key.exit.err_free_inst_crit_edge: ; preds = %crypto_shash_alg_needs_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end15:                                         ; preds = %crypto_shash_alg_needs_key.exit.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %digestsize = getelementptr i8, ptr %7, i32 -128
  %10 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digestsize, align 128
  %statesize = getelementptr i8, ptr %7, i32 -124
  %12 = ptrtoint ptr %statesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %statesize, align 4
  %cra_blocksize = getelementptr i8, ptr %7, i32 20
  %14 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp = icmp ugt i32 %11, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp17 = icmp ult i32 %13, %15
  %or.cond = select i1 %cmp, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.end15.err_free_inst_crit_edge, label %if.end19

if.end15.err_free_inst_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end19:                                         ; preds = %if.end15
  %name = getelementptr inbounds %struct.crypto_template, ptr %tmpl, i32 0, i32 4
  %call21 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef %name, ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.err_free_inst_crit_edge

if.end19.err_free_inst_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end24:                                         ; preds = %if.end19
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %16 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cra_priority, align 32
  %18 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority26 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %cra_priority26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %cra_priority26, align 32
  %20 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize29 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %cra_blocksize29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cra_blocksize29, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %23 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask31 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %cra_alignmask31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cra_alignmask31, align 4
  %26 = load i32, ptr %cra_alignmask, align 4
  %add33 = add i32 %26, %13
  %neg = xor i32 %26, -1
  %and = and i32 %add33, %neg
  %digestsize37 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 128
  %27 = ptrtoint ptr %digestsize37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %digestsize37, align 128
  %statesize38 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 132
  %28 = ptrtoint ptr %statesize38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %statesize38, align 4
  %mul = shl i32 %and, 1
  %add41 = add i32 %mul, 127
  %and45 = and i32 %add41, -128
  %add46 = or i32 %and45, 4
  %cra_ctxsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add46, ptr %cra_ctxsize, align 8
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hmac_init, ptr %18, align 128
  %update = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hmac_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hmac_final, ptr %final, align 8
  %finup = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %33 = ptrtoint ptr %finup to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hmac_finup, ptr %finup, align 4
  %export = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %34 = ptrtoint ptr %export to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hmac_export, ptr %export, align 4
  %import = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %35 = ptrtoint ptr %import to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hmac_import, ptr %import, align 8
  %setkey = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %36 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hmac_setkey, ptr %setkey, align 4
  %init_tfm = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %37 = ptrtoint ptr %init_tfm to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @hmac_init_tfm, ptr %init_tfm, align 32
  %exit_tfm = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 36
  %38 = ptrtoint ptr %exit_tfm to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @hmac_exit_tfm, ptr %exit_tfm, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @shash_free_singlespawn_instance, ptr %call7.i.i, align 128
  %call48 = call i32 @shash_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end24.cleanup_crit_edge, label %if.end24.err_free_inst_crit_edge

if.end24.err_free_inst_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_free_inst:                                    ; preds = %if.end24.err_free_inst_crit_edge, %if.end19.err_free_inst_crit_edge, %if.end15.err_free_inst_crit_edge, %crypto_shash_alg_needs_key.exit.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %crypto_shash_alg_needs_key.exit.err_free_inst_crit_edge ], [ -22, %if.end15.err_free_inst_crit_edge ], [ %call21, %if.end19.err_free_inst_crit_edge ], [ %call48, %if.end24.err_free_inst_crit_edge ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_init(ptr noundef %pdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add2.i.i = add i32 %6, %2
  %neg.i.i = xor i32 %6, -1
  %and.i.i = and i32 %add2.i.i, %neg.i.i
  %7 = inttoptr i32 %and.i.i to ptr
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %statesize.i.i.i = getelementptr i8, ptr %4, i32 -124
  %8 = ptrtoint ptr %statesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %statesize.i.i.i, align 4
  %mul.i.i = shl i32 %9, 1
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i.i = add i32 %10, 127
  %and.i.i.i = and i32 %add.i.i.i, -128
  %11 = inttoptr i32 %and.i.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %14 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__ctx.i.i, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i3 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i = icmp eq i32 %and.i.i3, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.hmac_import.exit_crit_edge

entry.hmac_import.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hmac_import.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %__crt_alg.i.i.i4 = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i.i4, align 4
  %import.i.i = getelementptr i8, ptr %18, i32 -232
  %19 = ptrtoint ptr %import.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %import.i.i, align 8
  %call3.i.i = tail call i32 %20(ptr noundef %__ctx.i.i, ptr noundef %7) #5
  br label %hmac_import.exit

hmac_import.exit:                                 ; preds = %if.end.i.i, %entry.hmac_import.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ -126, %entry.hmac_import.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_update(ptr noundef %pdesc, ptr noundef %data, i32 noundef %nbytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %call1 = tail call i32 @crypto_shash_update(ptr noundef %__ctx.i, ptr noundef %data, i32 noundef %nbytes) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_final(ptr noundef %pdesc, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %statesize.i = getelementptr i8, ptr %3, i32 -124
  %6 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %statesize.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %call4 = tail call i32 @crypto_shash_final(ptr noundef %__ctx.i, ptr noundef %out) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end10_crit_edge

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false:                                       ; preds = %entry
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__ctx.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_import.exit, label %cond.false.cond.end10_crit_edge

cond.false.cond.end10_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

crypto_shash_import.exit:                         ; preds = %cond.false
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  %add2.i.i = add i32 %9, %14
  %neg.i.i = xor i32 %9, -1
  %and.i.i = and i32 %add2.i.i, %neg.i.i
  %15 = inttoptr i32 %and.i.i to ptr
  %add.ptr = getelementptr i8, ptr %15, i32 %7
  %__crt_alg.i.i20 = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i20, align 4
  %import.i = getelementptr i8, ptr %17, i32 -232
  %18 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %import.i, align 8
  %call3.i = tail call i32 %19(ptr noundef %__ctx.i, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not, label %cond.false8, label %crypto_shash_import.exit.cond.end10_crit_edge

crypto_shash_import.exit.cond.end10_crit_edge:    ; preds = %crypto_shash_import.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false8:                                      ; preds = %crypto_shash_import.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @crypto_shash_finup(ptr noundef %__ctx.i, ptr noundef %out, i32 noundef %5, ptr noundef %out) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %crypto_shash_import.exit.cond.end10_crit_edge, %cond.false.cond.end10_crit_edge, %entry.cond.end10_crit_edge
  %cond11 = phi i32 [ %call4, %entry.cond.end10_crit_edge ], [ %call9, %cond.false8 ], [ %call3.i, %crypto_shash_import.exit.cond.end10_crit_edge ], [ -126, %cond.false.cond.end10_crit_edge ]
  ret i32 %cond11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_finup(ptr noundef %pdesc, ptr noundef %data, i32 noundef %nbytes, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %statesize.i = getelementptr i8, ptr %3, i32 -124
  %6 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %statesize.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %call4 = tail call i32 @crypto_shash_finup(ptr noundef %__ctx.i, ptr noundef %data, i32 noundef %nbytes, ptr noundef %out) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end10_crit_edge

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false:                                       ; preds = %entry
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__ctx.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_import.exit, label %cond.false.cond.end10_crit_edge

cond.false.cond.end10_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

crypto_shash_import.exit:                         ; preds = %cond.false
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  %add2.i.i = add i32 %9, %14
  %neg.i.i = xor i32 %9, -1
  %and.i.i = and i32 %add2.i.i, %neg.i.i
  %15 = inttoptr i32 %and.i.i to ptr
  %add.ptr = getelementptr i8, ptr %15, i32 %7
  %__crt_alg.i.i20 = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i20, align 4
  %import.i = getelementptr i8, ptr %17, i32 -232
  %18 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %import.i, align 8
  %call3.i = tail call i32 %19(ptr noundef %__ctx.i, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not, label %cond.false8, label %crypto_shash_import.exit.cond.end10_crit_edge

crypto_shash_import.exit.cond.end10_crit_edge:    ; preds = %crypto_shash_import.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false8:                                      ; preds = %crypto_shash_import.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @crypto_shash_finup(ptr noundef %__ctx.i, ptr noundef %out, i32 noundef %5, ptr noundef %out) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %crypto_shash_import.exit.cond.end10_crit_edge, %cond.false.cond.end10_crit_edge, %entry.cond.end10_crit_edge
  %cond11 = phi i32 [ %call4, %entry.cond.end10_crit_edge ], [ %call9, %cond.false8 ], [ %call3.i, %crypto_shash_import.exit.cond.end10_crit_edge ], [ -126, %cond.false.cond.end10_crit_edge ]
  ret i32 %cond11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_export(ptr noundef %pdesc, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %export.i = getelementptr i8, ptr %3, i32 -236
  %4 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %__ctx.i, ptr noundef %out) #5
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_import(ptr noundef %pdesc, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_ctx.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %2 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %add2.i.i.i = add i32 %6, %2
  %neg.i.i.i = xor i32 %6, -1
  %and.i.i.i = and i32 %add2.i.i.i, %neg.i.i.i
  %7 = inttoptr i32 %and.i.i.i to ptr
  %statesize.i.i = getelementptr i8, ptr %4, i32 -124
  %8 = ptrtoint ptr %statesize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %statesize.i.i, align 4
  %mul.i = shl i32 %9, 1
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i = add i32 %10, 127
  %and.i.i = and i32 %add.i.i, -128
  %11 = inttoptr i32 %and.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %14 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__ctx.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_import.exit_crit_edge

entry.crypto_shash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %crypto_shash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %import.i = getelementptr i8, ptr %18, i32 -232
  %19 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %import.i, align 8
  %call3.i = tail call i32 %20(ptr noundef %__ctx.i, ptr noundef %in) #5
  br label %crypto_shash_import.exit

crypto_shash_import.exit:                         ; preds = %if.end.i, %entry.crypto_shash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -126, %entry.crypto_shash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_setkey(ptr noundef %parent, ptr noundef %inkey, i32 noundef %keylen) #2 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_blocksize.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %statesize.i = getelementptr i8, ptr %1, i32 -124
  %6 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %statesize.i, align 4
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1
  %8 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add2.i.i = add i32 %10, %8
  %neg.i.i = xor i32 %10, -1
  %and.i.i = and i32 %add2.i.i, %neg.i.i
  %11 = inttoptr i32 %and.i.i to ptr
  %add.ptr = getelementptr i8, ptr %11, i32 %7
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %7
  %12 = ptrtoint ptr %add.ptr4 to i32
  %add.i = add i32 %12, 127
  %and.i = and i32 %add.i, -128
  %13 = inttoptr i32 %and.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #5
  %16 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %17 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %__shash_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %keylen)
  %cmp = icmp ult i32 %3, %keylen
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call8 = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc, ptr noundef %inkey, i32 noundef %keylen, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup45_crit_edge

if.then.cleanup45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = call ptr @memcpy(ptr %11, ptr %inkey, i32 %keylen)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then.if.end10_crit_edge
  %keylen.addr.1 = phi i32 [ %5, %if.then.if.end10_crit_edge ], [ %keylen, %if.else ]
  %add.ptr11 = getelementptr i8, ptr %11, i32 %keylen.addr.1
  %sub = sub i32 %3, %keylen.addr.1
  %19 = call ptr @memset(ptr %add.ptr11, i32 0, i32 %sub)
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %11, i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12113.not = icmp eq i32 %3, 0
  br i1 %cmp12113.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %11, i32 %i.0114
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = xor i8 %22, 54
  store i8 %23, ptr %arrayidx, align 1
  %arrayidx14 = getelementptr i8, ptr %add.ptr, i32 %i.0114
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14, align 1
  %26 = xor i8 %25, 92
  store i8 %26, ptr %arrayidx14, align 1
  %inc = add nuw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %27 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base.i.i.i, align 128
  %and.i94 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %for.end.cleanup45_crit_edge

for.end.cleanup45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

crypto_shash_init.exit:                           ; preds = %for.end
  %__crt_alg.i.i95 = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %__crt_alg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i95, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 -256
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %34(ptr noundef nonnull %__shash_desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool19.not = icmp eq i32 %call3.i, 0
  br i1 %tobool19.not, label %cond.false, label %crypto_shash_init.exit.cleanup45_crit_edge

crypto_shash_init.exit.cleanup45_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false:                                       ; preds = %crypto_shash_init.exit
  %call20 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %11, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cond.false23, label %cond.false.cleanup45_crit_edge

cond.false.cleanup45_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false23:                                     ; preds = %cond.false
  %35 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__shash_desc, align 8
  %__crt_alg.i.i96 = getelementptr inbounds %struct.crypto_shash, ptr %36, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i96, align 4
  %export.i = getelementptr i8, ptr %38, i32 -236
  %39 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %40(ptr noundef nonnull %__shash_desc, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool25.not = icmp eq i32 %call1.i, 0
  br i1 %tobool25.not, label %cond.false27, label %cond.false23.cleanup45_crit_edge

cond.false23.cleanup45_crit_edge:                 ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false27:                                     ; preds = %cond.false23
  %41 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__shash_desc, align 8
  %base.i.i.i97 = getelementptr inbounds %struct.crypto_shash, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %base.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base.i.i.i97, align 128
  %and.i98 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %crypto_shash_init.exit105, label %cond.false27.cleanup45_crit_edge

cond.false27.cleanup45_crit_edge:                 ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

crypto_shash_init.exit105:                        ; preds = %cond.false27
  %__crt_alg.i.i100 = getelementptr inbounds %struct.crypto_shash, ptr %42, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %__crt_alg.i.i100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__crt_alg.i.i100, align 4
  %add.ptr.i.i.i101 = getelementptr i8, ptr %46, i32 -256
  %47 = ptrtoint ptr %add.ptr.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i.i101, align 128
  %call3.i102 = call i32 %48(ptr noundef nonnull %__shash_desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i102)
  %tobool29.not = icmp eq i32 %call3.i102, 0
  br i1 %tobool29.not, label %cond.false31, label %crypto_shash_init.exit105.cleanup45_crit_edge

crypto_shash_init.exit105.cleanup45_crit_edge:    ; preds = %crypto_shash_init.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false31:                                     ; preds = %crypto_shash_init.exit105
  %call32 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cond.false35, label %cond.false31.cleanup45_crit_edge

cond.false31.cleanup45_crit_edge:                 ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cond.false35:                                     ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__shash_desc, align 8
  %__crt_alg.i.i106 = getelementptr inbounds %struct.crypto_shash, ptr %50, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %__crt_alg.i.i106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__crt_alg.i.i106, align 4
  %export.i107 = getelementptr i8, ptr %52, i32 -236
  %53 = ptrtoint ptr %export.i107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %export.i107, align 4
  %call1.i108 = call i32 %54(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr) #5
  br label %cleanup45

cleanup45:                                        ; preds = %cond.false35, %cond.false31.cleanup45_crit_edge, %crypto_shash_init.exit105.cleanup45_crit_edge, %cond.false27.cleanup45_crit_edge, %cond.false23.cleanup45_crit_edge, %cond.false.cleanup45_crit_edge, %crypto_shash_init.exit.cleanup45_crit_edge, %for.end.cleanup45_crit_edge, %if.then.cleanup45_crit_edge
  %retval.1 = phi i32 [ %call8, %if.then.cleanup45_crit_edge ], [ %call3.i, %crypto_shash_init.exit.cleanup45_crit_edge ], [ %call20, %cond.false.cleanup45_crit_edge ], [ %call1.i, %cond.false23.cleanup45_crit_edge ], [ %call3.i102, %crypto_shash_init.exit105.cleanup45_crit_edge ], [ %call1.i108, %cond.false35 ], [ %call32, %cond.false31.cleanup45_crit_edge ], [ -126, %for.end.cleanup45_crit_edge ], [ -126, %cond.false27.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_init_tfm(ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %statesize.i.i = getelementptr i8, ptr %1, i32 -124
  %4 = ptrtoint ptr %statesize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %statesize.i.i, align 4
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %__crt_ctx.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1
  %7 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  %add2.i.i.i = add i32 %3, %7
  %neg.i.i.i = xor i32 %3, -1
  %and.i.i.i = and i32 %add2.i.i.i, %neg.i.i.i
  %8 = inttoptr i32 %and.i.i.i to ptr
  %mul.i = shl i32 %5, 1
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i = add i32 %9, 127
  %and.i.i = and i32 %add.i.i, -128
  %10 = inttoptr i32 %and.i.i to ptr
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 128
  %add = add i32 %12, 8
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %parent, align 128
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %10, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hmac_exit_tfm(ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %add2.i.i.i = add i32 %4, %0
  %neg.i.i.i = xor i32 %4, -1
  %and.i.i.i = and i32 %add2.i.i.i, %neg.i.i.i
  %5 = inttoptr i32 %and.i.i.i to ptr
  %statesize.i.i = getelementptr i8, ptr %2, i32 -124
  %6 = ptrtoint ptr %statesize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %statesize.i.i, align 4
  %mul.i = shl i32 %7, 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  %add.i.i = add i32 %8, 127
  %and.i.i = and i32 %add.i.i, -128
  %9 = inttoptr i32 %and.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_hmac__239_254_hmac_module_init4, !1, !"__initcall__kmod_hmac__239_254_hmac_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/hmac.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_hmac_module_exit, !3, !"__exitcall_hmac_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/hmac.c", i32 255, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/hmac.c", i32 257, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/hmac.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/hmac.c", i32 259, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @hmac_tmpl, !13, !"hmac_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/hmac.c", i32 238, i32 31}
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
