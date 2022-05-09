; ModuleID = '/llk/IR_all_yes/crypto/xts.c_pt.bc'
source_filename = "../crypto/xts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.71 }
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
%struct.xts_instance_ctx = type { %struct.crypto_skcipher_spawn, [128 x i8] }
%struct.crypto_skcipher_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.76, ptr, i32, i8, i8 }
%union.anon.76 = type { ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.le128 = type { i64, i64 }
%struct.skcipher_walk = type { %union.anon.77, %union.anon.77, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.u128 = type { i64, i64 }

@xts_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @xts_create, [128 x i8] c"xts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_xts__239_462_xts_module_init4 = internal global ptr @xts_module_init, section ".initcall4.init", align 4
@__exitcall_xts_module_exit = internal global ptr @xts_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [20 x i8] c"xts.file=crypto/xts\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [16 x i8] c"xts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [38 x i8] c"xts.description=XTS block cipher mode\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [14 x i8] c"xts.alias=xts\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [21 x i8] c"xts.alias=crypto-xts\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns245 = internal constant [30 x i8] c"xts.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ecb(%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xts\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ecb(\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xts(%s)\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"xts_tmpl\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 446, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 366, i32 48 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 387, i32 60 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 398, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [16 x i8] c"../crypto/xts.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 411, i32 9 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_import_ns245, ptr @__UNIQUE_ID_license241, ptr @__exitcall_xts_module_exit, ptr @__initcall__kmod_xts__239_462_xts_module_init4, ptr @xts_module_exit, ptr @xts_tmpl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xts_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xts_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_template(ptr noundef nonnull @xts_tmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @xts_tmpl) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !33
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 5, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup90_crit_edge

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call1 = call ptr @crypto_attr_alg_name(ptr noundef %2) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup90

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1052) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup90_crit_edge, label %if.end9

if.end5.cleanup90_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

if.end9:                                          ; preds = %if.end5
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %call12 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call1, i32 noundef 0, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12)
  %cmp = icmp eq i32 %call12, -2
  br i1 %cmp, label %if.then13, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %if.end9
  %name = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, 127
  br i1 %cmp15, label %if.then13.err_free_inst_crit_edge, label %if.end17

if.then13.err_free_inst_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %call22 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %name, i32 noundef 0, i32 noundef %8) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.end9.if.end23_crit_edge
  %err.0 = phi i32 [ %call22, %if.end17 ], [ %call12, %if.end9.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool24.not = icmp eq i32 %err.0, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.err_free_inst_crit_edge

if.end23.err_free_inst_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end26:                                         ; preds = %if.end23
  %alg.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %9 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alg.i, align 8
  %cra_blocksize = getelementptr i8, ptr %10, i32 20
  %11 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp29.not = icmp eq i32 %12, 16
  br i1 %cmp29.not, label %if.end31, label %if.end26.err_free_inst_crit_edge

if.end26.err_free_inst_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end31:                                         ; preds = %if.end26
  %ivsize.i = getelementptr i8, ptr %10, i32 -100
  %13 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err_free_inst_crit_edge

if.end31.err_free_inst_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end35:                                         ; preds = %if.end31
  %call38 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef nonnull @.str.1, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.err_free_inst_crit_edge

if.end35.err_free_inst_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end41:                                         ; preds = %if.end35
  %cra_name = getelementptr i8, ptr %10, i32 40
  %call44 = call i32 @strncmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(5) @.str.2, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end41.err_free_inst_crit_edge

if.end41.err_free_inst_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.then46:                                        ; preds = %if.end41
  %name47 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %add.ptr = getelementptr i8, ptr %10, i32 44
  %call49 = call i32 @strlcpy(ptr noundef %name47, ptr noundef %add.ptr, i32 noundef 128) #9
  %15 = add i32 %call49, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %15)
  %16 = icmp ult i32 %15, -126
  br i1 %16, label %if.then46.err_free_inst_crit_edge, label %if.end53

if.then46.err_free_inst_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end53:                                         ; preds = %if.then46
  %sub = add nsw i32 %call49, -1
  %arrayidx55 = getelementptr %struct.xts_instance_ctx, ptr %__ctx.i.i, i32 0, i32 1, i32 %sub
  %17 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %18)
  %cmp56.not = icmp eq i8 %18, 41
  br i1 %cmp56.not, label %if.end59, label %if.end53.err_free_inst_crit_edge

