; ModuleID = '/llk/IR_all_yes/crypto/seqiv.c_pt.bc'
source_filename = "../crypto/seqiv.c"
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
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }

@seqiv_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @seqiv_aead_create, [128 x i8] c"seqiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_seqiv__239_183_seqiv_module_init4 = internal global ptr @seqiv_module_init, section ".initcall4.init", align 4
@__exitcall_seqiv_module_exit = internal global ptr @seqiv_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [24 x i8] c"seqiv.file=crypto/seqiv\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [18 x i8] c"seqiv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [47 x i8] c"seqiv.description=Sequence Number IV Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [18 x i8] c"seqiv.alias=seqiv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [25 x i8] c"seqiv.alias=crypto-seqiv\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"seqiv_tmpl\00", align 1
@___asan_gen_.3 = private constant [18 x i8] c"../crypto/seqiv.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 167, i32 31 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_seqiv_module_exit, ptr @__initcall__kmod_seqiv__239_183_seqiv_module_init4, ptr @seqiv_module_exit, ptr @seqiv_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seqiv_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @seqiv_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_template(ptr noundef nonnull @seqiv_tmpl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seqiv_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @seqiv_tmpl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seqiv_aead_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @aead_geniv_alloc(ptr noundef %tmpl, ptr noundef %tb) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 24
  %1 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ivsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.not = icmp eq i32 %2, 8
  br i1 %cmp.not, label %if.end4, label %if.end.free_inst_crit_edge

if.end.free_inst_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_inst

if.end4:                                          ; preds = %if.end
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %3 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @seqiv_aead_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 12
  %4 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @seqiv_aead_decrypt, ptr %decrypt, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 16
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aead_init_geniv, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 20
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @aead_exit_geniv, ptr %exit, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 60, ptr %cra_ctxsize, align 8
  %call8 = tail call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end4.free_inst_crit_edge

if.end4.free_inst_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_inst

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_inst:                                        ; preds = %if.end4.free_inst_crit_edge, %if.end.free_inst_crit_edge
  %err.0 = phi i32 [ -22, %if.end.free_inst_crit_edge ], [ %call8, %if.end4.free_inst_crit_edge ]
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 128
  tail call void %9(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %free_inst, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %free_inst ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aead_geniv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seqiv_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %__nreq_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end:                                           ; preds = %entry
  %child = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %complete, align 8
  %data4 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data4, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iv, align 32
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 8
  %cmp5.not = icmp eq ptr %14, %16
  br i1 %cmp5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__nreq_desc) #4
  %17 = call ptr @memset(ptr %__nreq_desc, i32 255, i32 512)
  %sknull = getelementptr i8, ptr %1, i32 176
  %18 = ptrtoint ptr %sknull to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sknull, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %19, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen, align 8
  %add = add i32 %27, %3
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 2
  %28 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %14, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 3
  %29 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %16, ptr %dst2.i, align 4
  %30 = ptrtoint ptr %__nreq_desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %__nreq_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc, i32 0, i32 1
  %31 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %iv4.i, align 4
  %call11 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__nreq_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__nreq_desc) #4
  br i1 %tobool.not, label %if.then6.if.end15_crit_edge, label %if.then6.cleanup55_crit_edge

if.then6.cleanup55_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %32 = ptrtoint ptr %12 to i32
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cra_alignmask.i.i, align 4
  %and = and i32 %36, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  br i1 %cmp18.not, label %if.end15.if.end32_crit_edge, label %if.then22, !prof !23

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then22:                                        ; preds = %if.end15
  %37 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iv, align 32
  %flags25 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %39 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags25, align 4
  %and26 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond = select i1 %tobool27.not, i32 2592, i32 3264
  %call28 = call ptr @kmemdup(ptr noundef %38, i32 noundef 8, i32 noundef %cond) #4
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then22.cleanup55_crit_edge, label %if.then22.if.end32_crit_edge

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then22.cleanup55_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end15.if.end32_crit_edge
  %compl.0 = phi ptr [ %8, %if.end15.if.end32_crit_edge ], [ @seqiv_aead_encrypt_complete, %if.then22.if.end32_crit_edge ]
  %data.0 = phi ptr [ %10, %if.end15.if.end32_crit_edge ], [ %req, %if.then22.if.end32_crit_edge ]
  %info.0 = phi ptr [ %12, %if.end15.if.end32_crit_edge ], [ %call28, %if.then22.if.end32_crit_edge ]
  %flags34 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %41 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags34, align 4
  %complete.i111 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %complete.i111 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %compl.0, ptr %complete.i111, align 8
  %data2.i112 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %data2.i112 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %data.0, ptr %data2.i112, align 4
  %flags4.i113 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %45 = ptrtoint ptr %flags4.i113 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %flags4.i113, align 4
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 8
  %48 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cryptlen, align 4
  %sub38 = add i32 %49, -8
  %src1.i114 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %50 = ptrtoint ptr %src1.i114 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %src1.i114, align 4
  %dst2.i115 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %51 = ptrtoint ptr %dst2.i115 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %47, ptr %dst2.i115, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %52 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub38, ptr %cryptlen3.i, align 4
  %iv4.i116 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %53 = ptrtoint ptr %iv4.i116 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %info.0, ptr %iv4.i116, align 32
  %assoclen39 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %54 = ptrtoint ptr %assoclen39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %assoclen39, align 8
  %add40 = add i32 %55, 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %56 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add40, ptr %assoclen1.i, align 8
  %salt = getelementptr i8, ptr %1, i32 180
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 184
  %57 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %salt, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %info.0, i32 1
  %59 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %info.0, align 4
  %xor.i = xor i32 %60, %58
  store i32 %xor.i, ptr %info.0, align 4
  %61 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr.i, align 4
  %63 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.1.i = xor i32 %64, %62
  store i32 %xor.1.i, ptr %incdec.ptr2.i, align 4
  %65 = load ptr, ptr %dst, align 8
  %66 = load i32, ptr %assoclen39, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %info.0, ptr noundef %65, i32 noundef %66, i32 noundef 8, i32 noundef 1) #4
  %call44 = call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #4
  %67 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iv, align 32
  %cmp46.not = icmp eq ptr %info.0, %68
  br i1 %cmp46.not, label %if.end32.cleanup55_crit_edge, label %if.then53, !prof !23

