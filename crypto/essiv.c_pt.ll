; ModuleID = '/llk/IR_all_yes/crypto/essiv.c_pt.bc'
source_filename = "../crypto/essiv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_attr_type = type { i32, i32 }
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
%struct.aead_instance = type { ptr, [124 x i8], %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { [128 x i8], %struct.crypto_instance }
%struct.essiv_instance_ctx = type { %union.anon.79, [128 x i8], [128 x i8] }
%union.anon.79 = type { %struct.crypto_skcipher_spawn }
%struct.crypto_skcipher_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.76, ptr, i32, i8, i8 }
%union.anon.76 = type { ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@essiv_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @essiv_create, [128 x i8] c"essiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_essiv__240_641_essiv_module_init4 = internal global ptr @essiv_module_init, section ".initcall4.init", align 4
@__exitcall_essiv_module_exit = internal global ptr @essiv_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [67 x i8] c"essiv.description=ESSIV skcipher/aead wrapper for block encryption\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [24 x i8] c"essiv.file=crypto/essiv\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [21 x i8] c"essiv.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [18 x i8] c"essiv.alias=essiv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [25 x i8] c"essiv.alias=crypto-essiv\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns246 = internal constant [32 x i8] c"essiv.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"authenc(\00", [23 x i8] zeroinitializer }, align 32
@essiv_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Only authenc() type AEADs are supported by ESSIV\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"essiv_create\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crypto/essiv.c\00", [17 x i8] zeroinitializer }, align 32
@essiv_create._entry_ptr = internal global ptr @essiv_create._entry, section ".printk_index", align 4
@essiv_create._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014Failed to parse ESSIV cipher name from skcipher cra_name\0A\00", [36 x i8] zeroinitializer }, align 32
@essiv_create._entry_ptr.6 = internal global ptr @essiv_create._entry.4, section ".printk_index", align 4
@essiv_create._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Unsupported essiv instantiation: essiv(%s,%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@essiv_create._entry_ptr.9 = internal global ptr @essiv_create._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"essiv(%s,%s)\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"essiv_tmpl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 625, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 508, i32 40 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 509, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 521, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 539, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [18 x i8] c"../crypto/essiv.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 553, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_import_ns246, ptr @__UNIQUE_ID_license243, ptr @__exitcall_essiv_module_exit, ptr @__initcall__kmod_essiv__240_641_essiv_module_init4, ptr @essiv_create._entry, ptr @essiv_create._entry.4, ptr @essiv_create._entry.7, ptr @essiv_create._entry_ptr, ptr @essiv_create._entry_ptr.6, ptr @essiv_create._entry_ptr.9, ptr @essiv_module_exit, ptr @essiv_tmpl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @essiv_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @essiv_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @essiv_create._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @essiv_create._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @essiv_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_unregister_template(ptr noundef nonnull @essiv_tmpl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @essiv_tmpl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_get_attr_type(ptr noundef %tb) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @crypto_attr_alg_name(ptr noundef %2) #12
  %cmp.i252 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 2
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call ptr @crypto_attr_alg_name(ptr noundef %5) #12
  %cmp.i253 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %mask15 = getelementptr inbounds %struct.crypto_attr_type, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %mask15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask15, align 4
  %and = and i32 %10, %8
  %xor.i.i = and i32 %8, 65920
  %and.i.i = xor i32 %xor.i.i, 65920
  %and1.i.i = and i32 %and.i.i, %10
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end13.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb31
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1180) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end19

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %base.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %__ctx.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1
  %call23 = tail call i32 @crypto_grab_skcipher(ptr noundef %__ctx.i, ptr noundef %base.i, ptr noundef %call3, i32 noundef 0, i32 noundef %and1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.out_free_inst_crit_edge

if.end19.out_free_inst_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_inst

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %alg.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alg.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -128
  %ivsize.i = getelementptr i8, ptr %14, i32 -100
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i254 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1180) #15
  %tobool33.not = icmp eq ptr %call7.i.i254, null
  br i1 %tobool33.not, label %sw.bb31.cleanup_crit_edge, label %if.end35

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  %base.i255 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i254, i32 0, i32 2, i32 0, i32 1
  %__ctx.i256 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i254, i32 1
  %call40 = tail call i32 @crypto_grab_aead(ptr noundef %__ctx.i256, ptr noundef %base.i255, ptr noundef %call3, i32 noundef 0, i32 noundef %and1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end35.out_free_inst_crit_edge

if.end35.out_free_inst_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_inst

if.end43:                                         ; preds = %if.end35
  %alg.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i254, i32 1, i32 1, i32 4
  %16 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alg.i, align 8
  %cra_name = getelementptr i8, ptr %17, i32 40
  %call1.i = tail call i32 @strncmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(9) @.str, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i257 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i257, label %if.end50, label %out_drop_skcipher.thread

out_drop_skcipher.thread:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %out_free_inst.sink.split

if.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %17, i32 -128
  %ivsize51 = getelementptr i8, ptr %17, i32 -104
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end50, %if.end26
  %skcipher_inst.0 = phi ptr [ null, %if.end50 ], [ %call7.i.i, %if.end26 ]
  %aead_inst.0 = phi ptr [ %call7.i.i254, %if.end50 ], [ null, %if.end26 ]
  %base.0 = phi ptr [ %base.i255, %if.end50 ], [ %base.i, %if.end26 ]
  %block_base.0 = phi ptr [ %17, %if.end50 ], [ %14, %if.end26 ]
  %ictx.0 = phi ptr [ %__ctx.i256, %if.end50 ], [ %__ctx.i, %if.end26 ]
  %skcipher_alg.0 = phi ptr [ null, %if.end50 ], [ %add.ptr.i.i, %if.end26 ]
  %aead_alg.0 = phi ptr [ %add.ptr.i, %if.end50 ], [ null, %if.end26 ]
  %ivsize.0.in = phi ptr [ %ivsize51, %if.end50 ], [ %ivsize.i, %if.end26 ]
  %18 = ptrtoint ptr %ivsize.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %ivsize.0 = load i32, ptr %ivsize.0.in, align 4
  %essiv_cipher_name = getelementptr inbounds %struct.essiv_instance_ctx, ptr %ictx.0, i32 0, i32 1
  %cra_name53 = getelementptr inbounds %struct.crypto_alg, ptr %block_base.0, i32 0, i32 8
  %call55 = tail call fastcc zeroext i1 @parse_cipher_name(ptr noundef %essiv_cipher_name, ptr noundef %cra_name53)
  br i1 %call55, label %if.end62, label %do.end59

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  br label %out_free_inst.sink.split

if.end62:                                         ; preds = %sw.epilog
  %or = or i32 %and1.i.i, 15
  %call63 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %call9, i32 noundef 14, i32 noundef %or) #12
  %cmp.i258 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call63 to i32
  br label %out_free_inst.sink.split

