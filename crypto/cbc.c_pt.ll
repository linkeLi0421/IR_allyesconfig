; ModuleID = '/llk/IR_all_yes/crypto/cbc.c_pt.bc'
source_filename = "../crypto/cbc.c"
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
%struct.anon.51 = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@crypto_cbc_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_cbc_create, [128 x i8] c"cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cbc__173_218_crypto_cbc_module_init4 = internal global ptr @crypto_cbc_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_cbc_module_exit = internal global ptr @crypto_cbc_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"cbc.file=crypto/cbc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"cbc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [51 x i8] c"cbc.description=CBC block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"cbc.alias=cbc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"cbc.alias=crypto-cbc\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"crypto_cbc_tmpl\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../crypto/cbc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 202, i32 31 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_crypto_cbc_module_exit, ptr @__initcall__kmod_cbc__173_218_crypto_cbc_module_init4, ptr @crypto_cbc_module_exit, ptr @crypto_cbc_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_cbc_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cbc_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cbc_tmpl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbc_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cbc_tmpl) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbc_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %tmpl, ptr noundef %tb) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #5, !range !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.end6, label %if.end.out_free_inst_crit_edge

if.end.out_free_inst_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_inst

if.end6:                                          ; preds = %if.end
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @crypto_cbc_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %8 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypto_cbc_decrypt, ptr %decrypt, align 8
  %call7 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end6.out_free_inst_crit_edge

if.end6.out_free_inst_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_inst

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_free_inst:                                    ; preds = %if.end6.out_free_inst_crit_edge, %if.end.out_free_inst_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.out_free_inst_crit_edge ], [ -22, %if.end.out_free_inst_crit_edge ]
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 128
  tail call void %10(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free_inst, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %out_free_inst ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #5
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call1 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #5
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not38 = icmp eq i32 %4, 0
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %addr2 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %__crt_alg.i.i.i9 = getelementptr i8, ptr %1, i32 12
  %iv5.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %__crt_ctx.i.i.i.i13 = getelementptr i8, ptr %1, i32 128
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %27, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr2, align 4
  %cmp = icmp eq ptr %7, %9
  %10 = ptrtoint ptr %__crt_alg.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i9, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %14 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv5.i, align 4
  %16 = ptrtoint ptr %__crt_ctx.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i.i.i13, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %cia_encrypt.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 11, i32 0, i32 3
  %20 = ptrtoint ptr %cia_encrypt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cia_encrypt.i, align 4
  br i1 %cmp, label %while.body.if.else.i.i_crit_edge, label %while.body.if.else.i.i33_crit_edge

while.body.if.else.i.i33_crit_edge:               ; preds = %while.body
  br label %if.else.i.i33

while.body.if.else.i.i_crit_edge:                 ; preds = %while.body
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else.i.i.if.else.i.i_crit_edge, %while.body.if.else.i.i_crit_edge
  %nbytes.0.i = phi i32 [ %sub.i, %if.else.i.i.if.else.i.i_crit_edge ], [ %5, %while.body.if.else.i.i_crit_edge ]
  %src.0.i = phi ptr [ %add.ptr.i, %if.else.i.i.if.else.i.i_crit_edge ], [ %7, %while.body.if.else.i.i_crit_edge ]
  %iv.0.i = phi ptr [ %src.0.i, %if.else.i.i.if.else.i.i_crit_edge ], [ %15, %while.body.if.else.i.i_crit_edge ]
  call void @__crypto_xor(ptr noundef %src.0.i, ptr noundef %src.0.i, ptr noundef %iv.0.i, i32 noundef %13) #5
  call void %21(ptr noundef %17, ptr noundef %src.0.i, ptr noundef %src.0.i) #5
  %add.ptr.i = getelementptr i8, ptr %src.0.i, i32 %13
  %sub.i = sub i32 %nbytes.0.i, %13
  %cmp.not.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.not.i, label %crypto_cbc_encrypt_inplace.exit, label %if.else.i.i.if.else.i.i_crit_edge

if.else.i.i.if.else.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

crypto_cbc_encrypt_inplace.exit:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv5.i, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %src.0.i, i32 %13)
  br label %if.end

