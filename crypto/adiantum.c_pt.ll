; ModuleID = '/llk/IR_all_yes/crypto/adiantum.c_pt.bc'
source_filename = "../crypto/adiantum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.anon.78 = type { [32 x i8], [1136 x i8], %struct.scatterlist, %struct.crypto_wait, [32 x i8], %struct.skcipher_request }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.anon.81 = type { i64, i64 }
%struct.poly1305_state = type { %union.anon.82 }
%union.anon.82 = type { [3 x i64] }
%struct.le128 = type { i64, i64 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@adiantum_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @adiantum_create, [128 x i8] c"adiantum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_adiantum__248_613_adiantum_module_init4 = internal global ptr @adiantum_module_init, section ".initcall4.init", align 4
@__exitcall_adiantum_module_exit = internal global ptr @adiantum_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"adiantum.description=Adiantum length-preserving encryption mode\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [30 x i8] c"adiantum.file=crypto/adiantum\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"adiantum.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [51 x i8] c"adiantum.author=Eric Biggers <ebiggers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace253 = internal constant [24 x i8] c"adiantum.alias=adiantum\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto254 = internal constant [31 x i8] c"adiantum.alias=crypto-adiantum\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns255 = internal constant [35 x i8] c"adiantum.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nhpoly1305\00", [21 x i8] zeroinitializer }, align 32
@adiantum_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Unsupported Adiantum instantiation: (%s,%s,%s)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adiantum_create\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"crypto/adiantum.c\00", [46 x i8] zeroinitializer }, align 32
@adiantum_create._entry_ptr = internal global ptr @adiantum_create._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adiantum(%s,%s)\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adiantum(%s,%s,%s)\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xchacha12\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xchacha20\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"adiantum_tmpl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 597, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 531, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 542, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 553, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 557, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 476, i32 46 }
@___asan_gen_.37 = private constant [21 x i8] c"../crypto/adiantum.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 477, i32 46 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 87, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias_crypto254, ptr @__UNIQUE_ID_alias_userspace253, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_import_ns255, ptr @__UNIQUE_ID_license251, ptr @__exitcall_adiantum_module_exit, ptr @__initcall__kmod_adiantum__248_613_adiantum_module_init4, ptr @adiantum_create._entry, ptr @adiantum_create._entry_ptr, ptr @adiantum_module_exit, ptr @adiantum_tmpl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adiantum_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adiantum_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adiantum_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_template(ptr noundef nonnull @adiantum_tmpl) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @adiantum_tmpl) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #11
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !46
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 5, ptr noundef nonnull %mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 980) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #11
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -128
  %blockcipher_spawn = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %arrayidx15 = getelementptr ptr, ptr %tb, i32 2
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15, align 4
  %call16 = call ptr @crypto_attr_alg_name(ptr noundef %9) #11
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %or1.i = or i32 %11, 15
  %call.i = call i32 @crypto_grab_spawn(ptr noundef %blockcipher_spawn, ptr noundef %base.i, ptr noundef %call16, i32 noundef 1, i32 noundef %or1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end20:                                         ; preds = %if.end11
  %alg.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 32
  %12 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alg.i, align 4
  %arrayidx23 = getelementptr ptr, ptr %tb, i32 3
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx23, align 4
  %call24 = call ptr @crypto_attr_alg_name(ptr noundef %15) #11
  %cmp = icmp eq ptr %call24, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, ptr @.str, ptr %call24
  %hash_spawn = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 52
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %call29 = call i32 @crypto_grab_shash(ptr noundef %hash_spawn, ptr noundef %base.i, ptr noundef %spec.select, i32 noundef 0, i32 noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end20.err_free_inst_crit_edge

if.end20.err_free_inst_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end32:                                         ; preds = %if.end20
  %alg.i151 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 60
  %18 = ptrtoint ptr %alg.i151 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %alg.i151, align 8
  %add.ptr.i.i152 = getelementptr i8, ptr %19, i32 -256
  %call35 = call fastcc zeroext i1 @adiantum_supported_algorithms(ptr noundef %add.ptr.i.i, ptr noundef %13, ptr noundef %add.ptr.i.i152)
  br i1 %call35, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name = getelementptr i8, ptr %7, i32 40
  %cra_name37 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 8
  %cra_name40 = getelementptr i8, ptr %19, i32 40
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %cra_name, ptr noundef %cra_name37, ptr noundef %cra_name40) #15
  br label %err_free_inst

if.end43:                                         ; preds = %if.end32
  %20 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name45 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name48 = getelementptr i8, ptr %7, i32 40
  %cra_name50 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 8
  %call52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name45, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %cra_name48, ptr noundef %cra_name50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call52)
  %cmp53 = icmp sgt i32 %call52, 127
  br i1 %cmp53, label %if.end43.err_free_inst_crit_edge, label %if.end55