if.end67:                                         ; preds = %if.end62
  %add.ptr.i259 = getelementptr i8, ptr %call63, i32 -256
  %call71 = tail call fastcc zeroext i1 @essiv_supported_algorithms(ptr noundef %essiv_cipher_name, ptr noundef %add.ptr.i259, i32 noundef %ivsize.0)
  br i1 %call71, label %if.end83, label %do.end75

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %cra_name80 = getelementptr i8, ptr %call63, i32 40
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %cra_name53, ptr noundef %cra_name80) #16
  br label %out_free_hash

if.end83:                                         ; preds = %if.end67
  %shash_driver_name = getelementptr inbounds %struct.essiv_instance_ctx, ptr %ictx.0, i32 0, i32 2
  %cra_driver_name = getelementptr i8, ptr %call63, i32 168
  %call87 = tail call i32 @strlcpy(ptr noundef %shash_driver_name, ptr noundef %cra_driver_name, i32 noundef 128) #12
  %cra_name88 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 8
  %cra_name93 = getelementptr i8, ptr %call63, i32 40
  %call95 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name88, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %cra_name53, ptr noundef %cra_name93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call95)
  %cmp = icmp sgt i32 %call95, 127
  br i1 %cmp, label %if.end83.out_free_hash_crit_edge, label %if.end97

if.end83.out_free_hash_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_hash

if.end97:                                         ; preds = %if.end83
  %cra_driver_name98 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 9
  %cra_driver_name100 = getelementptr inbounds %struct.crypto_alg, ptr %block_base.0, i32 0, i32 9
  %call105 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name98, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %cra_driver_name100, ptr noundef %cra_driver_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call105)
  %cmp106 = icmp sgt i32 %call105, 127
  br i1 %cmp106, label %if.end97.out_free_hash_crit_edge, label %if.end108

if.end97.out_free_hash_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_hash

