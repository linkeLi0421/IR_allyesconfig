; ModuleID = '/llk/IR_all_yes/crypto/ecb.c_pt.bc'
source_filename = "../crypto/ecb.c"
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

@crypto_ecb_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_ecb_create, [128 x i8] c"ecb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_ecb__173_99_crypto_ecb_module_init4 = internal global ptr @crypto_ecb_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_ecb_module_exit = internal global ptr @crypto_ecb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"ecb.file=crypto/ecb\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"ecb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [51 x i8] c"ecb.description=ECB block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"ecb.alias=ecb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"ecb.alias=crypto-ecb\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"crypto_ecb_tmpl\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../crypto/ecb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 83, i32 31 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_crypto_ecb_module_exit, ptr @__initcall__kmod_ecb__173_99_crypto_ecb_module_init4, ptr @crypto_ecb_module_exit, ptr @crypto_ecb_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_ecb_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ecb_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_ecb_tmpl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ecb_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_ecb_tmpl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ecb_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %tmpl, ptr noundef %tb) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 28
  %1 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ivsize, align 4
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @crypto_ecb_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %3 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @crypto_ecb_decrypt, ptr %decrypt, align 8
  %call3 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 128
  tail call void %5(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cia_encrypt = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11, i32 0, i32 3
  %6 = ptrtoint ptr %cia_encrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cia_encrypt, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk.i) #4
  %10 = call ptr @memset(ptr %walk.i, i32 255, i32 84)
  %call1.i = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk.i, ptr noundef %req, i1 noundef zeroext false) #4
  %nbytes2.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 3
  %11 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not17.i = icmp eq i32 %12, 0
  br i1 %cmp.not17.i, label %entry.crypto_ecb_crypt.exit_crit_edge, label %while.body.lr.ph.i

entry.crypto_ecb_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ecb_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %addr.i = getelementptr inbounds %struct.anon.51, ptr %walk.i, i32 0, i32 1
  %addr5.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi i32 [ %12, %while.body.lr.ph.i ], [ %19, %do.end.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %16 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr5.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body.i
  %nbytes.0.i = phi i32 [ %13, %while.body.i ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %src.0.i = phi ptr [ %15, %while.body.i ], [ %add.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %dst.0.i = phi ptr [ %17, %while.body.i ], [ %add.ptr7.i, %do.body.i.do.body.i_crit_edge ]
  call void %7(ptr noundef %3, ptr noundef %dst.0.i, ptr noundef %src.0.i) #4
  %add.ptr.i = getelementptr i8, ptr %src.0.i, i32 %9
  %add.ptr7.i = getelementptr i8, ptr %dst.0.i, i32 %9
  %sub.i = sub i32 %nbytes.0.i, %9
  %cmp8.not.i = icmp ult i32 %sub.i, %9
  br i1 %cmp8.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %call9.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk.i, i32 noundef %sub.i) #4
  %18 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes2.i, align 4
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %do.end.i.crypto_ecb_crypt.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end.i.crypto_ecb_crypt.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ecb_crypt.exit

crypto_ecb_crypt.exit:                            ; preds = %do.end.i.crypto_ecb_crypt.exit_crit_edge, %entry.crypto_ecb_crypt.exit_crit_edge
  %err.0.lcssa.i = phi i32 [ %call1.i, %entry.crypto_ecb_crypt.exit_crit_edge ], [ %call9.i, %do.end.i.crypto_ecb_crypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk.i) #4
  ret i32 %err.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  %walk.i = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cia_decrypt = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11, i32 0, i32 4
  %6 = ptrtoint ptr %cia_decrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cia_decrypt, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk.i) #4
  %10 = call ptr @memset(ptr %walk.i, i32 255, i32 84)
  %call1.i = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk.i, ptr noundef %req, i1 noundef zeroext false) #4
  %nbytes2.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 3
  %11 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not17.i = icmp eq i32 %12, 0
  br i1 %cmp.not17.i, label %entry.crypto_ecb_crypt.exit_crit_edge, label %while.body.lr.ph.i

entry.crypto_ecb_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ecb_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %addr.i = getelementptr inbounds %struct.anon.51, ptr %walk.i, i32 0, i32 1
  %addr5.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk.i, i32 0, i32 1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi i32 [ %12, %while.body.lr.ph.i ], [ %19, %do.end.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %16 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr5.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body.i
  %nbytes.0.i = phi i32 [ %13, %while.body.i ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %src.0.i = phi ptr [ %15, %while.body.i ], [ %add.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %dst.0.i = phi ptr [ %17, %while.body.i ], [ %add.ptr7.i, %do.body.i.do.body.i_crit_edge ]
  call void %7(ptr noundef %3, ptr noundef %dst.0.i, ptr noundef %src.0.i) #4
  %add.ptr.i = getelementptr i8, ptr %src.0.i, i32 %9
  %add.ptr7.i = getelementptr i8, ptr %dst.0.i, i32 %9
  %sub.i = sub i32 %nbytes.0.i, %9
  %cmp8.not.i = icmp ult i32 %sub.i, %9
  br i1 %cmp8.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %call9.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk.i, i32 noundef %sub.i) #4
  %18 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes2.i, align 4
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %do.end.i.crypto_ecb_crypt.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end.i.crypto_ecb_crypt.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_ecb_crypt.exit

crypto_ecb_crypt.exit:                            ; preds = %do.end.i.crypto_ecb_crypt.exit_crit_edge, %entry.crypto_ecb_crypt.exit_crit_edge
  %err.0.lcssa.i = phi i32 [ %call1.i, %entry.crypto_ecb_crypt.exit_crit_edge ], [ %call9.i, %do.end.i.crypto_ecb_crypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk.i) #4
  ret i32 %err.0.lcssa.i
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
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_ecb__173_99_crypto_ecb_module_init4, !1, !"__initcall__kmod_ecb__173_99_crypto_ecb_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/ecb.c", i32 99, i32 1}
!2 = !{ptr @__exitcall_crypto_ecb_module_exit, !3, !"__exitcall_crypto_ecb_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/ecb.c", i32 100, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/ecb.c", i32 102, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/ecb.c", i32 103, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/ecb.c", i32 104, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @crypto_ecb_tmpl, !13, !"crypto_ecb_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/ecb.c", i32 83, i32 31}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