if.end43.err_free_inst_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end55:                                         ; preds = %if.end43
  %cra_driver_name = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name59 = getelementptr i8, ptr %7, i32 168
  %cra_driver_name61 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 9
  %cra_driver_name64 = getelementptr i8, ptr %19, i32 168
  %call66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %cra_driver_name59, ptr noundef %cra_driver_name61, ptr noundef %cra_driver_name64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call66)
  %cmp67 = icmp sgt i32 %call66, 127
  br i1 %cmp67, label %if.end55.err_free_inst_crit_edge, label %if.end69

if.end55.err_free_inst_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end69:                                         ; preds = %if.end55
  %cra_blocksize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %cra_blocksize, align 4
  %cra_ctxsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %cra_ctxsize, align 8
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %23 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask74 = getelementptr i8, ptr %19, i32 28
  %25 = ptrtoint ptr %cra_alignmask74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask74, align 4
  %or = or i32 %26, %24
  %cra_alignmask76 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %cra_alignmask76, align 4
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %28 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_priority, align 32
  %mul = shl i32 %29, 2
  %cra_priority79 = getelementptr i8, ptr %19, i32 32
  %30 = ptrtoint ptr %cra_priority79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_priority79, align 32
  %mul80 = shl i32 %31, 1
  %add = add i32 %mul80, %mul
  %cra_priority81 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 6
  %32 = ptrtoint ptr %cra_priority81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cra_priority81, align 32
  %add82 = add i32 %add, %33
  %div = sdiv i32 %add82, 7
  %cra_priority84 = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %cra_priority84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %cra_priority84, align 32
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @adiantum_setkey, ptr %20, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @adiantum_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %37 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @adiantum_decrypt, ptr %decrypt, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %38 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @adiantum_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %39 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @adiantum_exit_tfm, ptr %exit, align 16
  %min_keysize.i = getelementptr i8, ptr %7, i32 -108
  %40 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_keysize.i, align 4
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %42 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr i8, ptr %7, i32 -104
  %43 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_keysize.i, align 8
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %45 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_keysize, align 8
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %46 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32, ptr %ivsize, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @adiantum_free_instance, ptr %call7.i.i, align 128
  %call87 = call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end69.cleanup_crit_edge, label %if.end69.err_free_inst_crit_edge

