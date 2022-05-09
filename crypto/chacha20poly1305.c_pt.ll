; ModuleID = '/llk/IR_all_yes/crypto/chacha20poly1305.c_pt.bc'
source_filename = "../crypto/chacha20poly1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.aead_instance = type { ptr, [124 x i8], %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [128 x i8], %struct.crypto_instance }
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
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }

@rfc7539_tmpls = internal global { [2 x %struct.crypto_template], [88 x i8] } { [2 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @rfc7539_create, [128 x i8] c"rfc7539\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @rfc7539esp_create, [128 x i8] c"rfc7539esp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [88 x i8] zeroinitializer }, align 32
@__initcall__kmod_chacha20poly1305__241_671_chacha20poly1305_module_init4 = internal global ptr @chacha20poly1305_module_init, section ".initcall4.init", align 4
@__exitcall_chacha20poly1305_module_exit = internal global ptr @chacha20poly1305_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [46 x i8] c"chacha20poly1305.file=crypto/chacha20poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [29 x i8] c"chacha20poly1305.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [61 x i8] c"chacha20poly1305.author=Martin Willi <martin@strongswan.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [52 x i8] c"chacha20poly1305.description=ChaCha20-Poly1305 AEAD\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace246 = internal constant [31 x i8] c"chacha20poly1305.alias=rfc7539\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto247 = internal constant [38 x i8] c"chacha20poly1305.alias=crypto-rfc7539\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [34 x i8] c"chacha20poly1305.alias=rfc7539esp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [41 x i8] c"chacha20poly1305.alias=crypto-rfc7539esp\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfc7539\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(%s,%s)\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rfc7539esp\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"rfc7539_tmpls\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 647, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 639, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 602, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [29 x i8] c"../crypto/chacha20poly1305.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 644, i32 37 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto247, ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_userspace246, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_chacha20poly1305_module_exit, ptr @__initcall__kmod_chacha20poly1305__241_671_chacha20poly1305_module_init4, ptr @chacha20poly1305_module_exit, ptr @rfc7539_tmpls, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc7539_tmpls to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chacha20poly1305_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_templates(ptr noundef nonnull @rfc7539_tmpls, i32 noundef 2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chacha20poly1305_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_templates(ptr noundef nonnull @rfc7539_tmpls, i32 noundef 2) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc7539_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chachapoly_create(ptr noundef %tmpl, ptr noundef %tb, ptr noundef nonnull @.str, i32 noundef 12)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc7539esp_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chachapoly_create(ptr noundef %tmpl, ptr noundef %tb, ptr noundef nonnull @.str.2, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chachapoly_create(ptr noundef %tmpl, ptr noundef %tb, ptr noundef %name, i32 noundef %ivsize) unnamed_addr #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !34
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 956) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %sub = sub i32 12, %ivsize
  %saltlen = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 52
  %2 = ptrtoint ptr %saltlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %saltlen, align 8
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call10 = call ptr @crypto_attr_alg_name(ptr noundef %4) #8
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %call11 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call10, i32 noundef 0, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.err_free_inst_crit_edge

if.end6.err_free_inst_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end14:                                         ; preds = %if.end6
  %alg.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %7 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alg.i.i, align 8
  %poly17 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %arrayidx19 = getelementptr ptr, ptr %tb, i32 2
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx19, align 4
  %call20 = call ptr @crypto_attr_alg_name(ptr noundef %10) #8
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %call21 = call i32 @crypto_grab_ahash(ptr noundef %poly17, ptr noundef %base.i, ptr noundef %call20, i32 noundef 0, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end14.err_free_inst_crit_edge

if.end14.err_free_inst_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end24:                                         ; preds = %if.end14
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 32
  %13 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alg.i, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i133, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp27.not = icmp eq i32 %16, 16
  br i1 %cmp27.not, label %if.end29, label %if.end24.err_free_inst_crit_edge

if.end24.err_free_inst_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end29:                                         ; preds = %if.end24
  %ivsize.i = getelementptr i8, ptr %8, i32 -100
  %17 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp31.not = icmp eq i32 %18, 16
  br i1 %cmp31.not, label %if.end33, label %if.end29.err_free_inst_crit_edge

if.end29.err_free_inst_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end33:                                         ; preds = %if.end29
  %cra_blocksize = getelementptr i8, ptr %8, i32 20
  %19 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp34.not = icmp eq i32 %20, 1
  br i1 %cmp34.not, label %if.end36, label %if.end33.err_free_inst_crit_edge

if.end33.err_free_inst_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end36:                                         ; preds = %if.end33
  %21 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name39 = getelementptr i8, ptr %8, i32 40
  %cra_name42 = getelementptr i8, ptr %14, i32 40
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %cra_name39, ptr noundef %cra_name42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, 127
  br i1 %cmp45, label %if.end36.err_free_inst_crit_edge, label %if.end47

if.end36.err_free_inst_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end47:                                         ; preds = %if.end36
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name51 = getelementptr i8, ptr %8, i32 168
  %cra_driver_name54 = getelementptr i8, ptr %14, i32 168
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %cra_driver_name51, ptr noundef %cra_driver_name54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, 127
  br i1 %cmp57, label %if.end47.err_free_inst_crit_edge, label %if.end59

if.end47.err_free_inst_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end59:                                         ; preds = %if.end47
  %cra_priority = getelementptr i8, ptr %8, i32 32
  %22 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cra_priority, align 32
  %cra_priority62 = getelementptr i8, ptr %14, i32 32
  %24 = ptrtoint ptr %cra_priority62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cra_priority62, align 32
  %add = add i32 %25, %23
  %div = sdiv i32 %add, 2
  %cra_priority64 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %26 = ptrtoint ptr %cra_priority64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %cra_priority64, align 32
  %cra_blocksize66 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %cra_blocksize66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cra_blocksize66, align 4
  %cra_alignmask = getelementptr i8, ptr %8, i32 28
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask69 = getelementptr i8, ptr %14, i32 28
  %30 = ptrtoint ptr %cra_alignmask69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_alignmask69, align 4
  %or = or i32 %31, %29
  %cra_alignmask71 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %cra_alignmask71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %cra_alignmask71, align 4
  %33 = ptrtoint ptr %saltlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saltlen, align 8
  %add73 = add i32 %34, 12
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add73, ptr %cra_ctxsize, align 8
  %ivsize75 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %36 = ptrtoint ptr %ivsize75 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %ivsize, ptr %ivsize75, align 8
  %chunksize.i = getelementptr i8, ptr %8, i32 -96
  %37 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %39 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %chunksize, align 32
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %40 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %41 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @chachapoly_init, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %42 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @chachapoly_exit, ptr %exit, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %43 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @chachapoly_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %44 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @chachapoly_decrypt, ptr %decrypt, align 4
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @chachapoly_setkey, ptr %21, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %46 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @chachapoly_setauthsize, ptr %setauthsize, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @chachapoly_free, ptr %call7.i.i, align 128
  %call77 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end59.cleanup_crit_edge, label %if.end59.err_free_inst_crit_edge

if.end59.err_free_inst_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_inst

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_inst:                                    ; preds = %if.end59.err_free_inst_crit_edge, %if.end47.err_free_inst_crit_edge, %if.end36.err_free_inst_crit_edge, %if.end33.err_free_inst_crit_edge, %if.end29.err_free_inst_crit_edge, %if.end24.err_free_inst_crit_edge, %if.end14.err_free_inst_crit_edge, %if.end6.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call11, %if.end6.err_free_inst_crit_edge ], [ %call21, %if.end14.err_free_inst_crit_edge ], [ -22, %if.end24.err_free_inst_crit_edge ], [ -22, %if.end29.err_free_inst_crit_edge ], [ -22, %if.end33.err_free_inst_crit_edge ], [ -36, %if.end36.err_free_inst_crit_edge ], [ -36, %if.end47.err_free_inst_crit_edge ], [ %call77, %if.end59.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #8
  %poly.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %poly.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end59.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %poly3 = getelementptr i8, ptr %1, i32 668
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %poly3) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i45 = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #8
  %cmp.i46 = icmp ugt ptr %call.i45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #8
  %3 = ptrtoint ptr %call.i45 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i45, ptr %__crt_ctx.i.i, align 4
  %poly14 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %poly14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %poly14, align 4
  %saltlen = getelementptr i8, ptr %1, i32 696
  %6 = ptrtoint ptr %saltlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saltlen, align 4
  %saltlen15 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %8 = ptrtoint ptr %saltlen15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saltlen15, align 4
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_alignmask.i.i, align 4
  %13 = add i32 %12, 256
  %add = and i32 %13, -128
  %14 = ptrtoint ptr %call.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i45, align 128
  %add19 = add i32 %15, 256
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqsize.i, align 32
  %add21 = add i32 %17, 256
  %18 = tail call i32 @llvm.umax.i32(i32 %add19, i32 %add21)
  %add22 = add i32 %18, %add
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %19 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add22, ptr %reqsize1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %3, %if.then10 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chachapoly_exit(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %poly = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poly, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #8
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i2 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryptlen, align 4
  %cryptlen1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %2 = ptrtoint ptr %cryptlen1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cryptlen1, align 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flags, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %7, i32 128
  %u.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.skip.i_crit_edge, label %if.end.i

entry.skip.i_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip.i

if.end.i:                                         ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 16777216, ptr %u.i, align 1
  %add.ptr.i.i = getelementptr %struct.aead_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %salt.i.i = getelementptr i8, ptr %7, i32 140
  %saltlen.i.i = getelementptr i8, ptr %7, i32 136
  %9 = ptrtoint ptr %saltlen.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saltlen.i.i, align 4
  %11 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %salt.i.i, i32 %10)
  %12 = load i32, ptr %saltlen.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %12
  %iv5.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %iv5.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iv5.i.i, align 32
  %sub.i.i = sub i32 12, %12
  %15 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %14, i32 %sub.i.i)
  %src5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %src5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src5.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %assoclen.i, align 8
  %call6.i = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %src5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src5.i, align 4
  %dst8.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %22 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst8.i, align 8
  %cmp9.not.i = icmp eq ptr %21, %23
  br i1 %cmp9.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then10.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst11.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %24 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen.i, align 8
  %call15.i = tail call ptr @scatterwalk_ffwd(ptr noundef %dst11.i, ptr noundef %23, i32 noundef %25) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.end.i.if.end16.i_crit_edge
  %dst.0.i = phi ptr [ %call15.i, %if.then10.i ], [ %call6.i, %if.end.i.if.end16.i_crit_edge ]
  %req17.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %28 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @chacha_encrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %29 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 4
  %30 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %flags4.i.i, align 4
  %31 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %32, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %33 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %34 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cryptlen, align 4
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dst.0.i, ptr %dst2.i.i, align 4
  %38 = ptrtoint ptr %req17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %req17.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %u.i, ptr %iv4.i.i, align 4
  %call24.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %req17.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool.not.i, label %if.end16.i.skip.i_crit_edge, label %if.end16.i.chacha_encrypt.exit_crit_edge

if.end16.i.chacha_encrypt.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chacha_encrypt.exit

if.end16.i.skip.i_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip.i

skip.i:                                           ; preds = %if.end16.i.skip.i_crit_edge, %entry.skip.i_crit_edge
  %call27.i = tail call fastcc i32 @poly_genkey(ptr noundef %req) #8
  br label %chacha_encrypt.exit

chacha_encrypt.exit:                              ; preds = %skip.i, %if.end16.i.chacha_encrypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call27.i, %skip.i ], [ %call24.i, %if.end16.i.chacha_encrypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryptlen, align 4
  %sub = add i32 %1, -16
  %cryptlen1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %2 = ptrtoint ptr %cryptlen1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %cryptlen1, align 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flags, align 8
  %call3 = tail call fastcc i32 @poly_genkey(ptr noundef %req)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_setkey(ptr nocapture noundef %aead, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %saltlen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2
  %0 = ptrtoint ptr %saltlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saltlen, align 4
  %add = add i32 %1, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %keylen)
  %cmp.not = icmp eq i32 %add, %keylen
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %sub = sub i32 %keylen, %1
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = call ptr @memcpy(ptr %salt, ptr %add.ptr, i32 %1)
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i18 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %8 = ptrtoint ptr %base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i18, align 128
  %and = and i32 %9, 1048320
  %base.i.i19 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i19, align 128
  %or.i.i = or i32 %11, %and
  store i32 %or.i.i, ptr %base.i.i19, align 128
  %12 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call6 = tail call i32 @crypto_skcipher_setkey(ptr noundef %12, ptr noundef %key, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chachapoly_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chachapoly_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #8
  %poly = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %poly) #8
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
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chacha_encrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_genkey(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_genkey(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %u = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen, align 8
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %assoclen3, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %6, i32 -104
  %7 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ivsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp eq i32 %8, 8
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp6 = icmp ult i32 %3, 8
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %3, -8
  %9 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %assoclen3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %key = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %10 = call ptr @memset(ptr %key, i32 0, i32 32)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 3
  tail call void @sg_init_one(ptr noundef %src, ptr noundef %key, i32 noundef 32) #8
  %11 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm.i, align 16
  %13 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %u, align 1
  %add.ptr.i = getelementptr %struct.aead_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %salt.i = getelementptr i8, ptr %12, i32 140
  %saltlen.i = getelementptr i8, ptr %12, i32 136
  %14 = ptrtoint ptr %saltlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saltlen.i, align 4
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %salt.i, i32 %15)
  %17 = load i32, ptr %saltlen.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %17
  %iv5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iv5.i, align 32
  %sub.i = sub i32 12, %17
  %20 = call ptr @memcpy(ptr %add.ptr4.i, ptr %19, i32 %sub.i)
  %req14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @poly_genkey_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 4
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i, align 4
  %26 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %28 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %30 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %src, ptr %dst2.i, align 4
  %31 = ptrtoint ptr %req14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %req14, align 128
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %u, ptr %iv4.i, align 4
  %call24 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %req14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end26, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %33 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfm.i, align 16
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @poly_init_done, ptr %src1.i, align 8
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %req, ptr %dst2.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 4
  %39 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %flags4.i.i, align 4
  %poly.i = getelementptr i8, ptr %34, i32 132
  %40 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %41, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 3
  %42 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base.i.i.i, align 128
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

crypto_ahash_init.exit.i:                         ; preds = %if.end26
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %41, align 128
  %call2.i.i = tail call i32 %46(ptr noundef %req14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %crypto_ahash_init.exit.i.cleanup_crit_edge

crypto_ahash_init.exit.i.cleanup_crit_edge:       ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @poly_setkey(ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %crypto_ahash_init.exit.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %call24, %if.end9.cleanup_crit_edge ], [ %call7.i, %if.end.i ], [ %call2.i.i, %crypto_ahash_init.exit.i.cleanup_crit_edge ], [ -126, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_genkey_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %complete.i.i2 = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %complete.i.i2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @poly_init_done, ptr %complete.i.i2, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %flags4.i.i, align 4
  %poly.i = getelementptr i8, ptr %5, i32 132
  %9 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 3
  %11 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i, align 128
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %if.then.i.if.then3.i_crit_edge

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

crypto_ahash_init.exit.i:                         ; preds = %if.then.i
  %req3.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 128
  %call2.i.i = tail call i32 %15(ptr noundef %req3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i3 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %crypto_ahash_init.exit.i.if.end.i_crit_edge

crypto_ahash_init.exit.i.if.end.i_crit_edge:      ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i4:                                        ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @poly_setkey(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i4, %crypto_ahash_init.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call7.i, %if.end.i4 ], [ %call2.i.i, %crypto_ahash_init.exit.i.if.end.i_crit_edge ]
  %16 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %err.addr.0.i, label %if.end.i.if.then3.i_crit_edge [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge7
  ]

if.end.i.async_done_continue.exit_crit_edge7:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  %err.addr.0.i6 = phi i32 [ %err.addr.0.i, %if.end.i.if.then3.i_crit_edge ], [ -126, %if.then.i.if.then3.i_crit_edge ]
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %complete.i.i, align 8
  tail call void %18(ptr noundef %1, i32 noundef %err.addr.0.i6) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_init_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_setkey(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_setkey(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 3
  %key = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  tail call void @sg_init_one(ptr noundef %src, ptr noundef %key, i32 noundef 32) #8
  %req4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @poly_setkey_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %flags4.i, align 4
  %poly = getelementptr i8, ptr %1, i32 132
  %7 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %poly, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 3
  %9 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %10 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %src, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %11 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %12 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %result3.i, align 32
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %8, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %14) #8
  %15 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %16, i32 -124
  %17 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %18(ptr noundef %req4) #8
  tail call void @crypto_stats_ahash_update(i32 noundef 32, i32 noundef %call3.i, ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm.i, align 16
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @poly_ad_done, ptr %complete.i, align 8
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req, ptr %data2.i, align 4
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i, align 4
  %poly.i = getelementptr i8, ptr %20, i32 132
  %26 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i.i, ptr %tfm1.i, align 16
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %29 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %assoclen.i, align 4
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %src1.i, align 4
  %34 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %nbytes2.i, align 8
  %35 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %result3.i, align 32
  %__crt_alg.i.i = getelementptr %struct.crypto_ahash, ptr %27, i32 0, i32 10, i32 3
  %36 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %37) #8
  %38 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm1.i, align 16
  %update.i.i = getelementptr i8, ptr %39, i32 -124
  %40 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = tail call i32 %41(ptr noundef %req4) #8
  tail call void @crypto_stats_ahash_update(i32 noundef %32, i32 noundef %call3.i.i, ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call fastcc i32 @poly_adpad(ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %entry.cleanup_crit_edge ], [ %call8.i, %if.end.i ], [ %call3.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_setkey_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %req3.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4
  %complete.i.i2 = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %complete.i.i2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @poly_ad_done, ptr %complete.i.i2, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %flags4.i.i, align 4
  %poly.i = getelementptr i8, ptr %5, i32 132
  %9 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 3
  %11 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %src.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen.i, align 4
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 2
  %16 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 1
  %17 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 3
  %18 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %result3.i.i, align 32
  %__crt_alg.i.i = getelementptr %struct.crypto_ahash, ptr %10, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %20) #8
  %21 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm1.i.i, align 16
  %update.i.i = getelementptr i8, ptr %22, i32 -124
  %23 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = tail call i32 %24(ptr noundef %req3.i) #8
  tail call void @crypto_stats_ahash_update(i32 noundef %15, i32 noundef %call3.i.i, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i3 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i4:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call fastcc i32 @poly_adpad(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i4, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call8.i, %if.end.i4 ], [ %call3.i.i, %if.then.i.if.end.i_crit_edge ]
  %25 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge5
  ]

if.end.i.async_done_continue.exit_crit_edge5:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %complete.i.i, align 8
  tail call void %27(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_ad_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_adpad(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_adpad(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %u = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen, align 4
  %sub = sub i32 0, %3
  %rem = and i32 %sub, 15
  %4 = call ptr @memset(ptr %u, i32 0, i32 16)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 3
  tail call void @sg_init_one(ptr noundef %src, ptr noundef %u, i32 noundef %rem) #8
  %req6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @poly_adpad_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 4
  %9 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %flags4.i, align 4
  %poly = getelementptr i8, ptr %1, i32 132
  %10 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %poly, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %11, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %13 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %src, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %14 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %15 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %result3.i, align 32
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %11, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %17) #8
  %18 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %19, i32 -124
  %20 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %21(ptr noundef %req6) #8
  tail call void @crypto_stats_ahash_update(i32 noundef %rem, i32 noundef %call3.i, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @poly_cipher(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ %call3.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_adpad_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_cipher(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_cipher(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 128
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cryptlen3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %spec.select = select i1 %cmp, ptr %dst, ptr %src
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %6)
  %crypt.0 = load ptr, ptr %spec.select, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen, align 8
  %call5 = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %crypt.0, i32 noundef %8) #8
  %req6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @poly_cipher_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 4
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %flags4.i, align 4
  %poly = getelementptr i8, ptr %1, i32 132
  %14 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %poly, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %17 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cryptlen, align 128
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %19 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %20 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %21 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %result3.i, align 32
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %15, i32 0, i32 10, i32 3
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %23) #8
  %24 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %25, i32 -124
  %26 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %27(ptr noundef %req6) #8
  tail call void @crypto_stats_ahash_update(i32 noundef %18, i32 noundef %call3.i, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @poly_cipherpad(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %call3.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_cipher_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_cipherpad(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_cipherpad(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %u = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 128
  %sub = sub i32 0, %3
  %rem = and i32 %sub, 15
  %4 = call ptr @memset(ptr %u, i32 0, i32 16)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 3
  tail call void @sg_init_one(ptr noundef %src, ptr noundef %u, i32 noundef %rem) #8
  %req6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @poly_cipherpad_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 4
  %9 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %flags4.i, align 4
  %poly = getelementptr i8, ptr %1, i32 132
  %10 = ptrtoint ptr %poly to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %poly, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %11, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 3
  %12 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %13 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %src, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %14 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %15 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %result3.i, align 32
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %11, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %17) #8
  %18 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %19, i32 -124
  %20 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %21(ptr noundef %req6) #8
  tail call void @crypto_stats_ahash_update(i32 noundef %rem, i32 noundef %call3.i, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm.i, align 16
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen.i, align 4
  %conv.i = zext i32 %25 to i64
  %26 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %tail.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 3
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tail.i, align 16
  %28 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cryptlen, align 128
  %conv4.i = zext i32 %29 to i64
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv4.i) #8
  %cryptlen6.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 1
  %31 = ptrtoint ptr %cryptlen6.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %cryptlen6.i, align 8
  tail call void @sg_init_one(ptr noundef %src, ptr noundef %tail.i, i32 noundef 16) #8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @poly_tail_done, ptr %complete.i, align 8
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req, ptr %data2.i, align 4
  %36 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %flags4.i, align 4
  %poly.i = getelementptr i8, ptr %23, i32 132
  %37 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %base.i.i.i, ptr %tfm1.i, align 16
  %tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 68
  %40 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %src, ptr %src1.i, align 4
  %41 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %nbytes2.i, align 8
  %42 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tag.i, ptr %result3.i, align 32
  %call15.i = tail call i32 @crypto_ahash_finup(ptr noundef %req6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call fastcc i32 @poly_tail_continue(ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %entry.cleanup_crit_edge ], [ %call16.i, %if.end.i ], [ %call15.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_cipherpad_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoclen.i, align 4
  %conv.i = zext i32 %7 to i64
  %8 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %tail.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %tail.i, align 16
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2
  %10 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen.i, align 128
  %conv4.i = zext i32 %11 to i64
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv4.i) #8
  %cryptlen6.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 1
  %13 = ptrtoint ptr %cryptlen6.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cryptlen6.i, align 8
  %src.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 3
  tail call void @sg_init_one(ptr noundef %src.i, ptr noundef %tail.i, i32 noundef 16) #8
  %req8.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %complete.i.i2 = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %complete.i.i2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @poly_tail_done, ptr %complete.i.i2, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 4
  %18 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %flags4.i.i, align 4
  %poly.i = getelementptr i8, ptr %5, i32 132
  %19 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %poly.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %20, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %tag.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 68
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 2
  %22 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %src.i, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 1
  %23 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 4, i32 3
  %24 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tag.i, ptr %result3.i.i, align 32
  %call15.i = tail call i32 @crypto_ahash_finup(ptr noundef %req8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i3 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i4:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call fastcc i32 @poly_tail_continue(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i4, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call16.i, %if.end.i4 ], [ %call15.i, %if.then.i.if.end.i_crit_edge ]
  %25 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge5
  ]

if.end.i.async_done_continue.exit_crit_edge5:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %complete.i.i, align 8
  tail call void %27(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poly_tail_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, -513
  store i32 %and.i, ptr %flags.i, align 8
  %call1.i = tail call fastcc i32 @poly_tail_continue(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %entry.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %4 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %err.addr.0.i, label %if.then3.i [
    i32 -115, label %if.end.i.async_done_continue.exit_crit_edge
    i32 -16, label %if.end.i.async_done_continue.exit_crit_edge1
  ]

if.end.i.async_done_continue.exit_crit_edge1:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.end.i.async_done_continue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %complete.i.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef %err.addr.0.i) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %if.end.i.async_done_continue.exit_crit_edge, %if.end.i.async_done_continue.exit_crit_edge1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poly_tail_continue(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %tag.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %0 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryptlen, align 128
  %cryptlen1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 68
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %4 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst.i, align 8
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoclen.i, align 8
  %8 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cryptlen, align 128
  %add.i = add i32 %9, %7
  tail call void @scatterwalk_map_and_copy(ptr noundef %tag.i, ptr noundef %5, i32 noundef %add.i, i32 noundef 16, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %11, i32 128
  %u.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %12 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.end.skip.i_crit_edge, label %if.end.i

if.end.skip.i_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip.i

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 16777216, ptr %u.i, align 1
  %add.ptr.i.i = getelementptr %struct.aead_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %salt.i.i = getelementptr i8, ptr %11, i32 140
  %saltlen.i.i = getelementptr i8, ptr %11, i32 136
  %15 = ptrtoint ptr %saltlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saltlen.i.i, align 4
  %17 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %salt.i.i, i32 %16)
  %18 = load i32, ptr %saltlen.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %18
  %iv5.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %iv5.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv5.i.i, align 32
  %sub.i.i = sub i32 12, %18
  %21 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %20, i32 %sub.i.i)
  %src5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %src5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src5.i, align 4
  %assoclen.i8 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %assoclen.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen.i8, align 8
  %call6.i = tail call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %23, i32 noundef %25) #8
  %26 = ptrtoint ptr %src5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src5.i, align 4
  %dst8.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %28 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst8.i, align 8
  %cmp9.not.i = icmp eq ptr %27, %29
  br i1 %cmp9.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then10.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst11.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %30 = ptrtoint ptr %assoclen.i8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %assoclen.i8, align 8
  %call15.i = tail call ptr @scatterwalk_ffwd(ptr noundef %dst11.i, ptr noundef %29, i32 noundef %31) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.end.i.if.end16.i_crit_edge
  %dst.0.i = phi ptr [ %call15.i, %if.then10.i ], [ %call6.i, %if.end.i.if.end16.i_crit_edge ]
  %req17.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 8
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 1
  %34 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @chacha_decrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 2
  %35 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 4
  %36 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %flags4.i.i, align 4
  %37 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %38, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 3
  %39 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %40 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cryptlen, align 128
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call6.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 2
  %43 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dst.0.i, ptr %dst2.i.i, align 4
  %44 = ptrtoint ptr %req17.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %req17.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %u.i, ptr %iv4.i.i, align 4
  %call24.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %req17.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool.not.i, label %if.end16.i.skip.i_crit_edge, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.i.skip.i_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip.i

skip.i:                                           ; preds = %if.end16.i.skip.i_crit_edge, %if.end.skip.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag.i.i) #8
  %src.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %46 = call ptr @memset(ptr %tag.i.i, i32 255, i32 16)
  %47 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src.i.i, align 4
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %49 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %assoclen.i.i, align 8
  %51 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cryptlen, align 128
  %add.i.i = add i32 %52, %50
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag.i.i, ptr noundef %48, i32 noundef %add.i.i, i32 noundef 16, i32 noundef 0) #8
  %tag2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 68
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %tag.i.i, ptr noundef %tag2.i.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  %..i.i = select i1 %cmp.not.i.not.i.i, i32 0, i32 -74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %skip.i, %if.end16.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %..i.i, %skip.i ], [ %call24.i, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chacha_decrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  %tag.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %err, label %entry.if.then3.i_crit_edge [
    i32 0, label %if.then.i
    i32 -115, label %entry.async_done_continue.exit_crit_edge
    i32 -16, label %entry.async_done_continue.exit_crit_edge3
  ]

entry.async_done_continue.exit_crit_edge3:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

entry.async_done_continue.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_done_continue.exit

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, -513
  store i32 %and.i, ptr %flags.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag.i) #8
  %src.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %5 = call ptr @memset(ptr %tag.i, i32 255, i32 16)
  %6 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 2
  %10 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen.i, align 128
  %add.i = add i32 %11, %9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag.i, ptr noundef %7, i32 noundef %add.i, i32 noundef 16, i32 noundef 0) #8
  %tag2.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 68
  %call.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %tag.i, ptr noundef %tag2.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag.i) #8
  %spec.select = select i1 %cmp.not.i.not.i, i32 0, i32 -74
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i, %entry.if.then3.i_crit_edge
  %err.addr.0.i2 = phi i32 [ %spec.select, %if.then.i ], [ %err, %entry.if.then3.i_crit_edge ]
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %complete.i.i, align 8
  call void %13(ptr noundef %1, i32 noundef %err.addr.0.i2) #8
  br label %async_done_continue.exit

async_done_continue.exit:                         ; preds = %if.then3.i, %entry.async_done_continue.exit_crit_edge, %entry.async_done_continue.exit_crit_edge3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_chacha20poly1305__241_671_chacha20poly1305_module_init4, !1, !"__initcall__kmod_chacha20poly1305__241_671_chacha20poly1305_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/chacha20poly1305.c", i32 671, i32 1}
!2 = !{ptr @__exitcall_chacha20poly1305_module_exit, !3, !"__exitcall_chacha20poly1305_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/chacha20poly1305.c", i32 672, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../crypto/chacha20poly1305.c", i32 674, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author244, !8, !"__UNIQUE_ID_author244", i1 false, i1 false}
!8 = !{!"../crypto/chacha20poly1305.c", i32 675, i32 1}
!9 = !{ptr @__UNIQUE_ID_description245, !10, !"__UNIQUE_ID_description245", i1 false, i1 false}
!10 = !{!"../crypto/chacha20poly1305.c", i32 676, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace246, !12, !"__UNIQUE_ID_alias_userspace246", i1 false, i1 false}
!12 = !{!"../crypto/chacha20poly1305.c", i32 677, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto247, !12, !"__UNIQUE_ID_alias_crypto247", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace248, !15, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!15 = !{!"../crypto/chacha20poly1305.c", i32 678, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto249, !15, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!17 = !{ptr @rfc7539_tmpls, !18, !"rfc7539_tmpls", i1 false, i1 false}
!18 = !{!"../crypto/chacha20poly1305.c", i32 647, i32 31}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/chacha20poly1305.c", i32 639, i32 37}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/chacha20poly1305.c", i32 602, i32 8}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/chacha20poly1305.c", i32 644, i32 37}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