if.else.i.i33:                                    ; preds = %if.else.i.i33.if.else.i.i33_crit_edge, %while.body.if.else.i.i33_crit_edge
  %nbytes.0.i19 = phi i32 [ %sub.i35, %if.else.i.i33.if.else.i.i33_crit_edge ], [ %5, %while.body.if.else.i.i33_crit_edge ]
  %src.0.i20 = phi ptr [ %add.ptr.i34, %if.else.i.i33.if.else.i.i33_crit_edge ], [ %7, %while.body.if.else.i.i33_crit_edge ]
  %dst.0.i = phi ptr [ %add.ptr9.i, %if.else.i.i33.if.else.i.i33_crit_edge ], [ %9, %while.body.if.else.i.i33_crit_edge ]
  call void @__crypto_xor(ptr noundef %15, ptr noundef %15, ptr noundef %src.0.i20, i32 noundef %13) #5
  call void %21(ptr noundef %17, ptr noundef %dst.0.i, ptr noundef %15) #5
  %25 = call ptr @memcpy(ptr %15, ptr %dst.0.i, i32 %13)
  %add.ptr.i34 = getelementptr i8, ptr %src.0.i20, i32 %13
  %add.ptr9.i = getelementptr i8, ptr %dst.0.i, i32 %13
  %sub.i35 = sub i32 %nbytes.0.i19, %13
  %cmp.not.i36 = icmp ult i32 %sub.i35, %13
  br i1 %cmp.not.i36, label %if.else.i.i33.if.end_crit_edge, label %if.else.i.i33.if.else.i.i33_crit_edge

if.else.i.i33.if.else.i.i33_crit_edge:            ; preds = %if.else.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i33

if.else.i.i33.if.end_crit_edge:                   ; preds = %if.else.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.else.i.i33.if.end_crit_edge, %crypto_cbc_encrypt_inplace.exit
  %err.1 = phi i32 [ %sub.i, %crypto_cbc_encrypt_inplace.exit ], [ %sub.i35, %if.else.i.i33.if.end_crit_edge ]
  %call5 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %err.1) #5
  %26 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call1, %entry.while.end_crit_edge ], [ %call5, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #5
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  %last_iv.i = alloca [16 x i8], align 1
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #5
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call1 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #5
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not33 = icmp eq i32 %4, 0
  br i1 %tobool.not33, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %addr2 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %__crt_alg.i.i.i9 = getelementptr i8, ptr %1, i32 12
  %iv5.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %__crt_ctx.i.i.i.i13 = getelementptr i8, ptr %1, i32 128
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %45, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr2, align 4
  %cmp = icmp eq ptr %7, %9
  %10 = ptrtoint ptr %__crt_alg.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i9, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_blocksize.i.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %last_iv.i) #5
  %14 = ptrtoint ptr %__crt_ctx.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i.i.i13, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i, align 4
  %cia_decrypt.i = getelementptr inbounds %struct.crypto_alg, ptr %17, i32 0, i32 11, i32 0, i32 4
  %18 = ptrtoint ptr %cia_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cia_decrypt.i, align 4
  %sub.not.i = sub i32 0, %13
  %sub6.i = and i32 %5, %sub.not.i
  %sub7.i = sub i32 %sub6.i, %13
  %add.ptr.i = getelementptr i8, ptr %7, i32 %sub7.i
  %20 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %21 = icmp ugt i32 %13, 15
  %22 = sub nsw i64 16, %20
  %23 = select i1 %21, i64 0, i64 %22
  %24 = getelementptr i8, ptr %last_iv.i, i32 %13
  %25 = trunc i64 %23 to i32
  %26 = call ptr @memset(ptr %24, i32 255, i32 %25)
  %27 = call ptr @memcpy(ptr %last_iv.i, ptr %add.ptr.i, i32 %13)
  call void %19(ptr noundef %15, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i) #5
  %sub854.i = sub i32 %5, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub854.i, i32 %13)
  %cmp55.i = icmp ult i32 %sub854.i, %13
  br i1 %cmp55.i, label %if.then.if.else.i52.i_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.if.else.i52.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i52.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %sub857.i = phi i32 [ %sub8.i, %if.end.i.if.end.i_crit_edge ], [ %sub854.i, %if.then.if.end.i_crit_edge ]
  %src.056.i = phi ptr [ %add.ptr9.i, %if.end.i.if.end.i_crit_edge ], [ %add.ptr.i, %if.then.if.end.i_crit_edge ]
  %add.ptr9.i = getelementptr i8, ptr %src.056.i, i32 %sub.not.i
  call void @__crypto_xor(ptr noundef %src.056.i, ptr noundef %src.056.i, ptr noundef %add.ptr9.i, i32 noundef %13) #5
  call void %19(ptr noundef %15, ptr noundef %add.ptr9.i, ptr noundef %add.ptr9.i) #5
  %sub8.i = sub i32 %sub857.i, %13
  %cmp.i = icmp ult i32 %sub8.i, %13
  br i1 %cmp.i, label %if.end.i.if.else.i52.i_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.if.else.i52.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i52.i

