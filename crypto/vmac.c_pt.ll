; ModuleID = '/llk/IR_all_yes/crypto/vmac.c_pt.bc'
source_filename = "../crypto/vmac.c"
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
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.vmac_tfm_ctx = type { ptr, [16 x i64], [2 x i64], [2 x i64] }
%struct.vmac_desc_ctx = type { %union.anon.77, i32, i8, [2 x i64], %union.anon.78, i32 }
%union.anon.77 = type { [16 x i64] }
%union.anon.78 = type { [2 x i64] }

@vmac64_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @vmac_create, [128 x i8] c"vmac64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_vmac__244_691_vmac_module_init4 = internal global ptr @vmac_module_init, section ".initcall4.init", align 4
@__exitcall_vmac_module_exit = internal global ptr @vmac_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [22 x i8] c"vmac.file=crypto/vmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [17 x i8] c"vmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [37 x i8] c"vmac.description=VMAC hash algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [18 x i8] c"vmac.alias=vmac64\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [25 x i8] c"vmac.alias=crypto-vmac64\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns250 = internal constant [31 x i8] c"vmac.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"vmac64_tmpl\00", align 1
@___asan_gen_.2 = private constant [17 x i8] c"../crypto/vmac.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 675, i32 31 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_import_ns250, ptr @__UNIQUE_ID_license246, ptr @__exitcall_vmac_module_exit, ptr @__initcall__kmod_vmac__244_691_vmac_module_init4, ptr @vmac_module_exit, ptr @vmac64_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmac64_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vmac_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_template(ptr noundef nonnull @vmac64_tmpl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vmac_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @vmac64_tmpl) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !25
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 14, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #8
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %or1.i = or i32 %5, 15
  %call.i = call i32 @crypto_grab_spawn(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 1, i32 noundef %or1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.not = icmp eq i32 %9, 16
  br i1 %cmp.not, label %if.end14, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end14:                                         ; preds = %if.end11
  %name = getelementptr inbounds %struct.crypto_template, ptr %tmpl, i32 0, i32 4
  %call16 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef %name, ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.err_free_inst_crit_edge

if.end14.err_free_inst_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end19:                                         ; preds = %if.end14
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_priority, align 32
  %12 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority20 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %13 = ptrtoint ptr %cra_priority20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %cra_priority20, align 32
  %14 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize23 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %cra_blocksize23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cra_blocksize23, align 4
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask25 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %cra_alignmask25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cra_alignmask25, align 4
  %cra_ctxsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 168, ptr %cra_ctxsize, align 8
  %cra_init = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  %21 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vmac_init_tfm, ptr %cra_init, align 64
  %cra_exit = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  %22 = ptrtoint ptr %cra_exit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vmac_exit_tfm, ptr %cra_exit, align 4
  %descsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 40
  %23 = ptrtoint ptr %descsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 176, ptr %descsize, align 8
  %digestsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 128
  %24 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %digestsize, align 128
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vmac_init, ptr %12, align 128
  %update = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vmac_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %27 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vmac_final, ptr %final, align 8
  %setkey = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %28 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vmac_setkey, ptr %setkey, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @shash_free_singlespawn_instance, ptr %call7.i.i, align 128
  %call29 = call i32 @shash_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_free_inst_crit_edge

if.end19.err_free_inst_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_inst:                                    ; preds = %if.end19.err_free_inst_crit_edge, %if.end14.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ %call16, %if.end14.err_free_inst_crit_edge ], [ %call29, %if.end19.err_free_inst_crit_edge ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
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
define internal i32 @vmac_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__ctx.i = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @crypto_spawn_tfm(ptr noundef %__ctx.i, i32 noundef 1, i32 noundef 15) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmac_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 8
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmac_init(ptr nocapture noundef %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %partial_size = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 17
  %2 = ptrtoint ptr %partial_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %partial_size, align 8
  %first_block_processed = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 17, i32 1
  %3 = ptrtoint ptr %first_block_processed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %first_block_processed, align 4
  %polytmp = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 18
  %polykey = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 2
  %4 = call ptr @memcpy(ptr %polytmp, ptr %polykey, i32 16)
  %nonce_size = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 22
  %5 = ptrtoint ptr %nonce_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nonce_size, align 8
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmac_update(ptr nocapture noundef %desc, ptr nocapture noundef readonly %p, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %nonce_size = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 22
  %2 = ptrtoint ptr %nonce_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nonce_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nuw nsw i32 16, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %nonce = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 20
  %arrayidx = getelementptr [16 x i8], ptr %nonce, i32 0, i32 %3
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %p, i32 %4)
  %6 = ptrtoint ptr %nonce_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nonce_size, align 8
  %add = add i32 %7, %4
  store i32 %add, ptr %nonce_size, align 8
  %add.ptr = getelementptr i8, ptr %p, i32 %4
  %sub6 = sub i32 %len, %4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %sub6, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %p.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %p, %entry.if.end_crit_edge ]
  %partial_size = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 17
  %8 = ptrtoint ptr %partial_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %partial_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.then7

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then7:                                         ; preds = %if.end
  %sub9 = sub i32 128, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub9)
  %arrayidx17 = getelementptr [128 x i8], ptr %__ctx.i, i32 0, i32 %9
  %11 = call ptr @memcpy(ptr %arrayidx17, ptr %p.addr.0, i32 %10)
  %12 = ptrtoint ptr %partial_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %partial_size, align 8
  %add19 = add i32 %13, %10
  store i32 %add19, ptr %partial_size, align 8
  %add.ptr20 = getelementptr i8, ptr %p.addr.0, i32 %10
  %sub21 = sub i32 %len.addr.0, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add19)
  %cmp23 = icmp eq i32 %add19, 128
  br i1 %cmp23, label %if.then24, label %if.then7.if.end27_crit_edge

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vhash_blocks(ptr noundef %__crt_ctx.i.i, ptr noundef %__ctx.i, ptr noundef %__ctx.i, i32 noundef 1)
  %14 = ptrtoint ptr %partial_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %partial_size, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then7.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %len.addr.1 = phi i32 [ %sub21, %if.then24 ], [ %sub21, %if.then7.if.end27_crit_edge ], [ %len.addr.0, %if.end.if.end27_crit_edge ]
  %p.addr.1 = phi ptr [ %add.ptr20, %if.then24 ], [ %add.ptr20, %if.then7.if.end27_crit_edge ], [ %p.addr.0, %if.end.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len.addr.1)
  %cmp28 = icmp ugt i32 %len.addr.1, 127
  br i1 %cmp28, label %if.then29, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %len.addr.1, -128
  %div86 = lshr i32 %len.addr.1, 7
  tail call fastcc void @vhash_blocks(ptr noundef %__crt_ctx.i.i, ptr noundef %__ctx.i, ptr noundef %p.addr.1, i32 noundef %div86)
  %add.ptr30 = getelementptr i8, ptr %p.addr.1, i32 %and
  %sub31 = and i32 %len.addr.1, 127
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27.if.end32_crit_edge
  %len.addr.2 = phi i32 [ %sub31, %if.then29 ], [ %len.addr.1, %if.end27.if.end32_crit_edge ]
  %p.addr.2 = phi ptr [ %add.ptr30, %if.then29 ], [ %p.addr.1, %if.end27.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2)
  %tobool33.not = icmp eq i32 %len.addr.2, 0
  br i1 %tobool33.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %__ctx.i, ptr %p.addr.2, i32 %len.addr.2)
  %16 = ptrtoint ptr %partial_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len.addr.2, ptr %partial_size, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmac_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %nonce_size = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 22
  %2 = ptrtoint ptr %nonce_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nonce_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nonce = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 20
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nonce, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %partial_size.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 17
  %6 = ptrtoint ptr %partial_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %partial_size.i, align 8
  %polytmp.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 18
  %8 = ptrtoint ptr %polytmp.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %polytmp.i, align 8
  %ch.sroa.0.0.extract.shift.i = lshr i64 %9, 32
  %ch.sroa.0.0.extract.trunc.i = trunc i64 %ch.sroa.0.0.extract.shift.i to i32
  %ch.sroa.11.0.extract.trunc.i = trunc i64 %9 to i32
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 19
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx2.i, align 8
  %cl.sroa.0.0.extract.shift.i = lshr i64 %11, 32
  %cl.sroa.0.0.extract.trunc.i = trunc i64 %cl.sroa.0.0.extract.shift.i to i32
  %cl.sroa.9.0.extract.trunc.i = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end3.vhash_final.exit_crit_edge, label %if.then.i