if.end53.err_free_inst_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end59:                                         ; preds = %if.end53
  %19 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx55, align 1
  %cra_name64 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %call68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name64, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %name47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call68)
  %cmp69 = icmp sgt i32 %call68, 127
  br i1 %cmp69, label %if.end59.err_free_inst_crit_edge, label %if.end73

if.end59.err_free_inst_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end73:                                         ; preds = %if.end59
  %cra_priority = getelementptr i8, ptr %10, i32 32
  %20 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_priority, align 32
  %22 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority76 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %cra_priority76 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %cra_priority76, align 32
  %cra_blocksize78 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %cra_blocksize78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %cra_blocksize78, align 4
  %cra_alignmask = getelementptr i8, ptr %10, i32 28
  %25 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask, align 4
  %or = or i32 %26, 7
  %cra_alignmask81 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask81 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %cra_alignmask81, align 4
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %28 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %ivsize, align 4
  %min_keysize.i = getelementptr i8, ptr %10, i32 -108
  %29 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_keysize.i, align 4
  %mul = shl i32 %30, 1
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %31 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr i8, ptr %10, i32 -104
  %32 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_keysize.i, align 8
  %mul84 = shl i32 %33, 1
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %34 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul84, ptr %max_keysize, align 8
  %cra_ctxsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %36 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xts_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %37 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xts_exit_tfm, ptr %exit, align 16
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xts_setkey, ptr %22, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %39 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xts_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %40 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @xts_decrypt, ptr %decrypt, align 8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xts_free_instance, ptr %call7.i.i, align 128
  %call86 = call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end73.cleanup90_crit_edge, label %if.end73.err_free_inst_crit_edge

if.end73.err_free_inst_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end73.cleanup90_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