if.end108:                                        ; preds = %if.end97
  %cra_flags = getelementptr i8, ptr %call63, i32 16
  %20 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_flags, align 16
  %and110 = and i32 %21, 65920
  %cra_flags111 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 2
  %22 = ptrtoint ptr %cra_flags111 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cra_flags111, align 16
  %or112 = or i32 %23, %and110
  store i32 %or112, ptr %cra_flags111, align 16
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %block_base.0, i32 0, i32 3
  %24 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cra_blocksize, align 4
  %cra_blocksize113 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 3
  %26 = ptrtoint ptr %cra_blocksize113 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cra_blocksize113, align 4
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 4
  %27 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %cra_ctxsize, align 8
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %block_base.0, i32 0, i32 5
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask114 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 5
  %30 = ptrtoint ptr %cra_alignmask114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cra_alignmask114, align 4
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %block_base.0, i32 0, i32 6
  %31 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cra_priority, align 32
  %cra_priority115 = getelementptr inbounds %struct.crypto_alg, ptr %base.0, i32 0, i32 6
  %33 = ptrtoint ptr %cra_priority115 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cra_priority115, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp116 = icmp eq i32 %and, 5
  br i1 %cmp116, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %34 = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @essiv_skcipher_setkey, ptr %34, align 128
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @essiv_skcipher_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 8
  %37 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @essiv_skcipher_decrypt, ptr %decrypt, align 8
  %init = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 12
  %38 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @essiv_skcipher_init_tfm, ptr %init, align 4
  %exit = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 16
  %39 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @essiv_skcipher_exit_tfm, ptr %exit, align 16
  %min_keysize.i = getelementptr inbounds %struct.skcipher_alg, ptr %skcipher_alg.0, i32 0, i32 5
  %40 = ptrtoint ptr %min_keysize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_keysize.i, align 4
  %min_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 20
  %42 = ptrtoint ptr %min_keysize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %min_keysize, align 4
  %max_keysize.i = getelementptr inbounds %struct.skcipher_alg, ptr %skcipher_alg.0, i32 0, i32 6
  %43 = ptrtoint ptr %max_keysize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_keysize.i, align 8
  %max_keysize = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 24
  %45 = ptrtoint ptr %max_keysize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_keysize, align 8
  %ivsize120 = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 28
  %46 = ptrtoint ptr %ivsize120 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %ivsize.0, ptr %ivsize120, align 4
  %chunksize.i = getelementptr inbounds %struct.skcipher_alg, ptr %skcipher_alg.0, i32 0, i32 8
  %47 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 32
  %49 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %chunksize, align 32
  %walksize.i = getelementptr inbounds %struct.skcipher_alg, ptr %skcipher_alg.0, i32 0, i32 9
  %50 = ptrtoint ptr %walksize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %walksize.i, align 4
  %walksize = getelementptr inbounds %struct.skcipher_instance, ptr %skcipher_inst.0, i32 0, i32 2, i32 0, i32 0, i32 36
  %52 = ptrtoint ptr %walksize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %walksize, align 4
  %53 = ptrtoint ptr %skcipher_inst.0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @essiv_skcipher_free_instance, ptr %skcipher_inst.0, align 128
  %call123 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %skcipher_inst.0) #12
  br label %if.end135