if.end3.vhash_final.exit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %vhash_final.exit

if.then.i:                                        ; preds = %if.end3
  %sub.i = add i32 %7, -1
  %or.i = or i32 %sub.i, 15
  %add.i = add i32 %or.i, 1
  %arrayidx3.i = getelementptr [128 x i8], ptr %__ctx.i, i32 0, i32 %7
  %sub4.i = sub i32 %add.i, %7
  %12 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 %sub4.i)
  %div129.i = lshr exact i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp209.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp209.not.i, label %if.then.i.do.body57.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.do.body57.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.0214.i = phi i32 [ %add56.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %t.0213.i = phi i64 [ %add55.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %rl.sroa.0.0212.i = phi i32 [ %rl.sroa.0.0.extract.trunc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %rl.sroa.9.0211.i = phi i32 [ %rl.sroa.9.0.extract.trunc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %rh.0210.i = phi i64 [ %add49.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i64, ptr %__ctx.i, i32 %i.0214.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #8
  %arrayidx5.i = getelementptr %struct.vmac_tfm_ctx, ptr %__crt_ctx.i.i, i32 0, i32 1, i32 %i.0214.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx5.i, align 8
  %add6.i = add i64 %15, %17
  %add.ptr9.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %18 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr9.i, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #8
  %add12.i = or i32 %i.0214.i, 1
  %arrayidx13.i = getelementptr %struct.vmac_tfm_ctx, ptr %__crt_ctx.i.i, i32 0, i32 1, i32 %add12.i
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx13.i, align 8
  %add14.i = add i64 %20, %22
  %shr.i = lshr i64 %add6.i, 32
  %conv17.i = and i64 %add14.i, 4294967295
  %mul.i = mul nuw i64 %conv17.i, %shr.i
  %conv19.i = and i64 %add6.i, 4294967295
  %shr20.i = lshr i64 %add14.i, 32
  %mul23.i = mul nuw i64 %shr20.i, %conv19.i
  %mul29.i = mul nuw i64 %conv17.i, %conv19.i
  %rl.sroa.9.0.insert.ext.i = zext i32 %rl.sroa.9.0211.i to i64
  %rl.sroa.0.0.insert.ext.i = zext i32 %rl.sroa.0.0212.i to i64
  %rl.sroa.0.0.insert.shift.i = shl nuw i64 %rl.sroa.0.0.insert.ext.i, 32
  %rl.sroa.0.0.insert.insert.i = or i64 %rl.sroa.0.0.insert.shift.i, %rl.sroa.9.0.insert.ext.i
  %add30.i = add i64 %rl.sroa.0.0.insert.insert.i, %mul29.i
  %rl.sroa.0.0.extract.shift.i = lshr i64 %add30.i, 32
  %rl.sroa.0.0.extract.trunc.i = trunc i64 %rl.sroa.0.0.extract.shift.i to i32
  %rl.sroa.9.0.extract.trunc.i = trunc i64 %add30.i to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add30.i, i64 %mul29.i)
  %cmp31.i = icmp ult i64 %add30.i, %mul29.i
  %inc.i = zext i1 %cmp31.i to i64
  %mul40.i = mul nuw i64 %shr20.i, %shr.i
  %shr42.i = lshr i64 %mul23.i, 32
  %shr45.i = lshr i64 %mul.i, 32
  %spec.select.i = add i64 %mul40.i, %rh.0210.i
  %add41.i = add i64 %spec.select.i, %shr45.i
  %add48.i = add i64 %add41.i, %shr42.i
  %add49.i = add i64 %add48.i, %inc.i
  %conv51.i = and i64 %mul23.i, 4294967295
  %conv53.i = and i64 %mul.i, 4294967295
  %add54.i = add i64 %conv53.i, %t.0213.i
  %add55.i = add i64 %add54.i, %conv51.i
  %add56.i = add nuw nsw i32 %i.0214.i, 2
  %cmp.i = icmp ult i32 %add56.i, %div129.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %do.body57.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body57.i.loopexit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rl.sroa.0.0.extract.trunc.i.le = trunc i64 %rl.sroa.0.0.extract.shift.i to i32
  %rl.sroa.9.0.extract.trunc.i.le = trunc i64 %add30.i to i32
  br label %do.body57.i

do.body57.i:                                      ; preds = %do.body57.i.loopexit, %if.then.i.do.body57.i_crit_edge
  %rh.0.lcssa.i = phi i64 [ 0, %if.then.i.do.body57.i_crit_edge ], [ %add49.i, %do.body57.i.loopexit ]
  %rl.sroa.9.0.lcssa.i = phi i32 [ 0, %if.then.i.do.body57.i_crit_edge ], [ %rl.sroa.9.0.extract.trunc.i.le, %do.body57.i.loopexit ]
  %rl.sroa.0.0.lcssa.i = phi i32 [ 0, %if.then.i.do.body57.i_crit_edge ], [ %rl.sroa.0.0.extract.trunc.i.le, %do.body57.i.loopexit ]
  %t.0.lcssa.i = phi i64 [ 0, %if.then.i.do.body57.i_crit_edge ], [ %add55.i, %do.body57.i.loopexit ]
  %shl.i = shl i64 %t.0.lcssa.i, 32
  %rl.sroa.9.0.insert.ext151.i = zext i32 %rl.sroa.9.0.lcssa.i to i64
  %rl.sroa.0.0.insert.ext139.i = zext i32 %rl.sroa.0.0.lcssa.i to i64
  %rl.sroa.0.0.insert.shift140.i = shl nuw i64 %rl.sroa.0.0.insert.ext139.i, 32
  %rl.sroa.0.0.insert.insert142.i = or i64 %rl.sroa.0.0.insert.shift140.i, %rl.sroa.9.0.insert.ext151.i
  %add59.i = add i64 %rl.sroa.0.0.insert.insert142.i, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add59.i, i64 %shl.i)
  %cmp60.i = icmp ult i64 %add59.i, %shl.i
  %inc63.i = zext i1 %cmp60.i to i64
  %shr65.i = lshr i64 %t.0.lcssa.i, 32
  %spec.select208.i = add i64 %shr65.i, %rh.0.lcssa.i
  %add66.i = add i64 %spec.select208.i, %inc63.i
  %and.i = and i64 %add66.i, 4611686018427387903
  %first_block_processed.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 17, i32 1
  %23 = ptrtoint ptr %first_block_processed.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_block_processed.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool71.not.i = icmp eq i8 %24, 0
  br i1 %tobool71.not.i, label %do.body76.i, label %if.then72.i

if.then72.i:                                      ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  %rl.sroa.0.0.extract.shift143.i = lshr i64 %add59.i, 32
  %polykey.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 2
  %arrayidx75.i = getelementptr %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 4
  %25 = ptrtoint ptr %polykey.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %polykey.i, align 4
  %conv2.i.i = zext i32 %26 to i64
  %mul.i.i = shl nuw nsw i64 %ch.sroa.0.0.extract.shift.i, 1
  %add.i.i = mul i64 %mul.i.i, %conv2.i.i
  %add3.i.i = add i64 %add.i.i, %and.i
  %conv5.i.i = and i64 %11, 4294967295
  %add.ptr6.i.i = getelementptr %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 3
  %27 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr6.i.i, align 4
  %conv7.i.i = zext i32 %28 to i64
  %mul8.i.i = mul nuw i64 %conv5.i.i, %conv7.i.i
  %add9.i.i = add i64 %add3.i.i, %mul8.i.i
  %29 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx75.i, align 4
  %conv13.i.i = zext i32 %30 to i64
  %mul14.i.i = mul nuw i64 %cl.sroa.0.0.extract.shift.i, %conv13.i.i
  %add15.i.i = add i64 %add9.i.i, %mul14.i.i
  %conv17.i.i = and i64 %9, 4294967295
  %add.ptr18.i.i = getelementptr %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr18.i.i, align 4
  %conv19.i.i = zext i32 %32 to i64
  %mul20.i.i = mul nuw i64 %conv17.i.i, %conv19.i.i
  %add21.i.i = add i64 %add15.i.i, %mul20.i.i
  %conv23.i.i = and i64 %add21.i.i, 4294967295
  %shr.i.i = lshr i64 %add21.i.i, 32
  %mul28.i.i = mul nuw i64 %conv5.i.i, %conv2.i.i
  %mul34.i.i = mul nuw i64 %cl.sroa.0.0.extract.shift.i, %conv7.i.i
  %mul40.i.i = mul nuw i64 %conv17.i.i, %conv13.i.i
  %mul46.i.i = mul nuw i64 %ch.sroa.0.0.extract.shift.i, %conv19.i.i
  %add29.i.i = add i64 %mul34.i.i, %mul28.i.i
  %add35.i.i = add i64 %add29.i.i, %mul40.i.i
  %add41.i.i = add i64 %add35.i.i, %mul46.i.i
  %add47.i.i = add i64 %add41.i.i, %shr.i.i
  %conv49.i.i = shl i64 %add47.i.i, 32
  %shl.i.i = and i64 %conv49.i.i, 9223372032559808512
  %or.i.i = or i64 %shl.i.i, %conv23.i.i
  %shr50.i.i = lshr i64 %add47.i.i, 31
  %conv51.i.i = and i64 %add59.i, 4294967295
  %mul57.i.i = mul nuw i64 %conv5.i.i, %conv19.i.i
  %mul63.i.i = mul nuw i64 %cl.sroa.0.0.extract.shift.i, %conv2.i.i
  %mul68.i.i = mul nuw i64 %conv17.i.i, %conv7.i.i
  %mul74.i.i = mul nuw i64 %ch.sroa.0.0.extract.shift.i, %conv13.i.i
  %add69.i.i = add i64 %mul68.i.i, %mul63.i.i
  %add75.i.i = add i64 %add69.i.i, %mul74.i.i
  %add76.i.i = shl i64 %add75.i.i, 1
  %add52.i.i = add nuw i64 %mul57.i.i, %conv51.i.i
  %add58.i.i = add i64 %add52.i.i, %add76.i.i
  %add77.i.i = add i64 %add58.i.i, %shr50.i.i
  %shr79.i.i = lshr i64 %add77.i.i, 32
  %mul87.i.i = mul nuw i64 %conv5.i.i, %conv13.i.i
  %mul93.i.i = mul nuw i64 %cl.sroa.0.0.extract.shift.i, %conv19.i.i
  %mul99.i.i = mul nuw i64 %conv17.i.i, %conv2.i.i
  %mul104.i.i = mul nuw i64 %ch.sroa.0.0.extract.shift.i, %conv7.i.i
  %add105.i.i = add i64 %mul104.i.i, %mul99.i.i
  %add106.i.i = shl i64 %add105.i.i, 1
  %add82.i.i = add nuw i64 %mul87.i.i, %rl.sroa.0.0.extract.shift143.i
  %add88.i.i = add i64 %add82.i.i, %mul93.i.i
  %add94.i.i = add i64 %add88.i.i, %add106.i.i
  %add107.i.i = add i64 %add94.i.i, %shr79.i.i
  %cl.sroa.0.0.extract.trunc173.i = trunc i64 %add107.i.i to i32
  %cl.sroa.9.0.extract.trunc179.i = trunc i64 %add77.i.i to i32
  %shr111.i.i = lshr i64 %add107.i.i, 32
  %add112.i.i = add nuw i64 %shr111.i.i, %or.i.i
  %ch.sroa.0.0.extract.shift195.i = lshr i64 %add112.i.i, 32
  %ch.sroa.0.0.extract.trunc196.i = trunc i64 %ch.sroa.0.0.extract.shift195.i to i32
  %ch.sroa.11.0.extract.trunc207.i = trunc i64 %add112.i.i to i32
  br label %vhash_final.exit

do.body76.i:                                      ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  %add78.i = add i64 %add59.i, %11
  %cl.sroa.0.0.extract.shift165.i = lshr i64 %add78.i, 32
  %cl.sroa.0.0.extract.trunc166.i = trunc i64 %cl.sroa.0.0.extract.shift165.i to i32
  %cl.sroa.9.0.extract.trunc174.i = trunc i64 %add78.i to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add78.i, i64 %add59.i)
  %cmp79.i = icmp ult i64 %add78.i, %add59.i
  %inc82.i = add i64 %9, 1
  %ch.sroa.0.0.extract.shift181.i = lshr i64 %inc82.i, 32
  %ch.sroa.0.0.extract.trunc182.i = trunc i64 %ch.sroa.0.0.extract.shift181.i to i32
  %ch.sroa.11.0.extract.trunc197.i = trunc i64 %inc82.i to i32
  %ch.sroa.11.0.i = select i1 %cmp79.i, i32 %ch.sroa.11.0.extract.trunc197.i, i32 %ch.sroa.11.0.extract.trunc.i
  %ch.sroa.0.0.i = select i1 %cmp79.i, i32 %ch.sroa.0.0.extract.trunc182.i, i32 %ch.sroa.0.0.extract.trunc.i
  %ch.sroa.11.0.insert.ext199.i = zext i32 %ch.sroa.11.0.i to i64
  %ch.sroa.0.0.insert.ext184.i = zext i32 %ch.sroa.0.0.i to i64
  %ch.sroa.0.0.insert.shift185.i = shl nuw i64 %ch.sroa.0.0.insert.ext184.i, 32
  %ch.sroa.0.0.insert.insert187.i = add nuw nsw i64 %and.i, %ch.sroa.11.0.insert.ext199.i
  %add84.i = add i64 %ch.sroa.0.0.insert.insert187.i, %ch.sroa.0.0.insert.shift185.i
  %ch.sroa.0.0.extract.shift188.i = lshr i64 %add84.i, 32
  %ch.sroa.0.0.extract.trunc189.i = trunc i64 %ch.sroa.0.0.extract.shift188.i to i32
  %ch.sroa.11.0.extract.trunc202.i = trunc i64 %add84.i to i32
  br label %vhash_final.exit

vhash_final.exit:                                 ; preds = %do.body76.i, %if.then72.i, %if.end3.vhash_final.exit_crit_edge
  %ch.sroa.11.2.i = phi i32 [ %ch.sroa.11.0.extract.trunc.i, %if.end3.vhash_final.exit_crit_edge ], [ %ch.sroa.11.0.extract.trunc202.i, %do.body76.i ], [ %ch.sroa.11.0.extract.trunc207.i, %if.then72.i ]
  %ch.sroa.0.2.i = phi i32 [ %ch.sroa.0.0.extract.trunc.i, %if.end3.vhash_final.exit_crit_edge ], [ %ch.sroa.0.0.extract.trunc189.i, %do.body76.i ], [ %ch.sroa.0.0.extract.trunc196.i, %if.then72.i ]
  %cl.sroa.9.1.i = phi i32 [ %cl.sroa.9.0.extract.trunc.i, %if.end3.vhash_final.exit_crit_edge ], [ %cl.sroa.9.0.extract.trunc174.i, %do.body76.i ], [ %cl.sroa.9.0.extract.trunc179.i, %if.then72.i ]
  %cl.sroa.0.1.i = phi i32 [ %cl.sroa.0.0.extract.trunc.i, %if.end3.vhash_final.exit_crit_edge ], [ %cl.sroa.0.0.extract.trunc166.i, %do.body76.i ], [ %cl.sroa.0.0.extract.trunc173.i, %if.then72.i ]
  %ch.sroa.11.0.insert.ext204.i = zext i32 %ch.sroa.11.2.i to i64
  %ch.sroa.0.0.insert.ext191.i = zext i32 %ch.sroa.0.2.i to i64
  %ch.sroa.0.0.insert.shift192.i = shl nuw i64 %ch.sroa.0.0.insert.ext191.i, 32
  %cl.sroa.9.0.insert.ext176.i = zext i32 %cl.sroa.9.1.i to i64
  %cl.sroa.0.0.insert.ext168.i = zext i32 %cl.sroa.0.1.i to i64
  %cl.sroa.0.0.insert.shift169.i = shl nuw i64 %cl.sroa.0.0.insert.ext168.i, 32
  %l3key.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 4, i32 8
  %33 = ptrtoint ptr %l3key.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %l3key.i, align 8
  %arrayidx91.i = getelementptr %struct.crypto_shash, ptr %1, i32 1, i32 2, i32 4, i32 16
  %35 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx91.i, align 8
  %mul92.i = shl i32 %7, 3
  %conv93.i = zext i32 %mul92.i to i64
  %shr.i130.i = lshr i64 %ch.sroa.0.0.insert.ext191.i, 31
  %ch.sroa.0.0.insert.shift192.masked.i = and i64 %ch.sroa.0.0.insert.shift192.i, 9223372032559808512
  %cl.sroa.0.0.insert.insert171.i = add nuw nsw i64 %shr.i130.i, %cl.sroa.9.0.insert.ext176.i
  %add.i131.i = add i64 %cl.sroa.0.0.insert.insert171.i, %cl.sroa.0.0.insert.shift169.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i131.i, i64 %shr.i130.i)
  %cmp.i.i = icmp ult i64 %add.i131.i, %shr.i130.i
  %inc.i.i = zext i1 %cmp.i.i to i64
  %and.i.i = add nuw nsw i64 %ch.sroa.11.0.insert.ext204.i, %conv93.i
  %spec.select.i.i = add nuw i64 %and.i.i, %ch.sroa.0.0.insert.shift192.masked.i
  %add1.i.i = add nuw i64 %spec.select.i.i, %inc.i.i
  %add1.lobit.i.i = lshr i64 %add1.i.i, 63
  %37 = trunc i64 %add1.lobit.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %add1.i.i)
  %cmp3.i.i = icmp eq i64 %add1.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add.i131.i)
  %cmp5.i.i = icmp eq i64 %add.i131.i, -1
  %narrow.i.i = and i1 %cmp5.i.i, %cmp3.i.i
  %38 = zext i1 %narrow.i.i to i32
  %add7.i.i = add nuw nsw i32 %38, %37
  %39 = zext i32 %add7.i.i to i64
  %add11.i.i = add i64 %add.i131.i, %39
  call void @__sanitizer_cov_trace_cmp8(i64 %add11.i.i, i64 %39)
  %cmp12.i.i = icmp ult i64 %add11.i.i, %39
  %inc15.i.i = zext i1 %cmp12.i.i to i64
  %p1.addr.1.i.i = add nuw i64 %add1.i.i, %inc15.i.i
  %and20.i.i = and i64 %p1.addr.1.i.i, 9223372036854775807
  %shr21.i.i = lshr i64 %add11.i.i, 32
  %add22.i.i = add nuw i64 %and20.i.i, %shr21.i.i
  %shr23.i.i = lshr i64 %add22.i.i, 32
  %add24.i.i = add nuw i64 %shr23.i.i, %add22.i.i
  %conv25.i.i = trunc i64 %add24.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv25.i.i)
  %cmp26.i.i = icmp eq i32 %conv25.i.i, -1
  %40 = zext i1 %cmp26.i.i to i64
  %add29.i132.i = add nuw i64 %add24.i.i, %40
  %shr30.i.i = lshr i64 %add29.i132.i, 32
  %add31.i.i = add nuw i64 %shr30.i.i, %and20.i.i
  %shl.i133.i = shl i64 %add31.i.i, 32
  %add33.i.i = add i64 %add31.i.i, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add33.i.i, i64 %34)
  %cmp34.i.i = icmp ult i64 %add33.i.i, %34
  %41 = select i1 %cmp34.i.i, i64 257, i64 0
  %add38.i.i = add i64 %41, %add33.i.i
  %add32.i.i = add i64 %add11.i.i, %36
  %add39.i.i = add i64 %add32.i.i, %shl.i133.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add39.i.i, i64 %36)
  %cmp40.i.i = icmp ult i64 %add39.i.i, %36
  %42 = select i1 %cmp40.i.i, i64 257, i64 0
  %add45.i.i = add i64 %42, %add39.i.i
  %conv48.i.i = and i64 %add38.i.i, 4294967295
  %shr49.i.i = lshr i64 %add45.i.i, 32
  %mul.i134.i = mul nuw i64 %shr49.i.i, %conv48.i.i
  %shr52.i.i = lshr i64 %add38.i.i, 32
  %conv56.i.i = and i64 %add45.i.i, 4294967295
  %mul57.i135.i = mul nuw i64 %conv56.i.i, %shr52.i.i
  %mul64.i.i = mul nuw i64 %shr49.i.i, %shr52.i.i
  %mul69.i.i = mul nuw i64 %conv56.i.i, %conv48.i.i
  %shl72.i.i = shl i64 %mul.i134.i, 32
  %add73.i.i = add i64 %shl72.i.i, %mul69.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add73.i.i, i64 %shl72.i.i)
  %cmp74.i.i = icmp ult i64 %add73.i.i, %shl72.i.i
  %inc77.i.i = zext i1 %cmp74.i.i to i64
  %shr79.i136.i = lshr i64 %mul.i134.i, 32
  %shl85.i.i = shl i64 %mul57.i135.i, 32
  %add86.i.i = add i64 %add73.i.i, %shl85.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add86.i.i, i64 %shl85.i.i)
  %cmp87.i.i = icmp ult i64 %add86.i.i, %shl85.i.i
  %inc90.i.i = zext i1 %cmp87.i.i to i64
  %shr92.i.i = lshr i64 %mul57.i135.i, 32
  %rh.0.i.i = add nuw i64 %shr79.i136.i, %mul64.i.i
  %add80.i.i = add nuw i64 %rh.0.i.i, %shr92.i.i
  %rh.1.i.i = add nuw i64 %add80.i.i, %inc77.i.i
  %add93.i.i = add nuw i64 %rh.1.i.i, %inc90.i.i
  %shr98.i.i = lshr i64 %add93.i.i, 56
  %add101.i.i = add i64 %add93.i.i, %add86.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add101.i.i, i64 %add93.i.i)
  %cmp102.i.i = icmp ult i64 %add101.i.i, %add93.i.i
  %inc105.i.i = zext i1 %cmp102.i.i to i64
  %t.0.i.i = add nuw nsw i64 %shr98.i.i, %inc105.i.i
  %shl110.i.i = shl i64 %add93.i.i, 8
  %add113.i.i = add i64 %add101.i.i, %shl110.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add113.i.i, i64 %shl110.i.i)
  %cmp114.i.i = icmp ult i64 %add113.i.i, %shl110.i.i
  %inc117.i.i = zext i1 %cmp114.i.i to i64
  %t.1.i.i = add nuw nsw i64 %t.0.i.i, %inc117.i.i
  %add123.i.i = mul nuw nsw i64 %t.1.i.i, 257
  %add124.i.i = add i64 %add123.i.i, %add113.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add124.i.i, i64 %add123.i.i)
  %cmp125.i.i = icmp ult i64 %add124.i.i, %add123.i.i
  %43 = select i1 %cmp125.i.i, i64 257, i64 0
  %add130.i.i = add i64 %43, %add124.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -258, i64 %add130.i.i)
  %cmp131.i.i = icmp ugt i64 %add130.i.i, -258
  %44 = select i1 %cmp131.i.i, i64 257, i64 0
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 21, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx6, align 1
  %47 = and i8 %46, 1
  %and8 = zext i8 %47 to i32
  %and12 = and i8 %46, -2
  store i8 %and12, ptr %arrayidx6, align 1
  %48 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_ctx.i.i, align 8
  tail call void @crypto_cipher_encrypt_one(ptr noundef %49, ptr noundef %nonce, ptr noundef %nonce) #8
  %arrayidx18 = getelementptr [2 x i64], ptr %nonce, i32 0, i32 %and8
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx18, align 8
  %add136.i.i = add i64 %add130.i.i, %51
  %add = add i64 %add136.i.i, %44
  %52 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %add, ptr %out, align 1
  br label %cleanup

