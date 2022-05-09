; ModuleID = '/llk/IR_all_yes/crypto/lrw.c_pt.bc'
source_filename = "../crypto/lrw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.74, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.be128 = type { i64, i64 }
%struct.lrw_tfm_ctx = type { ptr, ptr, [128 x %struct.be128] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.skcipher_walk = type { %union.anon.77, %union.anon.77, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.u128 = type { i64, i64 }

@lrw_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @lrw_create, [128 x i8] c"lrw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_lrw__239_425_lrw_module_init4 = internal global ptr @lrw_module_init, section ".initcall4.init", align 4
@__exitcall_lrw_module_exit = internal global ptr @lrw_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [20 x i8] c"lrw.file=crypto/lrw\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [16 x i8] c"lrw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [38 x i8] c"lrw.description=LRW block cipher mode\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [14 x i8] c"lrw.alias=lrw\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [21 x i8] c"lrw.alias=crypto-lrw\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ecb(%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lrw\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ecb(\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lrw(%s)\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"lrw_tmpl\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 409, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 327, i32 47 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 348, i32 60 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 359, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [16 x i8] c"../crypto/lrw.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 372, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_lrw_module_exit, ptr @__initcall__kmod_lrw__239_425_lrw_module_init4, ptr @lrw_module_exit, ptr @lrw_tmpl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lrw_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lrw_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_template(ptr noundef nonnull @lrw_tmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lrw_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @lrw_tmpl) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lrw_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %ecb_name = alloca [128 x i8], align 1
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ecb_name) #9
  %0 = call ptr @memset(ptr %ecb_name, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !31
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 5, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = call ptr @crypto_attr_alg_name(ptr noundef %3) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup83

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 924) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup83_crit_edge, label %if.end9

if.end5.cleanup83_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end9:                                          ; preds = %if.end5
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %call12 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call1, i32 noundef 0, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12)
  %cmp = icmp eq i32 %call12, -2
  br i1 %cmp, label %if.then13, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ecb_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, 127
  br i1 %cmp15, label %if.then13.err_free_inst_crit_edge, label %if.end17

if.then13.err_free_inst_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %call20 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef nonnull %ecb_name, i32 noundef 0, i32 noundef %9) #9
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end9.if.end21_crit_edge
  %err.0 = phi i32 [ %call20, %if.end17 ], [ %call12, %if.end9.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool22.not = icmp eq i32 %err.0, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.err_free_inst_crit_edge

if.end21.err_free_inst_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end24:                                         ; preds = %if.end21
  %alg.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alg.i, align 8
  %cra_blocksize = getelementptr i8, ptr %11, i32 20
  %12 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp26.not = icmp eq i32 %13, 16
  br i1 %cmp26.not, label %if.end28, label %if.end24.err_free_inst_crit_edge

if.end24.err_free_inst_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end28:                                         ; preds = %if.end24
  %ivsize.i = getelementptr i8, ptr %11, i32 -100
  %14 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.err_free_inst_crit_edge

if.end28.err_free_inst_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end32:                                         ; preds = %if.end28
  %call35 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef nonnull @.str.1, ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.err_free_inst_crit_edge

if.end32.err_free_inst_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end38:                                         ; preds = %if.end32
  %cra_name = getelementptr i8, ptr %11, i32 40
  %call41 = call i32 @strncmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(5) @.str.2, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end38.err_free_inst_crit_edge

if.end38.err_free_inst_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.then43:                                        ; preds = %if.end38
  %add.ptr = getelementptr i8, ptr %11, i32 44
  %call45 = call i32 @strlcpy(ptr noundef nonnull %ecb_name, ptr noundef %add.ptr, i32 noundef 128) #9
  %16 = add i32 %call45, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %16)
  %17 = icmp ult i32 %16, -126
  br i1 %17, label %if.then43.err_free_inst_crit_edge, label %if.end49

if.then43.err_free_inst_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end49:                                         ; preds = %if.then43
  %sub = add nsw i32 %call45, -1
  %arrayidx50 = getelementptr [128 x i8], ptr %ecb_name, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %19)
  %cmp51.not = icmp eq i8 %19, 41
  br i1 %cmp51.not, label %if.end54, label %if.end49.err_free_inst_crit_edge

