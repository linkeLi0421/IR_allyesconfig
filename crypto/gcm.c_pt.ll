; ModuleID = '/llk/IR_all_yes/crypto/gcm.c_pt.bc'
source_filename = "../crypto/gcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { [16 x i8], %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.aead_instance = type { ptr, [124 x i8], %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.76, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { %struct.hlist_node }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.anon.78 = type { %struct.be128, [16 x i8], %struct.crypto_wait, [1 x %struct.scatterlist], [16 x i8], %struct.skcipher_request }
%struct.be128 = type { i64, i64 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_gcm_req_priv_ctx = type { [16 x i8], [16 x i8], [16 x i8], [3 x %struct.scatterlist], [3 x %struct.scatterlist], %struct.scatterlist, %struct.crypto_gcm_ghash_ctx, [56 x i8], %union.anon.79 }
%struct.crypto_gcm_ghash_ctx = type { i32, ptr, ptr }
%union.anon.79 = type { %struct.ahash_request }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@gcm_zeroes = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@crypto_gcm_tmpls = internal global { [4 x %struct.crypto_template], [144 x i8] } { [4 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_gcm_base_create, [128 x i8] c"gcm_base\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_gcm_create, [128 x i8] c"gcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_rfc4106_create, [128 x i8] c"rfc4106\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_rfc4543_create, [128 x i8] c"rfc4543\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [144 x i8] zeroinitializer }, align 32
@__initcall__kmod_gcm__241_1159_crypto_gcm_module_init4 = internal global ptr @crypto_gcm_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_gcm_module_exit = internal global ptr @crypto_gcm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [20 x i8] c"gcm.file=crypto/gcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [16 x i8] c"gcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [36 x i8] c"gcm.description=Galois/Counter Mode\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [39 x i8] c"gcm.author=Mikko Herranen <mh1@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace246 = internal constant [19 x i8] c"gcm.alias=gcm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto247 = internal constant [26 x i8] c"gcm.alias=crypto-gcm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [18 x i8] c"gcm.alias=rfc4106\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [25 x i8] c"gcm.alias=crypto-rfc4106\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace250 = internal constant [18 x i8] c"gcm.alias=rfc4543\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto251 = internal constant [25 x i8] c"gcm.alias=crypto-rfc4543\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace252 = internal constant [14 x i8] c"gcm.alias=gcm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto253 = internal constant [21 x i8] c"gcm.alias=crypto-gcm\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ghash\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctr(\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gcm(%s\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gcm_base(%s,%s)\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctr(%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rfc4106(%s)\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rfc4543(%s)\00", [20 x i8] zeroinitializer }, align 32
@switch.table.crypto_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"gcm_zeroes\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 80, i32 4 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"crypto_gcm_tmpls\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 1114, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 604, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 616, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 623, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 627, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 87, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 667, i32 46 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 864, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [16 x i8] c"../crypto/gcm.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 1079, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [36 x i8] c"switch.table.crypto_gcm_setauthsize\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias_crypto247, ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_crypto251, ptr @__UNIQUE_ID_alias_crypto253, ptr @__UNIQUE_ID_alias_userspace246, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_alias_userspace250, ptr @__UNIQUE_ID_alias_userspace252, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_crypto_gcm_module_exit, ptr @__initcall__kmod_gcm__241_1159_crypto_gcm_module_init4, ptr @crypto_gcm_module_exit, ptr @gcm_zeroes, ptr @crypto_gcm_tmpls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.crypto_gcm_setauthsize], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcm_zeroes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_gcm_tmpls to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crypto_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_gcm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @gcm_zeroes, align 4
  tail call void @kfree(ptr noundef %0) #10
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_gcm_tmpls, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #13
  store ptr %call7.i.i, ptr @gcm_zeroes, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sg = getelementptr inbounds %struct.anon, ptr %call7.i.i, i32 0, i32 1
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef nonnull %call7.i.i, i32 noundef 16) #10
  %call1 = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_gcm_tmpls, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @gcm_zeroes, align 4
  tail call void @kfree(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_base_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @crypto_attr_alg_name(ptr noundef %1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call ptr @crypto_attr_alg_name(ptr noundef %4) #10
  %cmp.i17 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @crypto_gcm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef %call, ptr noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %5, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %ctr_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ctr_name) #10
  %0 = call ptr @memset(ptr %ctr_name, i32 255, i32 128)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @crypto_attr_alg_name(ptr noundef %2) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ctr_name, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call3)
  %cmp = icmp sgt i32 %call3, 127
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call fastcc i32 @crypto_gcm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef nonnull %ctr_name, ptr noundef nonnull @.str)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call7, %if.end5 ], [ -36, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ctr_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !53
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 924) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #10
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_aead(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %ivsize.i = getelementptr i8, ptr %7, i32 -104
  %8 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.not = icmp eq i32 %9, 12
  br i1 %cmp.not, label %if.end15, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end15:                                         ; preds = %if.end11
  %cra_blocksize = getelementptr i8, ptr %7, i32 20
  %10 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp16.not = icmp eq i32 %11, 1
  br i1 %cmp16.not, label %if.end18, label %if.end15.err_free_inst_crit_edge

if.end15.err_free_inst_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end18:                                         ; preds = %if.end15
  %12 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name21 = getelementptr i8, ptr %7, i32 40
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %cra_name21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, 127
  br i1 %cmp24, label %if.end18.err_free_inst_crit_edge, label %lor.lhs.false

if.end18.err_free_inst_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

lor.lhs.false:                                    ; preds = %if.end18
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name28 = getelementptr i8, ptr %7, i32 168
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call30)
  %cmp31 = icmp sgt i32 %call30, 127
  br i1 %cmp31, label %lor.lhs.false.err_free_inst_crit_edge, label %if.end33

lor.lhs.false.err_free_inst_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end33:                                         ; preds = %lor.lhs.false
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %13 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_priority, align 32
  %cra_priority36 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cra_priority36, align 32
  %cra_blocksize38 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %cra_blocksize38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cra_blocksize38, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %17 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask41 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %cra_alignmask41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cra_alignmask41, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %cra_ctxsize, align 8
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %21 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %7, i32 -96
  %22 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %24 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %chunksize, align 32
  %maxauthsize.i = getelementptr i8, ptr %7, i32 -100
  %25 = ptrtoint ptr %maxauthsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxauthsize.i, align 4
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %27 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %28 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @crypto_rfc4106_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %29 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @crypto_rfc4106_exit_tfm, ptr %exit, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_rfc4106_setkey, ptr %12, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @crypto_rfc4106_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @crypto_rfc4106_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %33 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @crypto_rfc4106_decrypt, ptr %decrypt, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_rfc4106_free, ptr %call7.i.i, align 128
  %call45 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end33.cleanup_crit_edge, label %if.end33.err_free_inst_crit_edge

if.end33.err_free_inst_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end33.err_free_inst_crit_edge, %lor.lhs.false.err_free_inst_crit_edge, %if.end18.err_free_inst_crit_edge, %if.end15.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %if.end15.err_free_inst_crit_edge ], [ -36, %if.end18.err_free_inst_crit_edge ], [ -36, %lor.lhs.false.err_free_inst_crit_edge ], [ %call45, %if.end33.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !53
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 924) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #10
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_aead(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 0, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %ivsize.i = getelementptr i8, ptr %7, i32 -104
  %8 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.not = icmp eq i32 %9, 12
  br i1 %cmp.not, label %if.end16, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end16:                                         ; preds = %if.end11
  %cra_blocksize = getelementptr i8, ptr %7, i32 20
  %10 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp17.not = icmp eq i32 %11, 1
  br i1 %cmp17.not, label %if.end19, label %if.end16.err_free_inst_crit_edge

if.end16.err_free_inst_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end19:                                         ; preds = %if.end16
  %12 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %cra_name22 = getelementptr i8, ptr %7, i32 40
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %cra_name22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, 127
  br i1 %cmp25, label %if.end19.err_free_inst_crit_edge, label %lor.lhs.false

if.end19.err_free_inst_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

lor.lhs.false:                                    ; preds = %if.end19
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name29 = getelementptr i8, ptr %7, i32 168
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %cra_driver_name29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 127
  br i1 %cmp32, label %lor.lhs.false.err_free_inst_crit_edge, label %if.end34

lor.lhs.false.err_free_inst_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end34:                                         ; preds = %lor.lhs.false
  %cra_priority = getelementptr i8, ptr %7, i32 32
  %13 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_priority, align 32
  %cra_priority37 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %cra_priority37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cra_priority37, align 32
  %cra_blocksize39 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %cra_blocksize39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cra_blocksize39, align 4
  %cra_alignmask = getelementptr i8, ptr %7, i32 28
  %17 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask42 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %cra_alignmask42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cra_alignmask42, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %cra_ctxsize, align 8
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %21 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %7, i32 -96
  %22 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %24 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %chunksize, align 32
  %maxauthsize.i = getelementptr i8, ptr %7, i32 -100
  %25 = ptrtoint ptr %maxauthsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxauthsize.i, align 4
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %27 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %28 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @crypto_rfc4543_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %29 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @crypto_rfc4543_exit_tfm, ptr %exit, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_rfc4543_setkey, ptr %12, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @crypto_rfc4543_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %32 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @crypto_rfc4543_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %33 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @crypto_rfc4543_decrypt, ptr %decrypt, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_rfc4543_free, ptr %call7.i.i, align 128
  %call46 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end34.cleanup_crit_edge, label %if.end34.err_free_inst_crit_edge

if.end34.err_free_inst_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end34.err_free_inst_crit_edge, %lor.lhs.false.err_free_inst_crit_edge, %if.end19.err_free_inst_crit_edge, %if.end16.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %if.end16.err_free_inst_crit_edge ], [ -36, %if.end19.err_free_inst_crit_edge ], [ -36, %lor.lhs.false.err_free_inst_crit_edge ], [ %call46, %if.end34.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_gcm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef %ctr_name, ptr noundef %ghash_name) unnamed_addr #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !53
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 3, ptr noundef nonnull %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 952) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1
  %ghash6 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %call8 = call i32 @crypto_grab_ahash(ptr noundef %ghash6, ptr noundef %base.i, ptr noundef %ghash_name, i32 noundef 0, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 32
  %4 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alg.i, align 4
  %cra_name = getelementptr i8, ptr %5, i32 40
  %call14 = call i32 @strcmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(6) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

lor.lhs.false:                                    ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp15.not = icmp eq i32 %7, 16
  br i1 %cmp15.not, label %if.end17, label %lor.lhs.false.err_free_inst_crit_edge

lor.lhs.false.err_free_inst_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end17:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %call20 = call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %ctr_name, i32 noundef 0, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.err_free_inst_crit_edge

if.end17.err_free_inst_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end23:                                         ; preds = %if.end17
  %alg.i.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alg.i.i, align 8
  %cra_name27 = getelementptr i8, ptr %11, i32 40
  %call29 = call i32 @strncmp(ptr noundef %cra_name27, ptr noundef nonnull dereferenceable(5) @.str.1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %lor.lhs.false31, label %if.end23.err_free_inst_crit_edge

if.end23.err_free_inst_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

lor.lhs.false31:                                  ; preds = %if.end23
  %ivsize.i = getelementptr i8, ptr %11, i32 -100
  %12 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp33.not = icmp eq i32 %13, 16
  br i1 %cmp33.not, label %lor.lhs.false34, label %lor.lhs.false31.err_free_inst_crit_edge

lor.lhs.false31.err_free_inst_crit_edge:          ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %cra_blocksize = getelementptr i8, ptr %11, i32 20
  %14 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp36.not = icmp eq i32 %15, 1
  br i1 %cmp36.not, label %if.end38, label %lor.lhs.false34.err_free_inst_crit_edge

lor.lhs.false34.err_free_inst_crit_edge:          ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end38:                                         ; preds = %lor.lhs.false34
  %16 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name40 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %11, i32 44
  %call45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name40, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, 127
  br i1 %cmp46, label %if.end38.err_free_inst_crit_edge, label %if.end48

if.end38.err_free_inst_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end48:                                         ; preds = %if.end38
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name52 = getelementptr i8, ptr %11, i32 168
  %cra_driver_name55 = getelementptr i8, ptr %5, i32 168
  %call57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %cra_driver_name52, ptr noundef %cra_driver_name55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, 127
  br i1 %cmp58, label %if.end48.err_free_inst_crit_edge, label %if.end60

if.end48.err_free_inst_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end60:                                         ; preds = %if.end48
  %cra_priority = getelementptr i8, ptr %5, i32 32
  %17 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_priority, align 32
  %cra_priority63 = getelementptr i8, ptr %11, i32 32
  %19 = ptrtoint ptr %cra_priority63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_priority63, align 32
  %add = add i32 %20, %18
  %div = sdiv i32 %add, 2
  %cra_priority65 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %21 = ptrtoint ptr %cra_priority65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %cra_priority65, align 32
  %cra_blocksize67 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %cra_blocksize67 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %cra_blocksize67, align 4
  %cra_alignmask = getelementptr i8, ptr %5, i32 28
  %23 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask70 = getelementptr i8, ptr %11, i32 28
  %25 = ptrtoint ptr %cra_alignmask70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask70, align 4
  %or = or i32 %26, %24
  %cra_alignmask72 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %cra_alignmask72, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %cra_ctxsize, align 8
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %29 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %11, i32 -96
  %30 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %32 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %chunksize, align 32
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %33 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %maxauthsize, align 4
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_gcm_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @crypto_gcm_exit_tfm, ptr %exit, align 4
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @crypto_gcm_setkey, ptr %16, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @crypto_gcm_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %38 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @crypto_gcm_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %39 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @crypto_gcm_decrypt, ptr %decrypt, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @crypto_gcm_free, ptr %call7.i.i, align 128
  %call75 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end60.cleanup_crit_edge, label %if.end60.err_free_inst_crit_edge

if.end60.err_free_inst_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end60.err_free_inst_crit_edge, %if.end48.err_free_inst_crit_edge, %if.end38.err_free_inst_crit_edge, %lor.lhs.false34.err_free_inst_crit_edge, %lor.lhs.false31.err_free_inst_crit_edge, %if.end23.err_free_inst_crit_edge, %if.end17.err_free_inst_crit_edge, %lor.lhs.false.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %lor.lhs.false.err_free_inst_crit_edge ], [ %call20, %if.end17.err_free_inst_crit_edge ], [ -22, %if.end23.err_free_inst_crit_edge ], [ -22, %lor.lhs.false31.err_free_inst_crit_edge ], [ -22, %lor.lhs.false34.err_free_inst_crit_edge ], [ -36, %if.end38.err_free_inst_crit_edge ], [ -36, %if.end48.err_free_inst_crit_edge ], [ %call75, %if.end60.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  call void @crypto_drop_spawn(ptr noundef %ghash6) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end60.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %ghash3 = getelementptr i8, ptr %1, i32 668
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %ghash3) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i43 = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #10
  %cmp.i44 = icmp ugt ptr %call.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %err_free_hash, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i43, ptr %__crt_ctx.i.i, align 4
  %ghash14 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %ghash14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ghash14, align 4
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_alignmask.i.i, align 4
  %9 = add i32 %8, 256
  %add = and i32 %9, -128
  %10 = ptrtoint ptr %call.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i43, align 128
  %add18 = add i32 %11, 128
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reqsize.i, align 32
  %add20 = add i32 %13, 128
  %14 = tail call i32 @llvm.umax.i32(i32 %add18, i32 %add20)
  %add21 = add i32 %14, %add
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add21, ptr %reqsize1.i, align 4
  br label %cleanup

err_free_hash:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i43 to i32
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_hash, %if.end12, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %16, %err_free_hash ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_gcm_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %ghash = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %ghash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ghash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #10
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i2 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_setkey(ptr nocapture noundef readonly %aead, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %ghash1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 1
  %0 = ptrtoint ptr %ghash1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ghash1, align 4
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i59 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i59, align 128
  %and = and i32 %7, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %3, ptr noundef %key, i32 noundef %keylen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 128
  %add = add i32 %9, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end9

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i.i
  %wait = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 32
  %wait.i.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #10
  %sg = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 3
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef nonnull %call9.i.i, i32 noundef 16) #10
  %req = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5
  %tfm1.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 3
  %11 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i, ptr %tfm1.i, align 32
  %complete.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 1
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 2
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 4, i32 4
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1536, ptr %flags4.i, align 4
  %iv = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 1
  %src1.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sg, ptr %dst2.i, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %req, align 128
  %iv4.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %iv, ptr %iv4.i, align 4
  %call19 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %req) #10
  %19 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19, label %if.end9.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end9.sw.bb.i_crit_edge
    i32 -16, label %if.end9.sw.bb.i_crit_edge71
  ]