cleanup:                                          ; preds = %vhash_final.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vhash_final.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmac_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %out = alloca [2 x i64], align 8
  %in = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = getelementptr inbounds [2 x i64], ptr %out, i32 0, i32 1
  %1 = call ptr @memset(ptr %out, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %2 = getelementptr inbounds i8, ptr %in, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 8
  %call1 = tail call i32 @crypto_cipher_setkey(ptr noundef %5, ptr noundef %key, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %in, align 1
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr %in, i32 0, i32 15
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %8, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %out, align 8
  %arrayidx8 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx8, align 8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %0, align 8
  %arrayidx11 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 12
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx11, align 8
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %arrayidx12, align 1
  %17 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %18, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %19 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %out, align 8
  %arrayidx8.1 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 20
  %21 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx8.1, align 8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %0, align 8
  %arrayidx11.1 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 28
  %24 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx11.1, align 8
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx12, align 1
  %inc.1 = add i8 %26, 1
  store i8 %inc.1, ptr %arrayidx12, align 1
  %27 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %28, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %29 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %out, align 8
  %arrayidx8.2 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 36
  %31 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx8.2, align 8
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %0, align 8
  %arrayidx11.2 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 44
  %34 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx11.2, align 8
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx12, align 1
  %inc.2 = add i8 %36, 1
  store i8 %inc.2, ptr %arrayidx12, align 1
  %37 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %38, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %39 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %out, align 8
  %arrayidx8.3 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 52
  %41 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx8.3, align 8
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %0, align 8
  %arrayidx11.3 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 60
  %44 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx11.3, align 8
  %45 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx12, align 1
  %inc.3 = add i8 %46, 1
  store i8 %inc.3, ptr %arrayidx12, align 1
  %47 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %48, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %49 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %out, align 8
  %arrayidx8.4 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 68
  %51 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx8.4, align 8
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %0, align 8
  %arrayidx11.4 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 76
  %54 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx11.4, align 8
  %55 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx12, align 1
  %inc.4 = add i8 %56, 1
  store i8 %inc.4, ptr %arrayidx12, align 1
  %57 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %58, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %59 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %out, align 8
  %arrayidx8.5 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 84
  %61 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx8.5, align 8
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %0, align 8
  %arrayidx11.5 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 92
  %64 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx11.5, align 8
  %65 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx12, align 1
  %inc.5 = add i8 %66, 1
  store i8 %inc.5, ptr %arrayidx12, align 1
  %67 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %68, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %69 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %out, align 8
  %arrayidx8.6 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 100
  %71 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx8.6, align 8
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %0, align 8
  %arrayidx11.6 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 108
  %74 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx11.6, align 8
  %75 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx12, align 1
  %inc.6 = add i8 %76, 1
  store i8 %inc.6, ptr %arrayidx12, align 1
  %77 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %78, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %79 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %out, align 8
  %arrayidx8.7 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 1, i32 116
  %81 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %arrayidx8.7, align 8
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %0, align 8
  %arrayidx11.7 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 2
  %84 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx11.7, align 8
  %85 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -64, ptr %in, align 1
  %86 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx12, align 1
  %87 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %88, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %89 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %out, align 8
  %and = and i64 %90, 2305843005455597567
  %arrayidx23 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 2, i32 2
  %91 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %and, ptr %arrayidx23, align 8
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %0, align 8
  %and25 = and i64 %93, 2305843005455597567
  %arrayidx28 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 2, i32 4
  %94 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %and25, ptr %arrayidx28, align 8
  %95 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -32, ptr %in, align 1
  %96 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx43 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 2, i32 4, i32 8
  %arrayidx47 = getelementptr %struct.crypto_shash, ptr %tfm, i32 1, i32 2, i32 4, i32 16
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end3
  %97 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %__crt_ctx.i.i, align 8
  call void @crypto_cipher_encrypt_one(ptr noundef %98, ptr noundef nonnull %out, ptr noundef nonnull %in) #8
  %99 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %out, align 8
  %101 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %arrayidx43, align 8
  %102 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %0, align 8
  %104 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %arrayidx47, align 8
  %105 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx12, align 1
  %inc49 = add i8 %106, 1
  store i8 %inc49, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -258, i64 %100)
  %cmp52 = icmp ugt i64 %100, -258
  call void @__sanitizer_cov_trace_const_cmp8(i64 -258, i64 %103)
  %cmp56 = icmp ugt i64 %103, -258
  %or.cond = select i1 %cmp52, i1 true, i1 %cmp56
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhash_blocks(ptr nocapture noundef readonly %tctx, ptr nocapture noundef %dctx, ptr nocapture noundef readonly %mptr, i32 noundef %blocks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nhkey = getelementptr inbounds %struct.vmac_tfm_ctx, ptr %tctx, i32 0, i32 1
  %polykey = getelementptr inbounds %struct.vmac_tfm_ctx, ptr %tctx, i32 0, i32 2
  %0 = ptrtoint ptr %polykey to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %polykey, align 8
  %pkh.sroa.0.0.extract.shift = lshr i64 %1, 32
  %arrayidx2 = getelementptr %struct.vmac_tfm_ctx, ptr %tctx, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx2, align 8
  %pkl.sroa.0.0.extract.shift = lshr i64 %3, 32
  %polytmp = getelementptr inbounds %struct.vmac_desc_ctx, ptr %dctx, i32 0, i32 3
  %4 = ptrtoint ptr %polytmp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %polytmp, align 8
  %ch.sroa.0.0.extract.shift = lshr i64 %5, 32
  %ch.sroa.0.0.extract.trunc = trunc i64 %ch.sroa.0.0.extract.shift to i32
  %ch.sroa.11.0.extract.trunc = trunc i64 %5 to i32
  %arrayidx5 = getelementptr %struct.vmac_desc_ctx, ptr %dctx, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx5, align 8
  %cl.sroa.0.0.extract.shift = lshr i64 %7, 32
  %cl.sroa.0.0.extract.trunc = trunc i64 %cl.sroa.0.0.extract.shift to i32
  %cl.sroa.9.0.extract.trunc = trunc i64 %7 to i32
  %first_block_processed = getelementptr inbounds %struct.vmac_desc_ctx, ptr %dctx, i32 0, i32 2
  %8 = ptrtoint ptr %first_block_processed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %first_block_processed, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end82_crit_edge

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %first_block_processed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %first_block_processed, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.0336 = phi i32 [ 0, %if.then ], [ %add55, %for.body.for.body_crit_edge ]
  %t.0335 = phi i64 [ 0, %if.then ], [ %add54, %for.body.for.body_crit_edge ]
  %rl.sroa.0.0334 = phi i32 [ 0, %if.then ], [ %rl.sroa.0.0.extract.trunc, %for.body.for.body_crit_edge ]
  %rl.sroa.15.0333 = phi i32 [ 0, %if.then ], [ %rl.sroa.15.0.extract.trunc, %for.body.for.body_crit_edge ]
  %rh.0332 = phi i64 [ 0, %if.then ], [ %add48, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i64, ptr %mptr, i32 %i.0336
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #8
  %arrayidx7 = getelementptr i64, ptr %nhkey, i32 %i.0336
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx7, align 8
  %add = add i64 %13, %15
  %add.ptr9 = getelementptr i64, ptr %add.ptr, i32 1
  %16 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr9, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #8
  %add11 = or i32 %i.0336, 1
  %arrayidx12 = getelementptr i64, ptr %nhkey, i32 %add11
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %18, %20
  %shr = lshr i64 %add, 32
  %conv16 = and i64 %add13, 4294967295
  %mul = mul nuw i64 %conv16, %shr
  %conv18 = and i64 %add, 4294967295
  %shr19 = lshr i64 %add13, 32
  %mul22 = mul nuw i64 %shr19, %conv18
  %mul28 = mul nuw i64 %conv16, %conv18
  %rl.sroa.15.0.insert.ext = zext i32 %rl.sroa.15.0333 to i64
  %rl.sroa.0.0.insert.ext = zext i32 %rl.sroa.0.0334 to i64
  %rl.sroa.0.0.insert.shift = shl nuw i64 %rl.sroa.0.0.insert.ext, 32
  %rl.sroa.0.0.insert.insert = or i64 %rl.sroa.0.0.insert.shift, %rl.sroa.15.0.insert.ext
  %add29 = add i64 %rl.sroa.0.0.insert.insert, %mul28
  %rl.sroa.0.0.extract.shift = lshr i64 %add29, 32
  %rl.sroa.0.0.extract.trunc = trunc i64 %rl.sroa.0.0.extract.shift to i32
  %rl.sroa.15.0.extract.trunc = trunc i64 %add29 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %mul28)
  %cmp30 = icmp ult i64 %add29, %mul28
  %inc = zext i1 %cmp30 to i64
  %mul39 = mul nuw i64 %shr19, %shr
  %shr41 = lshr i64 %mul22, 32
  %shr44 = lshr i64 %mul, 32
  %spec.select = add i64 %mul39, %rh.0332
  %add40 = add i64 %spec.select, %shr44
  %add47 = add i64 %add40, %shr41
  %add48 = add i64 %add47, %inc
  %conv50 = and i64 %mul22, 4294967295
  %conv52 = and i64 %mul, 4294967295
  %add53 = add i64 %conv52, %t.0335
  %add54 = add i64 %add53, %conv50
  %add55 = add nuw nsw i32 %i.0336, 2
  %cmp = icmp ult i32 %i.0336, 14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.body56

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i64 %add54, 32
  %add58 = add i64 %add29, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %add58, i64 %shl)
  %cmp59 = icmp ult i64 %add58, %shl
  %inc62 = zext i1 %cmp59 to i64
  %shr64 = lshr i64 %add54, 32
  %spec.select329 = add i64 %shr64, %add48
  %add65 = add i64 %spec.select329, %inc62
  %and = and i64 %add65, 4611686018427387903
  %add72 = add i64 %add58, %7
  %cl.sroa.0.0.extract.shift286 = lshr i64 %add72, 32
  %cl.sroa.0.0.extract.trunc287 = trunc i64 %cl.sroa.0.0.extract.shift286 to i32
  %cl.sroa.9.0.extract.trunc295 = trunc i64 %add72 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add72, i64 %add58)
  %cmp73 = icmp ult i64 %add72, %add58
  %inc76 = add i64 %5, 1
  %ch.sroa.0.0.extract.shift302 = lshr i64 %inc76, 32
  %ch.sroa.0.0.extract.trunc303 = trunc i64 %ch.sroa.0.0.extract.shift302 to i32
  %ch.sroa.11.0.extract.trunc318 = trunc i64 %inc76 to i32
  %ch.sroa.11.0 = select i1 %cmp73, i32 %ch.sroa.11.0.extract.trunc318, i32 %ch.sroa.11.0.extract.trunc
  %ch.sroa.0.0 = select i1 %cmp73, i32 %ch.sroa.0.0.extract.trunc303, i32 %ch.sroa.0.0.extract.trunc
  %ch.sroa.11.0.insert.ext320 = zext i32 %ch.sroa.11.0 to i64
  %ch.sroa.0.0.insert.ext305 = zext i32 %ch.sroa.0.0 to i64
  %ch.sroa.0.0.insert.shift306 = shl nuw i64 %ch.sroa.0.0.insert.ext305, 32
  %ch.sroa.0.0.insert.insert308 = or i64 %ch.sroa.0.0.insert.shift306, %ch.sroa.11.0.insert.ext320
  %add78 = add i64 %ch.sroa.0.0.insert.insert308, %and
  %ch.sroa.0.0.extract.shift309 = lshr i64 %add78, 32
  %ch.sroa.0.0.extract.trunc310 = trunc i64 %ch.sroa.0.0.extract.shift309 to i32
  %ch.sroa.11.0.extract.trunc323 = trunc i64 %add78 to i32
  %add.ptr81 = getelementptr i64, ptr %mptr, i32 16
  %dec = add i32 %blocks, -1
  br label %if.end82