if.end49.err_free_inst_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end54:                                         ; preds = %if.end49
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx50, align 1
  %cra_name58 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %call61 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name58, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef nonnull %ecb_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call61)
  %cmp62 = icmp sgt i32 %call61, 127
  br i1 %cmp62, label %if.end54.err_free_inst_crit_edge, label %if.end66

if.end54.err_free_inst_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end66:                                         ; preds = %if.end54
  %cra_priority = getelementptr i8, ptr %11, i32 32
  %21 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_priority, align 32
  %23 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority69 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %24 = ptrtoint ptr %cra_priority69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %cra_priority69, align 32
  %cra_blocksize71 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %cra_blocksize71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %cra_blocksize71, align 4
  %cra_alignmask = getelementptr i8, ptr %11, i32 28
  %26 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cra_alignmask, align 4
  %or = or i32 %27, 7
  %cra_alignmask74 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %cra_alignmask74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %cra_alignmask74, align 4
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %29 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %ivsize, align 4
  %min_keysize.i = getelementptr i8, ptr %11, i32 -108
  %30 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_keysize.i, align 4
  %add = add i32 %31, 16
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %32 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr i8, ptr %11, i32 -104
  %33 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_keysize.i, align 8
  %add77 = add i32 %34, 16
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %35 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add77, ptr %max_keysize, align 8
  %cra_ctxsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2056, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %37 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @lrw_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %38 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @lrw_exit_tfm, ptr %exit, align 16
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @lrw_setkey, ptr %23, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %40 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @lrw_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %41 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @lrw_decrypt, ptr %decrypt, align 8
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @lrw_free_instance, ptr %call7.i.i, align 128
  %call79 = call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end66.cleanup83_crit_edge, label %if.end66.err_free_inst_crit_edge

if.end66.err_free_inst_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_inst

if.end66.cleanup83_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