if.end9.sw.bb.i_crit_edge71:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end9.sw.bb.i_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end9.crypto_wait_req.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end9.sw.bb.i_crit_edge, %if.end9.sw.bb.i_crit_edge71
  tail call void @wait_for_completion(ptr noundef %wait) #10
  %20 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wait, align 32
  %err2.i = getelementptr inbounds %struct.anon.78, ptr %call9.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err2.i, align 8
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end9.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call19, %if.end9.crypto_wait_req.exit_crit_edge ], [ %22, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool22.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool22.not, label %if.end24, label %crypto_wait_req.exit.out_crit_edge

crypto_wait_req.exit.out_crit_edge:               ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i62 = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %base.i.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i.i62, align 128
  %and.i.i63 = and i32 %24, -1048321
  store i32 %and.i.i63, ptr %base.i.i62, align 128
  %25 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base.i.i59, align 128
  %and26 = and i32 %26, 1048320
  %or.i.i66 = or i32 %and26, %and.i.i63
  store i32 %or.i.i66, ptr %base.i.i62, align 128
  %call28 = tail call i32 @crypto_ahash_setkey(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef 16) #10
  br label %out

out:                                              ; preds = %if.end24, %crypto_wait_req.exit.out_crit_edge
  %err.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.out_crit_edge ], [ %call28, %if.end24 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call4, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.crypto_gcm_check_authsize.exit_crit_edge

entry.crypto_gcm_check_authsize.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_gcm_check_authsize.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.crypto_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %crypto_gcm_check_authsize.exit

crypto_gcm_check_authsize.exit:                   ; preds = %switch.lookup, %entry.crypto_gcm_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.crypto_gcm_check_authsize.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %u = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  tail call fastcc void @crypto_gcm_init_common(ptr noundef %req)
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen, align 4
  %12 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %13, i32 128
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %add3.i.i = add i32 %17, %6
  %neg.i.i = xor i32 %17, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %18 = inttoptr i32 %and.i.i to ptr
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src.i, align 4
  %dst3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %21 = ptrtoint ptr %dst3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst3.i, align 8
  %cmp.i = icmp eq ptr %20, %22
  %src4.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 3
  %dst5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %src4.i, ptr %dst5.i
  %u.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8
  %23 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %24, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 3
  %25 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.i = add i32 %11, 16
  %src1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %src4.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond.i, ptr %dst2.i.i, align 4
  %28 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %u.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %18, ptr %iv4.i.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gcm_encrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %31 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 4
  %32 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %9, ptr %flags4.i, align 4
  %call2 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %u) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %33 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i13 = getelementptr i8, ptr %34, i32 12
  %35 = ptrtoint ptr %__crt_alg.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i.i.i.i13, align 4
  %cra_alignmask.i.i.i.i14 = getelementptr inbounds %struct.crypto_alg, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %cra_alignmask.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cra_alignmask.i.i.i.i14, align 4
  %add3.i.i16 = add i32 %38, %6
  %neg.i.i17 = xor i32 %38, -1
  %and.i.i18 = and i32 %add3.i.i16, %neg.i.i17
  %39 = inttoptr i32 %and.i.i18 to ptr
  %40 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src.i, align 4
  %42 = ptrtoint ptr %dst3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst3.i, align 8
  %cmp.i20 = icmp eq ptr %41, %43
  %src1.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %39, i32 0, i32 3
  %dst2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %39, i32 0, i32 4
  %cond.i21 = select i1 %cmp.i20, ptr %src1.i, ptr %dst2.i
  %ghash_ctx.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %39, i32 0, i32 6
  %call4.i = tail call ptr @sg_next(ptr noundef %cond.i21) #10
  %src5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %39, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %src5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call4.i, ptr %src5.i, align 4
  %45 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cryptlen, align 4
  %47 = ptrtoint ptr %ghash_ctx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ghash_ctx.i, align 4
  %complete.i22 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %39, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %complete.i22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @gcm_enc_copy_hash, ptr %complete.i22, align 4
  %49 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i.i = getelementptr i8, ptr %50, i32 12
  %51 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %cra_alignmask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cra_alignmask.i.i.i.i.i, align 4
  %add3.i.i.i = add i32 %54, %6
  %neg.i.i.i = xor i32 %54, -1
  %and.i.i.i = and i32 %add3.i.i.i, %neg.i.i.i
  %55 = inttoptr i32 %and.i.i.i to ptr
  %ghash.i.i = getelementptr i8, ptr %50, i32 132
  %56 = ptrtoint ptr %ghash.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ghash.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %57, i32 0, i32 10
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %55, i32 0, i32 8, i32 0, i32 0, i32 3
  %58 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %complete.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %55, i32 0, i32 8, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @gcm_hash_init_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %55, i32 0, i32 8, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %req, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %55, i32 0, i32 8, i32 0, i32 0, i32 4
  %61 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %9, ptr %flags4.i.i.i, align 4
  %62 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base.i.i.i.i, align 128
  %and.i12.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i12.i.i, 0
  br i1 %tobool.not.i.i.i, label %crypto_ahash_init.exit.i.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