if.end82:                                         ; preds = %do.body56, %entry.if.end82_crit_edge
  %ch.sroa.11.1 = phi i32 [ %ch.sroa.11.0.extract.trunc323, %do.body56 ], [ %ch.sroa.11.0.extract.trunc, %entry.if.end82_crit_edge ]
  %ch.sroa.0.1 = phi i32 [ %ch.sroa.0.0.extract.trunc310, %do.body56 ], [ %ch.sroa.0.0.extract.trunc, %entry.if.end82_crit_edge ]
  %cl.sroa.9.0 = phi i32 [ %cl.sroa.9.0.extract.trunc295, %do.body56 ], [ %cl.sroa.9.0.extract.trunc, %entry.if.end82_crit_edge ]
  %cl.sroa.0.0 = phi i32 [ %cl.sroa.0.0.extract.trunc287, %do.body56 ], [ %cl.sroa.0.0.extract.trunc, %entry.if.end82_crit_edge ]
  %blocks.addr.0 = phi i32 [ %dec, %do.body56 ], [ %blocks, %entry.if.end82_crit_edge ]
  %mptr.addr.0 = phi ptr [ %add.ptr81, %do.body56 ], [ %mptr, %entry.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks.addr.0)
  %tobool84.not343 = icmp eq i32 %blocks.addr.0, 0
  br i1 %tobool84.not343, label %if.end82.while.end_crit_edge, label %for.cond92.preheader.lr.ph