err_free_inst:                                    ; preds = %if.end73.err_free_inst_crit_edge, %if.end59.err_free_inst_crit_edge, %if.end53.err_free_inst_crit_edge, %if.then46.err_free_inst_crit_edge, %if.end41.err_free_inst_crit_edge, %if.end35.err_free_inst_crit_edge, %if.end31.err_free_inst_crit_edge, %if.end26.err_free_inst_crit_edge, %if.end23.err_free_inst_crit_edge, %if.then13.err_free_inst_crit_edge
  %err.2 = phi i32 [ -36, %if.then13.err_free_inst_crit_edge ], [ %err.0, %if.end23.err_free_inst_crit_edge ], [ -22, %if.end26.err_free_inst_crit_edge ], [ -22, %if.end31.err_free_inst_crit_edge ], [ %call38, %if.end35.err_free_inst_crit_edge ], [ -22, %if.end41.err_free_inst_crit_edge ], [ %call86, %if.end73.err_free_inst_crit_edge ], [ -22, %if.end53.err_free_inst_crit_edge ], [ -22, %if.then46.err_free_inst_crit_edge ], [ -36, %if.end59.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup90

cleanup90:                                        ; preds = %err_free_inst, %if.end73.cleanup90_crit_edge, %if.end5.cleanup90_crit_edge, %if.then3, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call, %entry.cleanup90_crit_edge ], [ -12, %if.end5.cleanup90_crit_edge ], [ %err.2, %err_free_inst ], [ 0, %if.end73.cleanup90_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %name = getelementptr i8, ptr %1, i32 668
  %call.i29 = tail call ptr @crypto_alloc_base(ptr noundef %name, i32 noundef 1, i32 noundef 15) #9
  %cmp.i30 = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i) #9
  %6 = ptrtoint ptr %call.i29 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tweak13 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %tweak13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i29, ptr %tweak13, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 128
  %add = add i32 %9, 256
  %10 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %6, %if.then9 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #9
  %tweak = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %tweak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tweak, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_setkey(ptr nocapture noundef readonly %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %.pre = lshr i32 %keylen, 1
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %key, i32 %.pre
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %key, ptr noundef %add.ptr.i, i32 noundef %.pre) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %tweak2 = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1, i32 1
  %2 = ptrtoint ptr %tweak2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tweak2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %3, align 128
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and = and i32 %7, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %3, align 128
  %add.ptr = getelementptr i8, ptr %key, i32 %.pre
  %call4 = tail call i32 @crypto_cipher_setkey(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %.pre) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i33 = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i33, align 128
  %and.i.i34 = and i32 %11, -1048321
  store i32 %and.i.i34, ptr %base.i.i33, align 128
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i, align 128
  %and10 = and i32 %13, 1048320
  %or.i.i37 = or i32 %and10, %and.i.i34
  store i32 %or.i.i37, ptr %base.i.i33, align 128
  %call11 = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %.pre) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %subreq1 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i = icmp ult i32 %1, 16
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %cond.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %9 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xts_encrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %10 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %11 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %flags4.i.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst.i, align 4
  %and.i = and i32 %1, -16
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %14 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %15 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %dst2.i.i, align 4
  %16 = ptrtoint ptr %subreq1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %subreq1, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %17 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %iv4.i.i, align 4
  %tweak.i = getelementptr i8, ptr %3, i32 132
  %18 = ptrtoint ptr %tweak.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tweak.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %19, ptr noundef %__ctx.i, ptr noundef %21) #9
  %call.i = tail call fastcc i32 @xts_xor_tweak(ptr noundef %req, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %cond.false6, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false6:                                      ; preds = %cond.false
  %call7 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %subreq1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.end14, label %cond.false6.cleanup_crit_edge

cond.false6.cleanup_crit_edge:                    ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end14:                                       ; preds = %cond.false6
  %call.i28 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %req, i1 noundef zeroext true, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool16.not = icmp eq i32 %call.i28, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %cond.end14.cleanup_crit_edge

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end14
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 128
  %rem = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end, !prof !34

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @xts_cts_final(ptr noundef %req, ptr noundef nonnull @crypto_skcipher_encrypt)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %cond.end14.cleanup_crit_edge, %cond.false6.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i28, %cond.end14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %cond.false6.cleanup_crit_edge ], [ %call.i, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %subreq1 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i = icmp ult i32 %1, 16
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %cond.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %9 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xts_decrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %10 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %11 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %flags4.i.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst.i, align 4
  %and.i = and i32 %1, -16
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %14 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %15 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %dst2.i.i, align 4
  %16 = ptrtoint ptr %subreq1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %subreq1, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %17 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %iv4.i.i, align 4
  %tweak.i = getelementptr i8, ptr %3, i32 132
  %18 = ptrtoint ptr %tweak.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tweak.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %19, ptr noundef %__ctx.i, ptr noundef %21) #9
  %call.i = tail call fastcc i32 @xts_xor_tweak(ptr noundef %req, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %cond.false6, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false6:                                      ; preds = %cond.false
  %call7 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %subreq1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.end14, label %cond.false6.cleanup_crit_edge

cond.false6.cleanup_crit_edge:                    ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end14:                                       ; preds = %cond.false6
  %call.i28 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %req, i1 noundef zeroext true, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool16.not = icmp eq i32 %call.i28, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %cond.end14.cleanup_crit_edge

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end14
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 128
  %rem = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end, !prof !34

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @xts_cts_final(ptr noundef %req, ptr noundef nonnull @crypto_skcipher_decrypt)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %cond.end14.cleanup_crit_edge, %cond.false6.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i28, %cond.end14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %cond.false6.cleanup_crit_edge ], [ %call.i, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_free_instance(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #9
  tail call void @kfree(ptr noundef %inst) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_encrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 2, i32 4, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags, align 4
  %call.i = tail call fastcc i32 @xts_xor_tweak(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %rem = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then6, !prof !34

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call fastcc i32 @xts_cts_final(ptr noundef %1, ptr noundef nonnull @crypto_skcipher_encrypt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call7)
  %cmp = icmp eq i32 %call7, -115
  br i1 %cmp, label %if.then6.cleanup11_crit_edge, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6.cleanup11_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup11

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %err.addr.2 = phi i32 [ %err, %entry.if.end10_crit_edge ], [ %call.i, %if.then.if.end10_crit_edge ], [ %call7, %if.then6.if.end10_crit_edge ], [ 0, %land.lhs.true.if.end10_crit_edge ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete.i, align 8
  tail call void %7(ptr noundef %base.i, i32 noundef %err.addr.2) #9
  br label %cleanup11

cleanup11:                                        ; preds = %if.end10, %if.then6.cleanup11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xts_cts_final(ptr noundef %req, ptr nocapture noundef readonly %crypt) unnamed_addr #2 align 64 {
entry:
  %b = alloca [2 x %struct.le128], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %and = and i32 %3, -16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %subreq3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %rem = and i32 %3, 15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #9
  %4 = getelementptr inbounds %struct.le128, ptr %b, i32 0, i32 1
  %5 = getelementptr inbounds [2 x %struct.le128], ptr %b, i32 0, i32 1
  %sg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %6 = call ptr @memset(ptr %b, i32 255, i32 32)
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  %sub = add i32 %and, -16
  %call5 = tail call ptr @scatterwalk_ffwd(ptr noundef %sg, ptr noundef %8, i32 noundef %sub) #9
  %tail6 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %9 = ptrtoint ptr %tail6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %tail6, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %call5, i32 noundef 0, i32 noundef 16, i32 noundef 0) #9
  %10 = call ptr @memcpy(ptr %5, ptr %b, i32 16)
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %12, i32 noundef %and, i32 noundef %rem, i32 noundef 0) #9
  %13 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %__ctx.i, align 8
  %15 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b, align 8
  %xor.i.i = xor i64 %16, %14
  store i64 %xor.i.i, ptr %b, align 8
  %b.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %17 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b.i.i, align 8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %4, align 8
  %xor4.i.i = xor i64 %20, %18
  store i64 %xor4.i.i, ptr %4, align 8
  %21 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail6, align 16
  %add = or i32 %rem, 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %22, i32 noundef 0, i32 noundef %add, i32 noundef 1) #9
  %23 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %24, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %25 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xts_cts_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %flags4.i, align 4
  %31 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail6, align 16
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %34 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %dst2.i, align 4
  %35 = ptrtoint ptr %subreq3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %subreq3, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %36 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %iv4.i, align 4
  %call17 = call i32 %crypt(ptr noundef %subreq3) #9, !callees !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail6, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %38, i32 noundef 0, i32 noundef 16, i32 noundef 0) #9
  %39 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %__ctx.i, align 8
  %41 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %b, align 8
  %xor.i.i54 = xor i64 %42, %40
  store i64 %xor.i.i54, ptr %b, align 8
  %43 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %b.i.i, align 8
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %4, align 8
  %xor4.i.i57 = xor i64 %46, %44
  store i64 %xor4.i.i57, ptr %4, align 8
  %47 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail6, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %48, i32 noundef 0, i32 noundef 16, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #9
  ret i32 %call17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xts_xor_tweak(ptr noundef %req, i1 noundef zeroext %second_pass, i1 noundef zeroext %enc) unnamed_addr #2 align 64 {
entry:
  %w = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %rem = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %w) #9
  %4 = call ptr @memset(ptr %w, i32 255, i32 84)
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %t.sroa.0.0.copyload = load i64, ptr %__ctx.i, align 128
  %t.sroa.13.0.__ctx.i.sroa_idx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %6 = ptrtoint ptr %t.sroa.13.0.__ctx.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %t.sroa.13.0.copyload = load i64, ptr %t.sroa.13.0.__ctx.i.sroa_idx, align 8
  br i1 %second_pass, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %subreq = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %7 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %tfm1.i, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req.addr.0 = phi ptr [ %subreq, %if.then ], [ %req, %entry.if.end_crit_edge ]
  %call6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %w, ptr noundef %req.addr.0, i1 noundef zeroext false) #9
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 3
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not107 = icmp eq i32 %9, 0
  br i1 %tobool7.not107, label %if.end.cleanup37_crit_edge, label %while.body.lr.ph

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

