; ModuleID = '/llk/IR_all_yes/crypto/ccm.c_pt.bc'
source_filename = "../crypto/ccm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.shash_instance = type { ptr, [124 x i8], %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [256 x i8], %struct.crypto_instance }
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
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_ccm_req_priv_ctx = type { [16 x i8], [16 x i8], [16 x i8], i32, [3 x %struct.scatterlist], [3 x %struct.scatterlist], [84 x i8], %union.anon.79 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.anon.79 = type { %struct.ahash_request }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@crypto_ccm_tmpls = internal global { [4 x %struct.crypto_template], [144 x i8] } { [4 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @cbcmac_create, [128 x i8] c"cbcmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_ccm_base_create, [128 x i8] c"ccm_base\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_ccm_create, [128 x i8] c"ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_rfc4309_create, [128 x i8] c"rfc4309\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [144 x i8] zeroinitializer }, align 32
@__initcall__kmod_ccm__243_949_crypto_ccm_module_init4 = internal global ptr @crypto_ccm_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_ccm_module_exit = internal global ptr @crypto_ccm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [20 x i8] c"ccm.file=crypto/ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [16 x i8] c"ccm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [37 x i8] c"ccm.description=Counter with CBC MAC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace247 = internal constant [19 x i8] c"ccm.alias=ccm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto248 = internal constant [26 x i8] c"ccm.alias=crypto-ccm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace249 = internal constant [18 x i8] c"ccm.alias=rfc4309\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto250 = internal constant [25 x i8] c"ccm.alias=crypto-rfc4309\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace251 = internal constant [14 x i8] c"ccm.alias=ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto252 = internal constant [21 x i8] c"ccm.alias=crypto-ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace253 = internal constant [17 x i8] c"ccm.alias=cbcmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto254 = internal constant [24 x i8] c"ccm.alias=crypto-cbcmac\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns255 = internal constant [30 x i8] c"ccm.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cbcmac(\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctr(\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccm(%s\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccm_base(%s,%s)\00", [16 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctr(%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cbcmac(%s)\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rfc4309(%s)\00", [20 x i8] zeroinitializer }, align 32
@switch.table.crypto_ccm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"crypto_ccm_tmpls\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 917, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 474, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 486, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 497, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 501, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 541, i32 46 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 545, i32 46 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [16 x i8] c"../crypto/ccm.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 743, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [36 x i8] c"switch.table.crypto_ccm_setauthsize\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias_crypto248, ptr @__UNIQUE_ID_alias_crypto250, ptr @__UNIQUE_ID_alias_crypto252, ptr @__UNIQUE_ID_alias_crypto254, ptr @__UNIQUE_ID_alias_userspace247, ptr @__UNIQUE_ID_alias_userspace249, ptr @__UNIQUE_ID_alias_userspace251, ptr @__UNIQUE_ID_alias_userspace253, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_import_ns255, ptr @__UNIQUE_ID_license245, ptr @__exitcall_crypto_ccm_module_exit, ptr @__initcall__kmod_ccm__243_949_crypto_ccm_module_init4, ptr @crypto_ccm_module_exit, ptr @crypto_ccm_tmpls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.crypto_ccm_setauthsize], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_ccm_tmpls to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crypto_ccm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ccm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_ccm_tmpls, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_ccm_tmpls, i32 noundef 4) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbcmac_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !48
  %call = call i32 @crypto_check_attr_type(ptr noundef %tb, i32 noundef 14, ptr noundef nonnull %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %__ctx.i.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1
  %base.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call7 = call ptr @crypto_attr_alg_name(ptr noundef %3) #10
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %or1.i = or i32 %5, 15
  %call.i = call i32 @crypto_grab_spawn(ptr noundef %__ctx.i.i, ptr noundef %base.i, ptr noundef %call7, i32 noundef 1, i32 noundef %or1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_free_inst_crit_edge

if.end4.err_free_inst_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end11:                                         ; preds = %if.end4
  %alg.i = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg.i, align 8
  %name = getelementptr inbounds %struct.crypto_template, ptr %tmpl, i32 0, i32 4
  %call14 = call i32 @crypto_inst_setname(ptr noundef %base.i, ptr noundef %name, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.err_free_inst_crit_edge

if.end11.err_free_inst_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end17:                                         ; preds = %if.end11
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_priority, align 32
  %10 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_priority18 = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %11 = ptrtoint ptr %cra_priority18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %cra_priority18, align 32
  %cra_blocksize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cra_blocksize, align 4
  %cra_blocksize20 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %cra_blocksize20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_blocksize20, align 4
  %digestsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 128
  %15 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %digestsize, align 128
  %cra_alignmask = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cra_alignmask, align 4
  %add21 = add i32 %17, 4
  %neg = xor i32 %17, -1
  %and = and i32 %add21, %neg
  %18 = load i32, ptr %cra_blocksize20, align 4
  %add26 = add i32 %and, %18
  %descsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 40
  %19 = ptrtoint ptr %descsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add26, ptr %descsize, align 8
  %cra_ctxsize = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %cra_ctxsize, align 8
  %cra_init = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  %21 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cbcmac_init_tfm, ptr %cra_init, align 64
  %cra_exit = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  %22 = ptrtoint ptr %cra_exit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cbcmac_exit_tfm, ptr %cra_exit, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @crypto_cbcmac_digest_init, ptr %10, align 128
  %update = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %24 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @crypto_cbcmac_digest_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %25 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @crypto_cbcmac_digest_final, ptr %final, align 8
  %setkey = getelementptr inbounds %struct.shash_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %26 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @crypto_cbcmac_digest_setkey, ptr %setkey, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @shash_free_singlespawn_instance, ptr %call7.i.i, align 128
  %call30 = call i32 @shash_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end17.cleanup_crit_edge, label %if.end17.err_free_inst_crit_edge

if.end17.err_free_inst_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end17.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end4.err_free_inst_crit_edge ], [ %call14, %if.end11.err_free_inst_crit_edge ], [ %call30, %if.end17.err_free_inst_crit_edge ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_base_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
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
  %call9 = tail call fastcc i32 @crypto_ccm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef %call, ptr noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %5, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %ctr_name = alloca [128 x i8], align 1
  %mac_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ctr_name) #10
  %0 = call ptr @memset(ptr %ctr_name, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %mac_name) #10
  %1 = call ptr @memset(ptr %mac_name, i32 255, i32 128)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @crypto_attr_alg_name(ptr noundef %3) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ctr_name, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call3)
  %cmp = icmp sgt i32 %call3, 127
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mac_name, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 127
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call fastcc i32 @crypto_ccm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef nonnull %ctr_name, ptr noundef nonnull %mac_name)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call13, %if.end10 ], [ -36, %if.end.cleanup_crit_edge ], [ -36, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %mac_name) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ctr_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !48
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.not = icmp eq i32 %9, 16
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
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %20 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %7, i32 -96
  %21 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %23 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %chunksize, align 32
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %24 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %maxauthsize, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %26 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @crypto_rfc4309_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %27 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @crypto_rfc4309_exit_tfm, ptr %exit, align 4
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @crypto_rfc4309_setkey, ptr %12, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @crypto_rfc4309_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %30 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @crypto_rfc4309_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %31 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @crypto_rfc4309_decrypt, ptr %decrypt, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @crypto_rfc4309_free, ptr %call7.i.i, align 128
  %call44 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end33.cleanup_crit_edge, label %if.end33.err_free_inst_crit_edge

if.end33.err_free_inst_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end33.err_free_inst_crit_edge, %lor.lhs.false.err_free_inst_crit_edge, %if.end18.err_free_inst_crit_edge, %if.end15.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %if.end15.err_free_inst_crit_edge ], [ -36, %if.end18.err_free_inst_crit_edge ], [ -36, %lor.lhs.false.err_free_inst_crit_edge ], [ %call44, %if.end33.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbcmac_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %__ctx.i = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @crypto_spawn_tfm(ptr noundef %__ctx.i, i32 noundef 1, i32 noundef 15) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbcmac_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_cbcmac_digest_init(ptr nocapture noundef %pdesc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %7
  %idx.neg = sub i32 0, %5
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %__ctx.i, align 4
  %9 = call ptr @memset(ptr %add.ptr4, i32 0, i32 %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_update(ptr noundef %pdesc, ptr noundef %p, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digestsize.i, align 128
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %9
  %idx.neg = sub i32 0, %7
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not36 = icmp eq i32 %len, 0
  br i1 %cmp.not36, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %p.addr.038 = phi ptr [ %add.ptr12, %if.end.while.body_crit_edge ], [ %p, %entry.while.body_crit_edge ]
  %len.addr.037 = phi i32 [ %sub11, %if.end.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__ctx.i, align 4
  %sub = sub i32 %7, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %len.addr.037, i32 %sub)
  %add.ptr9 = getelementptr i8, ptr %add.ptr5, i32 %11
  tail call void @__crypto_xor(ptr noundef %add.ptr9, ptr noundef %add.ptr9, ptr noundef %p.addr.038, i32 noundef %12) #10
  %13 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %__ctx.i, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %__ctx.i, align 4
  %sub11 = sub i32 %len.addr.037, %12
  %add.ptr12 = getelementptr i8, ptr %p.addr.038, i32 %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp14 = icmp eq i32 %add, %7
  br i1 %cmp14, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_cipher_encrypt_one(ptr noundef %3, ptr noundef %add.ptr5, ptr noundef %add.ptr5) #10
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %__ctx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %cmp.not = icmp eq i32 %sub11, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_final(ptr noundef %pdesc, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdesc, align 8
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %pdesc, i32 0, i32 2
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 128
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %7
  %idx.neg = sub i32 0, %5
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %11, ptr noundef %add.ptr5, ptr noundef %add.ptr5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = call ptr @memcpy(ptr %out, ptr %add.ptr5, i32 %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_setkey(ptr nocapture noundef readonly %parent, ptr noundef %inkey, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %parent, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_cipher_setkey(ptr noundef %1, ptr noundef %inkey, i32 noundef %keylen) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_create_common(ptr noundef %tmpl, ptr noundef %tb, ptr noundef %ctr_name, ptr noundef %mac_name) unnamed_addr #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !48
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
  %mac6 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 1, i32 1, i32 24
  %base.i = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %or = or i32 %3, 128
  %call8 = call i32 @crypto_grab_ahash(ptr noundef %mac6, ptr noundef %base.i, ptr noundef %mac_name, i32 noundef 0, i32 noundef %or) #10
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
  %call14 = call i32 @strncmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(8) @.str, i32 noundef 7)
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
  %add.ptr = getelementptr i8, ptr %11, i32 44
  %add.ptr45 = getelementptr i8, ptr %5, i32 47
  %call46 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %add.ptr45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end49, label %if.end38.err_free_inst_crit_edge

if.end38.err_free_inst_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end49:                                         ; preds = %if.end38
  %16 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2
  %cra_name51 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %call57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name51, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, 127
  br i1 %cmp58, label %if.end49.err_free_inst_crit_edge, label %if.end60

if.end49.err_free_inst_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end60:                                         ; preds = %if.end49
  %cra_driver_name = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %cra_driver_name64 = getelementptr i8, ptr %11, i32 168
  %cra_driver_name67 = getelementptr i8, ptr %5, i32 168
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %cra_driver_name64, ptr noundef %cra_driver_name67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, 127
  br i1 %cmp70, label %if.end60.err_free_inst_crit_edge, label %if.end72

if.end60.err_free_inst_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end72:                                         ; preds = %if.end60
  %cra_priority = getelementptr i8, ptr %5, i32 32
  %17 = ptrtoint ptr %cra_priority to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cra_priority, align 32
  %cra_priority75 = getelementptr i8, ptr %11, i32 32
  %19 = ptrtoint ptr %cra_priority75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_priority75, align 32
  %add = add i32 %20, %18
  %div = sdiv i32 %add, 2
  %cra_priority77 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %21 = ptrtoint ptr %cra_priority77 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %cra_priority77, align 32
  %cra_blocksize79 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %cra_blocksize79 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %cra_blocksize79, align 4
  %cra_alignmask = getelementptr i8, ptr %5, i32 28
  %23 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cra_alignmask, align 4
  %cra_alignmask82 = getelementptr i8, ptr %11, i32 28
  %25 = ptrtoint ptr %cra_alignmask82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask82, align 4
  %or83 = or i32 %26, %24
  %cra_alignmask85 = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or83, ptr %cra_alignmask85, align 4
  %ivsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 24
  %28 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %ivsize, align 8
  %chunksize.i = getelementptr i8, ptr %11, i32 -96
  %29 = ptrtoint ptr %chunksize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunksize.i, align 32
  %chunksize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 32
  %31 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %chunksize, align 32
  %maxauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 28
  %32 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %maxauthsize, align 4
  %cra_ctxsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %cra_ctxsize, align 8
  %init = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 16
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @crypto_ccm_init_tfm, ptr %init, align 16
  %exit = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 20
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @crypto_ccm_exit_tfm, ptr %exit, align 4
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @crypto_ccm_setkey, ptr %16, align 128
  %setauthsize = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @crypto_ccm_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 8
  %38 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @crypto_ccm_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.aead_instance, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 12
  %39 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @crypto_ccm_decrypt, ptr %decrypt, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @crypto_ccm_free, ptr %call7.i.i, align 128
  %call88 = call i32 @aead_register_instance(ptr noundef %tmpl, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end72.cleanup_crit_edge, label %if.end72.err_free_inst_crit_edge

if.end72.err_free_inst_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_inst

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_inst:                                    ; preds = %if.end72.err_free_inst_crit_edge, %if.end60.err_free_inst_crit_edge, %if.end49.err_free_inst_crit_edge, %if.end38.err_free_inst_crit_edge, %lor.lhs.false34.err_free_inst_crit_edge, %lor.lhs.false31.err_free_inst_crit_edge, %if.end23.err_free_inst_crit_edge, %if.end17.err_free_inst_crit_edge, %lor.lhs.false.err_free_inst_crit_edge, %if.end11.err_free_inst_crit_edge, %if.end4.err_free_inst_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_free_inst_crit_edge ], [ -22, %if.end11.err_free_inst_crit_edge ], [ -22, %lor.lhs.false.err_free_inst_crit_edge ], [ %call20, %if.end17.err_free_inst_crit_edge ], [ -22, %if.end23.err_free_inst_crit_edge ], [ -22, %lor.lhs.false31.err_free_inst_crit_edge ], [ -22, %lor.lhs.false34.err_free_inst_crit_edge ], [ -22, %if.end38.err_free_inst_crit_edge ], [ -36, %if.end49.err_free_inst_crit_edge ], [ -36, %if.end60.err_free_inst_crit_edge ], [ %call88, %if.end72.err_free_inst_crit_edge ]
  call void @crypto_drop_spawn(ptr noundef %mac6) #10
  call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end72.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %err.0, %err_free_inst ], [ 0, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %mac3 = getelementptr i8, ptr %1, i32 668
  %call.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %mac3) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %__ctx.i.i = getelementptr i8, ptr %1, i32 640
  %call.i41 = tail call ptr @crypto_spawn_tfm2(ptr noundef %__ctx.i.i) #10
  %cmp.i42 = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %err_free_mac, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i.i, align 4
  %ctr14 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %ctr14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i41, ptr %ctr14, align 4
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_alignmask.i.i, align 4
  %9 = add i32 %8, 384
  %add = and i32 %9, -128
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reqsize.i, align 32
  %12 = ptrtoint ptr %call.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i41, align 128
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13)
  %add19 = add i32 %14, %add
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add19, ptr %reqsize1.i, align 4
  br label %cleanup

err_free_mac:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i41 to i32
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_mac, %if.end12, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %16, %err_free_mac ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ccm_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #10
  %ctr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctr, align 4
  %base.i.i2 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_setkey(ptr nocapture noundef readonly %aead, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %ctr1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 1
  %0 = ptrtoint ptr %ctr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctr1, align 4
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i21 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i21, align 128
  %and = and i32 %7, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i23 = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i23, align 128
  %and.i.i24 = and i32 %9, -1048321
  store i32 %and.i.i24, ptr %base.i.i23, align 128
  %10 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i21, align 128
  %and6 = and i32 %11, 1048320
  %or.i.i27 = or i32 %and6, %and.i.i24
  store i32 %or.i.i27, ptr %base.i.i23, align 128
  %call7 = tail call i32 @crypto_ahash_setkey(ptr noundef %3, ptr noundef %key, i32 noundef %keylen) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_ccm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.crypto_ccm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_encrypt(ptr noundef %req) #2 align 64 {
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
  %8 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cryptlen3, align 4
  %iv5 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %iv5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iv5, align 32
  %call6 = tail call fastcc i32 @crypto_ccm_init_crypt(ptr noundef %req, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4
  %call8 = tail call ptr @sg_next(ptr noundef %src) #10
  %call9 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %req, ptr noundef %call8, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %src15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %src15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src15, align 4
  %dst16 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %dst16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst16, align 8
  %cmp.not = icmp eq ptr %14, %16
  %dst18 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5
  %spec.select = select i1 %cmp.not, ptr %src, ptr %dst18
  %ctr = getelementptr i8, ptr %1, i32 132
  %17 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctr, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %18, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 16
  %complete.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @crypto_ccm_encrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 2
  %23 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 4
  %24 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %flags4.i, align 4
  %add = add i32 %10, 16
  %src1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select, ptr %dst2.i, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %8, align 128
  %iv4.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %iv4.i, align 4
  %call23 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call ptr @sg_next(ptr noundef %spec.select) #10
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 128
  tail call void @scatterwalk_map_and_copy(ptr noundef %7, ptr noundef %call27, i32 noundef %10, i32 noundef %30, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call6, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ %call23, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_ccm_decrypt(ptr noundef %req) #2 align 64 {
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
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen4, align 4
  %auth_tag = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 2
  %sub = sub i32 %11, %9
  %call8 = tail call fastcc i32 @crypto_ccm_init_crypt(ptr noundef %req, ptr noundef %auth_tag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %idata = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7
  %src = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4
  %call10 = tail call ptr @sg_next(ptr noundef %src) #10
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag, ptr noundef %call10, i32 noundef %sub, i32 noundef %9, i32 noundef 0) #10
  %src13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %src13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src13, align 4
  %dst14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %dst14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst14, align 8
  %cmp.not = icmp eq ptr %14, %16
  %dst16 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5
  %spec.select = select i1 %cmp.not, ptr %src, ptr %dst16
  %iv19 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %iv19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iv19, align 32
  %19 = call ptr @memcpy(ptr %idata, ptr %18, i32 16)
  %ctr = getelementptr i8, ptr %1, i32 132
  %20 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctr, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 3
  %22 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 16
  %complete.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @crypto_ccm_decrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %req, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 4
  %27 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %flags4.i, align 4
  %add = add i32 %sub, 16
  %src1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %src, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select, ptr %dst2.i, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %12, align 128
  %iv4.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %idata, ptr %iv4.i, align 4
  %call22 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call26 = tail call ptr @sg_next(ptr noundef %spec.select) #10
  %call27 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %req, ptr noundef %call26, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %auth_tag, ptr noundef %7, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %. = select i1 %cmp.not.i.not, i32 0, i32 -74
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %entry.cleanup_crit_edge ], [ %call22, %if.end.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %., %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ccm_free(ptr noundef %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1
  %mac = getelementptr inbounds %struct.aead_instance, ptr %inst, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %mac) #10
  tail call void @crypto_drop_spawn(ptr noundef %__ctx.i.i) #10
  tail call void @kfree(ptr noundef %inst) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_init_crypt(ptr noundef %req, ptr noundef %tag) unnamed_addr #2 align 64 {
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
  %iv1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %iv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv1, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %13 = icmp ult i8 %12, 7
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %flags = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 15
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 1
  %conv = zext i8 %18 to i32
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add = add nuw nsw i32 %conv, 1
  %19 = call ptr @memset(ptr %add.ptr4, i32 0, i32 %add)
  %src = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4
  tail call void @sg_init_table(ptr noundef %src, i32 noundef 3) #10
  %20 = ptrtoint ptr %tag to i32
  %cmp.i = icmp ugt ptr %tag, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.do.body5.i_crit_edge, !prof !49

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %21 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %21, %tag
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !49

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %22, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !50

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %23, i32 %shr.i
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !49

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !49

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i75 = and i32 %20, 4095
  %and.i.i.i = and i32 %25, 3
  %or.i.i.i = or i32 %and.i.i.i, %26
  %27 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i.i, ptr %src, align 4
  %offset1.i.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i75, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %length.i.i, align 4
  %add.ptr11 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1
  %src12 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %30 = ptrtoint ptr %src12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src12, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %32 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoclen, align 8
  %call13 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr11, ptr noundef %31, i32 noundef %33) #10
  %cmp.not = icmp eq ptr %call13, %add.ptr11
  br i1 %cmp.not, label %sg_set_buf.exit.if.end21_crit_edge, label %if.then18

sg_set_buf.exit.if.end21_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1, i32 1
  %34 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i76 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 4, i32 1, i32 2
  %35 = ptrtoint ptr %length.i.i76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %length.i.i76, align 4
  %36 = ptrtoint ptr %call13 to i32
  %or.i.i = and i32 %36, -4
  %and.i.i = or i32 %or.i.i, 1
  %37 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i.i, ptr %add.ptr11, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %sg_set_buf.exit.if.end21_crit_edge
  %38 = ptrtoint ptr %src12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src12, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 8
  %cmp23.not = icmp eq ptr %39, %41
  br i1 %cmp23.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true.i79

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i79:                                ; preds = %if.end21
  %dst26 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5
  tail call void @sg_init_table(ptr noundef %dst26, i32 noundef 3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %42 = load ptr, ptr @high_memory, align 4
  %cmp1.i78 = icmp ugt ptr %42, %tag
  br i1 %cmp1.i78, label %land.rhs.i85, label %land.lhs.true.i79.do.body5.i86_crit_edge, !prof !49

land.lhs.true.i79.do.body5.i86_crit_edge:         ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i86

land.rhs.i85:                                     ; preds = %land.lhs.true.i79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i82 = add i32 %43, %shr.i
  %call.i83 = tail call i32 @pfn_valid(i32 noundef %add.i82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.i84, label %land.rhs.i85.do.body5.i86_crit_edge, label %do.end8.i90, !prof !50

land.rhs.i85.do.body5.i86_crit_edge:              ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i86

do.body5.i86:                                     ; preds = %land.rhs.i85.do.body5.i86_crit_edge, %land.lhs.true.i79.do.body5.i86_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i90:                                      ; preds = %land.rhs.i85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %add.ptr.i87 = getelementptr %struct.page, ptr %44, i32 %shr.i
  %45 = ptrtoint ptr %dst26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst26, align 4
  %47 = ptrtoint ptr %add.ptr.i87 to i32
  %and2.i.i.i88 = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i88)
  %tobool.not.i.i.i89 = icmp eq i32 %and2.i.i.i88, 0
  br i1 %tobool.not.i.i.i89, label %do.body11.i.i.i94, label %do.body5.i.i.i91, !prof !49

do.body5.i.i.i91:                                 ; preds = %do.end8.i90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i94:                                ; preds = %do.end8.i90
  %and.i.i.i.i92 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i92)
  %tobool.i.not.i.i.i93 = icmp eq i32 %and.i.i.i.i92, 0
  br i1 %tobool.i.not.i.i.i93, label %sg_set_buf.exit101, label %do.body19.i.i.i95, !prof !49

do.body19.i.i.i95:                                ; preds = %do.body11.i.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit101:                               ; preds = %do.body11.i.i.i94
  %and.i.i.i97 = and i32 %46, 3
  %or.i.i.i98 = or i32 %and.i.i.i97, %47
  %48 = ptrtoint ptr %dst26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i.i98, ptr %dst26, align 4
  %offset1.i.i99 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5, i32 0, i32 1
  %49 = ptrtoint ptr %offset1.i.i99 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i75, ptr %offset1.i.i99, align 4
  %length.i.i100 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5, i32 0, i32 2
  %50 = ptrtoint ptr %length.i.i100 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %length.i.i100, align 4
  %add.ptr32 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst, align 8
  %53 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %assoclen, align 8
  %call35 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr32, ptr noundef %52, i32 noundef %54) #10
  %cmp39.not = icmp eq ptr %call35, %add.ptr32
  br i1 %cmp39.not, label %sg_set_buf.exit101.cleanup_crit_edge, label %if.then41

sg_set_buf.exit101.cleanup_crit_edge:             ; preds = %sg_set_buf.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %sg_set_buf.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i103 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5, i32 1, i32 1
  %55 = ptrtoint ptr %offset.i.i103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %offset.i.i103, align 4
  %length.i.i104 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 5, i32 1, i32 2
  %56 = ptrtoint ptr %length.i.i104 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %length.i.i104, align 4
  %57 = ptrtoint ptr %call35 to i32
  %or.i.i105 = and i32 %57, -4
  %and.i.i106 = or i32 %or.i.i105, 1
  %58 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i.i106, ptr %add.ptr32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %sg_set_buf.exit101.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sg_set_buf.exit101.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_auth(ptr noundef %req, ptr noundef %plain, i32 noundef %cryptlen) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca i32, align 4
  %sg = alloca [3 x %struct.scatterlist], align 4
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
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %8 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoclen3, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg) #10
  %11 = call ptr @memset(ptr %sg, i32 255, i32 60)
  %idata5 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 1
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv.i, align 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 128
  %18 = call ptr @memcpy(ptr %7, ptr %13, i32 16)
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %7, align 1
  %call1.tr.i = trunc i32 %17 to i8
  %21 = shl i8 %call1.tr.i, 2
  %22 = add i8 %21, -8
  %23 = and i8 %22, -8
  %conv4.i = or i8 %23, %20
  store i8 %conv4.i, ptr %7, align 1
  %24 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoclen3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = or i8 %conv4.i, 64
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %7, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %conv.i = zext i8 %15 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %idx.neg.i = xor i32 %conv.i, -1
  %add.ptr8.i = getelementptr i8, ptr %idata5, i32 %idx.neg.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #10
  %28 = call ptr @memset(ptr %add.ptr8.i, i32 0, i32 %add.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i.i = icmp ugt i8 %15, 2
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.else.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.i:                                      ; preds = %if.end.i
  %mul.i.i = shl nuw nsw i32 %add.i, 3
  %shl.i.i = shl nuw nsw i32 1, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %cryptlen)
  %cmp1.i.i = icmp ult i32 %shl.i.i, %cryptlen
  br i1 %cmp1.i.i, label %format_input.exit, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

format_input.exit:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  br label %out

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %csize.addr.0.i.i = phi i32 [ %add.i, %if.else.i.i.if.end_crit_edge ], [ 4, %if.end.i.if.end_crit_edge ]
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cryptlen, ptr %data.i.i, align 4
  %idx.neg.i.i = sub nsw i32 0, %csize.addr.0.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %idata5, i32 %idx.neg.i.i
  %add.ptr5.i.i = getelementptr inbounds i8, ptr %data.i.i, i32 4
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %idx.neg.i.i
  %30 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %add.ptr7.i.i, i32 %csize.addr.0.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 3) #10
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.do.body5.i_crit_edge, !prof !49

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %31 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %31, %7
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !49

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %and.i, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i78 = add i32 %32, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !50

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %add.ptr.i79 = getelementptr %struct.page, ptr %33, i32 %shr.i
  %34 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg, align 4
  %36 = ptrtoint ptr %add.ptr.i79 to i32
  %and2.i.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !49

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !49

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i80 = and i32 %and.i, 4095
  %and.i.i.i = and i32 %35, 3
  %or.i.i.i = or i32 %and.i.i.i, %36
  %37 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %38 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i80, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %sg_set_buf.exit.if.end16_crit_edge, label %if.then10

sg_set_buf.exit.if.end16_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %10)
  %cmp.i81 = icmp ult i32 %10, 65280
  br i1 %cmp.i81, label %if.then.i83, label %if.else.i

if.then.i83:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i82 = trunc i32 %10 to i16
  %40 = ptrtoint ptr %idata5 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i82, ptr %idata5, align 2
  br label %format_adata.exit

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %idata5 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -2, ptr %idata5, align 2
  %arrayidx.i = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %format_adata.exit

format_adata.exit:                                ; preds = %if.else.i, %if.then.i83
  %len.0.i = phi i32 [ 2, %if.then.i83 ], [ 6, %if.else.i ]
  %arrayidx12 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %43 = ptrtoint ptr %idata5 to i32
  %cmp.i85 = icmp ugt ptr %idata5, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i85, label %land.lhs.true.i87, label %format_adata.exit.do.body5.i94_crit_edge, !prof !49

format_adata.exit.do.body5.i94_crit_edge:         ; preds = %format_adata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i94

land.lhs.true.i87:                                ; preds = %format_adata.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %44 = load ptr, ptr @high_memory, align 4
  %cmp1.i86 = icmp ugt ptr %44, %idata5
  br i1 %cmp1.i86, label %land.rhs.i93, label %land.lhs.true.i87.do.body5.i94_crit_edge, !prof !49

land.lhs.true.i87.do.body5.i94_crit_edge:         ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i94

land.rhs.i93:                                     ; preds = %land.lhs.true.i87
  %sub.i88 = add i32 %43, 1073741824
  %shr.i89 = lshr i32 %sub.i88, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %45 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i90 = add i32 %45, %shr.i89
  %call.i91 = call i32 @pfn_valid(i32 noundef %add.i90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.i92, label %land.rhs.i93.do.body5.i94_crit_edge, label %do.end8.i98, !prof !50

land.rhs.i93.do.body5.i94_crit_edge:              ; preds = %land.rhs.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i94

do.body5.i94:                                     ; preds = %land.rhs.i93.do.body5.i94_crit_edge, %land.lhs.true.i87.do.body5.i94_crit_edge, %format_adata.exit.do.body5.i94_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i98:                                      ; preds = %land.rhs.i93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %add.ptr.i95 = getelementptr %struct.page, ptr %46, i32 %shr.i89
  %47 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx12, align 4
  %49 = ptrtoint ptr %add.ptr.i95 to i32
  %and2.i.i.i96 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i96)
  %tobool.not.i.i.i97 = icmp eq i32 %and2.i.i.i96, 0
  br i1 %tobool.not.i.i.i97, label %do.body11.i.i.i102, label %do.body5.i.i.i99, !prof !49

do.body5.i.i.i99:                                 ; preds = %do.end8.i98
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i102:                               ; preds = %do.end8.i98
  %and.i.i.i.i100 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i100)
  %tobool.i.not.i.i.i101 = icmp eq i32 %and.i.i.i.i100, 0
  br i1 %tobool.i.not.i.i.i101, label %sg_set_buf.exit109, label %do.body19.i.i.i103, !prof !49

do.body19.i.i.i103:                               ; preds = %do.body11.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit109:                               ; preds = %do.body11.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  %and.i104 = and i32 %43, 4095
  %and.i.i.i105 = and i32 %48, 3
  %or.i.i.i106 = or i32 %and.i.i.i105, %49
  %50 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i.i106, ptr %arrayidx12, align 4
  %offset1.i.i107 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %offset1.i.i107 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.i104, ptr %offset1.i.i107, align 4
  %length.i.i108 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %length.i.i108 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %len.0.i, ptr %length.i.i108, align 4
  br label %if.end16

if.end16:                                         ; preds = %sg_set_buf.exit109, %sg_set_buf.exit.if.end16_crit_edge
  %.sink162 = phi i32 [ 2, %sg_set_buf.exit109 ], [ 1, %sg_set_buf.exit.if.end16_crit_edge ]
  %ilen.0 = phi i32 [ %len.0.i, %sg_set_buf.exit109 ], [ 0, %sg_set_buf.exit.if.end16_crit_edge ]
  %src15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %53 = ptrtoint ptr %src15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %src15, align 4
  %arrayidx.i112 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 %.sink162
  %offset.i.i113 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 %.sink162, i32 1
  %55 = ptrtoint ptr %offset.i.i113 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %offset.i.i113, align 4
  %length.i.i114 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 %.sink162, i32 2
  %56 = ptrtoint ptr %length.i.i114 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %length.i.i114, align 4
  %57 = ptrtoint ptr %54 to i32
  %or.i.i115 = and i32 %57, -4
  %and.i.i116 = or i32 %or.i.i115, 1
  %58 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i.i116, ptr %arrayidx.i112, align 4
  %59 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %60, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 3
  %61 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 3
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 16
  %complete.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 0, i32 4
  %66 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %flags4.i, align 4
  %add = add i32 %ilen.0, %10
  %add18 = add i32 %add, 16
  %src1.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 2
  %67 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 1
  %68 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add18, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %7, i32 0, i32 7, i32 0, i32 3
  %69 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %result3.i, align 32
  %70 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base.i.i, align 128
  %and.i118 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool.not.i119, label %crypto_ahash_init.exit, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

crypto_ahash_init.exit:                           ; preds = %if.end16
  %72 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %60, align 128
  %call2.i = call i32 %73(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not = icmp eq i32 %call2.i, 0
  br i1 %tobool20.not, label %if.end22, label %crypto_ahash_init.exit.out_crit_edge

crypto_ahash_init.exit.out_crit_edge:             ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22:                                         ; preds = %crypto_ahash_init.exit
  %74 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tfm1.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %75, i32 12
  %76 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__crt_alg.i, align 4
  %78 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %77) #10
  %80 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %81, i32 -124
  %82 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %83(ptr noundef %8) #10
  call void @crypto_stats_ahash_update(i32 noundef %79, i32 noundef %call3.i, ptr noundef %77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool24.not = icmp eq i32 %call3.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26:                                         ; preds = %if.end22
  %rem = and i32 %add, 15
  %sub = sub nuw nsw i32 16, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end26.if.end37_crit_edge, label %if.then28

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then28:                                        ; preds = %if.end26
  %84 = call ptr @memset(ptr %idata5, i32 0, i32 %sub)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #10
  %85 = ptrtoint ptr %idata5 to i32
  %cmp.i123 = icmp ugt ptr %idata5, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i123, label %land.lhs.true.i125, label %if.then28.do.body5.i132_crit_edge, !prof !49

if.then28.do.body5.i132_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i132

land.lhs.true.i125:                               ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %86 = load ptr, ptr @high_memory, align 4
  %cmp1.i124 = icmp ugt ptr %86, %idata5
  br i1 %cmp1.i124, label %land.rhs.i131, label %land.lhs.true.i125.do.body5.i132_crit_edge, !prof !49

land.lhs.true.i125.do.body5.i132_crit_edge:       ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i132

land.rhs.i131:                                    ; preds = %land.lhs.true.i125
  %sub.i126 = add i32 %85, 1073741824
  %shr.i127 = lshr i32 %sub.i126, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i128 = add i32 %87, %shr.i127
  %call.i129 = call i32 @pfn_valid(i32 noundef %add.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.i130, label %land.rhs.i131.do.body5.i132_crit_edge, label %do.end8.i136, !prof !50

land.rhs.i131.do.body5.i132_crit_edge:            ; preds = %land.rhs.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i132

do.body5.i132:                                    ; preds = %land.rhs.i131.do.body5.i132_crit_edge, %land.lhs.true.i125.do.body5.i132_crit_edge, %if.then28.do.body5.i132_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i136:                                     ; preds = %land.rhs.i131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %88 = load ptr, ptr @mem_map, align 4
  %add.ptr.i133 = getelementptr %struct.page, ptr %88, i32 %shr.i127
  %89 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg, align 4
  %91 = ptrtoint ptr %add.ptr.i133 to i32
  %and2.i.i.i134 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i134)
  %tobool.not.i.i.i135 = icmp eq i32 %and2.i.i.i134, 0
  br i1 %tobool.not.i.i.i135, label %do.body11.i.i.i140, label %do.body5.i.i.i137, !prof !49

do.body5.i.i.i137:                                ; preds = %do.end8.i136
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i140:                               ; preds = %do.end8.i136
  %and.i.i.i.i138 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i138)
  %tobool.i.not.i.i.i139 = icmp eq i32 %and.i.i.i.i138, 0
  br i1 %tobool.i.not.i.i.i139, label %sg_set_buf.exit147, label %do.body19.i.i.i141, !prof !49

do.body19.i.i.i141:                               ; preds = %do.body11.i.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit147:                               ; preds = %do.body11.i.i.i140
  %and.i142 = and i32 %85, 4095
  %and.i.i.i143 = and i32 %90, 3
  %or.i.i.i144 = or i32 %and.i.i.i143, %91
  %92 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i.i144, ptr %sg, align 4
  %93 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i142, ptr %offset1.i.i, align 4
  %94 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub, ptr %length.i.i, align 4
  %tobool31.not = icmp eq ptr %plain, null
  br i1 %tobool31.not, label %sg_set_buf.exit147.if.end34_crit_edge, label %if.then32

sg_set_buf.exit147.if.end34_crit_edge:            ; preds = %sg_set_buf.exit147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %sg_set_buf.exit147
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i148 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1
  %offset.i.i149 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1, i32 1
  %95 = ptrtoint ptr %offset.i.i149 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %offset.i.i149, align 4
  %length.i.i150 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 1, i32 2
  %96 = ptrtoint ptr %length.i.i150 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %length.i.i150, align 4
  %97 = ptrtoint ptr %plain to i32
  %or.i.i151 = and i32 %97, -4
  %and.i.i152 = or i32 %or.i.i151, 1
  %98 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and.i.i152, ptr %arrayidx.i148, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %sg_set_buf.exit147.if.end34_crit_edge
  %add36 = add i32 %sub, %cryptlen
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end26.if.end37_crit_edge
  %cryptlen.addr.0 = phi i32 [ %add36, %if.end34 ], [ %cryptlen, %if.end26.if.end37_crit_edge ]
  %plain.addr.0 = phi ptr [ %sg, %if.end34 ], [ %plain, %if.end26.if.end37_crit_edge ]
  %99 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %plain.addr.0, ptr %src1.i, align 4
  %100 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %cryptlen.addr.0, ptr %nbytes2.i, align 8
  %101 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %7, ptr %result3.i, align 32
  %call40 = call i32 @crypto_ahash_finup(ptr noundef %8) #10
  br label %out

out:                                              ; preds = %if.end37, %if.end22.out_crit_edge, %crypto_ahash_init.exit.out_crit_edge, %if.end16.out_crit_edge, %format_input.exit
  %err.0 = phi i32 [ -75, %format_input.exit ], [ %call2.i, %crypto_ahash_init.exit.out_crit_edge ], [ %call3.i, %if.end22.out_crit_edge ], [ %call40, %if.end37 ], [ -126, %if.end16.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ccm_encrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
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
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %7, %8
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %add3.i, %neg.i
  %9 = inttoptr i32 %and.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %dst = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 8
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen, align 4
  %add = add i32 %15, %13
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 128
  tail call void @scatterwalk_map_and_copy(ptr noundef %9, ptr noundef %11, i32 noundef %add, i32 noundef %17, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %complete.i, align 8
  tail call void %19(ptr noundef %1, i32 noundef %err) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_ccm_decrypt_done(ptr nocapture noundef readonly %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx.i.i to i32
  %add3.i = add i32 %7, %8
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %add3.i, %neg.i
  %9 = inttoptr i32 %and.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen3, align 4
  %flags = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags, align 16
  %src = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %dst4 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst4, align 8
  %cmp = icmp eq ptr %16, %18
  %src5 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %9, i32 0, i32 4
  %dst6 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %9, i32 0, i32 5
  %cond = select i1 %cmp, ptr %src5, ptr %dst6
  %call8 = tail call ptr @sg_next(ptr noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %entry
  %sub = sub i32 %13, %11
  %call9 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %1, ptr noundef %call8, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %auth_tag = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %9, i32 0, i32 2
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %auth_tag, ptr noundef %9, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp.not.i.not, i32 0, i32 -74
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end16_crit_edge ], [ %call9, %if.then.if.end16_crit_edge ], [ %spec.select, %land.lhs.true ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %complete.i, align 8
  tail call void %20(ptr noundef %1, i32 noundef %err.addr.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
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
  %add17 = or i32 %add16, 32
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
define internal void @crypto_rfc4309_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
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
define internal i32 @crypto_rfc4309_setkey(ptr nocapture noundef %parent, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 3
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
  %sub = add i32 %keylen, -3
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = call ptr @memcpy(ptr %nonce, ptr %add.ptr, i32 3)
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %4, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base.i.i13 = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i13, align 128
  %and = and i32 %6, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call3 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_setauthsize(ptr nocapture noundef readonly %parent, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %authsize, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 12, label %entry.sw.epilog_crit_edge3
    i32 16, label %entry.sw.epilog_crit_edge4
  ]

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %parent, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1 = tail call i32 @crypto_aead_setauthsize(ptr noundef %2, i32 noundef %authsize) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %entry.return_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %call = tail call fastcc ptr @crypto_rfc4309_crypt(ptr noundef %req)
  %call3 = tail call i32 @crypto_aead_encrypt(ptr noundef %call) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %entry.return_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %call = tail call fastcc ptr @crypto_rfc4309_crypt(ptr noundef %req)
  %call3 = tail call i32 @crypto_aead_decrypt(ptr noundef %call) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_rfc4309_free(ptr noundef %inst) #2 align 64 {
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
define internal fastcc ptr @crypto_rfc4309_crypt(ptr noundef %req) unnamed_addr #2 align 64 {
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %11, align 1
  %add.ptr12 = getelementptr i8, ptr %11, i32 1
  %nonce = getelementptr i8, ptr %1, i32 132
  %13 = call ptr @memcpy(ptr %add.ptr12, ptr %nonce, i32 3)
  %add.ptr13 = getelementptr i8, ptr %11, i32 4
  %iv14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %iv14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv14, align 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %15, align 1
  %18 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %add.ptr13, align 1
  %add.ptr15 = getelementptr i8, ptr %11, i32 16
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %assoclen, align 8
  %sub16 = add i32 %22, -8
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr15, ptr noundef %20, i32 noundef 0, i32 noundef %sub16, i32 noundef 0) #10
  tail call void @sg_init_table(ptr noundef %__ctx.i, i32 noundef 3) #10
  %23 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %assoclen, align 8
  %sub23 = add i32 %24, -8
  %25 = ptrtoint ptr %add.ptr15 to i32
  %cmp.i = icmp ugt ptr %add.ptr15, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.do.body5.i_crit_edge, !prof !49

entry.do.body5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %26 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %26, %add.ptr15
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !49

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %27, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !50

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %entry.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %28, i32 %shr.i
  %29 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %__ctx.i, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !49

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !49

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %25, 4095
  %and.i.i.i = and i32 %30, 3
  %or.i.i.i = or i32 %and.i.i.i, %31
  %32 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i.i, ptr %__ctx.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub23, ptr %length.i.i, align 4
  %add.ptr26 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src, align 4
  %37 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen, align 8
  %call29 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr26, ptr noundef %36, i32 noundef %38) #10
  %cmp.not = icmp eq ptr %call29, %add.ptr26
  br i1 %cmp.not, label %sg_set_buf.exit.if.end_crit_edge, label %if.then

sg_set_buf.exit.if.end_crit_edge:                 ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 1
  %39 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i125 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 2
  %40 = ptrtoint ptr %length.i.i125 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %length.i.i125, align 4
  %41 = ptrtoint ptr %call29 to i32
  %or.i.i = and i32 %41, -4
  %and.i.i = or i32 %or.i.i, 1
  %42 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i.i, ptr %add.ptr26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sg_set_buf.exit.if.end_crit_edge
  %43 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %45 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst, align 8
  %cmp36.not = icmp eq ptr %44, %46
  br i1 %cmp36.not, label %if.end.if.end59_crit_edge, label %land.lhs.true.i128

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true.i128:                               ; preds = %if.end
  %dst38 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  tail call void @sg_init_table(ptr noundef %dst38, i32 noundef 3) #10
  %47 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %assoclen, align 8
  %sub44 = add i32 %48, -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i127 = icmp ugt ptr %49, %add.ptr15
  br i1 %cmp1.i127, label %land.rhs.i134, label %land.lhs.true.i128.do.body5.i135_crit_edge, !prof !49

land.lhs.true.i128.do.body5.i135_crit_edge:       ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i135

land.rhs.i134:                                    ; preds = %land.lhs.true.i128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i131 = add i32 %50, %shr.i
  %call.i132 = tail call i32 @pfn_valid(i32 noundef %add.i131) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.i133, label %land.rhs.i134.do.body5.i135_crit_edge, label %do.end8.i139, !prof !50

land.rhs.i134.do.body5.i135_crit_edge:            ; preds = %land.rhs.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i135

do.body5.i135:                                    ; preds = %land.rhs.i134.do.body5.i135_crit_edge, %land.lhs.true.i128.do.body5.i135_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.end8.i139:                                     ; preds = %land.rhs.i134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %add.ptr.i136 = getelementptr %struct.page, ptr %51, i32 %shr.i
  %52 = ptrtoint ptr %dst38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst38, align 4
  %54 = ptrtoint ptr %add.ptr.i136 to i32
  %and2.i.i.i137 = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i137)
  %tobool.not.i.i.i138 = icmp eq i32 %and2.i.i.i137, 0
  br i1 %tobool.not.i.i.i138, label %do.body11.i.i.i143, label %do.body5.i.i.i140, !prof !49

do.body5.i.i.i140:                                ; preds = %do.end8.i139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.body11.i.i.i143:                               ; preds = %do.end8.i139
  %and.i.i.i.i141 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i141)
  %tobool.i.not.i.i.i142 = icmp eq i32 %and.i.i.i.i141, 0
  br i1 %tobool.i.not.i.i.i142, label %sg_set_buf.exit150, label %do.body19.i.i.i144, !prof !49

do.body19.i.i.i144:                               ; preds = %do.body11.i.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

sg_set_buf.exit150:                               ; preds = %do.body11.i.i.i143
  %and.i.i.i146 = and i32 %53, 3
  %or.i.i.i147 = or i32 %and.i.i.i146, %54
  %55 = ptrtoint ptr %dst38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i147, ptr %dst38, align 4
  %offset1.i.i148 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 20
  %56 = ptrtoint ptr %offset1.i.i148 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i, ptr %offset1.i.i148, align 4
  %length.i.i149 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 24
  %57 = ptrtoint ptr %length.i.i149 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub44, ptr %length.i.i149, align 4
  %add.ptr47 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %58 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dst, align 8
  %60 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assoclen, align 8
  %call50 = tail call ptr @scatterwalk_ffwd(ptr noundef %add.ptr47, ptr noundef %59, i32 noundef %61) #10
  %cmp54.not = icmp eq ptr %call50, %add.ptr47
  br i1 %cmp54.not, label %sg_set_buf.exit150.if.end59_crit_edge, label %if.then55

sg_set_buf.exit150.if.end59_crit_edge:            ; preds = %sg_set_buf.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then55:                                        ; preds = %sg_set_buf.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.i152 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 40
  %62 = ptrtoint ptr %offset.i.i152 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offset.i.i152, align 4
  %length.i.i153 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %63 = ptrtoint ptr %length.i.i153 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %length.i.i153, align 4
  %64 = ptrtoint ptr %call50 to i32
  %or.i.i154 = and i32 %64, -4
  %and.i.i155 = or i32 %or.i.i154, 1
  %65 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i.i155, ptr %add.ptr47, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %sg_set_buf.exit150.if.end59_crit_edge, %if.end.if.end59_crit_edge
  %subreq1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 3
  %66 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %69 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 1
  %73 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %74 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 0, i32 4
  %75 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %68, ptr %flags4.i, align 4
  %76 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %src, align 4
  %78 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst, align 8
  %cmp66 = icmp eq ptr %77, %79
  %dst69 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %cond = select i1 %cmp66, ptr %__ctx.i, ptr %dst69
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %80 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cryptlen, align 4
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 4
  %82 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %__ctx.i, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 5
  %83 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cond, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 2
  %84 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 3
  %85 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %11, ptr %iv4.i, align 32
  %86 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %assoclen, align 8
  %sub72 = add i32 %87, -8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 1
  %88 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub72, ptr %assoclen1.i, align 8
  ret ptr %subreq1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_ccm__243_949_crypto_ccm_module_init4, !1, !"__initcall__kmod_ccm__243_949_crypto_ccm_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/ccm.c", i32 949, i32 1}
!2 = !{ptr @__exitcall_crypto_ccm_module_exit, !3, !"__exitcall_crypto_ccm_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/ccm.c", i32 950, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../crypto/ccm.c", i32 952, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description246, !8, !"__UNIQUE_ID_description246", i1 false, i1 false}
!8 = !{!"../crypto/ccm.c", i32 953, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace247, !10, !"__UNIQUE_ID_alias_userspace247", i1 false, i1 false}
!10 = !{!"../crypto/ccm.c", i32 954, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto248, !10, !"__UNIQUE_ID_alias_crypto248", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace249, !13, !"__UNIQUE_ID_alias_userspace249", i1 false, i1 false}
!13 = !{!"../crypto/ccm.c", i32 955, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto250, !13, !"__UNIQUE_ID_alias_crypto250", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias_userspace251, !16, !"__UNIQUE_ID_alias_userspace251", i1 false, i1 false}
!16 = !{!"../crypto/ccm.c", i32 956, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_crypto252, !16, !"__UNIQUE_ID_alias_crypto252", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias_userspace253, !19, !"__UNIQUE_ID_alias_userspace253", i1 false, i1 false}
!19 = !{!"../crypto/ccm.c", i32 957, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias_crypto254, !19, !"__UNIQUE_ID_alias_crypto254", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_import_ns255, !22, !"__UNIQUE_ID_import_ns255", i1 false, i1 false}
!22 = !{!"../crypto/ccm.c", i32 958, i32 1}
!23 = !{ptr @crypto_ccm_tmpls, !24, !"crypto_ccm_tmpls", i1 false, i1 false}
!24 = !{!"../crypto/ccm.c", i32 917, i32 31}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../crypto/ccm.c", i32 474, i32 34}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/ccm.c", i32 486, i32 34}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/ccm.c", i32 497, i32 8}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/ccm.c", i32 501, i32 8}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../crypto/ccm.c", i32 541, i32 46}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../crypto/ccm.c", i32 545, i32 46}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../crypto/ccm.c", i32 743, i32 8}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2153932419, i64 2153932911, i64 2153932456, i64 2153932512, i64 2153932546, i64 2153932570, i64 2153932611, i64 2153932632, i64 2153932660, i64 2153932694}
!52 = !{i64 2153926100, i64 2153926592, i64 2153926137, i64 2153926193, i64 2153926227, i64 2153926251, i64 2153926292, i64 2153926313, i64 2153926341, i64 2153926375}
!53 = !{i64 2153927710, i64 2153928202, i64 2153927747, i64 2153927803, i64 2153927837, i64 2153927861, i64 2153927902, i64 2153927923, i64 2153927951, i64 2153927985}