crypto_ahash_init.exit.i.i:                       ; preds = %cond.false
  %u.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %55, i32 0, i32 8
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %57, align 128
  %call2.i.i.i = tail call i32 %65(ptr noundef %u.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %crypto_ahash_init.exit.i.i.cond.end_crit_edge

crypto_ahash_init.exit.i.i.cond.end_crit_edge:    ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false.i.i:                                   ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %req, i32 noundef %9) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.i.i, %crypto_ahash_init.exit.i.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %entry.cond.end_crit_edge ], [ %call4.i.i, %cond.false.i.i ], [ %call2.i.i.i, %crypto_ahash_init.exit.i.i.cond.end_crit_edge ], [ -126, %cond.false.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_gcm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %ghash_ctx = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen3, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %sub = sub i32 %11, %9
  tail call fastcc void @crypto_gcm_init_common(ptr noundef %req)
  %src = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3
  %call5 = tail call ptr @sg_next(ptr noundef %src) #10
  %src6 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %src6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %src6, align 4
  %15 = ptrtoint ptr %ghash_ctx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %ghash_ctx, align 4
  %complete = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gcm_dec_hash_continue, ptr %complete, align 4
  %17 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %add3.i.i = add i32 %22, %6
  %neg.i.i = xor i32 %22, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %23 = inttoptr i32 %and.i.i to ptr
  %ghash.i = getelementptr i8, ptr %18, i32 132
  %24 = ptrtoint ptr %ghash.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ghash.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %25, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %23, i32 0, i32 8, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %23, i32 0, i32 8, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gcm_hash_init_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %23, i32 0, i32 8, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %23, i32 0, i32 8, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %flags4.i.i, align 4
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base.i.i.i, align 128
  %and.i12.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %entry.gcm_hash.exit_crit_edge

entry.gcm_hash.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcm_hash.exit

crypto_ahash_init.exit.i:                         ; preds = %entry
  %u.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %23, i32 0, i32 8
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 128
  %call2.i.i = tail call i32 %33(ptr noundef %u.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %crypto_ahash_init.exit.i.gcm_hash.exit_crit_edge

crypto_ahash_init.exit.i.gcm_hash.exit_crit_edge: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcm_hash.exit

cond.false.i:                                     ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %req, i32 noundef %13) #10
  br label %gcm_hash.exit

gcm_hash.exit:                                    ; preds = %cond.false.i, %crypto_ahash_init.exit.i.gcm_hash.exit_crit_edge, %entry.gcm_hash.exit_crit_edge
  %cond.i = phi i32 [ %call4.i, %cond.false.i ], [ %call2.i.i, %crypto_ahash_init.exit.i.gcm_hash.exit_crit_edge ], [ -126, %entry.gcm_hash.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_gcm_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  %ghash = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %ghash) #10
  tail call void @kfree(ptr noundef %inst) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_gcm_init_common(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %auth_tag = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 1
  %8 = call ptr @memset(ptr %auth_tag, i32 0, i32 16)
  %iv2 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %iv2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iv2, align 32
  %11 = call ptr @memcpy(ptr %7, ptr %10, i32 12)
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %add.ptr, align 1
  %src = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3
  tail call void @sg_init_table(ptr noundef %src, i32 noundef 3) #10
  %13 = ptrtoint ptr %auth_tag to i32
  %cmp.i = icmp ugt ptr %auth_tag, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !54

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %14 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %14, %auth_tag
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !54

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %15, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !55

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !54

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !54

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i68 = and i32 %13, 4095
  %and.i.i.i = and i32 %18, 3
  %or.i.i.i = or i32 %and.i.i.i, %19
  %20 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i, ptr %src, align 4
  %offset1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i68, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %length.i.i, align 4
  %add.ptr12 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3, i32 1
  %src13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %23 = ptrtoint ptr %src13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src13, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %assoclen, align 8
  %call14 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr12, ptr noundef %24, i32 noundef %26) #10
  %cmp.not = icmp eq ptr %call14, %add.ptr12
  br i1 %cmp.not, label %sg_set_buf.exit.if.end_crit_edge, label %if.then

sg_set_buf.exit.if.end_crit_edge:                 ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3, i32 1, i32 1
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i69 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3, i32 1, i32 2
  %28 = ptrtoint ptr %length.i.i69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %length.i.i69, align 4
  %29 = ptrtoint ptr %call14 to i32
  %or.i.i = and i32 %29, -4
  %and.i.i = or i32 %or.i.i, 1
  %30 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i.i, ptr %add.ptr12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sg_set_buf.exit.if.end_crit_edge
  %31 = ptrtoint ptr %src13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src13, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst, align 8
  %cmp21.not = icmp eq ptr %32, %34
  br i1 %cmp21.not, label %if.end.if.end43_crit_edge, label %land.lhs.true.i72

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true.i72:                                ; preds = %if.end
  %dst23 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4
  tail call void @sg_init_table(ptr noundef %dst23, i32 noundef 3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %35 = load ptr, ptr @high_memory, align 4
  %cmp1.i71 = icmp ugt ptr %35, %auth_tag
  br i1 %cmp1.i71, label %land.rhs.i78, label %land.lhs.true.i72.do.body5.i79_crit_edge, !prof !54

land.lhs.true.i72.do.body5.i79_crit_edge:         ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i79

land.rhs.i78:                                     ; preds = %land.lhs.true.i72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %36 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i75 = add i32 %36, %shr.i
  %call.i76 = tail call i32 @pfn_valid(i32 noundef %add.i75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.i77, label %land.rhs.i78.do.body5.i79_crit_edge, label %do.end8.i83, !prof !55

land.rhs.i78.do.body5.i79_crit_edge:              ; preds = %land.rhs.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i79

do.body5.i79:                                     ; preds = %land.rhs.i78.do.body5.i79_crit_edge, %land.lhs.true.i72.do.body5.i79_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end8.i83:                                      ; preds = %land.rhs.i78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %add.ptr.i80 = getelementptr %struct.page, ptr %37, i32 %shr.i
  %38 = ptrtoint ptr %dst23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst23, align 4
  %40 = ptrtoint ptr %add.ptr.i80 to i32
  %and2.i.i.i81 = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i81)
  %tobool.not.i.i.i82 = icmp eq i32 %and2.i.i.i81, 0
  br i1 %tobool.not.i.i.i82, label %do.body11.i.i.i87, label %do.body5.i.i.i84, !prof !54

do.body5.i.i.i84:                                 ; preds = %do.end8.i83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.body11.i.i.i87:                                ; preds = %do.end8.i83
  %and.i.i.i.i85 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i85)
  %tobool.i.not.i.i.i86 = icmp eq i32 %and.i.i.i.i85, 0
  br i1 %tobool.i.not.i.i.i86, label %sg_set_buf.exit94, label %do.body19.i.i.i88, !prof !54

do.body19.i.i.i88:                                ; preds = %do.body11.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

sg_set_buf.exit94:                                ; preds = %do.body11.i.i.i87
  %and.i.i.i90 = and i32 %39, 3
  %or.i.i.i91 = or i32 %and.i.i.i90, %40
  %41 = ptrtoint ptr %dst23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i.i91, ptr %dst23, align 4
  %offset1.i.i92 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %offset1.i.i92 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i68, ptr %offset1.i.i92, align 4
  %length.i.i93 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 0, i32 2
  %43 = ptrtoint ptr %length.i.i93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %length.i.i93, align 4
  %add.ptr31 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 8
  %46 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen, align 8
  %call34 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr31, ptr noundef %45, i32 noundef %47) #10
  %cmp38.not = icmp eq ptr %call34, %add.ptr31
  br i1 %cmp38.not, label %sg_set_buf.exit94.if.end43_crit_edge, label %if.then39