err_free_inst:                                    ; preds = %if.end66.err_free_inst_crit_edge, %if.end54.err_free_inst_crit_edge, %if.end49.err_free_inst_crit_edge, %if.then43.err_free_inst_crit_edge, %if.end38.err_free_inst_crit_edge, %if.end32.err_free_inst_crit_edge, %if.end28.err_free_inst_crit_edge, %if.end24.err_free_inst_crit_edge, %if.end21.err_free_inst_crit_edge, %if.then13.err_free_inst_crit_edge
  %err.2 = phi i32 [ -36, %if.then13.err_free_inst_crit_edge ], [ %err.0, %if.end21.err_free_inst_crit_edge ], [ -22, %if.end24.err_free_inst_crit_edge ], [ -22, %if.end28.err_free_inst_crit_edge ], [ %call35, %if.end32.err_free_inst_crit_edge ], [ -22, %if.end38.err_free_inst_crit_edge ], [ %call79, %if.end66.err_free_inst_crit_edge ], [ -22, %if.end49.err_free_inst_crit_edge ], [ -22, %if.then43.err_free_inst_crit_edge ], [ -36, %if.end54.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup83

cleanup83:                                        ; preds = %err_free_inst, %if.end66.cleanup83_crit_edge, %if.end5.cleanup83_crit_edge, %if.then3, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %call, %entry.cleanup83_crit_edge ], [ -12, %if.end5.cleanup83_crit_edge ], [ %err.2, %err_free_inst ], [ 0, %if.end66.cleanup83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ecb_name) #9
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
define internal i32 @lrw_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 128
  %add = add i32 %5, 256
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lrw_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gf128mul_free_64k(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lrw_setkey(ptr noundef %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %tmp = alloca %struct.be128, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 8
  %add.ptr = getelementptr i8, ptr %key, i32 %keylen
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %2 = call ptr @memset(ptr %tmp, i32 0, i32 16)
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %4, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i42 = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i42, align 128
  %and = and i32 %6, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %sub = add i32 %keylen, -16
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %table = getelementptr inbounds %struct.crypto_skcipher, ptr %parent, i32 1, i32 1
  %7 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gf128mul_free_64k(ptr noundef nonnull %8) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @gf128mul_init_64k_bbe(ptr noundef %add.ptr2) #9
  %9 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %table, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %rem.i.i = and i32 %i.045, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %xor.i = lshr i32 %i.045, 5
  %div2.i.i = xor i32 %xor.i, 3
  %add.ptr.i.i = getelementptr i32, ptr %tmp, i32 %div2.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i44 = or i32 %11, %shl.i.i
  store i32 %or.i.i44, ptr %add.ptr.i.i, align 4
  %arrayidx = getelementptr %struct.lrw_tfm_ctx, ptr %__crt_ctx.i.i, i32 0, i32 2, i32 %i.045
  %12 = call ptr @memcpy(ptr %arrayidx, ptr %tmp, i32 16)
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  tail call void @gf128mul_64k_bbe(ptr noundef %arrayidx, ptr noundef %14) #9
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lrw_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %subreq3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %4 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %7 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lrw_crypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %8 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %9 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %flags4.i.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst.i, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %16 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %17 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %dst2.i.i, align 4
  %18 = ptrtoint ptr %subreq3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %subreq3.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %19 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %iv4.i.i, align 4
  %20 = call ptr @memcpy(ptr %__ctx.i, ptr %15, i32 16)
  %table.i = getelementptr i8, ptr %1, i32 132
  %21 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table.i, align 4
  tail call void @gf128mul_64k_bbe(ptr noundef %__ctx.i, ptr noundef %22) #9
  %call.i = tail call fastcc i32 @lrw_xor_tweak(ptr noundef %req, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end8_crit_edge

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false:                                       ; preds = %entry
  %call3 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %subreq3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cond.false6, label %cond.false.cond.end8_crit_edge

cond.false.cond.end8_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13 = tail call fastcc i32 @lrw_xor_tweak(ptr noundef %req, i1 noundef zeroext true) #9
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.false.cond.end8_crit_edge, %entry.cond.end8_crit_edge
  %cond9 = phi i32 [ %call.i, %entry.cond.end8_crit_edge ], [ %call.i13, %cond.false6 ], [ %call3, %cond.false.cond.end8_crit_edge ]
  ret i32 %cond9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lrw_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %subreq3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %4 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %7 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lrw_crypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %8 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %9 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %flags4.i.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst.i, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %16 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %17 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %dst2.i.i, align 4
  %18 = ptrtoint ptr %subreq3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %subreq3.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %19 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %iv4.i.i, align 4
  %20 = call ptr @memcpy(ptr %__ctx.i, ptr %15, i32 16)
  %table.i = getelementptr i8, ptr %1, i32 132
  %21 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table.i, align 4
  tail call void @gf128mul_64k_bbe(ptr noundef %__ctx.i, ptr noundef %22) #9
  %call.i = tail call fastcc i32 @lrw_xor_tweak(ptr noundef %req, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end8_crit_edge

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false:                                       ; preds = %entry
  %call3 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %subreq3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cond.false6, label %cond.false.cond.end8_crit_edge

cond.false.cond.end8_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13 = tail call fastcc i32 @lrw_xor_tweak(ptr noundef %req, i1 noundef zeroext true) #9
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.false.cond.end8_crit_edge, %entry.cond.end8_crit_edge
  %cond9 = phi i32 [ %call.i, %entry.cond.end8_crit_edge ], [ %call.i13, %cond.false6 ], [ %call3, %cond.false.cond.end8_crit_edge ]
  ret i32 %cond9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lrw_free_instance(ptr noundef %inst) #2 align 64 {
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
declare dso_local void @gf128mul_free_64k(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf128mul_init_64k_bbe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_64k_bbe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lrw_crypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 2, i32 4, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags, align 4
  %call.i = tail call fastcc i32 @lrw_xor_tweak(ptr noundef %1, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete.i, align 8
  tail call void %5(ptr noundef %base.i, i32 noundef %err.addr.0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lrw_xor_tweak(ptr noundef %req, i1 noundef zeroext %second_pass) unnamed_addr #2 align 64 {
entry:
  %w = alloca %struct.skcipher_walk, align 4
  %counter.sroa.0 = alloca i32, align 4
  %counter.sroa.8 = alloca i32, align 4
  %counter.sroa.14 = alloca i32, align 4
  %counter.sroa.20 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %t.sroa.0.0.copyload = load i64, ptr %__ctx.i, align 128
  %t.sroa.7.0.__ctx.i.sroa_idx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %3 = ptrtoint ptr %t.sroa.7.0.__ctx.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %t.sroa.7.0.copyload = load i64, ptr %t.sroa.7.0.__ctx.i.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %w) #9
  %4 = call ptr @memset(ptr %w, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter.sroa.8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter.sroa.14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter.sroa.20)
  br i1 %second_pass, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %subreq = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %5 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %tfm1.i, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req.addr.0 = phi ptr [ %subreq, %if.then ], [ %req, %entry.if.end_crit_edge ]
  %call4 = call i32 @skcipher_walk_virt(ptr noundef nonnull %w, ptr noundef %req.addr.0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %iv8 = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 10
  %6 = ptrtoint ptr %iv8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv8, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %counter.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %counter.sroa.0, align 4
  %arrayidx10 = getelementptr i32, ptr %7, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  %13 = ptrtoint ptr %counter.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %counter.sroa.8, align 4
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %16 = ptrtoint ptr %counter.sroa.14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %counter.sroa.14, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  %19 = ptrtoint ptr %counter.sroa.20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %counter.sroa.20, align 4
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 3
  %20 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not71 = icmp eq i32 %21, 0
  br i1 %tobool16.not71, label %if.end7.cleanup_crit_edge, label %while.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end7
  %addr = getelementptr inbounds %struct.anon.79, ptr %w, i32 0, i32 1
  %addr18 = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 1, i32 0, i32 1
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %w, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %22 = phi i32 [ %21, %while.body.lr.ph ], [ %60, %if.end34.while.body_crit_edge ]
  %t.sroa.0.073 = phi i64 [ %t.sroa.0.0.copyload, %while.body.lr.ph ], [ %xor.i.i60, %if.end34.while.body_crit_edge ]
  %t.sroa.7.072 = phi i64 [ %t.sroa.7.0.copyload, %while.body.lr.ph ], [ %xor4.i.i63, %if.end34.while.body_crit_edge ]
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %25 = ptrtoint ptr %addr18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr18, align 4
  br label %do.body

do.body:                                          ; preds = %lrw_next_index.exit.do.body_crit_edge, %while.body
  %t.sroa.7.1 = phi i64 [ %t.sroa.7.072, %while.body ], [ %xor4.i.i63, %lrw_next_index.exit.do.body_crit_edge ]
  %t.sroa.0.1 = phi i64 [ %t.sroa.0.073, %while.body ], [ %xor.i.i60, %lrw_next_index.exit.do.body_crit_edge ]
  %avail.0 = phi i32 [ %22, %while.body ], [ %sub, %lrw_next_index.exit.do.body_crit_edge ]
  %wsrc.0 = phi ptr [ %24, %while.body ], [ %incdec.ptr19, %lrw_next_index.exit.do.body_crit_edge ]
  %wdst.0 = phi ptr [ %26, %while.body ], [ %incdec.ptr, %lrw_next_index.exit.do.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.be128, ptr %wdst.0, i32 1
  %incdec.ptr19 = getelementptr %struct.be128, ptr %wsrc.0, i32 1
  %27 = ptrtoint ptr %wsrc.0 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wsrc.0, align 8
  %xor.i.i = xor i64 %28, %t.sroa.0.1
  %29 = ptrtoint ptr %wdst.0 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %xor.i.i, ptr %wdst.0, align 8
  %b3.i.i = getelementptr inbounds %struct.u128, ptr %wsrc.0, i32 0, i32 1
  %30 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b3.i.i, align 8
  %xor4.i.i = xor i64 %31, %t.sroa.7.1
  %b5.i.i = getelementptr inbounds %struct.u128, ptr %wdst.0, i32 0, i32 1
  %32 = ptrtoint ptr %b5.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %xor4.i.i, ptr %b5.i.i, align 8
  %33 = ptrtoint ptr %counter.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %counter.sroa.0.0.counter.sroa.0.0.counter.sroa.0.0.65 = load i32, ptr %counter.sroa.0, align 4
  %add.i = add i32 %counter.sroa.0.0.counter.sroa.0.0.counter.sroa.0.0.65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp1.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp1.not.i, label %if.end.i, label %do.body.if.then.i_crit_edge

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.2.i.if.then.i_crit_edge, %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  %res.017.lcssa.i = phi i32 [ 0, %do.body.if.then.i_crit_edge ], [ 32, %if.end.i.if.then.i_crit_edge ], [ 64, %if.end.1.i.if.then.i_crit_edge ], [ 96, %if.end.2.i.if.then.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %counter.sroa.0, %do.body.if.then.i_crit_edge ], [ %counter.sroa.8, %if.end.i.if.then.i_crit_edge ], [ %counter.sroa.14, %if.end.1.i.if.then.i_crit_edge ], [ %counter.sroa.20, %if.end.2.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i32 [ %counter.sroa.0.0.counter.sroa.0.0.counter.sroa.0.0.65, %do.body.if.then.i_crit_edge ], [ %counter.sroa.8.0.counter.sroa.8.0.counter.sroa.8.4.66, %if.end.i.if.then.i_crit_edge ], [ %counter.sroa.14.0.counter.sroa.14.0.counter.sroa.14.8.67, %if.end.1.i.if.then.i_crit_edge ], [ %counter.sroa.20.0.counter.sroa.20.0.counter.sroa.20.12.68, %if.end.2.i.if.then.i_crit_edge ]
  %add.lcssa.i = phi i32 [ %add.i, %do.body.if.then.i_crit_edge ], [ %add.1.i, %if.end.i.if.then.i_crit_edge ], [ %add.2.i, %if.end.1.i.if.then.i_crit_edge ], [ %add.3.i, %if.end.2.i.if.then.i_crit_edge ]
  %34 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.lcssa.i, ptr %arrayidx.lcssa.i, align 4
  %neg.i = xor i32 %.lcssa.i, -1
  %35 = call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #9, !range !32
  %add3.i = add nuw nsw i32 %35, %res.017.lcssa.i
  br label %lrw_next_index.exit

if.end.i:                                         ; preds = %do.body
  %36 = ptrtoint ptr %counter.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %counter.sroa.0, align 4
  %37 = ptrtoint ptr %counter.sroa.8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %counter.sroa.8.0.counter.sroa.8.0.counter.sroa.8.4.66 = load i32, ptr %counter.sroa.8, align 4
  %add.1.i = add i32 %counter.sroa.8.0.counter.sroa.8.0.counter.sroa.8.4.66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.1.i)
  %cmp1.not.1.i = icmp eq i32 %add.1.i, 0
  br i1 %cmp1.not.1.i, label %if.end.1.i, label %if.end.i.if.then.i_crit_edge

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %counter.sroa.8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %counter.sroa.8, align 4
  %39 = ptrtoint ptr %counter.sroa.14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %counter.sroa.14.0.counter.sroa.14.0.counter.sroa.14.8.67 = load i32, ptr %counter.sroa.14, align 4
  %add.2.i = add i32 %counter.sroa.14.0.counter.sroa.14.0.counter.sroa.14.8.67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.2.i)
  %cmp1.not.2.i = icmp eq i32 %add.2.i, 0
  br i1 %cmp1.not.2.i, label %if.end.2.i, label %if.end.1.i.if.then.i_crit_edge

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %40 = ptrtoint ptr %counter.sroa.14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %counter.sroa.14, align 4
  %41 = ptrtoint ptr %counter.sroa.20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %counter.sroa.20.0.counter.sroa.20.0.counter.sroa.20.12.68 = load i32, ptr %counter.sroa.20, align 4
  %add.3.i = add i32 %counter.sroa.20.0.counter.sroa.20.0.counter.sroa.20.12.68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3.i)
  %cmp1.not.3.i = icmp eq i32 %add.3.i, 0
  br i1 %cmp1.not.3.i, label %if.end.3.i, label %if.end.2.i.if.then.i_crit_edge

if.end.2.i.if.then.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %counter.sroa.20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %counter.sroa.20, align 4
  br label %lrw_next_index.exit

lrw_next_index.exit:                              ; preds = %if.end.3.i, %if.then.i
  %retval.0.i = phi i32 [ %add3.i, %if.then.i ], [ 127, %if.end.3.i ]
  %arrayidx21 = getelementptr %struct.lrw_tfm_ctx, ptr %__crt_ctx.i.i, i32 0, i32 2, i32 %retval.0.i
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx21, align 8
  %xor.i.i60 = xor i64 %44, %t.sroa.0.1
  %b3.i.i62 = getelementptr inbounds %struct.u128, ptr %arrayidx21, i32 0, i32 1
  %45 = ptrtoint ptr %b3.i.i62 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %b3.i.i62, align 8
  %xor4.i.i63 = xor i64 %46, %t.sroa.7.1
  %sub = add i32 %avail.0, -16
  %cmp = icmp ugt i32 %sub, 15
  br i1 %cmp, label %lrw_next_index.exit.do.body_crit_edge, label %do.end

lrw_next_index.exit.do.body_crit_edge:            ; preds = %lrw_next_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %lrw_next_index.exit
  br i1 %second_pass, label %land.lhs.true, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end
  %47 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nbytes, align 4
  %49 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp24 = icmp eq i32 %48, %50
  br i1 %cmp24, label %if.then25, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %counter.sroa.20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %counter.sroa.20.0.counter.sroa.20.0.counter.sroa.20.12. = load i32, ptr %counter.sroa.20, align 4
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %counter.sroa.20.0.counter.sroa.20.0.counter.sroa.20.12., ptr %7, align 4
  %53 = ptrtoint ptr %counter.sroa.14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %counter.sroa.14.0.counter.sroa.14.0.counter.sroa.14.8. = load i32, ptr %counter.sroa.14, align 4
  %54 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %counter.sroa.14.0.counter.sroa.14.0.counter.sroa.14.8., ptr %arrayidx12, align 4
  %55 = ptrtoint ptr %counter.sroa.8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %counter.sroa.8.0.counter.sroa.8.0.counter.sroa.8.4. = load i32, ptr %counter.sroa.8, align 4
  %56 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %counter.sroa.8.0.counter.sroa.8.0.counter.sroa.8.4., ptr %arrayidx10, align 4
  %57 = ptrtoint ptr %counter.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %counter.sroa.0.0.counter.sroa.0.0.counter.sroa.0.0. = load i32, ptr %counter.sroa.0, align 4
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %counter.sroa.0.0.counter.sroa.0.0.counter.sroa.0.0., ptr %arrayidx, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %land.lhs.true.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %call35 = call i32 @skcipher_walk_done(ptr noundef nonnull %w, i32 noundef %sub) #9
  %59 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nbytes, align 4
  %tobool16.not = icmp eq i32 %60, 0
  br i1 %tobool16.not, label %if.end34.cleanup_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter.sroa.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter.sroa.14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter.sroa.20)
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %w) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_lrw__239_425_lrw_module_init4, !1, !"__initcall__kmod_lrw__239_425_lrw_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/lrw.c", i32 425, i32 1}
!2 = !{ptr @__exitcall_lrw_module_exit, !3, !"__exitcall_lrw_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/lrw.c", i32 426, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/lrw.c", i32 428, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description242, !8, !"__UNIQUE_ID_description242", i1 false, i1 false}
!8 = !{!"../crypto/lrw.c", i32 429, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace243, !10, !"__UNIQUE_ID_alias_userspace243", i1 false, i1 false}
!10 = !{!"../crypto/lrw.c", i32 430, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto244, !10, !"__UNIQUE_ID_alias_crypto244", i1 false, i1 false}
!12 = !{ptr @lrw_tmpl, !13, !"lrw_tmpl", i1 false, i1 false}
!13 = !{!"../crypto/lrw.c", i32 409, i32 31}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/lrw.c", i32 327, i32 47}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/lrw.c", i32 348, i32 60}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/lrw.c", i32 359, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/lrw.c", i32 372, i32 9}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i32 0, i32 33}