if.end69.err_free_inst_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_inst

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_inst:                                    ; preds = %if.end69.err_free_inst_crit_edge, %if.end55.err_free_inst_crit_edge, %if.end43.err_free_inst_crit_edge, %do.end, %if.end20.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ %call.i, %if.end11.err_free_inst_crit_edge ], [ %call29, %if.end20.err_free_inst_crit_edge ], [ -36, %if.end43.err_free_inst_crit_edge ], [ -36, %if.end55.err_free_inst_crit_edge ], [ %call87, %if.end69.err_free_inst_crit_edge ], [ -22, %do.end ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #11
  %blockcipher_spawn.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %blockcipher_spawn.i) #11
  %hash_spawn.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 52
  call void @crypto_drop_spawn(ptr noundef %hash_spawn.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end69.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
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
declare dso_local i32 @crypto_grab_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @adiantum_supported_algorithms(ptr nocapture noundef readonly %streamcipher_alg, ptr nocapture noundef readonly %blockcipher_alg, ptr nocapture noundef readonly %hash_alg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cra_name = getelementptr inbounds %struct.skcipher_alg, ptr %streamcipher_alg, i32 0, i32 11, i32 8
  %call = tail call i32 @strcmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(10) @.str.6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(10) @.str.7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cra_u = getelementptr inbounds %struct.crypto_alg, ptr %blockcipher_alg, i32 0, i32 11
  %0 = ptrtoint ptr %cra_u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cra_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp6 = icmp ugt i32 %1, 32
  br i1 %cmp6, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %cia_max_keysize = getelementptr inbounds %struct.crypto_alg, ptr %blockcipher_alg, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %cia_max_keysize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cia_max_keysize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp8 = icmp ult i32 %3, 32
  br i1 %cmp8, label %lor.lhs.false.return_crit_edge, label %if.end10

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %blockcipher_alg, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp11.not = icmp eq i32 %5, 16
  br i1 %cmp11.not, label %if.end13, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name15 = getelementptr inbounds %struct.shash_alg, ptr %hash_alg, i32 0, i32 15, i32 8
  %call17 = tail call i32 @strcmp(ptr noundef %cra_name15, ptr noundef nonnull dereferenceable(11) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br label %return

return:                                           ; preds = %if.end13, %if.end10.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end10.return_crit_edge ], [ %cmp18.not, %if.end13 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %4 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i110 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i110 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i110, align 128
  %and = and i32 %6, 1048320
  %base.i.i111 = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i111 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i111, align 128
  %or.i.i = or i32 %8, %and
  store i32 %or.i.i, ptr %base.i.i111, align 128
  %9 = load ptr, ptr %__crt_ctx.i.i, align 8
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %add = add i32 %13, 1408
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %call9.i.i, align 128
  %sg = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 2
  %derived_keys = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 1
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %derived_keys, i32 noundef 1136) #11
  %wait = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #11
  %req = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i112 = getelementptr inbounds %struct.crypto_skcipher, ptr %17, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 3
  %18 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %base.i.i112, ptr %tfm1.i, align 32
  %complete.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1536, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sg, ptr %dst2.i, align 4
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1136, ptr %req, align 128
  %iv4.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %iv4.i, align 4
  %call20 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %req) #11
  %26 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %if.end10.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end10.sw.bb.i_crit_edge
    i32 -16, label %if.end10.sw.bb.i_crit_edge125
  ]