if.else:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %54 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @essiv_aead_setkey, ptr %54, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 4
  %56 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @essiv_aead_setauthsize, ptr %setauthsize, align 4
  %encrypt125 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 8
  %57 = ptrtoint ptr %encrypt125 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @essiv_aead_encrypt, ptr %encrypt125, align 8
  %decrypt126 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 12
  %58 = ptrtoint ptr %decrypt126 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @essiv_aead_decrypt, ptr %decrypt126, align 4
  %init127 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 16
  %59 = ptrtoint ptr %init127 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @essiv_aead_init_tfm, ptr %init127, align 16
  %exit128 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 20
  %60 = ptrtoint ptr %exit128 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @essiv_aead_exit_tfm, ptr %exit128, align 4
  %ivsize129 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 24
  %61 = ptrtoint ptr %ivsize129 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %ivsize.0, ptr %ivsize129, align 8
  %maxauthsize.i = getelementptr inbounds %struct.aead_alg, ptr %aead_alg.0, i32 0, i32 7
  %62 = ptrtoint ptr %maxauthsize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %maxauthsize.i, align 4
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 28
  %64 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %maxauthsize, align 4
  %chunksize.i260 = getelementptr inbounds %struct.aead_alg, ptr %aead_alg.0, i32 0, i32 8
  %65 = ptrtoint ptr %chunksize.i260 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chunksize.i260, align 32
  %chunksize132 = getelementptr inbounds %struct.aead_instance, ptr %aead_inst.0, i32 0, i32 2, i32 0, i32 0, i32 32
  %67 = ptrtoint ptr %chunksize132 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %chunksize132, align 32
  %68 = ptrtoint ptr %aead_inst.0 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @essiv_aead_free_instance, ptr %aead_inst.0, align 128
  %call134 = tail call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef %aead_inst.0) #12
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then117
  %err.0 = phi i32 [ %call123, %if.then117 ], [ %call134, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool136.not = icmp eq i32 %err.0, 0
  br i1 %tobool136.not, label %if.end138, label %if.end135.out_free_hash_crit_edge

if.end135.out_free_hash_crit_edge:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_hash

if.end138:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_mod_put(ptr noundef %call63) #12
  br label %cleanup

out_free_hash:                                    ; preds = %if.end135.out_free_hash_crit_edge, %if.end97.out_free_hash_crit_edge, %if.end83.out_free_hash_crit_edge, %do.end75
  %err.1 = phi i32 [ -36, %if.end83.out_free_hash_crit_edge ], [ -36, %if.end97.out_free_hash_crit_edge ], [ %err.0, %if.end135.out_free_hash_crit_edge ], [ -22, %do.end75 ]
  tail call void @crypto_mod_put(ptr noundef %call63) #12
  br label %out_free_inst.sink.split

out_free_inst.sink.split:                         ; preds = %out_free_hash, %if.then65, %do.end59, %out_drop_skcipher.thread
  %ictx.0.sink = phi ptr [ %__ctx.i256, %out_drop_skcipher.thread ], [ %ictx.0, %out_free_hash ], [ %ictx.0, %if.then65 ], [ %ictx.0, %do.end59 ]
  %skcipher_inst.2.ph = phi ptr [ null, %out_drop_skcipher.thread ], [ %skcipher_inst.0, %out_free_hash ], [ %skcipher_inst.0, %if.then65 ], [ %skcipher_inst.0, %do.end59 ]
  %aead_inst.2.ph = phi ptr [ %call7.i.i254, %out_drop_skcipher.thread ], [ %aead_inst.0, %out_free_hash ], [ %aead_inst.0, %if.then65 ], [ %aead_inst.0, %do.end59 ]
  %err.3.ph = phi i32 [ -22, %out_drop_skcipher.thread ], [ %err.1, %out_free_hash ], [ %19, %if.then65 ], [ -22, %do.end59 ]
  tail call void @crypto_drop_spawn(ptr noundef %ictx.0.sink) #12
  br label %out_free_inst

out_free_inst:                                    ; preds = %out_free_inst.sink.split, %if.end35.out_free_inst_crit_edge, %if.end19.out_free_inst_crit_edge
  %skcipher_inst.2 = phi ptr [ null, %if.end35.out_free_inst_crit_edge ], [ %call7.i.i, %if.end19.out_free_inst_crit_edge ], [ %skcipher_inst.2.ph, %out_free_inst.sink.split ]
  %aead_inst.2 = phi ptr [ %call7.i.i254, %if.end35.out_free_inst_crit_edge ], [ null, %if.end19.out_free_inst_crit_edge ], [ %aead_inst.2.ph, %out_free_inst.sink.split ]
  %err.3 = phi i32 [ %call40, %if.end35.out_free_inst_crit_edge ], [ %call23, %if.end19.out_free_inst_crit_edge ], [ %err.3.ph, %out_free_inst.sink.split ]
  tail call void @kfree(ptr noundef %skcipher_inst.2) #12
  tail call void @kfree(ptr noundef %aead_inst.2) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_inst, %if.end138, %sw.bb31.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %3, %if.then5 ], [ %6, %if.then11 ], [ %err.3, %out_free_inst ], [ 0, %if.end138 ], [ -12, %sw.bb.cleanup_crit_edge ], [ -12, %sw.bb31.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_attr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @parse_cipher_name(ptr nocapture noundef writeonly %essiv_cipher_name, ptr noundef %cra_name) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strrchr(ptr noundef %cra_name, i32 noundef 40)
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 41)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %sub.ptr.sub, 127
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %essiv_cipher_name, ptr %incdec.ptr, i32 %sub.ptr.sub)
  %arrayidx = getelementptr i8, ptr %essiv_cipher_name, i32 %sub.ptr.sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alg_mod_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @essiv_supported_algorithms(ptr noundef %essiv_cipher_name, ptr noundef %hash_alg, i32 noundef %ivsize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alg_mod_lookup(ptr noundef %essiv_cipher_name, i32 noundef 1, i32 noundef 15) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %digestsize = getelementptr inbounds %struct.shash_alg, ptr %hash_alg, i32 0, i32 12
  %0 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digestsize, align 128
  %cra_u = getelementptr inbounds %struct.crypto_alg, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %cra_u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %cia_max_keysize = getelementptr inbounds %struct.crypto_alg, ptr %call, i32 0, i32 11, i32 0, i32 1
  %4 = ptrtoint ptr %cia_max_keysize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cia_max_keysize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp4 = icmp ugt i32 %1, %5
  br i1 %cmp4, label %lor.lhs.false.out_crit_edge, label %if.end6

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %lor.lhs.false
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %ivsize)
  %cmp7.not = icmp eq i32 %7, %ivsize
  br i1 %cmp7.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %if.end6
  %call.i = tail call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %hash_alg) #12
  br i1 %call.i, label %crypto_shash_alg_needs_key.exit, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