if.end82.while.end_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond92.preheader.lr.ph:                       ; preds = %if.end82
  %mul.i = shl nuw nsw i64 %pkh.sroa.0.0.extract.shift, 1
  %conv7.i = and i64 %1, 4294967295
  %conv19.i = and i64 %3, 4294967295
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %do.body158.for.cond92.preheader_crit_edge, %for.cond92.preheader.lr.ph
  %dec83349.in = phi i32 [ %blocks.addr.0, %for.cond92.preheader.lr.ph ], [ %dec83349, %do.body158.for.cond92.preheader_crit_edge ]
  %mptr.addr.1348 = phi ptr [ %mptr.addr.0, %for.cond92.preheader.lr.ph ], [ %add.ptr174, %do.body158.for.cond92.preheader_crit_edge ]
  %cl.sroa.0.1347 = phi i32 [ %cl.sroa.0.0, %for.cond92.preheader.lr.ph ], [ %cl.sroa.0.0.extract.trunc294, %do.body158.for.cond92.preheader_crit_edge ]
  %cl.sroa.9.1346 = phi i32 [ %cl.sroa.9.0, %for.cond92.preheader.lr.ph ], [ %cl.sroa.9.0.extract.trunc300, %do.body158.for.cond92.preheader_crit_edge ]
  %ch.sroa.0.2345 = phi i32 [ %ch.sroa.0.1, %for.cond92.preheader.lr.ph ], [ %ch.sroa.0.0.extract.trunc317, %do.body158.for.cond92.preheader_crit_edge ]
  %ch.sroa.11.2344 = phi i32 [ %ch.sroa.11.1, %for.cond92.preheader.lr.ph ], [ %ch.sroa.11.0.extract.trunc328, %do.body158.for.cond92.preheader_crit_edge ]
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %for.cond92.preheader
  %i91.0341 = phi i32 [ 0, %for.cond92.preheader ], [ %add156, %for.body95.for.body95_crit_edge ]
  %t90.0340 = phi i64 [ 0, %for.cond92.preheader ], [ %add154, %for.body95.for.body95_crit_edge ]
  %rl.sroa.0.1339 = phi i32 [ 0, %for.cond92.preheader ], [ %rl.sroa.0.0.extract.trunc249, %for.body95.for.body95_crit_edge ]
  %rl.sroa.15.1338 = phi i32 [ 0, %for.cond92.preheader ], [ %rl.sroa.15.0.extract.trunc270, %for.body95.for.body95_crit_edge ]
  %rh.3337 = phi i64 [ 0, %for.cond92.preheader ], [ %add148, %for.body95.for.body95_crit_edge ]
  %add.ptr96 = getelementptr i64, ptr %mptr.addr.1348, i32 %i91.0341
  %21 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr96, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  %arrayidx98 = getelementptr i64, ptr %nhkey, i32 %i91.0341
  %24 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx98, align 8
  %add99 = add i64 %23, %25
  %add.ptr101 = getelementptr i64, ptr %add.ptr96, i32 1
  %26 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr101, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #8
  %add103 = or i32 %i91.0341, 1
  %arrayidx104 = getelementptr i64, ptr %nhkey, i32 %add103
  %29 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx104, align 8
  %add105 = add i64 %28, %30
  %shr106 = lshr i64 %add99, 32
  %conv110 = and i64 %add105, 4294967295
  %mul111 = mul nuw i64 %conv110, %shr106
  %conv113 = and i64 %add99, 4294967295
  %shr114 = lshr i64 %add105, 32
  %mul117 = mul nuw i64 %shr114, %conv113
  %mul124 = mul nuw i64 %conv110, %conv113
  %rl.sroa.15.0.insert.ext267 = zext i32 %rl.sroa.15.1338 to i64
  %rl.sroa.0.0.insert.ext244 = zext i32 %rl.sroa.0.1339 to i64
  %rl.sroa.0.0.insert.shift245 = shl nuw i64 %rl.sroa.0.0.insert.ext244, 32
  %rl.sroa.0.0.insert.insert247 = or i64 %rl.sroa.0.0.insert.shift245, %rl.sroa.15.0.insert.ext267
  %add125 = add i64 %rl.sroa.0.0.insert.insert247, %mul124
  %rl.sroa.0.0.extract.shift248 = lshr i64 %add125, 32
  %rl.sroa.0.0.extract.trunc249 = trunc i64 %rl.sroa.0.0.extract.shift248 to i32
  %rl.sroa.15.0.extract.trunc270 = trunc i64 %add125 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add125, i64 %mul124)
  %cmp126 = icmp ult i64 %add125, %mul124
  %inc129 = zext i1 %cmp126 to i64
  %mul137 = mul nuw i64 %shr114, %shr106
  %shr141 = lshr i64 %mul117, 32
  %shr144 = lshr i64 %mul111, 32
  %spec.select330 = add i64 %mul137, %rh.3337
  %add138 = add i64 %spec.select330, %shr144
  %add147 = add i64 %add138, %shr141
  %add148 = add i64 %add147, %inc129
  %conv150 = and i64 %mul117, 4294967295
  %conv152 = and i64 %mul111, 4294967295
  %add153 = add i64 %conv152, %t90.0340
  %add154 = add i64 %add153, %conv150
  %add156 = add nuw nsw i32 %i91.0341, 2
  %cmp93 = icmp ult i32 %i91.0341, 14
  br i1 %cmp93, label %for.body95.for.body95_crit_edge, label %do.body158

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95