sg_set_buf.exit94.if.end43_crit_edge:             ; preds = %sg_set_buf.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then39:                                        ; preds = %sg_set_buf.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i96 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1, i32 1
  %48 = ptrtoint ptr %offset.i.i96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %offset.i.i96, align 4
  %length.i.i97 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1, i32 2
  %49 = ptrtoint ptr %length.i.i97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %length.i.i97, align 4
  %50 = ptrtoint ptr %call34 to i32
  %or.i.i98 = and i32 %50, -4
  %and.i.i99 = or i32 %or.i.i98, 1
  %51 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.i.i99, ptr %add.ptr31, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %sg_set_buf.exit94.if.end43_crit_edge, %if.end.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_encrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %__ctx.i.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i.i to i32
  %add3.i.i = add i32 %7, %8
  %neg.i.i = xor i32 %7, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %9 = inttoptr i32 %and.i.i to ptr
  %src.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst.i, align 8
  %cmp.i = icmp eq ptr %11, %13
  %src1.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 3
  %dst2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %src1.i, ptr %dst2.i
  %ghash_ctx.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 6
  %call4.i = tail call ptr @sg_next(ptr noundef %cond.i) #10
  %src5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %src5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %src5.i, align 4
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cryptlen.i, align 4
  %17 = ptrtoint ptr %ghash_ctx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ghash_ctx.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gcm_enc_copy_hash, ptr %complete.i, align 4
  %19 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i.i = getelementptr i8, ptr %20, i32 12
  %21 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %cra_alignmask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask.i.i.i.i.i, align 4
  %add3.i.i.i = add i32 %24, %8
  %neg.i.i.i = xor i32 %24, -1
  %and.i.i.i = and i32 %add3.i.i.i, %neg.i.i.i
  %25 = inttoptr i32 %and.i.i.i to ptr
  %ghash.i.i = getelementptr i8, ptr %20, i32 132
  %26 = ptrtoint ptr %ghash.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ghash.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %27, i32 0, i32 10
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %25, i32 0, i32 8, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %complete.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %25, i32 0, i32 8, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gcm_hash_init_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %25, i32 0, i32 8, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %25, i32 0, i32 8, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags4.i.i.i, align 4
  %32 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base.i.i.i.i, align 128
  %and.i12.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i12.i.i, 0
  br i1 %tobool.not.i.i.i, label %crypto_ahash_init.exit.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

crypto_ahash_init.exit.i.i:                       ; preds = %if.end
  %u.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %25, i32 0, i32 8
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %27, align 128
  %call2.i.i.i = tail call i32 %35(ptr noundef %u.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %crypto_ahash_init.exit.i.i.gcm_encrypt_continue.exit_crit_edge

crypto_ahash_init.exit.i.i.gcm_encrypt_continue.exit_crit_edge: ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcm_encrypt_continue.exit

cond.false.i.i:                                   ; preds = %crypto_ahash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %1, i32 noundef 0) #10
  br label %gcm_encrypt_continue.exit

gcm_encrypt_continue.exit:                        ; preds = %cond.false.i.i, %crypto_ahash_init.exit.i.i.gcm_encrypt_continue.exit_crit_edge
  %cond.i.i = phi i32 [ %call4.i.i, %cond.false.i.i ], [ %call2.i.i.i, %crypto_ahash_init.exit.i.i.gcm_encrypt_continue.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond.i.i)
  %cmp = icmp eq i32 %cond.i.i, -115
  br i1 %cmp, label %gcm_encrypt_continue.exit.cleanup_crit_edge, label %gcm_encrypt_continue.exit.out_crit_edge

gcm_encrypt_continue.exit.out_crit_edge:          ; preds = %gcm_encrypt_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

