; ModuleID = '/llk/IR_all_yes/crypto/geniv.c_pt.bc'
source_filename = "../crypto/geniv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+aead_geniv_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_aead_geniv_alloc\09\09\09\09"
module asm "\09.long\09__crc_aead_geniv_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_geniv_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_geniv_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_aead_geniv_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+aead_init_geniv\22, \22a\22\09"
module asm "\09.weak\09__crc_aead_init_geniv\09\09\09\09"
module asm "\09.long\09__crc_aead_init_geniv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_init_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_init_geniv\22\09\09\09\09\09"
module asm "__kstrtabns_aead_init_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+aead_exit_geniv\22, \22a\22\09"
module asm "\09.weak\09__crc_aead_exit_geniv\09\09\09\09"
module asm "\09.long\09__crc_aead_exit_geniv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_exit_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_exit_geniv\22\09\09\09\09\09"
module asm "__kstrtabns_aead_exit_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aead_instance = type { ptr, [124 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.107, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.105, ptr, ptr, ptr, ptr, %union.anon.106, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.105 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { %struct.hlist_node }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_aead_geniv_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_geniv_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_geniv_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_geniv_alloc to i32), ptr @__kstrtab_aead_geniv_alloc, ptr @__kstrtabns_aead_geniv_alloc }, section "___ksymtab_gpl+aead_geniv_alloc", align 4
@aead_init_geniv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_aead_init_geniv = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_init_geniv = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_init_geniv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_init_geniv to i32), ptr @__kstrtab_aead_init_geniv, ptr @__kstrtabns_aead_init_geniv }, section "___ksymtab_gpl+aead_init_geniv", align 4
@__kstrtab_aead_exit_geniv = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_exit_geniv = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_exit_geniv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_exit_geniv to i32), ptr @__kstrtab_aead_exit_geniv, ptr @__kstrtabns_aead_exit_geniv }, section "___ksymtab_gpl+aead_exit_geniv", align 4
@__UNIQUE_ID_file339 = internal constant [24 x i8] c"geniv.file=crypto/geniv\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [18 x i8] c"geniv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [43 x i8] c"geniv.description=Shared IV generator code\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 78, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [18 x i8] c"../crypto/geniv.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 116, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__ksymtab_aead_exit_geniv, ptr @__ksymtab_aead_geniv_alloc, ptr @__ksymtab_aead_init_geniv, ptr @.str, ptr @aead_init_geniv.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_init_geniv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aead_geniv_alloc(ptr noundef %tmpl, ptr noundef %tb) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !25
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 924) #8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call9 = call ptr @crypto_attr_alg_name(ptr noundef %4) #5
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %call10 = call i32 @crypto_grab_aead(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call9, i32 noundef 0, i32 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.err_free_inst_crit_edge

if.end6.err_free_inst_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end13:                                         ; preds = %if.end6
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %7 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alg.i, align 8
  %ivsize.i = getelementptr i8, ptr %8, i32 -104
  %9 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ivsize.i, align 8
  %maxauthsize.i = getelementptr i8, ptr %8, i32 -100
  %11 = ptrtoint ptr %maxauthsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxauthsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp = icmp ult i32 %10, 8
  br i1 %cmp, label %if.end13.err_free_inst_crit_edge, label %if.end18

if.end13.err_free_inst_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end18:                                         ; preds = %if.end13
  %13 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %name = getelementptr inbounds %struct.crypto_template, ptr %tmpl, i32 0, i32 4
  %cra_name21 = getelementptr i8, ptr %8, i32 40
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %cra_name21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, 127
  br i1 %cmp24, label %if.end18.err_free_inst_crit_edge, label %if.end26

if.end18.err_free_inst_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end26:                                         ; preds = %if.end18
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name32 = getelementptr i8, ptr %8, i32 168
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %cra_driver_name32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call34)
  %cmp35 = icmp sgt i32 %call34, 127
  br i1 %cmp35, label %if.end26.err_free_inst_crit_edge, label %if.end37

if.end26.err_free_inst_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst

if.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %cra_priority = getelementptr i8, ptr %8, i32 32
  %14 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_priority, align 32
  %cra_priority40 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %cra_priority40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cra_priority40, align 32
  %cra_blocksize = getelementptr i8, ptr %8, i32 20
  %17 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize43 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %cra_blocksize43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cra_blocksize43, align 4
  %cra_alignmask = getelementptr i8, ptr %8, i32 28
  %20 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask46 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %cra_alignmask46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cra_alignmask46, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 52, ptr %cra_ctxsize, align 8
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @aead_geniv_setkey, ptr %13, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %25 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @aead_geniv_setauthsize, ptr %setauthsize, align 4
  %ivsize48 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %26 = ptrtoint ptr %ivsize48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %10, ptr %ivsize48, align 8
  %maxauthsize49 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %27 = ptrtoint ptr %maxauthsize49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %maxauthsize49, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @aead_geniv_free, ptr %call7.i.i, align 128
  br label %cleanup

err_free_inst:                                    ; preds = %if.end26.err_free_inst_crit_edge, %if.end18.err_free_inst_crit_edge, %if.end13.err_free_inst_crit_edge, %if.end6.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call10, %if.end6.err_free_inst_crit_edge ], [ -22, %if.end13.err_free_inst_crit_edge ], [ -36, %if.end18.err_free_inst_crit_edge ], [ -36, %if.end26.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %29 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end37, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %29, %err_free_inst ], [ %call7.i.i, %if.end37 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_geniv_setkey(ptr nocapture noundef readonly %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %child = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %0 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child, align 4
  %call1 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_geniv_setauthsize(ptr nocapture noundef readonly %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %child = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %0 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child, align 4
  %call1 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_geniv_free(ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #5
  tail call void @kfree(ptr noundef %inst) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aead_init_geniv(ptr noundef %aead) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @aead_init_geniv.__key, i16 noundef signext 3) #5
  %call3 = tail call i32 @crypto_get_default_rng() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_default_rng to i32))
  %2 = load ptr, ptr @crypto_default_rng, align 4
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 44
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %4, i32 -104
  %5 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ivsize.i.i, align 8
  %__crt_alg.i.i38 = getelementptr inbounds %struct.crypto_tfm, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i38, align 4
  tail call void @crypto_stats_get(ptr noundef %8) #5
  %9 = ptrtoint ptr %__crt_alg.i.i38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i38, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -128
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i.i = tail call i32 %12(ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %salt, i32 noundef %6) #5
  tail call void @crypto_stats_rng_generate(ptr noundef %8, i32 noundef %6, i32 noundef %call1.i.i) #5
  tail call void @crypto_put_default_rng() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool6.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @crypto_get_default_null_skcipher() #5
  %sknull = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 40
  %13 = ptrtoint ptr %sknull to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %sknull, align 4
  %14 = ptrtoint ptr %call9 to i32
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.out_crit_edge, label %if.end15

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end8
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #5
  %cmp.i39 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %drop_null, label %if.end21

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %child22 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 36
  %15 = ptrtoint ptr %child22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %child22, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %17, 128
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 1
  %18 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %reqsize1.i, align 4
  br label %out

out:                                              ; preds = %drop_null, %if.end21, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call1.i.i, %if.end.out_crit_edge ], [ %14, %if.end8.out_crit_edge ], [ %19, %drop_null ], [ 0, %if.end21 ]
  ret i32 %err.0

drop_null:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call.i to i32
  tail call void @crypto_put_default_null_skcipher() #5
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aead_exit_geniv(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %child = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %0 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #5
  tail call void @crypto_put_default_null_skcipher() #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/geniv.c", i32 78, i32 8}
!2 = !{ptr @__ksymtab_aead_geniv_alloc, !3, !"__ksymtab_aead_geniv_alloc", i1 false, i1 false}
!3 = !{!"../crypto/geniv.c", i32 107, i32 1}
!4 = !{ptr @aead_init_geniv.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../crypto/geniv.c", i32 116, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_aead_init_geniv, !8, !"__ksymtab_aead_init_geniv", i1 false, i1 false}
!8 = !{!"../crypto/geniv.c", i32 151, i32 1}
!9 = !{ptr @__ksymtab_aead_exit_geniv, !10, !"__ksymtab_aead_exit_geniv", i1 false, i1 false}
!10 = !{!"../crypto/geniv.c", i32 160, i32 1}
!11 = !{ptr @__UNIQUE_ID_file339, !12, !"__UNIQUE_ID_file339", i1 false, i1 false}
!12 = !{!"../crypto/geniv.c", i32 162, i32 1}
!13 = !{ptr @__UNIQUE_ID_license340, !12, !"__UNIQUE_ID_license340", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description341, !15, !"__UNIQUE_ID_description341", i1 false, i1 false}
!15 = !{!"../crypto/geniv.c", i32 163, i32 1}
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