if.end10.sw.bb.i_crit_edge125:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end10.sw.bb.i_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end10.crypto_wait_req.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end10.sw.bb.i_crit_edge, %if.end10.sw.bb.i_crit_edge125
  tail call void @wait_for_completion(ptr noundef %wait) #11
  %27 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end10.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call20, %if.end10.crypto_wait_req.exit_crit_edge ], [ %29, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool23.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool23.not, label %if.end25, label %crypto_wait_req.exit.out_crit_edge

crypto_wait_req.exit.out_crit_edge:               ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %crypto_wait_req.exit
  %blockcipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %30 = ptrtoint ptr %blockcipher to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %blockcipher, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 128
  %and.i.i113 = and i32 %33, -1048321
  store i32 %and.i.i113, ptr %31, align 128
  %34 = load ptr, ptr %blockcipher, align 4
  %35 = ptrtoint ptr %base.i.i110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i.i110, align 128
  %and30 = and i32 %36, 1048320
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 128
  %or.i.i115 = or i32 %38, %and30
  store i32 %or.i.i115, ptr %34, align 128
  %39 = load ptr, ptr %blockcipher, align 4
  %call32 = tail call i32 @crypto_cipher_setkey(ptr noundef %39, ptr noundef %derived_keys, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.anon.78, ptr %call9.i.i, i32 0, i32 1, i32 32
  %header_hash_key = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  tail call void @poly1305_core_setkey(ptr noundef %header_hash_key, ptr noundef %add.ptr) #11
  %add.ptr36 = getelementptr %struct.anon.78, ptr %call9.i.i, i32 0, i32 1, i32 48
  %hash = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %40 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hash, align 8
  %base.i.i116 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base.i.i116, align 128
  %and.i.i117 = and i32 %43, -1048321
  store i32 %and.i.i117, ptr %base.i.i116, align 128
  %44 = load ptr, ptr %hash, align 8
  %45 = ptrtoint ptr %base.i.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base.i.i110, align 128
  %and39 = and i32 %46, 1048320
  %base.i.i119 = getelementptr inbounds %struct.crypto_shash, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %base.i.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base.i.i119, align 128
  %or.i.i120 = or i32 %48, %and39
  store i32 %or.i.i120, ptr %base.i.i119, align 128
  %49 = load ptr, ptr %hash, align 8
  %call41 = tail call i32 @crypto_shash_setkey(ptr noundef %49, ptr noundef %add.ptr36, i32 noundef 1088) #11
  br label %out

out:                                              ; preds = %if.end35, %if.end25.out_crit_edge, %crypto_wait_req.exit.out_crit_edge
  %err.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.out_crit_edge ], [ %call32, %if.end25.out_crit_edge ], [ %call41, %if.end35 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call4, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adiantum_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adiantum_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adiantum_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %blockcipher_spawn = getelementptr i8, ptr %1, i32 668
  %call.i48 = tail call ptr @crypto_spawn_tfm(ptr noundef %blockcipher_spawn, i32 noundef 1, i32 noundef 15) #11
  %cmp.i49 = icmp ugt ptr %call.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.end.err_free_streamcipher_crit_edge, label %if.end10

if.end.err_free_streamcipher_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_streamcipher

if.end10:                                         ; preds = %if.end
  %hash_spawn = getelementptr i8, ptr %1, i32 696
  %call.i50 = tail call ptr @crypto_spawn_tfm2(ptr noundef %hash_spawn) #11
  %cmp.i51 = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_destroy_tfm(ptr noundef %call.i48, ptr noundef %call.i48) #11
  br label %err_free_streamcipher

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 8
  %blockcipher17 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %blockcipher17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i48, ptr %blockcipher17, align 4
  %hash18 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %5 = ptrtoint ptr %hash18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i50, ptr %hash18, align 8
  %6 = ptrtoint ptr %call.i50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i50, align 128
  %add = add i32 %7, 8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 128
  %add21 = add i32 %9, 128
  %10 = tail call i32 @llvm.umax.i32(i32 %add, i32 %add21)
  %add22 = add i32 %10, 128
  %11 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add22, ptr %tfm, align 128
  br label %cleanup

err_free_streamcipher:                            ; preds = %if.then13, %if.end.err_free_streamcipher_crit_edge
  %err.0.in = phi ptr [ %call.i50, %if.then13 ], [ %call.i48, %if.end.err_free_streamcipher_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_streamcipher, %if.end15, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %err_free_streamcipher ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adiantum_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  %blockcipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %blockcipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blockcipher, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #11
  %hash = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 8
  %base.i.i3 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adiantum_free_instance(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #11
  %blockcipher_spawn = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %blockcipher_spawn) #11
  %hash_spawn = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1, i32 1, i32 52
  tail call void @crypto_drop_spawn(ptr noundef %hash_spawn) #11
  tail call void @kfree(ptr noundef %inst) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_setkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adiantum_crypt(ptr noundef %req, i1 noundef zeroext %enc) unnamed_addr #2 align 64 {
entry:
  %header.i = alloca %struct.anon.81, align 8
  %state.i = alloca %struct.poly1305_state, align 8
  %digest = alloca %struct.le128, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %sub = add i32 %3, -16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %digest) #11
  %4 = getelementptr inbounds %struct.le128, ptr %digest, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  %5 = call ptr @memset(ptr %digest, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %enc to i8
  %enc4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %6 = ptrtoint ptr %enc4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %enc4, align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i) #11
  %7 = getelementptr inbounds %struct.anon.81, ptr %header.i, i32 0, i32 1
  %conv.i = zext i32 %sub to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %8 = tail call i64 @llvm.bswap.i64(i64 %mul.i) #11
  %9 = ptrtoint ptr %header.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %header.i, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #11
  %11 = call ptr @memset(ptr %state.i, i32 0, i32 24)
  %header_hash_key.i = getelementptr i8, ptr %1, i32 144
  call void @poly1305_core_blocks(ptr noundef nonnull %state.i, ptr noundef %header_hash_key.i, ptr noundef nonnull %header.i, i32 noundef 1, i32 noundef 1) #11
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv.i, align 4
  call void @poly1305_core_blocks(ptr noundef nonnull %state.i, ptr noundef %header_hash_key.i, ptr noundef %13, i32 noundef 2, i32 noundef 1) #11
  %header_hash.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  call void @poly1305_core_emit(ptr noundef nonnull %state.i, ptr noundef null, ptr noundef %header_hash.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #11
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 8
  %call6 = call fastcc i32 @adiantum_hash_message(ptr noundef %req, ptr noundef %15, ptr noundef nonnull %digest)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %digest to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %digest, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #11
  %19 = ptrtoint ptr %header_hash.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %header_hash.i, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #11
  %add.i = add i64 %21, %18
  %22 = call i64 @llvm.bswap.i64(i64 %add.i) #11
  %23 = ptrtoint ptr %digest to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %digest, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %4, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #11
  %a3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %27 = ptrtoint ptr %a3.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %a3.i, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28) #11
  %add4.i = add i64 %29, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %18)
  %cmp.i = icmp ult i64 %add.i, %18
  %30 = zext i1 %cmp.i to i64
  %add7.i = add i64 %add4.i, %30
  %31 = call i64 @llvm.bswap.i64(i64 %add7.i) #11
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %4, align 8
  %33 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %__ctx.i, ptr noundef %34, i32 noundef %sub, i32 noundef 16, i32 noundef 0) #11
  %35 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %__ctx.i, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36) #11
  %38 = ptrtoint ptr %digest to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %digest, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #11
  %add.i85 = add i64 %40, %37
  %41 = call i64 @llvm.bswap.i64(i64 %add.i85) #11
  %42 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %__ctx.i, align 8
  %a.i86 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %43 = ptrtoint ptr %a.i86 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %a.i86, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #11
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %4, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47) #11
  %add4.i88 = add i64 %48, %45
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i85, i64 %37)
  %cmp.i89 = icmp ult i64 %add.i85, %37
  %49 = zext i1 %cmp.i89 to i64
  %add7.i90 = add i64 %add4.i88, %49
  %50 = call i64 @llvm.bswap.i64(i64 %add7.i90) #11
  %51 = ptrtoint ptr %a.i86 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %a.i86, align 8
  br i1 %enc, label %if.then14, label %if.end9.do.end21_crit_edge

