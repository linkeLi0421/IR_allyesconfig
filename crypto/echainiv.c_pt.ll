; ModuleID = '/llk/IR_all_yes/crypto/echainiv.c_pt.bc'
source_filename = "../crypto/echainiv.c"
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

@echainiv_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @echainiv_aead_create, [128 x i8] c"echainiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_echainiv__239_160_echainiv_module_init4 = internal global ptr @echainiv_module_init, section ".initcall4.init", align 4
@__exitcall_echainiv_module_exit = internal global ptr @echainiv_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [30 x i8] c"echainiv.file=crypto/echainiv\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [21 x i8] c"echainiv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [50 x i8] c"echainiv.description=Encrypted Chain IV Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [24 x i8] c"echainiv.alias=echainiv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [31 x i8] c"echainiv.alias=crypto-echainiv\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"echainiv_tmpl\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../crypto/echainiv.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 144, i32 31 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_echainiv_module_exit, ptr @__initcall__kmod_echainiv__239_160_echainiv_module_init4, ptr @echainiv_module_exit, ptr @echainiv_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @echainiv_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @echainiv_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_template(ptr noundef nonnull @echainiv_tmpl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @echainiv_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @echainiv_tmpl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @echainiv_aead_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
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
  %and = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end.free_inst_crit_edge, label %if.end6

if.end.free_inst_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_inst

if.end6:                                          ; preds = %if.end
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %3 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @echainiv_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 12
  %4 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @echainiv_decrypt, ptr %decrypt, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 16
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aead_init_geniv, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 20
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @aead_exit_geniv, ptr %exit, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %add = add i32 %2, 52
  %7 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %cra_ctxsize, align 8
  %call10 = tail call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end6.free_inst_crit_edge

if.end6.free_inst_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_inst

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_inst:                                        ; preds = %if.end6.free_inst_crit_edge, %if.end.free_inst_crit_edge
  %err.0 = phi i32 [ -22, %if.end.free_inst_crit_edge ], [ %call10, %if.end6.free_inst_crit_edge ]
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 128
  tail call void %9(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %free_inst, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %free_inst ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aead_geniv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @echainiv_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %__nreq_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp ult i32 %7, %5
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup32

if.end:                                           ; preds = %entry
  %child = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %child, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %9, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i, ptr %tfm1.i, align 16
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
  %cmp4.not = icmp eq ptr %14, %16
  br i1 %cmp4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then5:                                         ; preds = %if.end
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
  %add = add i32 %27, %7
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
  %call9 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__nreq_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__nreq_desc) #4
  br i1 %tobool.not, label %if.then5.if.end13_crit_edge, label %if.then5.cleanup32_crit_edge

if.then5.cleanup32_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup32

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %flags15 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %32 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags15, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %34 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %complete.i82 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %complete.i82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %complete.i82, align 8
  %data2.i83 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %data2.i83 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %data2.i83, align 4
  %flags4.i84 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %flags4.i84 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %33, ptr %flags4.i84, align 4
  %41 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst, align 8
  %43 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cryptlen, align 4
  %src1.i85 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %45 = ptrtoint ptr %src1.i85 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %src1.i85, align 4
  %dst2.i86 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %46 = ptrtoint ptr %dst2.i86 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %42, ptr %dst2.i86, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %47 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %cryptlen3.i, align 4
  %iv4.i87 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %48 = ptrtoint ptr %iv4.i87 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %12, ptr %iv4.i87, align 32
  %assoclen21 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %49 = ptrtoint ptr %assoclen21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %assoclen21, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %51 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %assoclen1.i, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 %5
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 -8
  %52 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %nseqno.0.copyload = load i64, ptr %add.ptr22, align 1
  %53 = call ptr @memset(ptr %12, i32 0, i32 %5)
  %54 = load ptr, ptr %dst, align 8
  %55 = load i32, ptr %assoclen21, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %12, ptr noundef %54, i32 noundef %55, i32 noundef %5, i32 noundef 1) #4
  %add.ptr28 = getelementptr i8, ptr %12, i32 -8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end13
  %ivsize.0 = phi i32 [ %5, %if.end13 ], [ %sub, %do.body.do.body_crit_edge ]
  %add.ptr27 = getelementptr i8, ptr %child, i32 %ivsize.0
  %56 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %a.0.copyload = load i64, ptr %add.ptr27, align 1
  %or = or i64 %a.0.copyload, 1
  %mul = mul i64 %or, %nseqno.0.copyload
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %ivsize.0
  %57 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %mul, ptr %add.ptr29, align 1
  %sub = add i32 %ivsize.0, -8
  %tobool30.not = icmp eq i32 %sub, 0
  br i1 %tobool30.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #4
  br label %cleanup32

cleanup32:                                        ; preds = %do.end, %if.then5.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ %call31, %do.end ], [ %call9, %if.then5.cleanup32_crit_edge ], [ -22, %entry.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @echainiv_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp ult i32 %7, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %child = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %child, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %9, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %complete, align 8
  %data5 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data5, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %14, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 8
  %sub = sub i32 %7, %5
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %26 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %27 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %28 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %29 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %assoclen, align 8
  %add = add i32 %31, %5
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %32 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %assoclen1.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %25, ptr noundef %21, i32 noundef %31, i32 noundef %5, i32 noundef 0) #4
  %call11 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -22, %entry.cleanup_crit_edge ]
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
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

!0 = !{ptr @__initcall__kmod_echainiv__239_160_echainiv_module_init4, !1, !"__initcall__kmod_echainiv__239_160_echainiv_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/echainiv.c", i32 160, i32 1}
!2 = !{ptr @__exitcall_echainiv_module_exit, !3, !"__exitcall_echainiv_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/echainiv.c", i32 161, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/echainiv.c", i32 163, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/echainiv.c", i32 164, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/echainiv.c", i32 165, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @echainiv_tmpl, !13, !"echainiv_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/echainiv.c", i32 144, i32 31}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