crypto_shash_alg_needs_key.exit:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %cra_flags.i = getelementptr inbounds %struct.shash_alg, ptr %hash_alg, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %out

out:                                              ; preds = %crypto_shash_alg_needs_key.exit, %if.end9.out_crit_edge, %if.end6.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.end.out_crit_edge ], [ false, %lor.lhs.false.out_crit_edge ], [ false, %if.end6.out_crit_edge ], [ true, %if.end9.out_crit_edge ], [ %tobool.not.i, %crypto_shash_alg_needs_key.exit ]
  tail call void @crypto_mod_put(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %out ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_skcipher_setkey(ptr nocapture noundef readonly %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %salt = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %salt) #12
  %0 = call ptr @memset(ptr %salt, i32 255, i32 64)
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %4, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i33 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i33, align 128
  %and = and i32 %7, 1048320
  %base.i.i34 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i34, align 128
  %or.i.i = or i32 %9, %and
  store i32 %or.i.i, ptr %base.i.i34, align 128
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %10, ptr noundef %key, i32 noundef %keylen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hash = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash, align 4
  %call5 = call i32 @crypto_shash_tfm_digest(ptr noundef %12, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %salt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %essiv_cipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %essiv_cipher to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %essiv_cipher, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 128
  %and.i.i35 = and i32 %16, -1048321
  store i32 %and.i.i35, ptr %14, align 128
  %17 = load ptr, ptr %essiv_cipher, align 4
  %18 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i.i33, align 128
  %and11 = and i32 %19, 1048320
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 128
  %or.i.i37 = or i32 %21, %and11
  store i32 %or.i.i37, ptr %17, align 128
  %22 = load ptr, ptr %essiv_cipher, align 4
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hash, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %24, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %26, i32 -128
  %27 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %digestsize.i, align 128
  %call16 = call i32 @crypto_cipher_setkey(ptr noundef %22, ptr noundef nonnull %salt, i32 noundef %28) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end8 ], [ %call4, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %salt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_skcipher_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %essiv_cipher.i = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %essiv_cipher.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %essiv_cipher.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %3, ptr noundef %5, ptr noundef %5) #12
  %6 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst.i, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %req, align 128
  %15 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %17 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %10, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %18 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %dst2.i.i, align 4
  %19 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %__ctx.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %20 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %iv4.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @essiv_skcipher_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %24 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %25 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i.i, align 4
  %call6.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %__ctx.i.i) #12
  ret i32 %call6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_skcipher_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %essiv_cipher.i = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %essiv_cipher.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %essiv_cipher.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %3, ptr noundef %5, ptr noundef %5) #12
  %6 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst.i, align 4
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %req, align 128
  %15 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %17 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %10, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %18 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %dst2.i.i, align 4
  %19 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %__ctx.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %20 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %iv4.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @essiv_skcipher_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %24 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %25 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %flags4.i.i, align 4
  %call7.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %__ctx.i.i) #12
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_skcipher_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #12
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 128
  %add = add i32 %4, 128
  %5 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %tfm, align 128
  %essiv_cipher_name.i = getelementptr i8, ptr %1, i32 668
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef %essiv_cipher_name.i, i32 noundef 1, i32 noundef 15) #12
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.if.then8_crit_edge, label %if.end.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %shash_driver_name.i = getelementptr i8, ptr %1, i32 796
  %call4.i = tail call ptr @crypto_alloc_shash(ptr noundef %shash_driver_name.i, i32 noundef 0, i32 noundef 0) #12
  %cmp.i20.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.then6.i, label %essiv_init_tfm.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_destroy_tfm(ptr noundef %call.i.i, ptr noundef %call.i.i) #12
  br label %if.then8

essiv_init_tfm.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %essiv_cipher9.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %essiv_cipher9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %essiv_cipher9.i, align 4
  %hash10.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %7 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4.i, ptr %hash10.i, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  br label %cleanup