if.end32.cleanup55_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.then53:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @seqiv_aead_encrypt_complete2(ptr noundef %req, i32 noundef %call44)
  br label %cleanup55

cleanup55:                                        ; preds = %if.then53, %if.end32.cleanup55_crit_edge, %if.then22.cleanup55_crit_edge, %if.then6.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ %call11, %if.then6.cleanup55_crit_edge ], [ -22, %entry.cleanup55_crit_edge ], [ -12, %if.then22.cleanup55_crit_edge ], [ %call44, %if.then53 ], [ %call44, %if.end32.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seqiv_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 128
  %add = add i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ult i32 %3, %add
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %child = getelementptr i8, ptr %1, i32 172
  %6 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data5 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data5, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 8
  %sub = add i32 %3, -8
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %26 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %assoclen, align 8
  %add8 = add i32 %29, 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %30 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add8, ptr %assoclen1.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %23, ptr noundef %19, i32 noundef %29, i32 noundef 8, i32 noundef 0) #4
  %call12 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_init_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aead_exit_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seqiv_aead_encrypt_complete(ptr nocapture noundef readonly %base, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err, label %entry.out.i_crit_edge [
    i32 -115, label %entry.seqiv_aead_encrypt_complete2.exit_crit_edge
    i32 0, label %if.end2.i
  ]

entry.seqiv_aead_encrypt_complete2.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %seqiv_aead_encrypt_complete2.exit

entry.out.i_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv.i, align 32
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 3
  %7 = ptrtoint ptr %iv4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iv4.i, align 32
  %__crt_alg.i.i.i = getelementptr i8, ptr %4, i32 12
  %9 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %10, i32 -104
  %11 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ivsize.i.i.i, align 8
  %13 = call ptr @memcpy(ptr %6, ptr %8, i32 %12)
  br label %out.i

out.i:                                            ; preds = %if.end2.i, %entry.out.i_crit_edge
  %iv6.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 3
  %14 = ptrtoint ptr %iv6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv6.i, align 32
  tail call void @kfree_sensitive(ptr noundef %15) #4
  br label %seqiv_aead_encrypt_complete2.exit

seqiv_aead_encrypt_complete2.exit:                ; preds = %out.i, %entry.seqiv_aead_encrypt_complete2.exit_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete.i, align 8
  tail call void %17(ptr noundef %1, i32 noundef %err) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqiv_aead_encrypt_complete2(ptr nocapture noundef readonly %req, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %err, label %entry.out_crit_edge [
    i32 -115, label %entry.cleanup_crit_edge
    i32 0, label %if.end2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iv, align 32
  %iv4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %5 = ptrtoint ptr %iv4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv4, align 32
  %__crt_alg.i.i = getelementptr i8, ptr %2, i32 12
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %8, i32 -104
  %9 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ivsize.i.i, align 8
  %11 = call ptr @memcpy(ptr %4, ptr %6, i32 %10)
  br label %out

out:                                              ; preds = %if.end2, %entry.out_crit_edge
  %iv6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %12 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv6, align 32
  tail call void @kfree_sensitive(ptr noundef %13) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

!0 = !{ptr @__initcall__kmod_seqiv__239_183_seqiv_module_init4, !1, !"__initcall__kmod_seqiv__239_183_seqiv_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/seqiv.c", i32 183, i32 1}
!2 = !{ptr @__exitcall_seqiv_module_exit, !3, !"__exitcall_seqiv_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/seqiv.c", i32 184, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/seqiv.c", i32 186, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/seqiv.c", i32 187, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/seqiv.c", i32 188, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @seqiv_tmpl, !13, !"seqiv_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/seqiv.c", i32 167, i32 31}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