do.body158:                                       ; preds = %for.body95
  %dec83349 = add i32 %dec83349.in, -1
  %shl160 = shl i64 %add154, 32
  %add161 = add i64 %add125, %shl160
  %rl.sroa.0.0.extract.shift255 = lshr i64 %add161, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %add161, i64 %shl160)
  %cmp162 = icmp ult i64 %add161, %shl160
  %inc165 = zext i1 %cmp162 to i64
  %shr167 = lshr i64 %add154, 32
  %spec.select331 = add i64 %shr167, %add148
  %add168 = add i64 %spec.select331, %inc165
  %and173 = and i64 %add168, 4611686018427387903
  %conv.i = zext i32 %ch.sroa.0.2345 to i64
  %add.i = mul i64 %mul.i, %conv.i
  %conv5.i = zext i32 %cl.sroa.9.1346 to i64
  %mul8.i = mul nuw i64 %conv7.i, %conv5.i
  %conv11.i = zext i32 %cl.sroa.0.1347 to i64
  %mul14.i = mul nuw i64 %pkl.sroa.0.0.extract.shift, %conv11.i
  %conv17.i = zext i32 %ch.sroa.11.2344 to i64
  %mul20.i = mul nuw i64 %conv19.i, %conv17.i
  %add3.i = add i64 %add.i, %mul20.i
  %add9.i = add i64 %add3.i, %mul8.i
  %add15.i = add i64 %add9.i, %mul14.i
  %add21.i = add i64 %add15.i, %and173
  %conv23.i = and i64 %add21.i, 4294967295
  %shr.i = lshr i64 %add21.i, 32
  %mul28.i = mul nuw i64 %pkh.sroa.0.0.extract.shift, %conv5.i
  %mul34.i = mul nuw i64 %conv7.i, %conv11.i
  %mul40.i = mul nuw i64 %pkl.sroa.0.0.extract.shift, %conv17.i
  %mul46.i = mul nuw i64 %conv19.i, %conv.i
  %add29.i = add i64 %mul46.i, %mul40.i
  %add35.i = add i64 %add29.i, %mul28.i
  %add41.i = add i64 %add35.i, %mul34.i
  %add47.i = add i64 %add41.i, %shr.i
  %conv49.i = shl i64 %add47.i, 32
  %shl.i = and i64 %conv49.i, 9223372032559808512
  %or.i = or i64 %shl.i, %conv23.i
  %shr50.i = lshr i64 %add47.i, 31
  %conv51.i = and i64 %add161, 4294967295
  %mul57.i = mul nuw i64 %conv19.i, %conv5.i
  %mul63.i = mul nuw i64 %pkh.sroa.0.0.extract.shift, %conv11.i
  %mul68.i = mul nuw i64 %conv7.i, %conv17.i
  %mul74.i = mul nuw i64 %pkl.sroa.0.0.extract.shift, %conv.i
  %add69.i = add i64 %mul74.i, %mul68.i
  %add75.i = add i64 %add69.i, %mul63.i
  %add76.i = shl i64 %add75.i, 1
  %add52.i = add i64 %add76.i, %mul57.i
  %add58.i = add i64 %add52.i, %conv51.i
  %add77.i = add i64 %add58.i, %shr50.i
  %shr79.i = lshr i64 %add77.i, 32
  %mul87.i = mul nuw i64 %pkl.sroa.0.0.extract.shift, %conv5.i
  %mul93.i = mul nuw i64 %conv19.i, %conv11.i
  %mul99.i = mul nuw i64 %pkh.sroa.0.0.extract.shift, %conv17.i
  %mul104.i = mul nuw i64 %conv7.i, %conv.i
  %add105.i = add i64 %mul104.i, %mul99.i
  %add106.i = shl i64 %add105.i, 1
  %add82.i = add i64 %mul93.i, %mul87.i
  %add88.i = add i64 %add82.i, %add106.i
  %add94.i = add i64 %add88.i, %rl.sroa.0.0.extract.shift255
  %add107.i = add i64 %add94.i, %shr79.i
  %cl.sroa.0.0.extract.trunc294 = trunc i64 %add107.i to i32
  %cl.sroa.9.0.extract.trunc300 = trunc i64 %add77.i to i32
  %shr111.i = lshr i64 %add107.i, 32
  %add112.i = add nuw i64 %shr111.i, %or.i
  %ch.sroa.0.0.extract.shift316 = lshr i64 %add112.i, 32
  %ch.sroa.0.0.extract.trunc317 = trunc i64 %ch.sroa.0.0.extract.shift316 to i32
  %ch.sroa.11.0.extract.trunc328 = trunc i64 %add112.i to i32
  %add.ptr174 = getelementptr i64, ptr %mptr.addr.1348, i32 16
  %tobool84.not = icmp eq i32 %dec83349, 0
  br i1 %tobool84.not, label %while.end.loopexit, label %do.body158.for.cond92.preheader_crit_edge