if.end9.do.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %blockcipher = getelementptr i8, ptr %1, i32 132
  %52 = ptrtoint ptr %blockcipher to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blockcipher, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %53, ptr noundef %__ctx.i, ptr noundef %__ctx.i) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %if.end9.do.end21_crit_edge
  %arrayidx = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16777216, ptr %arrayidx, align 16
  %arrayidx24 = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx26, align 8
  %arrayidx28 = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx28, align 4
  %sub29 = add i32 %3, -17
  %or = or i32 %sub29, 63
  %add = add i32 %or, 1
  %58 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %59)
  %cmp31.not = icmp ugt i32 %add, %59
  %spec.select = select i1 %cmp31.not, i32 %sub, i32 %add
  %u = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %60 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %__crt_ctx.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %61, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %62 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %63 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %65 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dst, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %67 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %68 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %dst2.i, align 4
  %69 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select, ptr %u, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %70 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %__ctx.i, ptr %iv4.i, align 4
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %73 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @adiantum_streamcipher_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %74 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %75 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %flags4.i, align 4
  %call42 = call i32 @crypto_skcipher_encrypt(ptr noundef %u) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cond.false, label %do.end21.cleanup_crit_edge

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call fastcc i32 @adiantum_finish(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %do.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call44, %cond.false ], [ %call42, %do.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %digest) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adiantum_hash_message(ptr noundef %req, ptr noundef %sgl, ptr noundef %digest) unnamed_addr #2 align 64 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %sub = add i32 %3, -16
  %u = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #11
  %4 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %hash = getelementptr i8, ptr %1, i32 136
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hash, align 8
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %u, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -256
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %13(ptr noundef %u) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %crypto_shash_init.exit
  %call5 = tail call i32 @sg_nents(ptr noundef %sgl) #11
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %sgl, i32 noundef %call5, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45.not = icmp eq i32 %sub, 0
  br i1 %cmp45.not, label %if.end.if.end15_crit_edge, label %for.body.lr.ph

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body.lr.ph:                                   ; preds = %if.end
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add i32 %16, %i.046
  %cmp = icmp ugt i32 %sub, %add
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end15_crit_edge

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %call6 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #11
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %sub7 = sub i32 %sub, %i.046
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 %sub7)
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %call9 = call i32 @crypto_shash_update(ptr noundef %u, ptr noundef %18, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @sg_miter_stop(ptr noundef nonnull %miter) #11
  br label %cleanup

if.end15:                                         ; preds = %for.cond.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %miter) #11
  %call16 = call i32 @crypto_shash_final(ptr noundef %u, ptr noundef %digest) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.end, %crypto_shash_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ %call9, %for.end ], [ -126, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adiantum_streamcipher_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @adiantum_finish(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %base.i, i32 noundef %err.addr.0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adiantum_finish(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %digest = alloca %struct.le128, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %sub = add i32 %3, -16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %digest) #11
  %4 = getelementptr inbounds %struct.le128, ptr %digest, i32 0, i32 1
  %enc = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %5 = call ptr @memset(ptr %digest, i32 255, i32 16)
  %6 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enc, align 32, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %blockcipher = getelementptr i8, ptr %1, i32 132
  %8 = ptrtoint ptr %blockcipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blockcipher, align 4
  tail call void @crypto_cipher_decrypt_one(ptr noundef %9, ptr noundef %__ctx.i, ptr noundef %__ctx.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %call5 = call fastcc i32 @adiantum_hash_message(ptr noundef %req, ptr noundef %11, ptr noundef nonnull %digest)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %header_hash = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %12 = ptrtoint ptr %digest to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %digest, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13) #11
  %15 = ptrtoint ptr %header_hash to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %header_hash, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #11
  %add.i = add i64 %17, %14
  %18 = call i64 @llvm.bswap.i64(i64 %add.i) #11
  %19 = ptrtoint ptr %digest to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %digest, align 8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %4, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21) #11
  %a3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %23 = ptrtoint ptr %a3.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %a3.i, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24) #11
  %add4.i = add i64 %25, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %14)
  %cmp.i = icmp ult i64 %add.i, %14
  %26 = zext i1 %cmp.i to i64
  %add7.i = add i64 %add4.i, %26
  %27 = call i64 @llvm.bswap.i64(i64 %add7.i) #11
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %4, align 8
  %29 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %__ctx.i, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #11
  %sub.i = sub i64 %31, %add.i
  %32 = call i64 @llvm.bswap.i64(i64 %sub.i) #11
  %33 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %__ctx.i, align 8
  %a.i30 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %34 = ptrtoint ptr %a.i30 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %a.i30, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %add.i)
  %cmp.i32 = icmp ult i64 %31, %add.i
  %.neg.i = sext i1 %cmp.i32 to i64
  %sub4.i = sub i64 %.neg.i, %add7.i
  %sub7.i = add i64 %sub4.i, %36
  %37 = call i64 @llvm.bswap.i64(i64 %sub7.i) #11
  %38 = ptrtoint ptr %a.i30 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %a.i30, align 8
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst, align 4
  call void @scatterwalk_map_and_copy(ptr noundef %__ctx.i, ptr noundef %40, i32 noundef %sub, i32 noundef 16, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %digest) #11
  ret i32 %call5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_emit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_decrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_adiantum__248_613_adiantum_module_init4, !1, !"__initcall__kmod_adiantum__248_613_adiantum_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/adiantum.c", i32 613, i32 1}