if.else.i52.i:                                    ; preds = %if.end.i.if.else.i52.i_crit_edge, %if.then.if.else.i52.i_crit_edge
  %src.0.lcssa.i = phi ptr [ %add.ptr.i, %if.then.if.else.i52.i_crit_edge ], [ %add.ptr9.i, %if.end.i.if.else.i52.i_crit_edge ]
  %sub8.lcssa.i = phi i32 [ %sub854.i, %if.then.if.else.i52.i_crit_edge ], [ %sub8.i, %if.end.i.if.else.i52.i_crit_edge ]
  %28 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iv5.i, align 4
  call void @__crypto_xor(ptr noundef %src.0.lcssa.i, ptr noundef %src.0.lcssa.i, ptr noundef %29, i32 noundef %13) #5
  %30 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv5.i, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %last_iv.i, i32 %13)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %last_iv.i) #5
  br label %if.end

if.else:                                          ; preds = %while.body
  %33 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iv5.i, align 4
  %35 = ptrtoint ptr %__crt_ctx.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_ctx.i.i.i.i13, align 4
  %__crt_alg.i.i14 = getelementptr inbounds %struct.crypto_tfm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i14, align 4
  %cia_decrypt.i15 = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 11, i32 0, i32 4
  %39 = ptrtoint ptr %cia_decrypt.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cia_decrypt.i15, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else
  %nbytes.0.i = phi i32 [ %5, %if.else ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %src.0.i = phi ptr [ %7, %if.else ], [ %add.ptr.i30, %do.body.i.do.body.i_crit_edge ]
  %dst.0.i = phi ptr [ %9, %if.else ], [ %add.ptr9.i31, %do.body.i.do.body.i_crit_edge ]
  %iv.0.i = phi ptr [ %34, %if.else ], [ %src.0.i, %do.body.i.do.body.i_crit_edge ]
  call void %40(ptr noundef %36, ptr noundef %dst.0.i, ptr noundef %src.0.i) #5
  call void @__crypto_xor(ptr noundef %dst.0.i, ptr noundef %dst.0.i, ptr noundef %iv.0.i, i32 noundef %13) #5
  %add.ptr.i30 = getelementptr i8, ptr %src.0.i, i32 %13
  %add.ptr9.i31 = getelementptr i8, ptr %dst.0.i, i32 %13
  %sub.i = sub i32 %nbytes.0.i, %13
  %cmp.not.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.not.i, label %crypto_cbc_decrypt_segment.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

crypto_cbc_decrypt_segment.exit:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv5.i, align 4
  %43 = call ptr @memcpy(ptr %42, ptr %src.0.i, i32 %13)
  br label %if.end

if.end:                                           ; preds = %crypto_cbc_decrypt_segment.exit, %if.else.i52.i
  %err.1 = phi i32 [ %sub8.lcssa.i, %if.else.i52.i ], [ %sub.i, %crypto_cbc_decrypt_segment.exit ]
  %call5 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %err.1) #5
  %44 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call1, %entry.while.end_crit_edge ], [ %call5, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #5
  ret i32 %err.0.lcssa
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
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_cbc__173_218_crypto_cbc_module_init4, !1, !"__initcall__kmod_cbc__173_218_crypto_cbc_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/cbc.c", i32 218, i32 1}
!2 = !{ptr @__exitcall_crypto_cbc_module_exit, !3, !"__exitcall_crypto_cbc_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/cbc.c", i32 219, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/cbc.c", i32 221, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/cbc.c", i32 222, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/cbc.c", i32 223, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @crypto_cbc_tmpl, !13, !"crypto_cbc_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/cbc.c", i32 202, i32 31}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i32 0, i32 33}