while.body.lr.ph:                                 ; preds = %if.end
  %addr = getelementptr inbounds %struct.anon.79, ptr %w, i32 0, i32 1
  %addr9 = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 1, i32 0, i32 1
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %9, %while.body.lr.ph ], [ %54, %cleanup.while.body_crit_edge ]
  %t.sroa.0.0109 = phi i64 [ %t.sroa.0.0.copyload, %while.body.lr.ph ], [ %52, %cleanup.while.body_crit_edge ]
  %t.sroa.13.0108 = phi i64 [ %t.sroa.13.0.copyload, %while.body.lr.ph ], [ %51, %cleanup.while.body_crit_edge ]
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %13 = ptrtoint ptr %addr9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr9, align 4
  br label %do.body

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %while.body
  %t.sroa.13.1 = phi i64 [ %t.sroa.13.0108, %while.body ], [ %51, %if.end30.do.body_crit_edge ]
  %t.sroa.0.1 = phi i64 [ %t.sroa.0.0109, %while.body ], [ %52, %if.end30.do.body_crit_edge ]
  %avail.0 = phi i32 [ %10, %while.body ], [ %sub32, %if.end30.do.body_crit_edge ]
  %wsrc.0 = phi ptr [ %12, %while.body ], [ %incdec.ptr31, %if.end30.do.body_crit_edge ]
  %wdst.0 = phi ptr [ %14, %while.body ], [ %incdec.ptr, %if.end30.do.body_crit_edge ]
  br i1 %tobool.not, label %do.body.if.end30_crit_edge, label %land.lhs.true, !prof !34

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %do.body
  %15 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total, align 4
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 4
  %sub = add i32 %16, %avail.0
  %add = sub i32 %sub, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp = icmp ult i32 %add, 32
  br i1 %cmp, label %if.then14, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then14:                                        ; preds = %land.lhs.true
  br i1 %enc, label %land.lhs.true23.critedge, label %if.then16