do.body158.for.cond92.preheader_crit_edge:        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond92.preheader

while.end.loopexit:                               ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  %cl.sroa.0.0.extract.trunc294.le = trunc i64 %add107.i to i32
  %cl.sroa.9.0.extract.trunc300.le = trunc i64 %add77.i to i32
  %ch.sroa.0.0.extract.trunc317.le = trunc i64 %ch.sroa.0.0.extract.shift316 to i32
  %ch.sroa.11.0.extract.trunc328.le = trunc i64 %add112.i to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end82.while.end_crit_edge
  %ch.sroa.11.2.lcssa = phi i32 [ %ch.sroa.11.1, %if.end82.while.end_crit_edge ], [ %ch.sroa.11.0.extract.trunc328.le, %while.end.loopexit ]
  %ch.sroa.0.2.lcssa = phi i32 [ %ch.sroa.0.1, %if.end82.while.end_crit_edge ], [ %ch.sroa.0.0.extract.trunc317.le, %while.end.loopexit ]
  %cl.sroa.9.1.lcssa = phi i32 [ %cl.sroa.9.0, %if.end82.while.end_crit_edge ], [ %cl.sroa.9.0.extract.trunc300.le, %while.end.loopexit ]
  %cl.sroa.0.1.lcssa = phi i32 [ %cl.sroa.0.0, %if.end82.while.end_crit_edge ], [ %cl.sroa.0.0.extract.trunc294.le, %while.end.loopexit ]
  %ch.sroa.11.0.insert.ext325 = zext i32 %ch.sroa.11.2.lcssa to i64
  %ch.sroa.0.0.insert.ext312 = zext i32 %ch.sroa.0.2.lcssa to i64
  %ch.sroa.0.0.insert.shift313 = shl nuw i64 %ch.sroa.0.0.insert.ext312, 32
  %ch.sroa.0.0.insert.insert315 = or i64 %ch.sroa.0.0.insert.shift313, %ch.sroa.11.0.insert.ext325
  %31 = ptrtoint ptr %polytmp to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %ch.sroa.0.0.insert.insert315, ptr %polytmp, align 8
  %cl.sroa.9.0.insert.ext297 = zext i32 %cl.sroa.9.1.lcssa to i64
  %cl.sroa.0.0.insert.ext289 = zext i32 %cl.sroa.0.1.lcssa to i64
  %cl.sroa.0.0.insert.shift290 = shl nuw i64 %cl.sroa.0.0.insert.ext289, 32
  %cl.sroa.0.0.insert.insert292 = or i64 %cl.sroa.0.0.insert.shift290, %cl.sroa.9.0.insert.ext297
  %32 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %cl.sroa.0.0.insert.insert292, ptr %arrayidx5, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_vmac__244_691_vmac_module_init4, !1, !"__initcall__kmod_vmac__244_691_vmac_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/vmac.c", i32 691, i32 1}
!2 = !{ptr @__exitcall_vmac_module_exit, !3, !"__exitcall_vmac_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/vmac.c", i32 692, i32 1}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../crypto/vmac.c", i32 694, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description247, !8, !"__UNIQUE_ID_description247", i1 false, i1 false}
!8 = !{!"../crypto/vmac.c", i32 695, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace248, !10, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!10 = !{!"../crypto/vmac.c", i32 696, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto249, !10, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_import_ns250, !13, !"__UNIQUE_ID_import_ns250", i1 false, i1 false}
!13 = !{!"../crypto/vmac.c", i32 697, i32 1}
!14 = !{ptr @vmac64_tmpl, !15, !"vmac64_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/vmac.c", i32 675, i32 31}
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
!26 = !{i8 0, i8 2}