if.then8:                                         ; preds = %if.then6.i, %if.end.if.then8_crit_edge
  %retval.0.i.in = phi ptr [ %call4.i, %if.then6.i ], [ %call.i.i, %if.end.if.then8_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %essiv_init_tfm.exit.thread, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %retval.0.i, %if.then8 ], [ 0, %essiv_init_tfm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_skcipher_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #12
  %essiv_cipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %essiv_cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %essiv_cipher, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #12
  %hash = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 4
  %base.i.i3 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_skcipher_free_instance(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #12
  tail call void @kfree(ptr noundef %inst) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_aead_setkey(ptr nocapture noundef readonly %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %keys = alloca %struct.crypto_authenc_keys, align 4
  %salt = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #12
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #12
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %3 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %4 = call ptr @memset(ptr %keys, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %salt) #12
  %5 = call ptr @memset(ptr %salt, i32 255, i32 64)
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %9, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i52 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %11 = ptrtoint ptr %base.i.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i52, align 128
  %and = and i32 %12, 1048320
  %base.i.i53 = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i.i53, align 128
  %or.i.i = or i32 %14, %and
  store i32 %or.i.i, ptr %base.i.i53, align 128
  %15 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call4 = tail call i32 @crypto_aead_setkey(ptr noundef %15, ptr noundef %key, i32 noundef %keylen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %hash = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %16 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash, align 4
  %18 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %if.end7
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %17, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 -256
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %24(ptr noundef nonnull %__desc_desc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool10.not = icmp eq i32 %call3.i, 0
  br i1 %tobool10.not, label %cond.false, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %crypto_shash_init.exit
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %call11 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %26, i32 noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cond.end17, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end17:                                       ; preds = %cond.false
  %29 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %keys, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %call16 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef %30, i32 noundef %32, ptr noundef nonnull %salt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool19.not = icmp eq i32 %call16, 0
  br i1 %tobool19.not, label %if.end21, label %cond.end17.cleanup_crit_edge

cond.end17.cleanup_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  %essiv_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %33 = ptrtoint ptr %essiv_cipher to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %essiv_cipher, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 128
  %and.i.i54 = and i32 %36, -1048321
  store i32 %and.i.i54, ptr %34, align 128
  %37 = load ptr, ptr %essiv_cipher, align 4
  %38 = ptrtoint ptr %base.i.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base.i.i52, align 128
  %and24 = and i32 %39, 1048320
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 128
  %or.i.i56 = or i32 %41, %and24
  store i32 %or.i.i56, ptr %37, align 128
  %42 = load ptr, ptr %essiv_cipher, align 4
  %43 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hash, align 4
  %__crt_alg.i.i57 = getelementptr inbounds %struct.crypto_shash, ptr %44, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %__crt_alg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__crt_alg.i.i57, align 4
  %digestsize.i = getelementptr i8, ptr %46, i32 -128
  %47 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %digestsize.i, align 128
  %call29 = call i32 @crypto_cipher_setkey(ptr noundef %42, ptr noundef nonnull %salt, i32 noundef %48) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %cond.end17.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %crypto_shash_init.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end21 ], [ %call4, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call16, %cond.end17.cleanup_crit_edge ], [ %call11, %cond.false.cleanup_crit_edge ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ -126, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %salt) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #12
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_aead_setauthsize(ptr nocapture noundef readonly %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @essiv_aead_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @essiv_aead_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @essiv_aead_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #12
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqsize.i, align 4
  %add7 = add i32 %4, 256
  %ivoffset = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %5 = ptrtoint ptr %ivoffset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add7, ptr %ivoffset, align 4
  %__crt_alg.i.i32 = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i32, align 4
  %ivsize.i.i = getelementptr i8, ptr %7, i32 -104
  %8 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i.i, align 8
  %add10 = add i32 %9, %add7
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %10 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add10, ptr %reqsize1.i, align 4
  %essiv_cipher_name.i = getelementptr i8, ptr %1, i32 668
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef %essiv_cipher_name.i, i32 noundef 1, i32 noundef 15) #12
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.if.then12_crit_edge, label %if.end.i

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end.i:                                         ; preds = %if.end
  %shash_driver_name.i = getelementptr i8, ptr %1, i32 796
  %call4.i = tail call ptr @crypto_alloc_shash(ptr noundef %shash_driver_name.i, i32 noundef 0, i32 noundef 0) #12
  %cmp.i20.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.then6.i, label %essiv_init_tfm.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_destroy_tfm(ptr noundef %call.i.i, ptr noundef %call.i.i) #12
  br label %if.then12

essiv_init_tfm.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %essiv_cipher9.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %11 = ptrtoint ptr %essiv_cipher9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %essiv_cipher9.i, align 4
  %hash10.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %12 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i, ptr %hash10.i, align 4
  %13 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  br label %cleanup

if.then12:                                        ; preds = %if.then6.i, %if.end.if.then12_crit_edge
  %retval.0.i.in = phi ptr [ %call4.i, %if.then6.i ], [ %call.i.i, %if.end.if.then12_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call.i, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %essiv_init_tfm.exit.thread, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %retval.0.i, %if.then12 ], [ 0, %essiv_init_tfm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_aead_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #12
  %essiv_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %essiv_cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %essiv_cipher, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #12
  %hash = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 4
  %base.i.i3 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_aead_free_instance(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #12
  tail call void @kfree(ptr noundef %inst) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_skcipher_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete.i, align 8
  tail call void %3(ptr noundef %base.i, i32 noundef %err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @essiv_aead_crypt(ptr noundef %req, i1 noundef zeroext %enc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %aead_req = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %src3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src3, align 4
  %essiv_cipher = getelementptr i8, ptr %1, i32 132
  %4 = ptrtoint ptr %essiv_cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %essiv_cipher, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 32
  tail call void @crypto_cipher_encrypt_one(ptr noundef %5, ptr noundef %7, ptr noundef %7) #12
  %assoc = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %8 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %assoc, align 16
  %9 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src3, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 8
  %cmp = icmp ne ptr %10, %12
  %13 = and i1 %cmp, %enc
  br i1 %13, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %assoclen, align 8
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %19, i32 -104
  %20 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ivsize.i.i, align 8
  %sub = sub i32 %17, %21
  tail call void @scatterwalk_map_and_copy(ptr noundef %15, ptr noundef %12, i32 noundef %sub, i32 noundef %21, i32 noundef 1) #12
  br label %if.end72

if.else:                                          ; preds = %entry
  %ivoffset = getelementptr i8, ptr %1, i32 140
  %22 = ptrtoint ptr %ivoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivoffset, align 4
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %23
  %__crt_alg.i.i159 = getelementptr i8, ptr %1, i32 12
  %24 = ptrtoint ptr %__crt_alg.i.i159 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i159, align 4
  %ivsize.i.i160 = getelementptr i8, ptr %25, i32 -104
  %26 = ptrtoint ptr %ivsize.i.i160 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ivsize.i.i160, align 8
  %assoclen13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %assoclen13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %assoclen13, align 8
  %sub14 = sub i32 %29, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %if.else.cleanup88_crit_edge, label %if.end

if.else.cleanup88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end:                                           ; preds = %if.else
  %conv174 = zext i32 %sub14 to i64
  %call18 = tail call i32 @sg_nents_for_len(ptr noundef %10, i64 noundef %conv174) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end.cleanup88_crit_edge, label %if.end22

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end22:                                         ; preds = %if.end
  %30 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv, align 32
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %31, i32 %27)
  tail call void @sg_init_table(ptr noundef %__ctx.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp25 = icmp ugt i32 %call18, 1
  br i1 %cmp25, label %if.end8.i, label %if.else41, !prof !43

if.end8.i:                                        ; preds = %if.end22
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub14, i32 noundef 2592) #17
  %33 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %assoc, align 16
  %tobool33.not = icmp eq ptr %call9.i, null
  br i1 %tobool33.not, label %if.end8.i.cleanup88_crit_edge, label %if.end35

if.end8.i.cleanup88_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end35:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src3, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i, ptr noundef %35, i32 noundef 0, i32 noundef %sub14, i32 noundef 0) #12
  %36 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %assoc, align 16
  tail call fastcc void @sg_set_buf(ptr noundef %__ctx.i, ptr noundef %37, i32 noundef %sub14)
  br label %if.end47

if.else41:                                        ; preds = %if.end22
  %38 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src3, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !44

do.body2.i:                                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !45
  unreachable

sg_page.exit:                                     ; preds = %if.else41
  %42 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__ctx.i, align 4
  %and.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !44

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !46
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %and.i = and i32 %41, -4
  %and.i.i161 = and i32 %43, 3
  %or.i.i = or i32 %and.i.i161, %and.i
  %46 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i, ptr %__ctx.i, align 4
  %offset1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub14, ptr %length.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %sg_set_page.exit, %if.end35
  %add.ptr50 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %add.ptr to i32
  %cmp.i162 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i162, label %land.lhs.true.i, label %if.end47.do.body5.i_crit_edge, !prof !44

if.end47.do.body5.i_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %50 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %50, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !44

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %49, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %51, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !43

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end47.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !47
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %52, i32 %shr.i
  %53 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr50, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !44

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !48
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !44

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !46
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i163 = and i32 %49, 4095
  %and.i.i.i164 = and i32 %54, 3
  %or.i.i.i = or i32 %and.i.i.i164, %55
  %56 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i.i, ptr %add.ptr50, align 4
  %offset1.i.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 1
  %57 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i163, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 2
  %58 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %27, ptr %length.i.i, align 4
  %add.ptr53 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 5
  %59 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src3, align 4
  %61 = ptrtoint ptr %assoclen13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %assoclen13, align 8
  %call56 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr53, ptr noundef %60, i32 noundef %62) #12
  %cmp60.not = icmp eq ptr %call56, %add.ptr53
  br i1 %cmp60.not, label %sg_set_buf.exit.if.end72_crit_edge, label %if.then62

sg_set_buf.exit.if.end72_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then62:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  %offset.i.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6
  %63 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i165 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 4
  %64 = ptrtoint ptr %length.i.i165 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %length.i.i165, align 4
  %65 = ptrtoint ptr %call56 to i32
  %or.i.i166 = and i32 %65, -4
  %and.i.i167 = or i32 %or.i.i166, 1
  %66 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i.i167, ptr %add.ptr53, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %sg_set_buf.exit.if.end72_crit_edge, %if.then
  %src.1 = phi ptr [ %3, %if.then ], [ %__ctx.i, %if.then62 ], [ %__ctx.i, %sg_set_buf.exit.if.end72_crit_edge ]
  %67 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %68, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 3
  %69 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %assoclen73 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %70 = ptrtoint ptr %assoclen73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %assoclen73, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 1
  %72 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %assoclen1.i, align 8
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %75 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @essiv_aead_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %76 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 4
  %77 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %flags4.i, align 4
  %78 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %80 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cryptlen, align 4
  %82 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 4
  %84 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %src.1, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 5
  %85 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 2
  %86 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %81, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 3
  %87 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %83, ptr %iv4.i, align 32
  br i1 %enc, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = tail call i32 @crypto_aead_encrypt(ptr noundef %aead_req) #12
  br label %cond.end

cond.false:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %call80 = tail call i32 @crypto_aead_decrypt(ptr noundef %aead_req) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call79, %cond.true ], [ %call80, %cond.false ]
  %88 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %assoc, align 16
  %tobool82.not = icmp eq ptr %89, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond)
  %cmp83.not = icmp eq i32 %cond, -115
  %or.cond = select i1 %tobool82.not, i1 true, i1 %cmp83.not
  br i1 %or.cond, label %cond.end.cleanup88_crit_edge, label %if.then85

cond.end.cleanup88_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.then85:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %89) #12
  br label %cleanup88

cleanup88:                                        ; preds = %if.then85, %cond.end.cleanup88_crit_edge, %if.end8.i.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %if.else.cleanup88_crit_edge
  %retval.1 = phi i32 [ %cond, %if.then85 ], [ %cond, %cond.end.cleanup88_crit_edge ], [ -12, %if.end8.i.cleanup88_crit_edge ], [ -22, %if.end.cleanup88_crit_edge ], [ -22, %if.else.cleanup88_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !44

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !44

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !43

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !47
  unreachable

do.end8:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !44

do.body5.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !48
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !44

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !46
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %0, 4095
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %length.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @essiv_aead_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %assoc = getelementptr inbounds %struct.aead_request, ptr %1, i32 1, i32 6, i32 36
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %assoc, align 16
  tail call void @kfree(ptr noundef %3) #12
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete.i, align 8
  tail call void %5(ptr noundef %1, i32 noundef %err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_essiv__240_641_essiv_module_init4, !1, !"__initcall__kmod_essiv__240_641_essiv_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/essiv.c", i32 641, i32 1}
!2 = !{ptr @__exitcall_essiv_module_exit, !3, !"__exitcall_essiv_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/essiv.c", i32 642, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../crypto/essiv.c", i32 644, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../crypto/essiv.c", i32 645, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias_userspace244, !10, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!10 = !{!"../crypto/essiv.c", i32 646, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto245, !10, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_import_ns246, !13, !"__UNIQUE_ID_import_ns246", i1 false, i1 false}
!13 = !{!"../crypto/essiv.c", i32 647, i32 1}
!14 = !{ptr @essiv_tmpl, !15, !"essiv_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/essiv.c", i32 625, i32 31}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/essiv.c", i32 508, i32 40}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/essiv.c", i32 509, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @essiv_create._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @essiv_create._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../crypto/essiv.c", i32 521, i32 3}
!26 = !{ptr @essiv_create._entry.4, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @essiv_create._entry_ptr.6, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/essiv.c", i32 539, i32 3}
!30 = !{ptr @essiv_create._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @essiv_create._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/essiv.c", i32 553, i32 8}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2153924579, i64 2153925071, i64 2153924616, i64 2153924672, i64 2153924706, i64 2153924730, i64 2153924771, i64 2153924792, i64 2153924820, i64 2153924854}
!46 = !{i64 2153922631, i64 2153923123, i64 2153922668, i64 2153922724, i64 2153922758, i64 2153922782, i64 2153922823, i64 2153922844, i64 2153922872, i64 2153922906}
!47 = !{i64 2153927340, i64 2153927832, i64 2153927377, i64 2153927433, i64 2153927467, i64 2153927491, i64 2153927532, i64 2153927553, i64 2153927581, i64 2153927615}
!48 = !{i64 2153921021, i64 2153921513, i64 2153921058, i64 2153921114, i64 2153921148, i64 2153921172, i64 2153921213, i64 2153921234, i64 2153921262, i64 2153921296}