if.then16:                                        ; preds = %if.then14
  br i1 %second_pass, label %if.then18, label %if.then16.if.end20_crit_edge

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %t.sroa.0.1, ptr %__ctx.i, align 128
  %20 = ptrtoint ptr %t.sroa.13.0.__ctx.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %t.sroa.13.1, ptr %t.sroa.13.0.__ctx.i.sroa_idx, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16.if.end20_crit_edge
  %21 = call i64 @llvm.bswap.i64(i64 %t.sroa.13.1) #9
  %22 = call i64 @llvm.bswap.i64(i64 %t.sroa.0.1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %isneg.i = icmp slt i64 %21, 0
  %and.i = select i1 %isneg.i, i64 135, i64 0
  %or.i = call i64 @llvm.fshl.i64(i64 %21, i64 %22, i64 1) #9
  %23 = call i64 @llvm.bswap.i64(i64 %or.i) #9
  %shl4.i = shl i64 %22, 1
  %xor.i = xor i64 %shl4.i, %and.i
  %24 = call i64 @llvm.bswap.i64(i64 %xor.i) #9
  %25 = ptrtoint ptr %wsrc.0 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wsrc.0, align 8
  %xor.i.i = xor i64 %26, %24
  %27 = ptrtoint ptr %wdst.0 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %xor.i.i, ptr %wdst.0, align 8
  %b3.i.i = getelementptr inbounds %struct.u128, ptr %wsrc.0, i32 0, i32 1
  %28 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %b3.i.i, align 8
  %xor4.i.i = xor i64 %29, %23
  %b5.i.i = getelementptr inbounds %struct.u128, ptr %wdst.0, i32 0, i32 1
  %30 = ptrtoint ptr %b5.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %xor4.i.i, ptr %b5.i.i, align 8
  br label %cleanup.thread

land.lhs.true23.critedge:                         ; preds = %if.then14
  %31 = ptrtoint ptr %wsrc.0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wsrc.0, align 8
  %xor.i.i59 = xor i64 %32, %t.sroa.0.1
  %33 = ptrtoint ptr %wdst.0 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %xor.i.i59, ptr %wdst.0, align 8
  %b3.i.i61 = getelementptr inbounds %struct.u128, ptr %wsrc.0, i32 0, i32 1
  %34 = ptrtoint ptr %b3.i.i61 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %b3.i.i61, align 8
  %xor4.i.i62 = xor i64 %35, %t.sroa.13.1
  %b5.i.i63 = getelementptr inbounds %struct.u128, ptr %wdst.0, i32 0, i32 1
  %36 = ptrtoint ptr %b5.i.i63 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %xor4.i.i62, ptr %b5.i.i63, align 8
  br i1 %second_pass, label %if.then25, label %land.lhs.true23.critedge.cleanup.thread_crit_edge

land.lhs.true23.critedge.cleanup.thread_crit_edge: ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then25:                                        ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %37 = call i64 @llvm.bswap.i64(i64 %t.sroa.13.1) #9
  %38 = call i64 @llvm.bswap.i64(i64 %t.sroa.0.1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %isneg.i65 = icmp slt i64 %37, 0
  %and.i66 = select i1 %isneg.i65, i64 135, i64 0
  %or.i67 = call i64 @llvm.fshl.i64(i64 %37, i64 %38, i64 1) #9
  %39 = call i64 @llvm.bswap.i64(i64 %or.i67) #9
  %40 = ptrtoint ptr %t.sroa.13.0.__ctx.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %t.sroa.13.0.__ctx.i.sroa_idx, align 8
  %shl4.i69 = shl i64 %38, 1
  %xor.i70 = xor i64 %shl4.i69, %and.i66
  %41 = call i64 @llvm.bswap.i64(i64 %xor.i70) #9
  %42 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %__ctx.i, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then25, %land.lhs.true23.critedge.cleanup.thread_crit_edge, %if.end20
  %sub28 = add i32 %avail.0, -16
  %call29 = call i32 @skcipher_walk_done(ptr noundef nonnull %w, i32 noundef %sub28) #9
  br label %cleanup37

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %do.body.if.end30_crit_edge
  %incdec.ptr = getelementptr %struct.le128, ptr %wdst.0, i32 1
  %incdec.ptr31 = getelementptr %struct.le128, ptr %wsrc.0, i32 1
  %43 = ptrtoint ptr %wsrc.0 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wsrc.0, align 8
  %xor.i.i71 = xor i64 %44, %t.sroa.0.1
  %45 = ptrtoint ptr %wdst.0 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %xor.i.i71, ptr %wdst.0, align 8
  %b3.i.i73 = getelementptr inbounds %struct.u128, ptr %wsrc.0, i32 0, i32 1
  %46 = ptrtoint ptr %b3.i.i73 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %b3.i.i73, align 8
  %xor4.i.i74 = xor i64 %47, %t.sroa.13.1
  %b5.i.i75 = getelementptr inbounds %struct.u128, ptr %wdst.0, i32 0, i32 1
  %48 = ptrtoint ptr %b5.i.i75 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %xor4.i.i74, ptr %b5.i.i75, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %t.sroa.13.1) #9
  %50 = call i64 @llvm.bswap.i64(i64 %t.sroa.0.1) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %isneg.i77 = icmp slt i64 %49, 0
  %and.i78 = select i1 %isneg.i77, i64 135, i64 0
  %or.i79 = call i64 @llvm.fshl.i64(i64 %49, i64 %50, i64 1) #9
  %51 = call i64 @llvm.bswap.i64(i64 %or.i79) #9
  %shl4.i81 = shl i64 %50, 1
  %xor.i82 = xor i64 %shl4.i81, %and.i78
  %52 = call i64 @llvm.bswap.i64(i64 %xor.i82) #9
  %sub32 = add i32 %avail.0, -16
  %cmp33 = icmp ugt i32 %sub32, 15
  br i1 %cmp33, label %if.end30.do.body_crit_edge, label %cleanup

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end30
  %call34 = call i32 @skcipher_walk_done(ptr noundef nonnull %w, i32 noundef %sub32) #9
  %53 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nbytes, align 4
  %tobool7.not = icmp eq i32 %54, 0
  br i1 %tobool7.not, label %cleanup.cleanup37_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup.cleanup37_crit_edge, %cleanup.thread, %if.end.cleanup37_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup.thread ], [ %call6, %if.end.cleanup37_crit_edge ], [ %call34, %cleanup.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %w) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_cts_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  %b = alloca %struct.le128, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  %2 = call ptr @memset(ptr %b, i32 255, i32 16)
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.le128, ptr %b, i32 0, i32 1
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 6
  %tail = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef 0) #9
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__ctx.i, align 8
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b, align 8
  %xor.i.i = xor i64 %9, %7
  store i64 %xor.i.i, ptr %b, align 8
  %b.i.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 2
  %10 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %b.i.i, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %3, align 8
  %xor4.i.i = xor i64 %13, %11
  store i64 %xor4.i.i, ptr %3, align 8
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %b, ptr noundef %15, i32 noundef 0, i32 noundef 16, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete.i, align 8
  call void %17(ptr noundef %base.i, i32 noundef %err) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xts_decrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 2, i32 4, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags, align 4
  %call.i = tail call fastcc i32 @xts_xor_tweak(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %rem = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then6, !prof !34

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call fastcc i32 @xts_cts_final(ptr noundef %1, ptr noundef nonnull @crypto_skcipher_decrypt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call7)
  %cmp = icmp eq i32 %call7, -115
  br i1 %cmp, label %if.then6.cleanup11_crit_edge, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6.cleanup11_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup11

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %err.addr.2 = phi i32 [ %err, %entry.if.end10_crit_edge ], [ %call.i, %if.then.if.end10_crit_edge ], [ %call7, %if.then6.if.end10_crit_edge ], [ 0, %land.lhs.true.if.end10_crit_edge ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete.i, align 8
  tail call void %7(ptr noundef %base.i, i32 noundef %err.addr.2) #9
  br label %cleanup11

cleanup11:                                        ; preds = %if.end10, %if.then6.cleanup11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_xts__239_462_xts_module_init4, !1, !"__initcall__kmod_xts__239_462_xts_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/xts.c", i32 462, i32 1}
!2 = !{ptr @__exitcall_xts_module_exit, !3, !"__exitcall_xts_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/xts.c", i32 463, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/xts.c", i32 465, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/xts.c", i32 466, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/xts.c", i32 467, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_import_ns245, !13, !"__UNIQUE_ID_import_ns245", i1 false, i1 false}
!13 = !{!"../crypto/xts.c", i32 468, i32 1}
!14 = !{ptr @xts_tmpl, !15, !"xts_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/xts.c", i32 446, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/xts.c", i32 366, i32 48}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/xts.c", i32 387, i32 60}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/xts.c", i32 398, i32 28}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/xts.c", i32 411, i32 9}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{ptr @crypto_skcipher_decrypt, ptr @crypto_skcipher_encrypt}