gcm_encrypt_continue.exit.cleanup_crit_edge:      ; preds = %gcm_encrypt_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %gcm_encrypt_continue.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %cond.i.i, %gcm_encrypt_continue.exit.out_crit_edge ], [ -126, %if.end.out_crit_edge ]
  %complete.i6 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %complete.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %complete.i6, align 8
  tail call void %37(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %gcm_encrypt_continue.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_enc_copy_hash(ptr noundef %req, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %auth_tag2 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 1
  %iauth_tag = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2
  %incdec.ptr.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %iauth_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iauth_tag, align 4
  %incdec.ptr2.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %auth_tag2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %auth_tag2, align 4
  %xor.i = xor i32 %11, %9
  store i32 %xor.i, ptr %auth_tag2, align 4
  %incdec.ptr.1.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr2.1.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.1.i = xor i32 %15, %13
  store i32 %xor.1.i, ptr %incdec.ptr2.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr2.2.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 1, i32 12
  %18 = ptrtoint ptr %incdec.ptr2.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr2.1.i, align 4
  %xor.2.i = xor i32 %19, %17
  store i32 %xor.2.i, ptr %incdec.ptr2.1.i, align 4
  %20 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr.2.i, align 4
  %22 = ptrtoint ptr %incdec.ptr2.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr2.2.i, align 4
  %xor.3.i = xor i32 %23, %21
  store i32 %xor.3.i, ptr %incdec.ptr2.2.i, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst, align 8
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %28 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cryptlen, align 4
  %add = add i32 %29, %27
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 128
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag2, ptr noundef %25, i32 noundef %add, i32 noundef %31, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_init_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call)
  %cmp = icmp eq i32 %call, -115
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_init_continue(ptr noundef %req, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %__ctx.i.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %__ctx.i.i.i to i32
  %add3.i.i = add i32 %9, %10
  %neg.i.i = xor i32 %9, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %11 = inttoptr i32 %and.i.i to ptr
  %u.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8
  %complete.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gcm_hash_assoc_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 3
  %17 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %result3.i.i, align 32
  %tfm.i.i5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %11, i32 0, i32 8, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i.i5.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %21) #10
  %22 = ptrtoint ptr %tfm.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm.i.i5.i, align 16
  %update.i.i = getelementptr i8, ptr %23, i32 -124
  %24 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = tail call i32 %25(ptr noundef %u.i) #10
  tail call void @crypto_stats_ahash_update(i32 noundef %1, i32 noundef %call3.i.i, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool2.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool2.not, label %cond.false, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

cond.false:                                       ; preds = %if.then
  %26 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen, align 8
  %and.i.i12 = and i32 %27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.not.i.i = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.not.i.i, label %cond.false.cleanup.sink.split.i_crit_edge, label %if.then.i

cond.false.cleanup.sink.split.i_crit_edge:        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then.i:                                        ; preds = %cond.false
  %sub.i.i = sub nuw nsw i32 16, %and.i.i12
  %28 = load ptr, ptr @gcm_zeroes, align 4
  %sg.i.i = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i.i.i = getelementptr i8, ptr %30, i32 12
  %31 = ptrtoint ptr %__crt_alg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %cra_alignmask.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cra_alignmask.i.i.i.i.i.i, align 4
  %add3.i.i.i.i = add i32 %34, %10
  %neg.i.i.i.i = xor i32 %34, -1
  %and.i.i.i.i = and i32 %add3.i.i.i.i, %neg.i.i.i.i
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %u.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8
  %complete.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %complete.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @gcm_hash_assoc_remain_done, ptr %complete.i.i.i.i, align 8
  %data2.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %data2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %req, ptr %data2.i.i.i.i, align 4
  %flags4.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 0, i32 4
  %38 = ptrtoint ptr %flags4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %flags, ptr %flags4.i.i.i.i, align 4
  %src1.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 2
  %39 = ptrtoint ptr %src1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sg.i.i, ptr %src1.i.i.i.i, align 4
  %nbytes2.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 1
  %40 = ptrtoint ptr %nbytes2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i.i, ptr %nbytes2.i.i.i.i, align 8
  %result3.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 3
  %41 = ptrtoint ptr %result3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %result3.i.i.i.i, align 32
  %tfm.i.i5.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %35, i32 0, i32 8, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %tfm.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm.i.i5.i.i.i, align 16
  %__crt_alg.i.i.i.i13 = getelementptr i8, ptr %43, i32 12
  %44 = ptrtoint ptr %__crt_alg.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_alg.i.i.i.i13, align 4
  tail call void @crypto_stats_get(ptr noundef %45) #10
  %46 = ptrtoint ptr %tfm.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tfm.i.i5.i.i.i, align 16
  %update.i.i.i.i = getelementptr i8, ptr %47, i32 -124
  %48 = ptrtoint ptr %update.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update.i.i.i.i, align 4
  %call3.i.i.i.i = tail call i32 %49(ptr noundef %u.i.i.i) #10
  tail call void @crypto_stats_ahash_update(i32 noundef %sub.i.i, i32 noundef %call3.i.i.i.i, ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.cleanup.sink.split.i_crit_edge, %cond.false.cleanup.sink.split.i_crit_edge
  %call3.i = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %req, i32 noundef %flags) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %req, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %cleanup.sink.split.i, %if.then.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3.i.i, %if.then.return_crit_edge ], [ %call3.i.i.i.i, %if.then.i.return_crit_edge ], [ %call3.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_assoc_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen.i, align 8
  %and.i.i = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.then.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then.i:                                        ; preds = %if.end
  %sub.i.i = sub nuw nsw i32 16, %and.i.i
  %4 = load ptr, ptr @gcm_zeroes, align 4
  %sg.i.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %tfm.i.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %tfm.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm.i.i.i.i.i, align 16
  %__crt_alg.i.i.i.i.i.i = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %__crt_alg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %cra_alignmask.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_alignmask.i.i.i.i.i.i, align 4
  %__ctx.i.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %__ctx.i.i.i.i.i to i32
  %add3.i.i.i.i = add i32 %10, %11
  %neg.i.i.i.i = xor i32 %10, -1
  %and.i.i.i.i = and i32 %add3.i.i.i.i, %neg.i.i.i.i
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %u.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8
  %complete.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %complete.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gcm_hash_assoc_remain_done, ptr %complete.i.i.i.i, align 8
  %data2.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %data2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %data2.i.i.i.i, align 4
  %flags4.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 4
  %15 = ptrtoint ptr %flags4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags4.i.i.i.i, align 4
  %src1.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 2
  %16 = ptrtoint ptr %src1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sg.i.i, ptr %src1.i.i.i.i, align 4
  %nbytes2.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 1
  %17 = ptrtoint ptr %nbytes2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %nbytes2.i.i.i.i, align 8
  %result3.i.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 3
  %18 = ptrtoint ptr %result3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %result3.i.i.i.i, align 32
  %tfm.i.i5.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %12, i32 0, i32 8, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %tfm.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm.i.i5.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %20, i32 12
  %21 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %22) #10
  %23 = ptrtoint ptr %tfm.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i5.i.i.i, align 16
  %update.i.i.i.i = getelementptr i8, ptr %24, i32 -124
  %25 = ptrtoint ptr %update.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %update.i.i.i.i, align 4
  %call3.i.i.i.i = tail call i32 %26(ptr noundef %u.i.i.i) #10
  tail call void @crypto_stats_ahash_update(i32 noundef %sub.i.i, i32 noundef %call3.i.i.i.i, ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.then.i.gcm_hash_assoc_continue.exit_crit_edge

if.then.i.gcm_hash_assoc_continue.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcm_hash_assoc_continue.exit

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %call3.i = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %1, i32 noundef 0) #10
  br label %gcm_hash_assoc_continue.exit

gcm_hash_assoc_continue.exit:                     ; preds = %cleanup.sink.split.i, %if.then.i.gcm_hash_assoc_continue.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i.i.i.i, %if.then.i.gcm_hash_assoc_continue.exit_crit_edge ], [ %call3.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -115
  br i1 %cmp, label %gcm_hash_assoc_continue.exit.cleanup_crit_edge, label %gcm_hash_assoc_continue.exit.out_crit_edge

gcm_hash_assoc_continue.exit.out_crit_edge:       ; preds = %gcm_hash_assoc_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

gcm_hash_assoc_continue.exit.cleanup_crit_edge:   ; preds = %gcm_hash_assoc_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %gcm_hash_assoc_continue.exit.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %retval.0.i, %gcm_hash_assoc_continue.exit.out_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %complete.i, align 8
  tail call void %28(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %gcm_hash_assoc_continue.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %req, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %ghash_ctx = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ghash_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ghash_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %src = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %u.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %complete.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gcm_hash_crypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 3
  %17 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %result3.i.i, align 32
  %tfm.i.i5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i.i5.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %21) #10
  %22 = ptrtoint ptr %tfm.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm.i.i5.i, align 16
  %update.i.i = getelementptr i8, ptr %23, i32 -124
  %24 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = tail call i32 %25(ptr noundef %u.i) #10
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i.i, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool3.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool3.not, label %cond.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @gcm_hash_crypt_continue(ptr noundef %req, i32 noundef %flags)
  br label %cleanup

if.end:                                           ; preds = %entry
  %u.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen.i.i, align 8
  %mul.i.i = shl i32 %27, 3
  %conv.i.i = zext i32 %mul.i.i to i64
  %iauth_tag.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %iauth_tag.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.i.i, ptr %iauth_tag.i.i, align 32
  %lengths.sroa.5.0.arraydecay.sroa_idx.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i, align 8
  %sg.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %sg.i.i, ptr noundef %iauth_tag.i.i, i32 noundef 16) #10
  %complete.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gcm_hash_len_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %flags, ptr %flags4.i.i.i, align 4
  %src1.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %33 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %34 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 3
  %35 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %iauth_tag.i.i, ptr %result3.i.i.i, align 32
  %call8.i.i = tail call i32 @crypto_ahash_finup(ptr noundef %u.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i5.i = getelementptr i8, ptr %37, i32 12
  %38 = ptrtoint ptr %__crt_alg.i.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i.i.i5.i, align 4
  %cra_alignmask.i.i.i.i6.i = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %cra_alignmask.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cra_alignmask.i.i.i.i6.i, align 4
  %add3.i.i8.i = add i32 %41, %6
  %neg.i.i9.i = xor i32 %41, -1
  %and.i.i10.i = and i32 %add3.i.i8.i, %neg.i.i9.i
  %42 = inttoptr i32 %and.i.i10.i to ptr
  %complete.i.i14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %42, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %complete.i.i14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %complete.i.i14, align 4
  %call1.i.i = tail call i32 %44(ptr noundef %req, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %if.end.cleanup_crit_edge, %cond.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.false ], [ %call3.i.i, %if.then.cleanup_crit_edge ], [ %call1.i.i, %cond.false.i ], [ %call8.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_assoc_remain_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call)
  %cmp = icmp eq i32 %call, -115
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_crypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @gcm_hash_crypt_continue(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call)
  %cmp = icmp eq i32 %call, -115
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_crypt_continue(ptr noundef %req, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %ghash_ctx = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ghash_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ghash_ctx, align 4
  %and.i14 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub.i = sub nuw nsw i32 16, %and.i14
  %10 = load ptr, ptr @gcm_zeroes, align 4
  %sg.i = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %u.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %complete.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gcm_hash_crypt_remain_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags4.i.i.i, align 4
  %src1.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sg.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %15 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 3
  %16 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %result3.i.i.i, align 32
  %tfm.i.i5.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %tfm.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfm.i.i5.i.i, align 16
  %__crt_alg.i.i.i15 = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %__crt_alg.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i.i15, align 4
  tail call void @crypto_stats_get(ptr noundef %20) #10
  %21 = ptrtoint ptr %tfm.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm.i.i5.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %22, i32 -124
  %23 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update.i.i.i, align 4
  %call3.i.i.i = tail call i32 %24(ptr noundef %u.i.i) #10
  tail call void @crypto_stats_ahash_update(i32 noundef %sub.i, i32 noundef %call3.i.i.i, ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool3.not = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool3.not, label %cond.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.then
  %25 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i.i17 = getelementptr i8, ptr %26, i32 12
  %27 = ptrtoint ptr %__crt_alg.i.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i.i.i.i17, align 4
  %cra_alignmask.i.i.i.i.i18 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %cra_alignmask.i.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cra_alignmask.i.i.i.i.i18, align 4
  %add3.i.i.i20 = add i32 %30, %6
  %neg.i.i.i21 = xor i32 %30, -1
  %and.i.i.i22 = and i32 %add3.i.i.i20, %neg.i.i.i21
  %31 = inttoptr i32 %and.i.i.i22 to ptr
  %u.i.i23 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8
  %ghash_ctx.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 6
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %32 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoclen.i.i, align 8
  %mul.i.i = shl i32 %33, 3
  %conv.i.i = zext i32 %mul.i.i to i64
  %34 = ptrtoint ptr %ghash_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ghash_ctx.i.i, align 4
  %mul1.i.i = shl i32 %35, 3
  %conv2.i.i = zext i32 %mul1.i.i to i64
  %iauth_tag.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %iauth_tag.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv.i.i, ptr %iauth_tag.i.i, align 32
  %lengths.sroa.5.0.arraydecay.sroa_idx.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 2, i32 8
  %37 = ptrtoint ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv2.i.i, ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i, align 8
  %sg.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %sg.i.i, ptr noundef %iauth_tag.i.i, i32 noundef 16) #10
  %complete.i.i.i24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %complete.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gcm_hash_len_done, ptr %complete.i.i.i24, align 8
  %data2.i.i.i25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %data2.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req, ptr %data2.i.i.i25, align 4
  %flags4.i.i.i26 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 0, i32 4
  %40 = ptrtoint ptr %flags4.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %flags, ptr %flags4.i.i.i26, align 4
  %src1.i.i.i27 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 2
  %41 = ptrtoint ptr %src1.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sg.i.i, ptr %src1.i.i.i27, align 4
  %nbytes2.i.i.i28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 1
  %42 = ptrtoint ptr %nbytes2.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %nbytes2.i.i.i28, align 8
  %result3.i.i.i29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %31, i32 0, i32 8, i32 0, i32 3
  %43 = ptrtoint ptr %result3.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %iauth_tag.i.i, ptr %result3.i.i.i29, align 32
  %call8.i.i = tail call i32 @crypto_ahash_finup(ptr noundef %u.i.i23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i30 = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i30, label %cond.false.cleanup.sink.split_crit_edge, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false.cleanup.sink.split_crit_edge:          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %u.i.i38 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %assoclen.i.i40 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %44 = ptrtoint ptr %assoclen.i.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoclen.i.i40, align 8
  %mul.i.i41 = shl i32 %45, 3
  %conv.i.i42 = zext i32 %mul.i.i41 to i64
  %mul1.i.i43 = shl i32 %9, 3
  %conv2.i.i44 = zext i32 %mul1.i.i43 to i64
  %iauth_tag.i.i45 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2
  %46 = ptrtoint ptr %iauth_tag.i.i45 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv.i.i42, ptr %iauth_tag.i.i45, align 32
  %lengths.sroa.5.0.arraydecay.sroa_idx.i.i46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 2, i32 8
  %47 = ptrtoint ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv2.i.i44, ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i46, align 8
  %sg.i.i47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %sg.i.i47, ptr noundef %iauth_tag.i.i45, i32 noundef 16) #10
  %complete.i.i.i48 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %complete.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @gcm_hash_len_done, ptr %complete.i.i.i48, align 8
  %data2.i.i.i49 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 2
  %49 = ptrtoint ptr %data2.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %req, ptr %data2.i.i.i49, align 4
  %flags4.i.i.i50 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 4
  %50 = ptrtoint ptr %flags4.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %flags, ptr %flags4.i.i.i50, align 4
  %src1.i.i.i51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %51 = ptrtoint ptr %src1.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sg.i.i47, ptr %src1.i.i.i51, align 4
  %nbytes2.i.i.i52 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %52 = ptrtoint ptr %nbytes2.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %nbytes2.i.i.i52, align 8
  %result3.i.i.i53 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 3
  %53 = ptrtoint ptr %result3.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %iauth_tag.i.i45, ptr %result3.i.i.i53, align 32
  %call8.i.i54 = tail call i32 @crypto_ahash_finup(ptr noundef %u.i.i38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i54)
  %tobool.not.i55 = icmp eq i32 %call8.i.i54, 0
  br i1 %tobool.not.i55, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %cond.false.cleanup.sink.split_crit_edge
  %54 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i5.i = getelementptr i8, ptr %55, i32 12
  %56 = ptrtoint ptr %__crt_alg.i.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_alg.i.i.i.i5.i, align 4
  %cra_alignmask.i.i.i.i6.i = getelementptr inbounds %struct.crypto_alg, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %cra_alignmask.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cra_alignmask.i.i.i.i6.i, align 4
  %add3.i.i8.i58 = add i32 %59, %6
  %neg.i.i9.i59 = xor i32 %59, -1
  %and.i.i10.i60 = and i32 %add3.i.i8.i58, %neg.i.i9.i59
  %60 = inttoptr i32 %and.i.i10.i60 to ptr
  %complete.i.i61 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %60, i32 0, i32 6, i32 2
  %61 = ptrtoint ptr %complete.i.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %complete.i.i61, align 4
  %call1.i.i62 = tail call i32 %62(ptr noundef %req, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i.i.i, %if.then.cleanup_crit_edge ], [ %call8.i.i, %cond.false.cleanup_crit_edge ], [ %call8.i.i54, %if.end.cleanup_crit_edge ], [ %call1.i.i62, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_crypt_remain_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %tfm.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i.i.i, align 4
  %__ctx.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i.i.i to i32
  %add3.i.i.i = add i32 %7, %8
  %neg.i.i.i = xor i32 %7, -1
  %and.i.i.i = and i32 %add3.i.i.i, %neg.i.i.i
  %9 = inttoptr i32 %and.i.i.i to ptr
  %u.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8
  %ghash_ctx.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 6
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoclen.i.i, align 8
  %mul.i.i = shl i32 %11, 3
  %conv.i.i = zext i32 %mul.i.i to i64
  %12 = ptrtoint ptr %ghash_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ghash_ctx.i.i, align 4
  %mul1.i.i = shl i32 %13, 3
  %conv2.i.i = zext i32 %mul1.i.i to i64
  %iauth_tag.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %iauth_tag.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i.i, ptr %iauth_tag.i.i, align 32
  %lengths.sroa.5.0.arraydecay.sroa_idx.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2.i.i, ptr %lengths.sroa.5.0.arraydecay.sroa_idx.i.i, align 8
  %sg.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %sg.i.i, ptr noundef %iauth_tag.i.i, i32 noundef 16) #10
  %complete.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gcm_hash_len_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags4.i.i.i, align 4
  %src1.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 2
  %19 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 8, i32 0, i32 3
  %21 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %iauth_tag.i.i, ptr %result3.i.i.i, align 32
  %call8.i.i = tail call i32 @crypto_ahash_finup(ptr noundef %u.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.gcm_hash_crypt_remain_continue.exit_crit_edge

if.end.gcm_hash_crypt_remain_continue.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcm_hash_crypt_remain_continue.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i.i5.i = getelementptr i8, ptr %23, i32 12
  %24 = ptrtoint ptr %__crt_alg.i.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i.i.i5.i, align 4
  %cra_alignmask.i.i.i.i6.i = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %cra_alignmask.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cra_alignmask.i.i.i.i6.i, align 4
  %add3.i.i8.i = add i32 %27, %8
  %neg.i.i9.i = xor i32 %27, -1
  %and.i.i10.i = and i32 %add3.i.i8.i, %neg.i.i9.i
  %28 = inttoptr i32 %and.i.i10.i to ptr
  %complete.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete.i.i, align 4
  %call1.i.i = tail call i32 %30(ptr noundef %1, i32 noundef 0) #10
  br label %gcm_hash_crypt_remain_continue.exit

gcm_hash_crypt_remain_continue.exit:              ; preds = %cond.false.i, %if.end.gcm_hash_crypt_remain_continue.exit_crit_edge
  %cond.i = phi i32 [ %call1.i.i, %cond.false.i ], [ %call8.i.i, %if.end.gcm_hash_crypt_remain_continue.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, -115
  br i1 %cmp, label %gcm_hash_crypt_remain_continue.exit.cleanup_crit_edge, label %gcm_hash_crypt_remain_continue.exit.out_crit_edge

gcm_hash_crypt_remain_continue.exit.out_crit_edge: ; preds = %gcm_hash_crypt_remain_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

gcm_hash_crypt_remain_continue.exit.cleanup_crit_edge: ; preds = %gcm_hash_crypt_remain_continue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %gcm_hash_crypt_remain_continue.exit.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %cond.i, %gcm_hash_crypt_remain_continue.exit.out_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete.i, align 8
  tail call void %32(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %gcm_hash_crypt_remain_continue.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_hash_len_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %__ctx.i.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i.i to i32
  %add3.i.i = add i32 %7, %8
  %neg.i.i = xor i32 %7, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %9 = inttoptr i32 %and.i.i to ptr
  %complete.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete.i, align 4
  %call1.i = tail call i32 %11(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -115
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.out_crit_edge ], [ %call1.i, %if.end.out_crit_edge ]
  %complete.i6 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %complete.i6, align 8
  tail call void %13(ptr noundef %1, i32 noundef %err.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_dec_hash_continue(ptr noundef %req, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %5, %6
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %add3.i, %neg.i
  %7 = inttoptr i32 %and.i to ptr
  %u = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8
  %ghash_ctx = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ghash_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ghash_ctx, align 4
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src.i, align 4
  %dst3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %12 = ptrtoint ptr %dst3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst3.i, align 8
  %cmp.i = icmp eq ptr %11, %13
  %src4.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 3
  %dst5.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 4
  %cond.i = select i1 %cmp.i, ptr %src4.i, ptr %dst5.i
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 3
  %16 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.i = add i32 %9, 16
  %src1.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %src4.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond.i, ptr %dst2.i.i, align 4
  %19 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %u, align 128
  %iv4.i.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %7, ptr %iv4.i.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 1
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gcm_decrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 2
  %22 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %7, i32 0, i32 8, i32 0, i32 4
  %23 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %flags4.i, align 4
  %call1 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %u) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i.i9 = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %__crt_alg.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_alg.i.i.i.i9, align 4
  %cra_alignmask.i.i.i.i10 = getelementptr inbounds %struct.crypto_alg, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %cra_alignmask.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_alignmask.i.i.i.i10, align 4
  %add3.i.i12 = add i32 %29, %6
  %neg.i.i13 = xor i32 %29, -1
  %and.i.i14 = and i32 %add3.i.i12, %neg.i.i13
  %30 = inttoptr i32 %and.i.i14 to ptr
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 -128
  %auth_tag2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 1
  %iauth_tag3.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 128
  %cryptlen6.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %cryptlen6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cryptlen6.i, align 4
  %sub.i = sub i32 %34, %32
  %incdec.ptr.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %iauth_tag3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iauth_tag3.i, align 4
  %incdec.ptr2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %auth_tag2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %auth_tag2.i, align 4
  %xor.i.i = xor i32 %38, %36
  store i32 %xor.i.i, ptr %auth_tag2.i, align 4
  %incdec.ptr.1.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 2, i32 8
  %39 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.1.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 1, i32 8
  %41 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr2.i.i, align 4
  %xor.1.i.i = xor i32 %42, %40
  store i32 %xor.1.i.i, ptr %incdec.ptr2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 2, i32 12
  %43 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr2.2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %30, i32 0, i32 1, i32 12
  %45 = ptrtoint ptr %incdec.ptr2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr2.1.i.i, align 4
  %xor.2.i.i = xor i32 %46, %44
  store i32 %xor.2.i.i, ptr %incdec.ptr2.1.i.i, align 4
  %47 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %49 = ptrtoint ptr %incdec.ptr2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr2.2.i.i, align 4
  %xor.3.i.i = xor i32 %50, %48
  store i32 %xor.3.i.i, ptr %incdec.ptr2.2.i.i, align 4
  %51 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %src.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %53 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %assoclen.i, align 8
  %add.i16 = add i32 %sub.i, %54
  tail call void @scatterwalk_map_and_copy(ptr noundef %iauth_tag3.i, ptr noundef %52, i32 noundef %add.i16, i32 noundef %32, i32 noundef 0) #10
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %iauth_tag3.i, ptr noundef %auth_tag2.i, i32 noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  %cond.i17 = select i1 %cmp.not.i.not.i, i32 0, i32 -74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %cond.i17, %cond.false ], [ %call1, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gcm_decrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %__ctx.i.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i.i to i32
  %add3.i.i = add i32 %7, %8
  %neg.i.i = xor i32 %7, -1
  %and.i.i = and i32 %add3.i.i, %neg.i.i
  %9 = inttoptr i32 %and.i.i to ptr
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %auth_tag2.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 1
  %iauth_tag3.i = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  %cryptlen6.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen6.i, align 4
  %sub.i = sub i32 %13, %11
  %incdec.ptr.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %iauth_tag3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iauth_tag3.i, align 4
  %incdec.ptr2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %auth_tag2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %auth_tag2.i, align 4
  %xor.i.i = xor i32 %17, %15
  store i32 %xor.i.i, ptr %auth_tag2.i, align 4
  %incdec.ptr.1.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.1.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr2.i.i, align 4
  %xor.1.i.i = xor i32 %21, %19
  store i32 %xor.1.i.i, ptr %incdec.ptr2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 2, i32 12
  %22 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr2.2.i.i = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %9, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %incdec.ptr2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr2.1.i.i, align 4
  %xor.2.i.i = xor i32 %25, %23
  store i32 %xor.2.i.i, ptr %incdec.ptr2.1.i.i, align 4
  %26 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %28 = ptrtoint ptr %incdec.ptr2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr2.2.i.i, align 4
  %xor.3.i.i = xor i32 %29, %27
  store i32 %xor.3.i.i, ptr %incdec.ptr2.2.i.i, align 4
  %src.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoclen.i, align 8
  %add.i = add i32 %sub.i, %33
  tail call void @scatterwalk_map_and_copy(ptr noundef %iauth_tag3.i, ptr noundef %31, i32 noundef %add.i, i32 noundef %11, i32 noundef 0) #10
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %iauth_tag3.i, ptr noundef %auth_tag2.i, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  %cond.i = select i1 %cmp.not.i.not.i, i32 0, i32 -74
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end_crit_edge ], [ %cond.i, %if.then ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %complete.i, align 8
  tail call void %35(ptr noundef %1, i32 noundef %err.addr.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %__crt_alg.i.i29 = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i29, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i, align 4
  %and = and i32 %7, -128
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqsize.i, align 4
  %10 = add i32 %9, 383
  %add15 = and i32 %10, -128
  %add16 = add i32 %add15, %and
  %add17 = or i32 %add16, 24
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %11 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add17, ptr %reqsize1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc4106_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_setkey(ptr nocapture noundef %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %sub = add i32 %keylen, -4
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nonce, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i13 = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i13, align 128
  %and = and i32 %8, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call3 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_setauthsize(ptr nocapture noundef readonly %parent, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %authsize, label %entry.cleanup_crit_edge [
    i32 8, label %entry.if.end_crit_edge
    i32 12, label %entry.if.end_crit_edge8
    i32 16, label %entry.if.end_crit_edge9
  ]

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge8, %entry.if.end_crit_edge9
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call2 = tail call i32 @crypto_aead_setauthsize(ptr noundef %2, i32 noundef %authsize) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc ptr @crypto_rfc4106_crypt(ptr noundef %req)
  %call2 = tail call i32 @crypto_aead_encrypt(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc ptr @crypto_rfc4106_crypt(ptr noundef %req)
  %call2 = tail call i32 @crypto_aead_decrypt(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc4106_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  tail call void @kfree(ptr noundef %inst) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @crypto_rfc4106_crypt(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 3
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %5
  %6 = ptrtoint ptr %add.ptr6 to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_alignmask.i.i, align 4
  %add8 = add i32 %10, %6
  %neg = xor i32 %10, -1
  %and = and i32 %add8, %neg
  %11 = inttoptr i32 %and to ptr
  %add.ptr12 = getelementptr i8, ptr %11, i32 12
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen, align 8
  %sub13 = add i32 %15, -8
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr12, ptr noundef %13, i32 noundef 0, i32 noundef %sub13, i32 noundef 0) #10
  %nonce = getelementptr i8, ptr %1, i32 132
  %16 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nonce, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %11, align 1
  %add.ptr14 = getelementptr i8, ptr %11, i32 4
  %iv15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %iv15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv15, align 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %23 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %add.ptr14, align 1
  tail call void @sg_init_table(ptr noundef %__ctx.i, i32 noundef 3) #10
  %24 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen, align 8
  %sub22 = add i32 %25, -8
  %26 = ptrtoint ptr %add.ptr12 to i32
  %cmp.i = icmp ugt ptr %add.ptr12, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !54

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %27 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %27, %add.ptr12
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !54

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %26, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %28, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !55

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr.i
  %30 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__ctx.i, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !54

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !54

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %26, 4095
  %and.i.i.i = and i32 %31, 3
  %or.i.i.i = or i32 %and.i.i.i, %32
  %33 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i.i, ptr %__ctx.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub22, ptr %length.i.i, align 4
  %add.ptr25 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src, align 4
  %38 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %assoclen, align 8
  %call28 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr25, ptr noundef %37, i32 noundef %39) #10
  %cmp.not = icmp eq ptr %call28, %add.ptr25
  br i1 %cmp.not, label %sg_set_buf.exit.if.end_crit_edge, label %if.then

sg_set_buf.exit.if.end_crit_edge:                 ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 1
  %40 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i123 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 2
  %41 = ptrtoint ptr %length.i.i123 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %length.i.i123, align 4
  %42 = ptrtoint ptr %call28 to i32
  %or.i.i = and i32 %42, -4
  %and.i.i = or i32 %or.i.i, 1
  %43 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i.i, ptr %add.ptr25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sg_set_buf.exit.if.end_crit_edge
  %44 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 8
  %cmp35.not = icmp eq ptr %45, %47
  br i1 %cmp35.not, label %if.end.if.end58_crit_edge, label %land.lhs.true.i126

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true.i126:                               ; preds = %if.end
  %dst37 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  tail call void @sg_init_table(ptr noundef %dst37, i32 noundef 3) #10
  %48 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %assoclen, align 8
  %sub43 = add i32 %49, -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %50 = load ptr, ptr @high_memory, align 4
  %cmp1.i125 = icmp ugt ptr %50, %add.ptr12
  br i1 %cmp1.i125, label %land.rhs.i132, label %land.lhs.true.i126.do.body5.i133_crit_edge, !prof !54

land.lhs.true.i126.do.body5.i133_crit_edge:       ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i133

land.rhs.i132:                                    ; preds = %land.lhs.true.i126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i129 = add i32 %51, %shr.i
  %call.i130 = tail call i32 @pfn_valid(i32 noundef %add.i129) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool.i131, label %land.rhs.i132.do.body5.i133_crit_edge, label %do.end8.i137, !prof !55

land.rhs.i132.do.body5.i133_crit_edge:            ; preds = %land.rhs.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i133

do.body5.i133:                                    ; preds = %land.rhs.i132.do.body5.i133_crit_edge, %land.lhs.true.i126.do.body5.i133_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end8.i137:                                     ; preds = %land.rhs.i132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %add.ptr.i134 = getelementptr %struct.page, ptr %52, i32 %shr.i
  %53 = ptrtoint ptr %dst37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dst37, align 4
  %55 = ptrtoint ptr %add.ptr.i134 to i32
  %and2.i.i.i135 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i135)
  %tobool.not.i.i.i136 = icmp eq i32 %and2.i.i.i135, 0
  br i1 %tobool.not.i.i.i136, label %do.body11.i.i.i141, label %do.body5.i.i.i138, !prof !54

do.body5.i.i.i138:                                ; preds = %do.end8.i137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !57
  unreachable

do.body11.i.i.i141:                               ; preds = %do.end8.i137
  %and.i.i.i.i139 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i139)
  %tobool.i.not.i.i.i140 = icmp eq i32 %and.i.i.i.i139, 0
  br i1 %tobool.i.not.i.i.i140, label %sg_set_buf.exit148, label %do.body19.i.i.i142, !prof !54

do.body19.i.i.i142:                               ; preds = %do.body11.i.i.i141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

sg_set_buf.exit148:                               ; preds = %do.body11.i.i.i141
  %and.i.i.i144 = and i32 %54, 3
  %or.i.i.i145 = or i32 %and.i.i.i144, %55
  %56 = ptrtoint ptr %dst37 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i.i145, ptr %dst37, align 4
  %offset1.i.i146 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 20
  %57 = ptrtoint ptr %offset1.i.i146 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i, ptr %offset1.i.i146, align 4
  %length.i.i147 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 24
  %58 = ptrtoint ptr %length.i.i147 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub43, ptr %length.i.i147, align 4
  %add.ptr46 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %59 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dst, align 8
  %61 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %assoclen, align 8
  %call49 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr46, ptr noundef %60, i32 noundef %62) #10
  %cmp53.not = icmp eq ptr %call49, %add.ptr46
  br i1 %cmp53.not, label %sg_set_buf.exit148.if.end58_crit_edge, label %if.then54

sg_set_buf.exit148.if.end58_crit_edge:            ; preds = %sg_set_buf.exit148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then54:                                        ; preds = %sg_set_buf.exit148
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i150 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 40
  %63 = ptrtoint ptr %offset.i.i150 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offset.i.i150, align 4
  %length.i.i151 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %64 = ptrtoint ptr %length.i.i151 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %length.i.i151, align 4
  %65 = ptrtoint ptr %call49 to i32
  %or.i.i152 = and i32 %65, -4
  %and.i.i153 = or i32 %or.i.i152, 1
  %66 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i.i153, ptr %add.ptr46, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %sg_set_buf.exit148.if.end58_crit_edge, %if.end.if.end58_crit_edge
  %subreq3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 3
  %67 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %70 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %75 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 4
  %76 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %69, ptr %flags4.i, align 4
  %77 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %src, align 4
  %79 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dst, align 8
  %cmp65 = icmp eq ptr %78, %80
  %dst68 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %cond = select i1 %cmp65, ptr %__ctx.i, ptr %dst68
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %81 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cryptlen, align 4
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 4
  %83 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %__ctx.i, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 5
  %84 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %cond, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 2
  %85 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 3
  %86 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %11, ptr %iv4.i, align 32
  %87 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %assoclen, align 8
  %sub71 = add i32 %88, -8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 1
  %89 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub71, ptr %assoclen1.i, align 8
  ret ptr %subreq3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @crypto_get_default_null_skcipher() #10
  %cmp.i43 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %err_free_aead, label %if.end11

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %null12 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %null12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %null12, align 4
  %__crt_alg.i.i44 = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i44 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i44, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_alignmask.i.i, align 4
  %and = and i32 %8, -128
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reqsize.i, align 4
  %11 = add i32 %10, 255
  %add22 = and i32 %11, -128
  %add23 = add i32 %add22, %and
  %add24 = or i32 %add23, 12
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %12 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add24, ptr %reqsize1.i, align 4
  br label %cleanup

err_free_aead:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call7 to i32
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_aead, %if.end11, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %13, %err_free_aead ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc4543_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #10
  tail call void @crypto_put_default_null_skcipher() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_setkey(ptr nocapture noundef %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %sub = add i32 %keylen, -4
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1, i32 2
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nonce, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i13 = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i13, align 128
  %and = and i32 %8, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call3 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_setauthsize(ptr nocapture noundef readonly %parent, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef 16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @crypto_rfc4543_crypt(ptr noundef %req, i1 noundef zeroext true)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @crypto_rfc4543_crypt(ptr noundef %req, i1 noundef zeroext false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc4543_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  tail call void @kfree(ptr noundef %inst) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_rfc4543_crypt(ptr noundef %req, i1 noundef zeroext %enc) unnamed_addr #2 align 64 {
entry:
  %__nreq_desc.i = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 128
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 2
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqsize.i, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %7
  %8 = ptrtoint ptr %add.ptr6 to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_alignmask.i.i, align 4
  %add9 = add i32 %12, %8
  %neg = xor i32 %12, -1
  %and = and i32 %add9, %neg
  %13 = inttoptr i32 %and to ptr
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst, align 8
  %cmp.not = icmp eq ptr %15, %17
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = select i1 %enc, i32 0, i32 %3
  br label %if.end17

if.then:                                          ; preds = %entry
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cryptlen.i, align 4
  %spec.select.i = select i1 %enc, i32 0, i32 %3
  %add.i = sub i32 %19, %spec.select.i
  %sub.i = add i32 %add.i, %21
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__nreq_desc.i) #10
  %22 = call ptr @memset(ptr %__nreq_desc.i, i32 255, i32 512)
  %null.i = getelementptr i8, ptr %1, i32 132
  %23 = ptrtoint ptr %null.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %null.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %24, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 2
  %31 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %15, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 3
  %32 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %17, ptr %dst2.i.i, align 4
  %33 = ptrtoint ptr %__nreq_desc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i, ptr %__nreq_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__nreq_desc.i, i32 0, i32 1
  %34 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %iv4.i.i, align 4
  %call3.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__nreq_desc.i) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__nreq_desc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool15.not = icmp eq i32 %call3.i, 0
  br i1 %tobool15.not, label %if.then.if.end17_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %spec.select.pre-phi = phi i32 [ %.pre, %entry.if.end17_crit_edge ], [ %spec.select.i, %if.then.if.end17_crit_edge ]
  %nonce = getelementptr i8, ptr %1, i32 136
  %35 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nonce, align 4
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %13, align 1
  %add.ptr18 = getelementptr i8, ptr %13, i32 4
  %iv19 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %38 = ptrtoint ptr %iv19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iv19, align 32
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %39, align 1
  %42 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %add.ptr18, align 1
  %43 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %44, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %48 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %47, ptr %flags4.i, align 4
  %55 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src, align 4
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dst, align 8
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %59 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %60 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %61 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select.pre-phi, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %62 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %13, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %63 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %65 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cryptlen, align 4
  %add26 = sub i32 %64, %spec.select.pre-phi
  %sub28 = add i32 %add26, %66
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %67 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub28, ptr %assoclen1.i, align 8
  br i1 %enc, label %cond.true30, label %cond.false32

cond.true30:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #10
  br label %cleanup

cond.false32:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.false32, %cond.true30, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.then.cleanup_crit_edge ], [ %call31, %cond.true30 ], [ %call33, %cond.false32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_gcm__241_1159_crypto_gcm_module_init4, !1, !"__initcall__kmod_gcm__241_1159_crypto_gcm_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/gcm.c", i32 1159, i32 1}
!2 = !{ptr @__exitcall_crypto_gcm_module_exit, !3, !"__exitcall_crypto_gcm_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/gcm.c", i32 1160, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../crypto/gcm.c", i32 1162, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../crypto/gcm.c", i32 1163, i32 1}
!9 = !{ptr @__UNIQUE_ID_author245, !10, !"__UNIQUE_ID_author245", i1 false, i1 false}
!10 = !{!"../crypto/gcm.c", i32 1164, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace246, !12, !"__UNIQUE_ID_alias_userspace246", i1 false, i1 false}
!12 = !{!"../crypto/gcm.c", i32 1165, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto247, !12, !"__UNIQUE_ID_alias_crypto247", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace248, !15, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!15 = !{!"../crypto/gcm.c", i32 1166, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto249, !15, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace250, !18, !"__UNIQUE_ID_alias_userspace250", i1 false, i1 false}
!18 = !{!"../crypto/gcm.c", i32 1167, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto251, !18, !"__UNIQUE_ID_alias_crypto251", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace252, !21, !"__UNIQUE_ID_alias_userspace252", i1 false, i1 false}
!21 = !{!"../crypto/gcm.c", i32 1168, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto253, !21, !"__UNIQUE_ID_alias_crypto253", i1 false, i1 false}
!23 = !{ptr @gcm_zeroes, !24, !"gcm_zeroes", i1 false, i1 false}
!24 = !{!"../crypto/gcm.c", i32 80, i32 4}
!25 = !{ptr @crypto_gcm_tmpls, !26, !"crypto_gcm_tmpls", i1 false, i1 false}
!26 = !{!"../crypto/gcm.c", i32 1114, i32 31}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/gcm.c", i32 604, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/gcm.c", i32 616, i32 34}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/gcm.c", i32 623, i32 8}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../crypto/gcm.c", i32 627, i32 8}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../crypto/gcm.c", i32 667, i32 46}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../crypto/gcm.c", i32 864, i32 8}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../crypto/gcm.c", i32 1079, i32 8}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2153953869, i64 2153954361, i64 2153953906, i64 2153953962, i64 2153953996, i64 2153954020, i64 2153954061, i64 2153954082, i64 2153954110, i64 2153954144}
!57 = !{i64 2153947550, i64 2153948042, i64 2153947587, i64 2153947643, i64 2153947677, i64 2153947701, i64 2153947742, i64 2153947763, i64 2153947791, i64 2153947825}
!58 = !{i64 2153949160, i64 2153949652, i64 2153949197, i64 2153949253, i64 2153949287, i64 2153949311, i64 2153949352, i64 2153949373, i64 2153949401, i64 2153949435}