!2 = !{ptr @__exitcall_adiantum_module_exit, !3, !"__exitcall_adiantum_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/adiantum.c", i32 614, i32 1}
!4 = !{ptr @__UNIQUE_ID_description249, !5, !"__UNIQUE_ID_description249", i1 false, i1 false}
!5 = !{!"../crypto/adiantum.c", i32 616, i32 1}
!6 = !{ptr @__UNIQUE_ID_file250, !7, !"__UNIQUE_ID_file250", i1 false, i1 false}
!7 = !{!"../crypto/adiantum.c", i32 617, i32 1}
!8 = !{ptr @__UNIQUE_ID_license251, !7, !"__UNIQUE_ID_license251", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author252, !10, !"__UNIQUE_ID_author252", i1 false, i1 false}
!10 = !{!"../crypto/adiantum.c", i32 618, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace253, !12, !"__UNIQUE_ID_alias_userspace253", i1 false, i1 false}
!12 = !{!"../crypto/adiantum.c", i32 619, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto254, !12, !"__UNIQUE_ID_alias_crypto254", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_import_ns255, !15, !"__UNIQUE_ID_import_ns255", i1 false, i1 false}
!15 = !{!"../crypto/adiantum.c", i32 620, i32 1}
!16 = !{ptr @adiantum_tmpl, !17, !"adiantum_tmpl", i1 false, i1 false}
!17 = !{!"../crypto/adiantum.c", i32 597, i32 31}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/adiantum.c", i32 531, i32 21}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/adiantum.c", i32 542, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adiantum_create._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @adiantum_create._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/adiantum.c", i32 553, i32 8}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/adiantum.c", i32 557, i32 8}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/adiantum.c", i32 476, i32 46}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/adiantum.c", i32 477, i32 46}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i8 0, i8 2}
